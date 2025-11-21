object SampleDevelopInformation: TSampleDevelopInformation
  Left = 409
  Top = 171
  Width = 1380
  Height = 732
  Caption = 'SampleDevelopInformation'
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
  object mainbar: TPageControl
    Left = 0
    Top = 0
    Width = 1364
    Height = 693
    ActivePage = CFM_Statues
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Basic_Model_information: TTabSheet
      Caption = 'Basic_Model_Information'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 352
          Top = 20
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 467
          Top = 20
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label89: TLabel
          Left = 833
          Top = 21
          Width = 38
          Height = 16
          Caption = 'TEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label90: TLabel
          Left = 56
          Top = 8
          Width = 57
          Height = 20
          Caption = 'Label90'
        end
        object Label45: TLabel
          Left = 1064
          Top = 20
          Width = 29
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 960
          Top = 20
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label214: TLabel
          Left = 1264
          Top = 20
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label229: TLabel
          Left = 720
          Top = 16
          Width = 22
          Height = 20
          Caption = 'FD'
        end
        object Label66: TLabel
          Left = 587
          Top = 20
          Width = 27
          Height = 16
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label310: TLabel
          Left = 1416
          Top = 20
          Width = 56
          Height = 16
          Caption = 'FDTEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object cbb1: TComboBox
          Left = 412
          Top = 16
          Width = 53
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object BB4: TBitBtn
          Left = 104
          Top = 0
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
          TabOrder = 1
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
          Left = 152
          Top = 0
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
          OnClick = BB5Clck
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
          Left = 200
          Top = 0
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
        object BB2: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 4
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
        object BB7: TBitBtn
          Left = 248
          Top = 0
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
        object BB1: TBitBtn
          Left = 8
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = QRY1Click
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
        object SR: TEdit
          Left = 495
          Top = 16
          Width = 82
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object excel1: TButton
          Left = 296
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 8
          OnClick = excel1Click
        end
        object team: TComboBox
          Left = 874
          Top = 16
          Width = 79
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'A'
            'B'
            'C'
            'SMU')
        end
        object data: TComboBox
          Left = 1100
          Top = 16
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 10
          Text = 'NoDropped'
          Items.Strings = (
            'NoDropped'
            'new'
            'no_ok'
            'ok'
            'Dropped'
            'Transfer'
            'NoTransfer')
        end
        object devtype: TComboBox
          Left = 996
          Top = 16
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object subtype: TComboBox
          Left = 1324
          Top = 16
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 12
          Visible = False
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
        object BSFD: TComboBox
          Left = 746
          Top = 16
          Width = 79
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 13
        end
        object CheckBox1: TCheckBox
          Left = 1168
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Not Null'
          Checked = True
          State = cbChecked
          TabOrder = 14
        end
        object SKU: TEdit
          Left = 615
          Top = 16
          Width = 82
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ComboBox7: TComboBox
          Left = 1472
          Top = 16
          Width = 89
          Height = 28
          ItemHeight = 20
          ItemIndex = 0
          TabOrder = 16
          Text = 'Develop'
          Visible = False
          Items.Strings = (
            'Develop')
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 326
        Width = 1356
        Height = 332
        Align = alClient
        Caption = 'Panel10'
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 330
          Align = alClient
          DataSource = showkfxxzl
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = DBGridEh3CellClick
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'xiexing'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Xiexing'
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'SheHao'
              Footers = <>
              ReadOnly = True
              Width = 59
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'ShoeName'
              Width = 137
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'DEVCODE'
              Footer.FieldName = 'DEVCODE'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'SR#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 164
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 172
            end
            item
              EditButtons = <>
              FieldName = 'cut'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Cut'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'PFS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Previous FTY Source'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'CT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Commercialization Trial'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'SS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sample Size'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'SCC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Size Conversion Chart#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'MMD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Main Material Description'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'MiniC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MOQ'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'UpperMat'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Upper Composition'
              Width = 152
            end
            item
              EditButtons = <>
              FieldName = 'LiningMat'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Lining Composition'
              Width = 162
            end
            item
              EditButtons = <>
              FieldName = 'InsoleMat'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Insole Composition'
              Width = 172
            end
            item
              EditButtons = <>
              FieldName = 'OutsoleMat'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Outsole Composition'
              Width = 137
            end
            item
              EditButtons = <>
              FieldName = 'FTWT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'FT/WT'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'PCS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PC Status'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'NCD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'New Cutting Die'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'TEST'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Test'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 205
            end
            item
              EditButtons = <>
              FieldName = 'CDC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Cutting Die Code'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 202
            end
            item
              EditButtons = <>
              FieldName = 'CTS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'CTS Developer'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'NA'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'HQ Developer'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'Remarks'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 216
            end
            item
              EditButtons = <>
              FieldName = 'category'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Category'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'bucket'
              Footers = <>
              ReadOnly = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'extra'
              Footers = <>
              ReadOnly = True
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = 'extraday'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'ToeCap'
              Footers = <>
              ReadOnly = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'ToeBumper'
              Footers = <>
              ReadOnly = True
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'Foxing'
              Footers = <>
              ReadOnly = True
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'HeelLogo'
              Footers = <>
              ReadOnly = True
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'Tier'
              Footers = <>
              ReadOnly = True
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'productionType'
              Footers = <>
              ReadOnly = True
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'colorwaystatus'
              Footers = <>
              ReadOnly = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'Segment'
              Footers = <>
              Width = 122
            end
            item
              EditButtons = <>
              FieldName = 'Type'
              Footers = <>
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'UpperMatDetail'
              Footers = <>
              ReadOnly = True
              Width = 132
            end
            item
              EditButtons = <>
              FieldName = 'LiningMatDetail'
              Footers = <>
              ReadOnly = True
              Width = 177
            end
            item
              EditButtons = <>
              FieldName = 'InsoleMatDetail'
              Footers = <>
              ReadOnly = True
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'OutsoleMatDetail'
              Footers = <>
              ReadOnly = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'RFCDeadlineDate'
              Footers = <>
              Title.Caption = 'RFC Deadline'
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 49
        Width = 1356
        Height = 277
        Align = alTop
        TabOrder = 2
        object Label5: TLabel
          Left = 1185
          Top = 102
          Width = 73
          Height = 16
          Caption = 'Dev Factory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 275
          Top = 80
          Width = 131
          Height = 16
          Caption = 'Previous FTY Source '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 380
          Top = 8
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 949
          Top = 115
          Width = 55
          Height = 16
          Caption = 'Category'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 1212
          Top = 80
          Width = 45
          Height = 16
          Caption = 'Gender'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 388
          Top = 55
          Width = 19
          Height = 16
          Caption = 'Cut'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 1199
          Top = 32
          Width = 56
          Height = 16
          Caption = 'Colorway'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 326
          Top = 133
          Width = 76
          Height = 16
          Caption = 'Sample Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 664
          Top = 248
          Width = 49
          Height = 16
          Caption = 'Outsole '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 1233
          Top = 7
          Width = 25
          Height = 16
          Caption = 'Last'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 676
          Top = 25
          Width = 43
          Height = 16
          Caption = 'FT/WT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 660
          Top = 50
          Width = 58
          Height = 16
          Caption = 'PC Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 1190
          Top = 59
          Width = 67
          Height = 16
          Caption = 'Tech Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 332
          Top = 32
          Width = 75
          Height = 16
          Caption = 'Rubber SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 264
          Top = 106
          Width = 140
          Height = 16
          Caption = 'Commercialization Trial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ShoeImage: TImage
          Left = 0
          Top = 0
          Width = 233
          Height = 161
          PopupMenu = shoePicpopo
          Stretch = True
        end
        object Label74: TLabel
          Left = 265
          Top = 179
          Width = 138
          Height = 16
          Caption = 'Size Conversion Chart#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label75: TLabel
          Left = 254
          Top = 206
          Width = 151
          Height = 16
          Caption = 'Main Material Description'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label79: TLabel
          Left = 621
          Top = 66
          Width = 94
          Height = 16
          Caption = 'New Cutting Die'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label80: TLabel
          Left = 1228
          Top = 218
          Width = 31
          Height = 20
          Caption = 'Test'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 618
          Top = 90
          Width = 100
          Height = 16
          Caption = 'Cutting Die Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 951
          Top = 92
          Width = 55
          Height = 16
          Caption = 'Remarks'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TLabel
          Left = 911
          Top = 50
          Width = 94
          Height = 16
          Caption = 'CTS Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label87: TLabel
          Left = 917
          Top = 73
          Width = 87
          Height = 16
          Caption = 'HQ Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TLabel
          Left = 1240
          Top = 127
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object excelout: TLabel
          Left = 15
          Top = 242
          Width = 27
          Height = 16
          Caption = '   ing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Exceloutlb: TLabel
          Left = 7
          Top = 226
          Width = 51
          Height = 16
          Caption = 'Excelout'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label233: TLabel
          Left = 682
          Top = 8
          Width = 31
          Height = 16
          Caption = 'MOQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 899
          Top = 137
          Width = 107
          Height = 16
          Caption = 'Bucket(SMU only)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label235: TLabel
          Left = 1221
          Top = 145
          Width = 37
          Height = 20
          Caption = 'Extra'
        end
        object Label236: TLabel
          Left = 1195
          Top = 168
          Width = 65
          Height = 20
          Caption = 'ExtraDay'
        end
        object Label32: TLabel
          Left = 350
          Top = 230
          Width = 56
          Height = 20
          Caption = 'ToeCap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 327
          Top = 250
          Width = 83
          Height = 20
          Caption = 'ToeBumper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label62: TLabel
          Left = 669
          Top = 113
          Width = 47
          Height = 20
          Caption = 'Foxing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 652
          Top = 136
          Width = 69
          Height = 20
          Caption = 'HeelLogo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 1167
          Top = 191
          Width = 87
          Height = 20
          Caption = 'CapacityTier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TLabel
          Left = 295
          Top = 153
          Width = 110
          Height = 20
          Caption = 'ProductionType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TLabel
          Left = 895
          Top = 1
          Width = 111
          Height = 20
          Caption = 'ColorwayStatus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label76: TLabel
          Left = 943
          Top = 19
          Width = 65
          Height = 20
          Caption = 'Segment'
        end
        object Label246: TLabel
          Left = 951
          Top = 248
          Width = 48
          Height = 16
          Caption = 'Midsole'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label286: TLabel
          Left = 1184
          Top = 248
          Width = 72
          Height = 16
          Caption = 'PrdLocation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label311: TLabel
          Left = 120
          Top = 227
          Width = 35
          Height = 16
          Caption = 'Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label312: TLabel
          Left = 72
          Top = 254
          Width = 85
          Height = 16
          Caption = 'RFC Deadline'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit28: TDBEdit
          Left = 1261
          Top = 98
          Width = 130
          Height = 24
          Color = clScrollBar
          DataField = 'kfcq'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit33: TDBEdit
          Left = 1261
          Top = 27
          Width = 130
          Height = 24
          Color = clScrollBar
          DataField = 'YSSM'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit34: TDBEdit
          Left = 412
          Top = 0
          Width = 161
          Height = 24
          Color = clScrollBar
          DataField = 'DEVCODE'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit35: TDBEdit
          Left = 412
          Top = 24
          Width = 161
          Height = 24
          Color = clScrollBar
          DataField = 'Article'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit36: TDBEdit
          Left = 1261
          Top = 50
          Width = 130
          Height = 24
          Color = clScrollBar
          DataField = 'kflx'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit39: TDBEdit
          Left = 1261
          Top = 75
          Width = 130
          Height = 24
          Color = clScrollBar
          DataField = 'GENDER'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit41: TDBEdit
          Left = 1263
          Top = 2
          Width = 128
          Height = 24
          Color = clScrollBar
          DataField = 'XTMH'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit48: TDBEdit
          Left = 719
          Top = 245
          Width = 128
          Height = 24
          Color = clScrollBar
          DataField = 'DDMH'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit50: TDBEdit
          Left = 410
          Top = 205
          Width = 164
          Height = 24
          Color = clHighlightText
          DataField = 'MMD'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit51: TDBEdit
          Left = 721
          Top = 3
          Width = 146
          Height = 24
          Color = clHighlightText
          DataField = 'MiniC'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 187
          Width = 97
          Height = 17
          Caption = 'TransferOUT'
          DataField = 'transfer'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 206
          Width = 97
          Height = 17
          Caption = 'Dropped'
          DataField = 'dropped'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit58: TDBEdit
          Left = 1261
          Top = 215
          Width = 130
          Height = 24
          DataField = 'TEST'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit61: TDBEdit
          Left = 722
          Top = 88
          Width = 149
          Height = 24
          DataField = 'CDC'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit62: TDBEdit
          Left = 1260
          Top = 122
          Width = 131
          Height = 24
          Color = clScrollBar
          DataField = 'fd'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit65: TDBEdit
          Left = 1008
          Top = 90
          Width = 150
          Height = 24
          DataField = 'Remarks'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBComboBox1: TDBComboBox
          Left = 722
          Top = 24
          Width = 149
          Height = 24
          Style = csDropDownList
          DataField = 'FTWT'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Pass'
            'Fail'
            'None')
          ParentFont = False
          TabOrder = 16
        end
        object DBComboBox2: TDBComboBox
          Left = 411
          Top = 176
          Width = 164
          Height = 24
          Style = csDropDownList
          DataField = 'SCC'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            '#1'
            '#2'
            '#3'
            '#4'
            '#5'
            '#6'
            '#7'
            '#8'
            '#8A'
            '#8B'
            '#9'
            '#9A'
            '#9B'
            '#11')
          ParentFont = False
          TabOrder = 17
        end
        object DBCheckBox3: TDBCheckBox
          Left = 8
          Top = 168
          Width = 97
          Height = 17
          Caption = 'CheckOk'
          DataField = 'yn'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
        end
        object DBComboBox32: TDBComboBox
          Left = 411
          Top = 48
          Width = 163
          Height = 24
          Style = csDropDownList
          DataField = 'cut'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Hi'
            'Ox'
            'Mid')
          ParentFont = False
          TabOrder = 19
        end
        object DBComboBox6: TDBComboBox
          Left = 1010
          Top = 132
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'bucket'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'HQ'
            'China'
            'Italy'
            'EMEA')
          ParentFont = False
          TabOrder = 20
        end
        object DBEdit2: TDBEdit
          Left = 1259
          Top = 143
          Width = 133
          Height = 24
          DataField = 'extra'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit4: TDBEdit
          Left = 1260
          Top = 168
          Width = 133
          Height = 24
          Color = clScrollBar
          DataField = 'extraday'
          DataSource = showkfxxzl
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object extrab: TButton
          Left = 1204
          Top = 141
          Width = 18
          Height = 26
          Caption = '#'
          Enabled = False
          TabOrder = 23
          OnClick = extrabClick
        end
        object DBComboBox7: TDBComboBox
          Left = 1008
          Top = 109
          Width = 146
          Height = 24
          Style = csDropDownList
          DataField = 'category'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Lifestyle'
            'Performance')
          ParentFont = False
          TabOrder = 24
        end
        object DBCheckBox4: TDBCheckBox
          Left = 123
          Top = 186
          Width = 96
          Height = 17
          Caption = 'TransferIN'
          DataField = 'transferin'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 123
          Top = 204
          Width = 97
          Height = 17
          Caption = 'LookSee'
          DataField = 'Looksee'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
        end
        object DBEdit11: TDBEdit
          Left = 410
          Top = 231
          Width = 164
          Height = 24
          Color = clHighlightText
          DataField = 'ToeCap'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object DBEdit29: TDBEdit
          Left = 410
          Top = 251
          Width = 164
          Height = 24
          Color = clHighlightText
          DataField = 'ToeBumper'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
        object DBEdit30: TDBEdit
          Left = 721
          Top = 111
          Width = 152
          Height = 24
          Color = clHighlightText
          DataField = 'Foxing'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit47: TDBEdit
          Left = 721
          Top = 133
          Width = 152
          Height = 24
          Color = clHighlightText
          DataField = 'HeelLogo'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
        end
        object DBComboBox8: TDBComboBox
          Left = 1261
          Top = 192
          Width = 132
          Height = 24
          Style = csDropDownList
          DataField = 'Tier'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'T1-VeryHighOutput'
            'T2-HighOutput'
            'T3-AvgOutput'
            'T4-LowOutput')
          ParentFont = False
          TabOrder = 31
        end
        object DBComboBox9: TDBComboBox
          Left = 410
          Top = 153
          Width = 164
          Height = 24
          Style = csDropDownList
          DataField = 'productionType'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Coldcement'
            'Vulcanized')
          ParentFont = False
          TabOrder = 32
        end
        object DBComboBox11: TDBComboBox
          Left = 1008
          Top = -1
          Width = 151
          Height = 24
          Style = csDropDownList
          DataField = 'colorwaystatus'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'R1Approved'
            'R1Revised'
            'R2Revised'
            'R2Add'
            'R2Approved'
            'R3Revised'
            'R3Add'
            'R3Approved'
            'R4Approved')
          ParentFont = False
          TabOrder = 33
        end
        object DBComboBox12: TDBComboBox
          Left = 1008
          Top = 20
          Width = 151
          Height = 24
          Style = csDropDownList
          DataField = 'Segment'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Converse All Star'
            'Converse Cons'
            'Chuck Taylor All Star'
            'Chuck 70'
            'Skate'
            'GTX'
            'W/P'
            'One Star'
            'Jack Purcell'
            'SA'
            '')
          ParentFont = False
          TabOrder = 34
        end
        object DBEdit56: TDBComboBox
          Left = 722
          Top = 47
          Width = 151
          Height = 24
          Style = csDropDownList
          DataField = 'PCS'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Yes'
            'No')
          ParentFont = False
          TabOrder = 35
        end
        object DBEdit57: TDBComboBox
          Left = 722
          Top = 67
          Width = 151
          Height = 24
          Style = csDropDownList
          DataField = 'NCD'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Yes'
            'No')
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit38: TDBComboBox
          Left = 411
          Top = 102
          Width = 163
          Height = 24
          Style = csDropDownList
          DataField = 'CT'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Yes'
            'No')
          ParentFont = False
          TabOrder = 37
        end
        object DBEdit40: TDBComboBox
          Left = 411
          Top = 128
          Width = 163
          Height = 24
          Style = csDropDownList
          DataField = 'SS'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'C1'
            'C2'
            'C4'
            'I7'
            'J13'
            'K4'
            'M9'
            'U5'
            'U5.5'
            'U9'
            'W7'
            'Y13')
          ParentFont = False
          TabOrder = 38
        end
        object DBEdit37: TDBComboBox
          Left = 411
          Top = 76
          Width = 163
          Height = 24
          Style = csDropDownList
          DataField = 'PFS'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'BY'
            'FT'
            'HF'
            'LYN'
            'PCN'
            'SQ')
          ParentFont = False
          TabOrder = 39
        end
        object Panel24: TPanel
          Left = 592
          Top = 156
          Width = 566
          Height = 85
          Color = clAqua
          TabOrder = 40
          object Label59: TLabel
            Left = 11
            Top = 22
            Width = 114
            Height = 16
            Caption = 'Insole Composition'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label227: TLabel
            Left = 350
            Top = 24
            Width = 61
            Height = 16
            Caption = 'Insole Mat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 11
            Top = 41
            Width = 116
            Height = 16
            Caption = 'Upper Composition'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label225: TLabel
            Left = 352
            Top = 46
            Width = 63
            Height = 16
            Caption = 'Upper Mat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label226: TLabel
            Left = 350
            Top = 2
            Width = 60
            Height = 16
            Caption = 'Lining Mat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label77: TLabel
            Left = 10
            Top = 2
            Width = 113
            Height = 16
            Caption = 'Lining Composition'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label228: TLabel
            Left = 343
            Top = 64
            Width = 71
            Height = 16
            Caption = 'Outsole Mat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label78: TLabel
            Left = 0
            Top = 60
            Width = 124
            Height = 16
            Caption = 'Outsole Composition'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit42: TDBEdit
            Left = 416
            Top = 20
            Width = 150
            Height = 24
            DataField = 'InsoleMatDetail'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit154: TDBEdit
            Left = 128
            Top = 20
            Width = 155
            Height = 24
            DataField = 'InsoleMat'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit31: TDBEdit
            Left = 416
            Top = 41
            Width = 150
            Height = 24
            DataField = 'UpperMatDetail'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit132: TDBEdit
            Left = 128
            Top = 40
            Width = 155
            Height = 24
            DataField = 'UpperMat'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit153: TDBEdit
            Left = 128
            Top = -1
            Width = 155
            Height = 24
            DataField = 'LiningMat'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit52: TDBEdit
            Left = 416
            Top = -1
            Width = 150
            Height = 24
            DataField = 'LiningMatDetail'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit155: TDBEdit
            Left = 128
            Top = 61
            Width = 155
            Height = 24
            DataField = 'OutsoleMat'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit54: TDBEdit
            Left = 416
            Top = 63
            Width = 150
            Height = 24
            DataField = 'OutsoleMatDetail'
            DataSource = showkfxxzl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
        end
        object DBEdit182: TDBEdit
          Left = 1010
          Top = 244
          Width = 150
          Height = 24
          DataField = 'Midsole'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
        end
        object DBEdit183: TDBEdit
          Left = 1263
          Top = 245
          Width = 128
          Height = 24
          Color = clScrollBar
          DataField = 'ProductionLocation'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 42
        end
        object DBComboBox20: TDBComboBox
          Left = 1008
          Top = 67
          Width = 151
          Height = 24
          Style = csDropDownList
          DataField = 'NA'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'Kender, Laura'
            'Fabiani, Tom'
            'LaFontaine, Kristen'
            'Vercollone, Stephen'
            'Martin, Ben'
            'Acconcia, Lynne'
            'Chute, James'
            'Beardsley, Jon'
            'Beardsley, Matthew'
            'Zhang, Amanda'
            'Holmes, Michael'
            'Agahigian, Daniel'
            'Thompson, Catherine'
            'Woods, Greg'
            'Cahill, Derek')
          ParentFont = False
          TabOrder = 43
        end
        object DBComboBox21: TDBComboBox
          Left = 1008
          Top = 41
          Width = 151
          Height = 24
          Style = csDropDownList
          DataField = 'CTS'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'D2D'
            'Dao, Ken'
            'To, Hung'
            'Nguyen, Binh'
            'Duong, Mark'
            'Vo, Phuong'
            'Huynh, Anh'
            'Pham, Phuong'
            'Nam, Truong'
            'Joy, Tran')
          ParentFont = False
          TabOrder = 44
        end
        object DBComboBox22: TDBComboBox
          Left = 162
          Top = 223
          Width = 140
          Height = 24
          Style = csDropDownList
          DataField = 'TYPE'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Chuck70'
            'Chuck Taylor All Star'
            'Skate'
            'GTX'
            'W/P'
            'One Star'
            'Jack Purcell'
            'SA'
            'Cupsole'
            'Core Chuck'
            'CT70 foundation')
          ParentFont = False
          TabOrder = 45
        end
        object DBEdit63: TDBEdit
          Left = 162
          Top = 250
          Width = 120
          Height = 24
          DataField = 'RFCDeadlineDate'
          DataSource = showkfxxzl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 46
        end
        object DateTimePicker46: TDateTimePicker
          Left = 280
          Top = 250
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 47
          OnChange = DateTimePicker46Change
        end
      end
    end
    object CFM_Statues: TTabSheet
      Caption = 'CFM_Status'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 304
          Top = 18
          Width = 53
          Height = 16
          Caption = 'Season  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 520
          Top = 20
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 403
          Top = 21
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label198: TLabel
          Left = 678
          Top = 19
          Width = 38
          Height = 16
          Caption = 'TEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label201: TLabel
          Left = 832
          Top = 20
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label216: TLabel
          Left = 936
          Top = 20
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 352
          Top = 16
          Width = 49
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Text = '16'
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object BitBtn2: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 2
          OnClick = BitBtn2Click
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
        object BitBtn3: TBitBtn
          Left = 104
          Top = 0
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
          OnClick = BitBtn3Click
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
        object BitBtn4: TBitBtn
          Left = 152
          Top = 0
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
          OnClick = BitBtn4Click
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
        object BitBtn5: TBitBtn
          Left = 200
          Top = 0
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
          OnClick = BitBtn5Click
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
        object cfmarticle: TEdit
          Left = 552
          Top = 16
          Width = 121
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object cbx1: TComboBox
          Left = 424
          Top = 16
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          OnChange = cbx1Change
        end
        object BitBtn1: TBitBtn
          Left = 8
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = Button1Click
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
        object EXCEL2: TButton
          Left = 248
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 8
          OnClick = EXCEL2Click
        end
        object TeamCFM: TComboBox
          Left = 720
          Top = 16
          Width = 97
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'A'
            'B'
            'C'
            'SMU')
        end
        object cfmtype: TComboBox
          Left = 868
          Top = 16
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 10
          OnChange = cfmtypeChange
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object cfmsubtype: TComboBox
          Left = 996
          Top = 16
          Width = 77
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
        object notall: TCheckBox
          Left = 1080
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Not Null'
          Checked = True
          State = cbChecked
          TabOrder = 12
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 257
        Width = 1356
        Height = 401
        Align = alClient
        Color = clMenu
        DataSource = CFMreceive
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh1CellClick
        Columns = <
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
            Title.Color = clBtnShadow
            Width = 109
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Title.Color = clBtnShadow
            Width = 65
          end
          item
            Color = clSilver
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Xieming'
            Title.Color = clBtnShadow
            Width = 112
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ARTICLE'
            Width = 144
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'devcode'
            Footer.FieldName = 'DEVCODE_1'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DEVCODE'
            Width = 144
          end
          item
            EditButtons = <>
            FieldName = 'PCDate'
            Footers = <>
            ReadOnly = True
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'RLDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Release date'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'PCstatus'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PC Status'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'HandOver'
            Footers = <>
            ReadOnly = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'Override'
            Footers = <>
            ReadOnly = True
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'IDD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ISD#'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'IBM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Initial Buy Month'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CFMSFD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFM shoe finished date'
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'CspecSD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFM spec CTS sign date'
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'CcolorSD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFM color Swatch book CTS sign date'
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'CcolorFD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFM color Swatch book finished date'
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'CshoeSD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFM shoe CTS sign date'
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'BOOKTW'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Confirmation Color Swatch book|Data-Taiwan 1 set'
            Width = 136
          end
          item
            EditButtons = <>
            FieldName = 'BOOKCHINA'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Confirmation Color Swatch book|Date-China set'
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'BOOKLYNDC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Confirmation Color Swatch book|Date-LYNDC PI  2 set '
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'CSTW'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Confirmation Sample|Date-TW 0.5 Pair'
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'CSLYNDC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Confirmation Sample|Date-LYNDC PI 3 pairs'
            Width = 173
          end
          item
            EditButtons = <>
            FieldName = 'A4TW'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A4 color Swatch(Before/After Vul)|Data-Taiwan 1 set'
            Width = 141
          end
          item
            EditButtons = <>
            FieldName = 'A4CHINA'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A4 color Swatch(Before/After Vul)|Date-China1 set'
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'A4LYNDC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'A4 color Swatch(Before/After Vul)|Date-LYNDC PI  2 set '
            Width = 166
          end
          item
            EditButtons = <>
            FieldName = 'TPDATE'
            Footers = <>
            ReadOnly = True
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'NA'
            Footers = <>
            ReadOnly = True
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
            ReadOnly = True
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'ProductionLocation'
            Footers = <>
            Width = 45
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 49
        Width = 1356
        Height = 208
        Align = alTop
        UseDockManager = False
        TabOrder = 2
        object Label34: TLabel
          Left = 304
          Top = 72
          Width = 27
          Height = 16
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 305
          Top = 49
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 251
          Top = 26
          Width = 78
          Height = 16
          Caption = 'PjojectName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 955
          Top = 163
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 281
          Top = 90
          Width = 50
          Height = 16
          Caption = 'PC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 274
          Top = 111
          Width = 58
          Height = 16
          Caption = 'PC Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 277
          Top = 135
          Width = 52
          Height = 16
          Caption = 'Override'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 248
          Top = 156
          Width = 84
          Height = 16
          Caption = 'Release Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 302
          Top = 183
          Width = 29
          Height = 16
          Caption = 'ISD#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 483
          Top = 5
          Width = 89
          Height = 16
          Caption = 'InitialBuyMonth'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 949
          Top = 187
          Width = 23
          Height = 16
          Caption = 'N/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 1141
          Top = 160
          Width = 27
          Height = 16
          Caption = 'CTS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 1142
          Top = 182
          Width = 26
          Height = 16
          Caption = 'Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 505
          Top = 28
          Width = 62
          Height = 16
          Caption = 'HandOver'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 233
          Height = 161
          PopupMenu = shoePicpopo
          Stretch = True
        end
        object Label287: TLabel
          Left = 1298
          Top = 185
          Width = 72
          Height = 16
          Caption = 'PrdLocation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit19: TDBEdit
          Left = 333
          Top = 69
          Width = 153
          Height = 24
          Color = clScrollBar
          DataField = 'article'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit20: TDBEdit
          Left = 333
          Top = 47
          Width = 153
          Height = 24
          Color = clScrollBar
          DataField = 'devcode'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit22: TDBEdit
          Left = 333
          Top = 23
          Width = 153
          Height = 24
          Color = clScrollBar
          DataField = 'XieXing'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit23: TDBEdit
          Left = 976
          Top = 156
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'FD'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 333
          Top = 89
          Width = 132
          Height = 24
          Color = clScrollBar
          DataField = 'PCDate'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 334
          Top = 157
          Width = 132
          Height = 24
          DataField = 'RLDate'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 334
          Top = 180
          Width = 128
          Height = 24
          DataField = 'IDD'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Panel7: TPanel
          Left = 707
          Top = 0
          Width = 225
          Height = 201
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          object Label14: TLabel
            Left = 16
            Top = 71
            Width = 85
            Height = 13
            Caption = 'ColorSwatchBook'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 12
            Top = 44
            Width = 87
            Height = 13
            Caption = 'ShoeFinishedDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 33
            Top = 141
            Width = 65
            Height = 13
            Caption = 'CTSSignDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 15
            Top = 128
            Width = 85
            Height = 13
            Caption = 'ColorSwatchBook'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 37
            Top = 84
            Width = 62
            Height = 13
            Caption = 'FinishedDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 88
            Top = 8
            Width = 41
            Height = 24
            Caption = 'CFM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 10
            Top = 103
            Width = 90
            Height = 13
            Caption = 'SpecCTSSignDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label199: TLabel
            Left = 6
            Top = 165
            Width = 46
            Height = 13
            Caption = 'ShoeCTS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label200: TLabel
            Left = 56
            Top = 164
            Width = 44
            Height = 13
            Caption = 'SignDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit3: TDBEdit
            Left = 104
            Top = 40
            Width = 119
            Height = 21
            DataField = 'CFMSFD'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 104
            Top = 128
            Width = 119
            Height = 21
            DataField = 'CcolorSD'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 104
            Top = 70
            Width = 119
            Height = 21
            DataField = 'CcolorFD'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 104
            Top = 99
            Width = 119
            Height = 21
            DataField = 'CspecSD'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit152: TDBEdit
            Left = 105
            Top = 160
            Width = 117
            Height = 21
            DataField = 'CshoeSD'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DateTimePicker8: TDateTimePicker
            Left = 204
            Top = 40
            Width = 22
            Height = 21
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 5
            OnChange = DateTimePicker8Change
          end
          object DateTimePicker9: TDateTimePicker
            Left = 204
            Top = 70
            Width = 22
            Height = 21
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 6
            OnChange = DateTimePicker9Change
          end
          object DateTimePicker10: TDateTimePicker
            Left = 204
            Top = 99
            Width = 22
            Height = 21
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 7
            OnChange = DateTimePicker10Change
          end
          object DateTimePicker11: TDateTimePicker
            Left = 204
            Top = 128
            Width = 22
            Height = 21
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 8
            OnChange = DateTimePicker11Change
          end
          object DateTimePicker12: TDateTimePicker
            Left = 204
            Top = 160
            Width = 22
            Height = 21
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 9
            OnChange = DateTimePicker12Change
          end
        end
        object Panel9: TPanel
          Left = 499
          Top = 49
          Width = 201
          Height = 152
          Color = clSkyBlue
          TabOrder = 8
          object Label47: TLabel
            Left = 32
            Top = 8
            Width = 150
            Height = 20
            Caption = 'Confirmation Color'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 56
            Top = 32
            Width = 106
            Height = 20
            Caption = 'Swatch Book'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label49: TLabel
            Left = 48
            Top = 64
            Width = 25
            Height = 16
            Caption = 'TW '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 32
            Top = 88
            Width = 37
            Height = 16
            Caption = 'China '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 4
            Top = 123
            Width = 67
            Height = 16
            Caption = 'LYNDC QC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit15: TDBEdit
            Left = 72
            Top = 56
            Width = 121
            Height = 24
            DataField = 'BOOKTW'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit16: TDBEdit
            Left = 72
            Top = 88
            Width = 121
            Height = 24
            DataField = 'BOOKCHINA'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 72
            Top = 120
            Width = 121
            Height = 24
            DataField = 'BOOKLYNDC'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DateTimePicker5: TDateTimePicker
            Left = 171
            Top = 56
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 3
            OnChange = DateTimePicker5Change
          end
          object DateTimePicker6: TDateTimePicker
            Left = 171
            Top = 88
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 4
            OnChange = DateTimePicker6Change
          end
          object DateTimePicker7: TDateTimePicker
            Left = 171
            Top = 120
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 5
            OnChange = DateTimePicker7Change
          end
        end
        object DBEdit12: TDBEdit
          Left = 976
          Top = 183
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'NA'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 1169
          Top = 156
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'CTS'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object Panel3: TPanel
          Left = 933
          Top = 0
          Width = 175
          Height = 153
          Color = clSkyBlue
          TabOrder = 11
          object Label22: TLabel
            Left = 32
            Top = 8
            Width = 103
            Height = 20
            Caption = 'Confirmation'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 48
            Top = 24
            Width = 61
            Height = 20
            Caption = 'Sample'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 39
            Top = 52
            Width = 21
            Height = 13
            Caption = 'TW '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 3
            Top = 80
            Width = 54
            Height = 13
            Caption = 'LYNDC QC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit18: TDBEdit
            Left = 58
            Top = 48
            Width = 103
            Height = 21
            DataField = 'CSTW'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit25: TDBEdit
            Left = 60
            Top = 77
            Width = 101
            Height = 21
            DataField = 'CSLYNDC'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DateTimePicker13: TDateTimePicker
            Left = 145
            Top = 48
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 2
            OnChange = DateTimePicker13Change
          end
          object DateTimePicker14: TDateTimePicker
            Left = 145
            Top = 74
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 3
            OnChange = DateTimePicker14Change
          end
        end
        object Panel4: TPanel
          Left = 1110
          Top = 0
          Width = 187
          Height = 153
          Color = clSkyBlue
          TabOrder = 12
          object Label27: TLabel
            Left = 24
            Top = 5
            Width = 134
            Height = 20
            Caption = 'A4 Color Swatch'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 24
            Top = 21
            Width = 143
            Height = 20
            Caption = '(Before/After Vul)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 42
            Top = 54
            Width = 21
            Height = 13
            Caption = 'TW '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 32
            Top = 85
            Width = 30
            Height = 13
            Caption = 'China '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 7
            Top = 113
            Width = 54
            Height = 13
            Caption = 'LYNDC QC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit8: TDBEdit
            Left = 63
            Top = 48
            Width = 114
            Height = 21
            DataField = 'A4TW'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit26: TDBEdit
            Left = 63
            Top = 80
            Width = 114
            Height = 21
            DataField = 'A4CHINA'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit27: TDBEdit
            Left = 63
            Top = 110
            Width = 114
            Height = 21
            DataField = 'A4LYNDC'
            DataSource = CFMreceive
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DateTimePicker15: TDateTimePicker
            Left = 160
            Top = 48
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 3
            OnChange = DateTimePicker15Change
          end
          object DateTimePicker16: TDateTimePicker
            Left = 161
            Top = 80
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 4
            OnChange = DateTimePicker16Change
          end
          object DateTimePicker17: TDateTimePicker
            Left = 161
            Top = 110
            Width = 22
            Height = 28
            Date = 42564.323215428240000000
            Time = 42564.323215428240000000
            TabOrder = 5
            OnChange = DateTimePicker17Change
          end
        end
        object DBEdit64: TDBEdit
          Left = 1170
          Top = 180
          Width = 120
          Height = 24
          Color = clSilver
          DataField = 'SS'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DateTimePicker2: TDateTimePicker
          Left = 464
          Top = 89
          Width = 20
          Height = 28
          Date = 42564.323215428240000000
          Format = 'dd/MM/yyyy'
          Time = 42564.323215428240000000
          TabOrder = 14
          Visible = False
          OnChange = DateTimePicker2Change
        end
        object DateTimePicker3: TDateTimePicker
          Left = 461
          Top = 157
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 15
          OnChange = DateTimePicker3Change
        end
        object DateTimePicker4: TDateTimePicker
          Left = 461
          Top = 180
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 16
          OnChange = DateTimePicker4Change
        end
        object DBComboBox3: TDBComboBox
          Left = 334
          Top = 112
          Width = 150
          Height = 24
          Style = csDropDownList
          DataField = 'PCstatus'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Released'
            'Hold')
          ParentFont = False
          TabOrder = 17
        end
        object DBComboBox4: TDBComboBox
          Left = 573
          Top = 1
          Width = 133
          Height = 21
          Style = csDropDownList
          DataField = 'IBM'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            ''
            'Jan'
            'Feb'
            'Mar'
            'Apr'
            'May'
            'Jun'
            'Jul'
            'Aug'
            'Sep'
            'Oct'
            'Nov'
            'Dec')
          ParentFont = False
          TabOrder = 18
          OnChange = DBComboBox4Change
        end
        object DBComboBox5: TDBComboBox
          Left = 334
          Top = 134
          Width = 148
          Height = 24
          Style = csDropDownList
          DataField = 'Override'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            ''
            'Y'
            'N')
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit53: TDBEdit
          Left = 569
          Top = 27
          Width = 117
          Height = 24
          DataField = 'HandOver'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object DateTimePicker18: TDateTimePicker
          Left = 686
          Top = 27
          Width = 19
          Height = 28
          Date = 42564.323215428240000000
          Format = 'dd/MM/yyyy'
          Time = 42564.323215428240000000
          TabOrder = 21
          OnChange = DateTimePicker18Change
        end
        object DBEdit184: TDBEdit
          Left = 1376
          Top = 181
          Width = 120
          Height = 24
          Color = clSilver
          DataField = 'ProductionLocation'
          DataSource = CFMreceive
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'R1'
      ImageIndex = 3
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label187: TLabel
          Left = 517
          Top = 5
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label189: TLabel
          Left = 402
          Top = 6
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label190: TLabel
          Left = 444
          Top = 29
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label88: TLabel
          Left = 668
          Top = 7
          Width = 38
          Height = 16
          Caption = 'TEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label202: TLabel
          Left = 818
          Top = 7
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label211: TLabel
          Left = 790
          Top = 33
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label219: TLabel
          Left = 1448
          Top = 24
          Width = 66
          Height = 20
          Caption = 'Label219'
          Visible = False
        end
        object Label220: TLabel
          Left = 1376
          Top = 0
          Width = 66
          Height = 20
          Caption = 'Label220'
          Visible = False
        end
        object Label282: TLabel
          Left = 555
          Top = 32
          Width = 101
          Height = 16
          Caption = 'MaterialTracking'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn12: TBitBtn
          Left = 8
          Top = 0
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
          OnClick = BitBtn12Click
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
        object BitBtn13: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 1
          OnClick = BitBtn13Click
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
        object BitBtn14: TBitBtn
          Left = 104
          Top = 0
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
          OnClick = BitBtn14Click
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
        object BitBtn15: TBitBtn
          Left = 152
          Top = 0
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
          OnClick = BitBtn15Click
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
        object BitBtn16: TBitBtn
          Left = 200
          Top = 0
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
          TabOrder = 4
          OnClick = BitBtn16Click
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
        object R1Article: TEdit
          Left = 549
          Top = 3
          Width = 105
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object R1Season: TComboBox
          Left = 467
          Top = 3
          Width = 42
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 6
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object R1FD: TComboBox
          Left = 467
          Top = 29
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 7
          OnChange = cbx1Change
        end
        object R1Excel: TButton
          Left = 248
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 8
          OnClick = R1ExcelClick
        end
        object TeamR1: TComboBox
          Left = 714
          Top = 3
          Width = 92
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'A'
            'B'
            'C'
            'SMU')
        end
        object r1type: TComboBox
          Left = 854
          Top = 3
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 10
          OnChange = r1typeChange
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object r1subtype: TComboBox
          Left = 856
          Top = 29
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
        object checkR1: TCheckBox
          Left = 312
          Top = 11
          Width = 73
          Height = 17
          Caption = '+ETA'
          TabOrder = 12
        end
        object ShowSizer1: TCheckBox
          Left = 312
          Top = 24
          Width = 97
          Height = 17
          Caption = 'ShowSize'
          TabOrder = 13
          Visible = False
        end
        object CheckBox2: TCheckBox
          Left = 1360
          Top = 24
          Width = 97
          Height = 17
          Caption = 'Not Null'
          Checked = True
          State = cbChecked
          TabOrder = 14
        end
        object R1LAI: TComboBox
          Left = 672
          Top = 29
          Width = 105
          Height = 28
          ItemHeight = 20
          TabOrder = 15
          Items.Strings = (
            ''
            'LAIV'
            'LAIT'
            'LAIK'
            'BYIV'
            'BYIK'
            'BYIT')
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 57
        Width = 1356
        Height = 240
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label91: TLabel
          Left = 269
          Top = 8
          Width = 50
          Height = 16
          Caption = 'TP Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label92: TLabel
          Left = 237
          Top = 32
          Width = 82
          Height = 16
          Caption = 'Project Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label93: TLabel
          Left = 290
          Top = 56
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label94: TLabel
          Left = 261
          Top = 80
          Width = 56
          Height = 16
          Caption = 'Colorway'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label95: TLabel
          Left = 560
          Top = 144
          Width = 37
          Height = 16
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label96: TLabel
          Left = 252
          Top = 128
          Width = 67
          Height = 16
          Caption = 'Tech Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label97: TLabel
          Left = 274
          Top = 152
          Width = 45
          Height = 16
          Caption = 'Gender'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label98: TLabel
          Left = 1753
          Top = 69
          Width = 26
          Height = 16
          Caption = 'Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label99: TLabel
          Left = 285
          Top = 180
          Width = 32
          Height = 16
          Caption = 'Last#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label100: TLabel
          Left = 263
          Top = 201
          Width = 53
          Height = 16
          Caption = 'Outsole#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label101: TLabel
          Left = 1626
          Top = 10
          Width = 156
          Height = 16
          Caption = 'Material Final Ready Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label102: TLabel
          Left = 1001
          Top = 104
          Width = 89
          Height = 16
          Caption = 'Sample Notice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label103: TLabel
          Left = 1696
          Top = 35
          Width = 85
          Height = 16
          Caption = 'Pending issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label104: TLabel
          Left = 462
          Top = 37
          Width = 135
          Height = 16
          Caption = 'Pullover Finished Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label105: TLabel
          Left = 505
          Top = 8
          Width = 89
          Height = 16
          Caption = 'Pullover Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label106: TLabel
          Left = 1740
          Top = 121
          Width = 40
          Height = 16
          Caption = 'Cutting'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label107: TLabel
          Left = 1730
          Top = 144
          Width = 50
          Height = 16
          Caption = 'Stitching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label108: TLabel
          Left = 1721
          Top = 167
          Width = 60
          Height = 16
          Caption = 'Assembly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label110: TLabel
          Left = 779
          Top = 170
          Width = 68
          Height = 16
          Caption = 'Testing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label111: TLabel
          Left = 774
          Top = 193
          Width = 73
          Height = 16
          Caption = 'Keeping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label112: TLabel
          Left = 791
          Top = 218
          Width = 54
          Height = 16
          Caption = 'Total Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label113: TLabel
          Left = 1020
          Top = 14
          Width = 74
          Height = 16
          Caption = 'SampleETC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label114: TLabel
          Left = 1002
          Top = 37
          Width = 91
          Height = 16
          Caption = 'CTS inspection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label115: TLabel
          Left = 987
          Top = 61
          Width = 105
          Height = 16
          Caption = 'R1 Shipping Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label116: TLabel
          Left = 513
          Top = 172
          Width = 86
          Height = 16
          Caption = 'NA Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label117: TLabel
          Left = 505
          Top = 195
          Width = 94
          Height = 16
          Caption = 'CTS Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label118: TLabel
          Left = 506
          Top = 217
          Width = 92
          Height = 16
          Caption = 'Fcty Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label119: TLabel
          Left = 1045
          Top = 86
          Width = 48
          Height = 16
          Caption = 'Remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label121: TLabel
          Left = 1659
          Top = 48
          Width = 125
          Height = 16
          Caption = ' (clarification, pattern)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label122: TLabel
          Left = 984
          Top = 118
          Width = 110
          Height = 16
          Caption = 'To Sample Room '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label205: TLabel
          Left = 582
          Top = 93
          Width = 14
          Height = 16
          Caption = 'Fit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label206: TLabel
          Left = 564
          Top = 118
          Width = 33
          Height = 16
          Caption = 'Wear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ImageR1: TImage
          Left = 0
          Top = 0
          Width = 233
          Height = 161
          PopupMenu = shoePicpopo
          Stretch = True
        end
        object Label278: TLabel
          Left = 770
          Top = 150
          Width = 76
          Height = 16
          Caption = 'Shipping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label271: TLabel
          Left = 263
          Top = 103
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 486
          Top = 65
          Width = 112
          Height = 16
          Caption = 'Pullover CFM Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label288: TLabel
          Left = 1022
          Top = 137
          Width = 72
          Height = 16
          Caption = 'PrdLocation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label109: TLabel
          Left = 754
          Top = 9
          Width = 92
          Height = 16
          Caption = 'Component Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label292: TLabel
          Left = 739
          Top = 29
          Width = 105
          Height = 16
          Caption = 'Lasted Upper Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label293: TLabel
          Left = 739
          Top = 52
          Width = 188
          Height = 16
          Caption = 'Finished shoe to Tech team Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label294: TLabel
          Left = 776
          Top = 128
          Width = 68
          Height = 16
          Caption = 'Costing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label295: TLabel
          Left = 747
          Top = 101
          Width = 100
          Height = 16
          Caption = 'Half Stitching Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit49: TDBEdit
          Left = 321
          Top = 6
          Width = 98
          Height = 24
          DataField = 'TPDATE'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit55: TDBEdit
          Left = 321
          Top = 30
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XieMing'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit67: TDBEdit
          Left = 321
          Top = 54
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'devcode'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit68: TDBEdit
          Left = 321
          Top = 78
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'YSSM'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit70: TDBEdit
          Left = 321
          Top = 126
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'kflx'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit71: TDBEdit
          Left = 321
          Top = 150
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'GENDER'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit72: TDBEdit
          Left = 1784
          Top = 65
          Width = 123
          Height = 24
          Color = clScrollBar
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Visible = False
        end
        object DBEdit73: TDBEdit
          Left = 321
          Top = 176
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XTMH'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit74: TDBEdit
          Left = 321
          Top = 199
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'DDMH'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit76: TDBEdit
          Left = 600
          Top = 32
          Width = 102
          Height = 24
          DataField = 'RRSRD'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit77: TDBEdit
          Left = 1786
          Top = 39
          Width = 121
          Height = 24
          DataField = 'PI'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Visible = False
        end
        object DBEdit78: TDBEdit
          Left = 1097
          Top = 108
          Width = 119
          Height = 24
          DataField = 'DPS_NTSR'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit79: TDBEdit
          Left = 1786
          Top = 7
          Width = 121
          Height = 24
          DataField = 'MFRD'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          Visible = False
        end
        object DBEdit84: TDBEdit
          Left = 849
          Top = 166
          Width = 121
          Height = 24
          DataField = 'testing'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnKeyPress = DBEdit84KeyPress
        end
        object DBEdit85: TDBEdit
          Left = 849
          Top = 190
          Width = 121
          Height = 24
          DataField = 'OQ'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnKeyPress = DBEdit85KeyPress
        end
        object DBEdit86: TDBEdit
          Left = 849
          Top = 214
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'Total_Qty'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit87: TDBEdit
          Left = 1097
          Top = 9
          Width = 101
          Height = 24
          DataField = 'SETC'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit88: TDBEdit
          Left = 1097
          Top = 33
          Width = 101
          Height = 24
          DataField = 'CTSI'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit89: TDBEdit
          Left = 1097
          Top = 57
          Width = 101
          Height = 24
          DataField = 'RSD'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object DBEdit90: TDBEdit
          Left = 1097
          Top = 81
          Width = 121
          Height = 24
          DataField = 'remarks'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          Visible = False
        end
        object DBEdit91: TDBEdit
          Left = 601
          Top = 168
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'NA'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit92: TDBEdit
          Left = 601
          Top = 214
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'FD'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit93: TDBEdit
          Left = 601
          Top = 190
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'CTS'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBComboBox75: TDBComboBox
          Left = 599
          Top = 0
          Width = 122
          Height = 21
          DataField = 'ps'
          DataSource = R1recieve
          ItemHeight = 13
          Items.Strings = (
            ''
            'Pending'
            'Confirm '
            'No Need'
            '')
          TabOrder = 23
        end
        object DBComboBox153: TDBComboBox
          Left = 599
          Top = 88
          Width = 122
          Height = 21
          DataField = 'fit'
          DataSource = R1recieve
          ItemHeight = 13
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 24
        end
        object DBComboBox10: TDBComboBox
          Left = 599
          Top = 112
          Width = 122
          Height = 21
          Style = csDropDownList
          DataField = 'wear'
          DataSource = R1recieve
          ItemHeight = 13
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 25
        end
        object DateTimePicker19: TDateTimePicker
          Left = 419
          Top = 6
          Width = 22
          Height = 21
          Date = 0.323215428237745100
          Time = 0.323215428237745100
          TabOrder = 26
          OnChange = DateTimePicker19Change
        end
        object DateTimePicker20: TDateTimePicker
          Left = 699
          Top = 32
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 27
          OnChange = DateTimePicker20Change
        end
        object DateTimePicker21: TDateTimePicker
          Left = 1196
          Top = 106
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 28
          OnChange = DateTimePicker21Change
        end
        object DateTimePicker22: TDateTimePicker
          Left = 1197
          Top = 7
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 29
          OnChange = DateTimePicker22Change
        end
        object DateTimePicker23: TDateTimePicker
          Left = 1197
          Top = 32
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 30
          OnChange = DateTimePicker23Change
        end
        object DateTimePicker24: TDateTimePicker
          Left = 1197
          Top = 58
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 31
          OnChange = DateTimePicker24Change
        end
        object DBEdit177: TDBEdit
          Left = 849
          Top = 147
          Width = 121
          Height = 24
          DataField = 'SQ'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 32
          OnKeyPress = DBEdit177KeyPress
        end
        object DBComboBox15: TDBComboBox
          Left = 598
          Top = 142
          Width = 121
          Height = 21
          DataField = 'status'
          DataSource = R1recieve
          ItemHeight = 13
          Items.Strings = (
            ''
            'R1 Receive')
          TabOrder = 33
        end
        object r1subtpdb: TDBComboBox
          Left = 321
          Top = 101
          Width = 122
          Height = 21
          Color = clScrollBar
          DataField = 'subtype'
          DataSource = R1recieve
          ItemHeight = 13
          TabOrder = 34
        end
        object DBEdit21: TDBEdit
          Left = 600
          Top = 60
          Width = 102
          Height = 24
          DataField = 'PullCFMDate'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 35
        end
        object DateTimePicker1: TDateTimePicker
          Left = 699
          Top = 60
          Width = 22
          Height = 21
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 36
          OnChange = DateTimePicker1Change
        end
        object DBEdit185: TDBEdit
          Left = 1096
          Top = 133
          Width = 123
          Height = 24
          Color = clScrollBar
          DataField = 'ProductionLocation'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 37
        end
        object DBEdit82: TDBEdit
          Left = 849
          Top = 6
          Width = 121
          Height = 24
          DataField = 'Component_Qty'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 38
          OnKeyPress = DBEdit82KeyPress
        end
        object DBEdit189: TDBEdit
          Left = 849
          Top = 25
          Width = 121
          Height = 24
          DataField = 'Lasted_Upper_Qty'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          OnKeyPress = DBEdit189KeyPress
        end
        object DBEdit190: TDBEdit
          Left = 849
          Top = 69
          Width = 121
          Height = 24
          DataField = 'Finished_shoe_Qty'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 40
          OnKeyPress = DBEdit190KeyPress
        end
        object DBEdit191: TDBEdit
          Left = 849
          Top = 123
          Width = 121
          Height = 24
          DataField = 'Costing_Qty'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
          Visible = False
          OnKeyPress = DBEdit191KeyPress
        end
        object DBEdit192: TDBEdit
          Left = 849
          Top = 97
          Width = 121
          Height = 24
          DataField = 'Half_Stitching_Qty'
          DataSource = R1recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 42
          OnKeyPress = DBEdit192KeyPress
        end
        object Panel28: TPanel
          Left = 0
          Top = 168
          Width = 265
          Height = 72
          Align = alCustom
          Caption = 'Panel28'
          TabOrder = 43
          object DBGridEh8: TDBGridEh
            Left = 1
            Top = 1
            Width = 263
            Height = 70
            Align = alClient
            DataSource = MaterialMonitorDS
            Enabled = False
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            VertScrollBar.VisibleMode = sbNeverShowEh
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Parts'
                Footers = <>
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'UpdateDate'
                Footers = <>
                Width = 144
              end>
          end
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 297
        Width = 1356
        Height = 361
        Align = alClient
        TabOrder = 2
        object yj: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 359
          Align = alClient
          DataSource = R1recieve
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = yjCellClick
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'XieXing'
              Footers = <>
              ReadOnly = True
              Width = 70
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'SheHao'
              Footers = <>
              ReadOnly = True
              Width = 58
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              ReadOnly = True
              Width = 74
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'article'
              Footer.FieldName = 'ARTICLE_1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'ARTICLE'
              Title.Color = clWhite
              Width = 158
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'devcode'
              Footer.FieldName = 'DEVCODE_1'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DEVCODE'
              Width = 157
            end
            item
              EditButtons = <>
              FieldName = 'TPDATE'
              Footers = <>
              ReadOnly = True
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'status'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'PS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pullover Status'
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'RRSRD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pullover Finished Date'
              Width = 116
            end
            item
              EditButtons = <>
              FieldName = 'PullCFMDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PulloverCFMDate'
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'PI'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pending issue'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'DPS_NTSR'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DataPassSpecNoticeToSampleRoom'
              Width = 183
            end
            item
              EditButtons = <>
              FieldName = 'MFRD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MaterialFinalReadyDate'
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'quantity'
              Footers = <>
              ReadOnly = True
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'testing'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Testing'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'OQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'OverQuantity'
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'total'
              Footers = <>
              ReadOnly = True
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'Total_Qty'
              Footers = <>
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'SETC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'SampleETC'
              Width = 112
            end
            item
              EditButtons = <>
              FieldName = 'CTSI'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'CTSinspection'
              Width = 121
            end
            item
              EditButtons = <>
              FieldName = 'remarks'
              Footers = <>
              ReadOnly = True
              Width = 197
            end
            item
              EditButtons = <>
              FieldName = 'fit'
              Footers = <>
              ReadOnly = True
              Width = 25
            end
            item
              EditButtons = <>
              FieldName = 'wear'
              Footers = <>
              ReadOnly = True
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'RSD'
              Footers = <>
              ReadOnly = True
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'RRSRD'
              Footers = <>
              ReadOnly = True
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'subtype'
              Footers = <>
              ReadOnly = True
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'Component_Qty'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Lasted_Upper_Qty'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Finished_shoe_Qty'
              Footers = <>
              Title.Caption = 'Finished shoe to Tech team Qty'
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Half_Stitching_Qty'
              Footers = <>
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'Costing_Qty'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'IE_Qty'
              Footers = <>
              Visible = False
              Width = 49
            end>
        end
        object memor1: TMemo
          Left = 768
          Top = 136
          Width = 185
          Height = 89
          Lines.Strings = (
            'memor1')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'R2'
      ImageIndex = 4
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 59
        Align = alTop
        TabOrder = 0
        object Label188: TLabel
          Left = 406
          Top = 7
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label191: TLabel
          Left = 523
          Top = 7
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label192: TLabel
          Left = 449
          Top = 28
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label196: TLabel
          Left = 668
          Top = 7
          Width = 38
          Height = 16
          Caption = 'TEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label203: TLabel
          Left = 799
          Top = 7
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label212: TLabel
          Left = 774
          Top = 33
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label283: TLabel
          Left = 555
          Top = 32
          Width = 101
          Height = 16
          Caption = 'MaterialTracking'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object r2bbt1: TBitBtn
          Left = 8
          Top = 0
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
          OnClick = r2bbt1Click
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
        object r2bbt2: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 1
          OnClick = r2bbt2Click
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
        object r2bbt3: TBitBtn
          Left = 104
          Top = 0
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
          OnClick = r2bbt3Click
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
        object r2bbt4: TBitBtn
          Left = 152
          Top = 0
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
          OnClick = r2bbt4Click
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
        object r2bbt5: TBitBtn
          Left = 200
          Top = 0
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
          TabOrder = 4
          OnClick = r2bbt5Click
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
        object r2season: TComboBox
          Left = 474
          Top = 1
          Width = 41
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 5
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object r2article: TEdit
          Left = 555
          Top = 3
          Width = 107
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object r2fd: TComboBox
          Left = 473
          Top = 29
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 7
          OnChange = cbx1Change
        end
        object R2Excel: TButton
          Left = 248
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 8
          OnClick = R2ExcelClick
        end
        object TeamR2: TComboBox
          Left = 714
          Top = 3
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'A'
            'B'
            'C'
            'SMU')
        end
        object r2type: TComboBox
          Left = 835
          Top = 3
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 10
          OnChange = r2typeChange
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object r2subtype: TComboBox
          Left = 838
          Top = 29
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
        object checkR2: TCheckBox
          Left = 312
          Top = 8
          Width = 73
          Height = 17
          Caption = '+ETA'
          TabOrder = 12
        end
        object ShowSizer2: TCheckBox
          Left = 312
          Top = 24
          Width = 97
          Height = 17
          Caption = 'ShowSize'
          TabOrder = 13
          Visible = False
        end
        object R2LAI: TComboBox
          Left = 668
          Top = 28
          Width = 105
          Height = 28
          ItemHeight = 20
          TabOrder = 14
          Items.Strings = (
            ''
            'LAIV'
            'LAIT'
            'LAIK'
            'BYIV'
            'BYIK'
            'BYIT')
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 59
        Width = 1356
        Height = 249
        Align = alTop
        TabOrder = 1
        object Label123: TLabel
          Left = 275
          Top = 10
          Width = 50
          Height = 16
          Caption = 'TP Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label124: TLabel
          Left = 242
          Top = 32
          Width = 82
          Height = 16
          Caption = 'Project Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label125: TLabel
          Left = 298
          Top = 57
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label126: TLabel
          Left = 268
          Top = 81
          Width = 56
          Height = 16
          Caption = 'Colorway'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label127: TLabel
          Left = 568
          Top = 153
          Width = 37
          Height = 16
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label128: TLabel
          Left = 257
          Top = 129
          Width = 67
          Height = 16
          Caption = 'Tech Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label129: TLabel
          Left = 279
          Top = 152
          Width = 45
          Height = 16
          Caption = 'Gender'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label130: TLabel
          Left = 1606
          Top = 58
          Width = 125
          Height = 16
          Caption = ' (clarification, pattern)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label131: TLabel
          Left = 1646
          Top = 45
          Width = 85
          Height = 16
          Caption = 'Pending issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label133: TLabel
          Left = 470
          Top = 41
          Width = 135
          Height = 16
          Caption = 'Pullover Finished Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label134: TLabel
          Left = 517
          Top = 9
          Width = 89
          Height = 16
          Caption = 'Pullover Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label135: TLabel
          Left = 271
          Top = 202
          Width = 53
          Height = 16
          Caption = 'Outsole#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label136: TLabel
          Left = 292
          Top = 180
          Width = 32
          Height = 16
          Caption = 'Last#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label137: TLabel
          Left = 1707
          Top = 72
          Width = 26
          Height = 16
          Caption = 'Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label138: TLabel
          Left = 1064
          Top = 107
          Width = 89
          Height = 16
          Caption = 'Sample Notice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label139: TLabel
          Left = 1041
          Top = 120
          Width = 110
          Height = 16
          Caption = 'To Sample Room '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label140: TLabel
          Left = 1578
          Top = 28
          Width = 156
          Height = 16
          Caption = 'Material Final Ready Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label141: TLabel
          Left = 1685
          Top = 151
          Width = 40
          Height = 16
          Caption = 'Cutting'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label142: TLabel
          Left = 1676
          Top = 179
          Width = 50
          Height = 16
          Caption = 'Stitching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label143: TLabel
          Left = 1667
          Top = 204
          Width = 60
          Height = 16
          Caption = 'Assembly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label145: TLabel
          Left = 800
          Top = 178
          Width = 68
          Height = 16
          Caption = 'Testing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label146: TLabel
          Left = 798
          Top = 201
          Width = 73
          Height = 16
          Caption = 'Keeping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label147: TLabel
          Left = 838
          Top = 226
          Width = 31
          Height = 16
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label148: TLabel
          Left = 1076
          Top = 9
          Width = 74
          Height = 16
          Caption = 'SampleETC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label149: TLabel
          Left = 1060
          Top = 34
          Width = 91
          Height = 16
          Caption = 'CTS inspection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label150: TLabel
          Left = 1046
          Top = 56
          Width = 105
          Height = 16
          Caption = 'R2 Shipping Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label151: TLabel
          Left = 1103
          Top = 85
          Width = 48
          Height = 16
          Caption = 'Remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label152: TLabel
          Left = 519
          Top = 181
          Width = 86
          Height = 16
          Caption = 'NA Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label153: TLabel
          Left = 513
          Top = 202
          Width = 94
          Height = 16
          Caption = 'CTS Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label154: TLabel
          Left = 515
          Top = 224
          Width = 92
          Height = 16
          Caption = 'Fcty Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label207: TLabel
          Left = 589
          Top = 101
          Width = 14
          Height = 16
          Caption = 'Fit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label208: TLabel
          Left = 571
          Top = 126
          Width = 33
          Height = 16
          Caption = 'Wear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ImageR2: TImage
          Left = 0
          Top = 0
          Width = 233
          Height = 161
          PopupMenu = shoePicpopo
          Stretch = True
        end
        object Label218: TLabel
          Left = 270
          Top = 103
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label279: TLabel
          Left = 793
          Top = 155
          Width = 76
          Height = 16
          Caption = 'Shipping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 493
          Top = 67
          Width = 112
          Height = 16
          Caption = 'Pullover CFM Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label289: TLabel
          Left = 1077
          Top = 134
          Width = 72
          Height = 16
          Caption = 'PrdLocation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label144: TLabel
          Left = 778
          Top = 9
          Width = 92
          Height = 16
          Caption = 'Component Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label176: TLabel
          Left = 763
          Top = 29
          Width = 105
          Height = 16
          Caption = 'Lasted Upper Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label296: TLabel
          Left = 766
          Top = 52
          Width = 188
          Height = 16
          Caption = 'Finished shoe to Tech team Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label297: TLabel
          Left = 771
          Top = 108
          Width = 100
          Height = 16
          Caption = 'Half Stitching Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label298: TLabel
          Left = 800
          Top = 132
          Width = 68
          Height = 16
          Caption = 'Costing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object DBEdit94: TDBEdit
          Left = 327
          Top = 8
          Width = 106
          Height = 24
          DataField = 'TPDATE'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit95: TDBEdit
          Left = 327
          Top = 32
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XieMing'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit96: TDBEdit
          Left = 327
          Top = 56
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'devcode'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit97: TDBEdit
          Left = 327
          Top = 80
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'YSSM'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit99: TDBEdit
          Left = 327
          Top = 128
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'kflx'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit100: TDBEdit
          Left = 327
          Top = 152
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'GENDER'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit101: TDBEdit
          Left = 1736
          Top = 48
          Width = 121
          Height = 24
          DataField = 'PI'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
        end
        object DBEdit102: TDBEdit
          Left = 608
          Top = 36
          Width = 106
          Height = 24
          DataField = 'RRSRD'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit104: TDBEdit
          Left = 327
          Top = 199
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'DDMH'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit105: TDBEdit
          Left = 327
          Top = 177
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XTMH'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit106: TDBEdit
          Left = 1735
          Top = 71
          Width = 121
          Height = 24
          Color = clScrollBar
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Visible = False
        end
        object DBEdit111: TDBEdit
          Left = 1736
          Top = 25
          Width = 121
          Height = 24
          DataField = 'MFRD'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
        object DBEdit112: TDBEdit
          Left = 1154
          Top = 108
          Width = 120
          Height = 24
          DataField = 'DPS_NTSR'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit113: TDBEdit
          Left = 1154
          Top = 80
          Width = 121
          Height = 24
          DataField = 'remarks'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          Visible = False
        end
        object DBEdit114: TDBEdit
          Left = 1153
          Top = 55
          Width = 104
          Height = 24
          DataField = 'RSD'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit115: TDBEdit
          Left = 1153
          Top = 31
          Width = 104
          Height = 24
          DataField = 'CTSI'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit116: TDBEdit
          Left = 1153
          Top = 7
          Width = 104
          Height = 24
          DataField = 'SETC'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit117: TDBEdit
          Left = 874
          Top = 225
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'Total_Qty'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit118: TDBEdit
          Left = 874
          Top = 201
          Width = 121
          Height = 24
          DataField = 'OQ'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnKeyPress = DBEdit118KeyPress
        end
        object DBEdit119: TDBEdit
          Left = 874
          Top = 177
          Width = 121
          Height = 24
          DataField = 'testing'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnKeyPress = DBEdit119KeyPress
        end
        object DBEdit120: TDBEdit
          Left = 609
          Top = 178
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'NA'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit121: TDBEdit
          Left = 609
          Top = 201
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'CTS'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit122: TDBEdit
          Left = 609
          Top = 224
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'FD'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBComboBox103: TDBComboBox
          Left = 608
          Top = 5
          Width = 122
          Height = 28
          DataField = 'ps'
          DataSource = R2recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Pending'
            'Confirm '
            'No Need')
          TabOrder = 23
        end
        object DBComboBox154: TDBComboBox
          Left = 608
          Top = 96
          Width = 122
          Height = 28
          Style = csDropDownList
          DataField = 'fit'
          DataSource = R2recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 24
        end
        object DBComboBox155: TDBComboBox
          Left = 608
          Top = 120
          Width = 122
          Height = 28
          Style = csDropDownList
          DataField = 'wear'
          DataSource = R2recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 25
        end
        object DateTimePicker25: TDateTimePicker
          Left = 426
          Top = 8
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 26
          OnChange = DateTimePicker25Change
        end
        object DateTimePicker26: TDateTimePicker
          Left = 706
          Top = 35
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 27
          OnChange = DateTimePicker26Change
        end
        object DateTimePicker27: TDateTimePicker
          Left = 1253
          Top = 105
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 28
          OnChange = DateTimePicker27Change
        end
        object DateTimePicker28: TDateTimePicker
          Left = 1255
          Top = 7
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 29
          OnChange = DateTimePicker28Change
        end
        object DateTimePicker29: TDateTimePicker
          Left = 1255
          Top = 32
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 30
          OnChange = DateTimePicker29Change
        end
        object DateTimePicker30: TDateTimePicker
          Left = 1255
          Top = 55
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 31
          OnChange = DateTimePicker30Change
        end
        object DBComboBox13: TDBComboBox
          Left = 606
          Top = 150
          Width = 121
          Height = 28
          DataField = 'status'
          DataSource = R2recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'R1 Revise'
            'R1 Approved'
            'R2 Add')
          TabOrder = 32
        end
        object r2subtpdb: TDBComboBox
          Left = 328
          Top = 103
          Width = 122
          Height = 28
          Color = clScrollBar
          DataField = 'subtype'
          DataSource = R2recieve
          ItemHeight = 20
          TabOrder = 33
        end
        object DBEdit69: TDBEdit
          Left = 873
          Top = 152
          Width = 121
          Height = 24
          DataField = 'SQ'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 34
          OnKeyPress = DBEdit69KeyPress
        end
        object DBEdit24: TDBEdit
          Left = 607
          Top = 62
          Width = 102
          Height = 24
          DataField = 'PullCFMDate'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 35
        end
        object DateTimePicker43: TDateTimePicker
          Left = 706
          Top = 62
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 36
          OnChange = DateTimePicker43Change
        end
        object DBEdit186: TDBEdit
          Left = 1153
          Top = 133
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'ProductionLocation'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 37
        end
        object DBEdit107: TDBEdit
          Left = 873
          Top = 6
          Width = 121
          Height = 24
          DataField = 'Component_Qty'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 38
          OnKeyPress = DBEdit107KeyPress
        end
        object DBEdit136: TDBEdit
          Left = 873
          Top = 25
          Width = 121
          Height = 24
          DataField = 'Lasted_Upper_Qty'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          OnKeyPress = DBEdit136KeyPress
        end
        object DBEdit193: TDBEdit
          Left = 873
          Top = 73
          Width = 121
          Height = 24
          DataField = 'Finished_shoe_Qty'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 40
          OnKeyPress = DBEdit193KeyPress
        end
        object DBEdit194: TDBEdit
          Left = 873
          Top = 103
          Width = 121
          Height = 24
          DataField = 'Half_Stitching_Qty'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
          OnKeyPress = DBEdit194KeyPress
        end
        object DBEdit195: TDBEdit
          Left = 873
          Top = 128
          Width = 121
          Height = 24
          DataField = 'Costing_Qty'
          DataSource = R2recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 42
          Visible = False
          OnKeyPress = DBEdit195KeyPress
        end
        object Panel29: TPanel
          Left = 0
          Top = 168
          Width = 265
          Height = 72
          Align = alCustom
          Caption = 'Panel28'
          TabOrder = 43
          object DBGridEh9: TDBGridEh
            Left = 1
            Top = 1
            Width = 263
            Height = 70
            Align = alClient
            DataSource = MaterialMonitorDS
            Enabled = False
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            VertScrollBar.VisibleMode = sbNeverShowEh
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Parts'
                Footers = <>
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'UpdateDate'
                Footers = <>
                Width = 144
              end>
          end
        end
      end
      object Panel21: TPanel
        Left = 0
        Top = 308
        Width = 1356
        Height = 350
        Align = alClient
        TabOrder = 2
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 348
          Align = alClient
          DataSource = R2recieve
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh4CellClick
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'ARTICLE'
              Width = 144
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'devcode'
              Footer.FieldName = 'devcode'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DEVCODE'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'TPDATE'
              Footers = <>
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'status'
              Footers = <>
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'PS'
              Footers = <>
              Title.Caption = 'PulloverStatus'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'RRSRD'
              Footers = <>
              Title.Caption = 'PulloverFinishedDate'
              Width = 148
            end
            item
              EditButtons = <>
              FieldName = 'PullCFMDate'
              Footers = <>
              Title.Caption = 'PulloverCFMDate'
              Width = 102
            end
            item
              EditButtons = <>
              FieldName = 'PI'
              Footers = <>
              Title.Caption = 'PendingIssue'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'DPS_NTSR'
              Footers = <>
              Title.Caption = 'DataPassSpecNoticeToSampleRoom'
              Width = 271
            end
            item
              EditButtons = <>
              FieldName = 'MFRD'
              Footers = <>
              Title.Caption = 'MaterialFinalReadyDate'
              Width = 186
            end
            item
              EditButtons = <>
              FieldName = 'SQ'
              Footers = <>
              Title.Caption = 'ShippingQty'
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'testing'
              Footers = <>
              Title.Caption = 'TestingQty'
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'OQ'
              Footers = <>
              Title.Caption = 'KeepingQty'
              Width = 139
            end
            item
              EditButtons = <>
              FieldName = 'total'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'SETC'
              Footers = <>
              Title.Caption = 'SampleETC'
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'RSD'
              Footers = <>
              Title.Caption = 'R2ShippingDate'
              Width = 124
            end
            item
              EditButtons = <>
              FieldName = 'CTSI'
              Footers = <>
              Title.Caption = 'CTSInspection'
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'remarks'
              Footers = <>
              Width = 390
            end
            item
              EditButtons = <>
              FieldName = 'fit'
              Footers = <>
              Width = 24
            end
            item
              EditButtons = <>
              FieldName = 'wear'
              Footers = <>
              Width = 26
            end
            item
              EditButtons = <>
              FieldName = 'subtype'
              Footers = <>
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'Component_Qty'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Lasted_Upper_Qty'
              Footers = <>
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'Finished_shoe_Qty'
              Footers = <>
              Title.Caption = 'Finished shoe to Tech team Qty'
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Half_Stitching_Qty'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Costing_Qty'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'IE_Qty'
              Footers = <>
              Width = 48
            end>
        end
        object memor2: TMemo
          Left = 880
          Top = 64
          Width = 185
          Height = 89
          Lines.Strings = (
            'memor2')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'R3'
      ImageIndex = 5
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 54
        Align = alTop
        TabOrder = 0
        object Label193: TLabel
          Left = 411
          Top = 5
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label194: TLabel
          Left = 518
          Top = 4
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label195: TLabel
          Left = 450
          Top = 29
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label197: TLabel
          Left = 668
          Top = 4
          Width = 38
          Height = 16
          Caption = 'TEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label204: TLabel
          Left = 804
          Top = 7
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label213: TLabel
          Left = 779
          Top = 32
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label284: TLabel
          Left = 555
          Top = 30
          Width = 101
          Height = 16
          Caption = 'MaterialTracking'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object r3bbt1: TBitBtn
          Left = 8
          Top = 0
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
          OnClick = r3bbt1Click
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
        object r3bbt2: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 1
          OnClick = r3bbt2Click
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
        object r3bbt3: TBitBtn
          Left = 104
          Top = 0
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
          OnClick = r3bbt3Click
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
        object r3bbt4: TBitBtn
          Left = 152
          Top = 0
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
          OnClick = r3bbt4Click
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
        object r3bbt5: TBitBtn
          Left = 200
          Top = 0
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
          TabOrder = 4
          OnClick = r3bbt5Click
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
        object R3SEASON: TComboBox
          Left = 475
          Top = 3
          Width = 42
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 5
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object R3ARTICLE: TEdit
          Left = 548
          Top = 3
          Width = 115
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object R3FD: TComboBox
          Left = 475
          Top = 26
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 7
          OnChange = cbx1Change
        end
        object R3Excel: TButton
          Left = 248
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 8
          OnClick = R3ExcelClick
        end
        object TeamR3: TComboBox
          Left = 714
          Top = 0
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'A'
            'B'
            'C'
            'SMU')
        end
        object r3type: TComboBox
          Left = 847
          Top = 3
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 10
          OnChange = r3typeChange
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object r3subtype: TComboBox
          Left = 846
          Top = 29
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
        object checkR3: TCheckBox
          Left = 312
          Top = 9
          Width = 73
          Height = 17
          Caption = '+ETA'
          TabOrder = 12
        end
        object ShowSizer3: TCheckBox
          Left = 312
          Top = 25
          Width = 97
          Height = 17
          Caption = 'ShowSize'
          TabOrder = 13
          Visible = False
        end
        object R3LAI: TComboBox
          Left = 672
          Top = 24
          Width = 105
          Height = 28
          ItemHeight = 20
          TabOrder = 14
          Items.Strings = (
            ''
            'LAIV'
            'LAIT'
            'LAIK'
            'BYIV'
            'BYIK'
            'BYIT')
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 54
        Width = 1356
        Height = 267
        Align = alTop
        TabOrder = 1
        object Label155: TLabel
          Left = 270
          Top = 10
          Width = 50
          Height = 16
          Caption = 'TP Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label156: TLabel
          Left = 238
          Top = 34
          Width = 82
          Height = 16
          Caption = 'Project Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label157: TLabel
          Left = 294
          Top = 58
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label158: TLabel
          Left = 265
          Top = 81
          Width = 56
          Height = 16
          Caption = 'Colorway'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label159: TLabel
          Left = 565
          Top = 145
          Width = 37
          Height = 16
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label160: TLabel
          Left = 255
          Top = 129
          Width = 67
          Height = 16
          Caption = 'Tech Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label161: TLabel
          Left = 277
          Top = 153
          Width = 45
          Height = 16
          Caption = 'Gender'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label162: TLabel
          Left = 1647
          Top = 67
          Width = 125
          Height = 16
          Caption = ' (clarification, pattern)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label163: TLabel
          Left = 1685
          Top = 54
          Width = 85
          Height = 16
          Caption = 'Pending issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label165: TLabel
          Left = 463
          Top = 38
          Width = 135
          Height = 16
          Caption = 'Pullover Finished Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label166: TLabel
          Left = 510
          Top = 11
          Width = 89
          Height = 16
          Caption = 'Pullover Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label167: TLabel
          Left = 271
          Top = 204
          Width = 53
          Height = 16
          Caption = 'Outsole#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label168: TLabel
          Left = 289
          Top = 179
          Width = 32
          Height = 16
          Caption = 'Last#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label169: TLabel
          Left = 1743
          Top = 33
          Width = 26
          Height = 16
          Caption = 'Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label170: TLabel
          Left = 996
          Top = 107
          Width = 89
          Height = 16
          Caption = 'Sample Notice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label171: TLabel
          Left = 976
          Top = 121
          Width = 110
          Height = 16
          Caption = 'To Sample Room '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label172: TLabel
          Left = 1613
          Top = 12
          Width = 156
          Height = 16
          Caption = 'Material Final Ready Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label173: TLabel
          Left = 1708
          Top = 164
          Width = 40
          Height = 16
          Caption = 'Cutting'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label174: TLabel
          Left = 1696
          Top = 192
          Width = 50
          Height = 16
          Caption = 'Stitching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label175: TLabel
          Left = 1685
          Top = 218
          Width = 60
          Height = 16
          Caption = 'Assembly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label177: TLabel
          Left = 772
          Top = 197
          Width = 68
          Height = 16
          Caption = 'Testing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label178: TLabel
          Left = 771
          Top = 221
          Width = 73
          Height = 16
          Caption = 'Keeping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label179: TLabel
          Left = 811
          Top = 245
          Width = 31
          Height = 16
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label180: TLabel
          Left = 1008
          Top = 11
          Width = 74
          Height = 16
          Caption = 'SampleETC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label181: TLabel
          Left = 990
          Top = 33
          Width = 91
          Height = 16
          Caption = 'CTS inspection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label182: TLabel
          Left = 977
          Top = 58
          Width = 105
          Height = 16
          Caption = 'R3 Shipping Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label183: TLabel
          Left = 1036
          Top = 85
          Width = 48
          Height = 16
          Caption = 'Remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label184: TLabel
          Left = 517
          Top = 173
          Width = 86
          Height = 16
          Caption = 'NA Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label185: TLabel
          Left = 509
          Top = 194
          Width = 94
          Height = 16
          Caption = 'CTS Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label186: TLabel
          Left = 509
          Top = 219
          Width = 92
          Height = 16
          Caption = 'Fcty Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label209: TLabel
          Left = 588
          Top = 93
          Width = 14
          Height = 16
          Caption = 'Fit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label210: TLabel
          Left = 570
          Top = 118
          Width = 33
          Height = 16
          Caption = 'Wear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ImageR3: TImage
          Left = 0
          Top = 0
          Width = 233
          Height = 161
          PopupMenu = shoePicpopo
          Stretch = True
        end
        object Label217: TLabel
          Left = 267
          Top = 104
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label280: TLabel
          Left = 762
          Top = 174
          Width = 76
          Height = 16
          Caption = 'Shipping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label120: TLabel
          Left = 493
          Top = 67
          Width = 112
          Height = 16
          Caption = 'Pullover CFM Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label290: TLabel
          Left = 1010
          Top = 137
          Width = 72
          Height = 16
          Caption = 'PrdLocation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label299: TLabel
          Left = 746
          Top = 9
          Width = 92
          Height = 16
          Caption = 'Component Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label300: TLabel
          Left = 731
          Top = 29
          Width = 105
          Height = 16
          Caption = 'Lasted Upper Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label301: TLabel
          Left = 734
          Top = 52
          Width = 188
          Height = 16
          Caption = 'Finished shoe to Tech team Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label302: TLabel
          Left = 739
          Top = 97
          Width = 100
          Height = 16
          Caption = 'Half Stitching Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label303: TLabel
          Left = 768
          Top = 145
          Width = 68
          Height = 16
          Caption = 'Costing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label309: TLabel
          Left = 800
          Top = 120
          Width = 35
          Height = 16
          Caption = 'IE Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit123: TDBEdit
          Left = 325
          Top = 8
          Width = 100
          Height = 24
          DataField = 'TPDATE'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit124: TDBEdit
          Left = 325
          Top = 32
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XieMing'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit125: TDBEdit
          Left = 325
          Top = 56
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'devcode'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit126: TDBEdit
          Left = 325
          Top = 80
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'YSSM'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit128: TDBEdit
          Left = 325
          Top = 128
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'kflx'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit129: TDBEdit
          Left = 325
          Top = 152
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'GENDER'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit130: TDBEdit
          Left = 1773
          Top = 58
          Width = 121
          Height = 24
          DataField = 'PI'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
        end
        object DBEdit131: TDBEdit
          Left = 603
          Top = 35
          Width = 105
          Height = 24
          DataField = 'RRSRD'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit133: TDBEdit
          Left = 325
          Top = 202
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'DDMH'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit134: TDBEdit
          Left = 325
          Top = 177
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XTMH'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit135: TDBEdit
          Left = 1773
          Top = 31
          Width = 121
          Height = 24
          Color = clScrollBar
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Visible = False
        end
        object DBEdit140: TDBEdit
          Left = 1773
          Top = 11
          Width = 121
          Height = 24
          DataField = 'MFRD'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
        object DBEdit141: TDBEdit
          Left = 1087
          Top = 110
          Width = 119
          Height = 24
          DataField = 'DPS_NTSR'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit142: TDBEdit
          Left = 1085
          Top = 83
          Width = 121
          Height = 24
          DataField = 'remarks'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          Visible = False
        end
        object DBEdit143: TDBEdit
          Left = 1085
          Top = 57
          Width = 100
          Height = 24
          DataField = 'RSD'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit144: TDBEdit
          Left = 1085
          Top = 33
          Width = 100
          Height = 24
          DataField = 'CTSI'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit145: TDBEdit
          Left = 1085
          Top = 9
          Width = 100
          Height = 24
          DataField = 'SETC'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit146: TDBEdit
          Left = 845
          Top = 242
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'Total_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit147: TDBEdit
          Left = 845
          Top = 218
          Width = 121
          Height = 24
          DataField = 'OQ'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnKeyPress = DBEdit147KeyPress
        end
        object DBEdit148: TDBEdit
          Left = 845
          Top = 194
          Width = 121
          Height = 24
          DataField = 'testing'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnKeyPress = DBEdit148KeyPress
        end
        object DBEdit149: TDBEdit
          Left = 605
          Top = 170
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'NA'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit150: TDBEdit
          Left = 605
          Top = 193
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'CTS'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit151: TDBEdit
          Left = 605
          Top = 216
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'FD'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBComboBox132: TDBComboBox
          Left = 603
          Top = 5
          Width = 122
          Height = 28
          DataField = 'ps'
          DataSource = R3recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Pending'
            'Confirm '
            'No Need')
          TabOrder = 23
        end
        object DBComboBox156: TDBComboBox
          Left = 605
          Top = 88
          Width = 122
          Height = 28
          Style = csDropDownList
          DataField = 'fit'
          DataSource = R3recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 24
        end
        object DBComboBox157: TDBComboBox
          Left = 605
          Top = 112
          Width = 122
          Height = 28
          Style = csDropDownList
          DataField = 'wear'
          DataSource = R3recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 25
        end
        object DateTimePicker31: TDateTimePicker
          Left = 426
          Top = 8
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 26
          OnChange = DateTimePicker31Change
        end
        object DateTimePicker32: TDateTimePicker
          Left = 705
          Top = 34
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 27
          OnChange = DateTimePicker32Change
        end
        object DateTimePicker33: TDateTimePicker
          Left = 1184
          Top = 108
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 28
          OnChange = DateTimePicker33Change
        end
        object DateTimePicker34: TDateTimePicker
          Left = 1182
          Top = 9
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 29
          OnChange = DateTimePicker34Change
        end
        object DateTimePicker35: TDateTimePicker
          Left = 1183
          Top = 35
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 30
          OnChange = DateTimePicker35Change
        end
        object DateTimePicker36: TDateTimePicker
          Left = 1183
          Top = 58
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 31
          OnChange = DateTimePicker36Change
        end
        object DBComboBox14: TDBComboBox
          Left = 604
          Top = 140
          Width = 121
          Height = 28
          DataField = 'status'
          DataSource = R3recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'R2 Revise'
            'R2 Approved'
            'R3 Add')
          TabOrder = 32
        end
        object r3subtpdb: TDBComboBox
          Left = 325
          Top = 104
          Width = 122
          Height = 28
          Color = clScrollBar
          DataField = 'subtype'
          DataSource = R3recieve
          ItemHeight = 20
          TabOrder = 33
        end
        object DBEdit178: TDBEdit
          Left = 844
          Top = 169
          Width = 121
          Height = 24
          DataField = 'SQ'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 34
          OnKeyPress = DBEdit178KeyPress
        end
        object DBEdit180: TDBEdit
          Left = 607
          Top = 62
          Width = 102
          Height = 24
          DataField = 'PullCFMDate'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 35
        end
        object DateTimePicker44: TDateTimePicker
          Left = 706
          Top = 62
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 36
          OnChange = DateTimePicker44Change
        end
        object DBEdit187: TDBEdit
          Left = 1085
          Top = 134
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'ProductionLocation'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 37
        end
        object DBEdit196: TDBEdit
          Left = 841
          Top = 6
          Width = 121
          Height = 24
          DataField = 'Component_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 38
          OnKeyPress = DBEdit196KeyPress
        end
        object DBEdit197: TDBEdit
          Left = 841
          Top = 25
          Width = 121
          Height = 24
          DataField = 'Lasted_Upper_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          OnKeyPress = DBEdit197KeyPress
        end
        object DBEdit198: TDBEdit
          Left = 841
          Top = 70
          Width = 121
          Height = 24
          DataField = 'Finished_shoe_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 40
          OnKeyPress = DBEdit198KeyPress
        end
        object DBEdit199: TDBEdit
          Left = 841
          Top = 93
          Width = 121
          Height = 24
          DataField = 'Half_Stitching_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
          OnKeyPress = DBEdit199KeyPress
        end
        object DBEdit200: TDBEdit
          Left = 841
          Top = 141
          Width = 121
          Height = 24
          DataField = 'Costing_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 42
          Visible = False
          OnKeyPress = DBEdit200KeyPress
        end
        object DBEdit206: TDBEdit
          Left = 842
          Top = 116
          Width = 121
          Height = 24
          DataField = 'IE_Qty'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 43
          OnKeyPress = DBEdit206KeyPress
        end
        object Panel30: TPanel
          Left = 0
          Top = 168
          Width = 265
          Height = 72
          Align = alCustom
          Caption = 'Panel28'
          TabOrder = 44
          object DBGridEh10: TDBGridEh
            Left = 1
            Top = 1
            Width = 263
            Height = 70
            Align = alClient
            DataSource = MaterialMonitorDS
            Enabled = False
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            VertScrollBar.VisibleMode = sbNeverShowEh
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Parts'
                Footers = <>
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'UpdateDate'
                Footers = <>
                Width = 144
              end>
          end
        end
      end
      object Panel22: TPanel
        Left = 0
        Top = 321
        Width = 1356
        Height = 337
        Align = alClient
        TabOrder = 2
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 335
          Align = alClient
          DataSource = R3recieve
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh5CellClick
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              ReadOnly = True
              Width = 125
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'devcode'
              Footer.FieldName = 'devcode'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Width = 123
            end
            item
              EditButtons = <>
              FieldName = 'TPDATE'
              Footers = <>
              ReadOnly = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'status'
              Footers = <>
              ReadOnly = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'PS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PulloverStatus'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'RRSRD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pullover Finished Date'
              Width = 177
            end
            item
              EditButtons = <>
              FieldName = 'PullCFMDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PulloverCFMDate'
            end
            item
              EditButtons = <>
              FieldName = 'PI'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PendingIssue'
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'DPS_NTSR'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DataPassSpecNoticeToSampleRoom'
            end
            item
              EditButtons = <>
              FieldName = 'MFRD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MaterialFinalReadyDate'
              Width = 191
            end
            item
              EditButtons = <>
              FieldName = 'SQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'ShippingQty'
            end
            item
              EditButtons = <>
              FieldName = 'testing'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'TestingQty'
            end
            item
              EditButtons = <>
              FieldName = 'OQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'KeepingQty'
            end
            item
              EditButtons = <>
              FieldName = 'total'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'SETC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'SampleETC'
            end
            item
              EditButtons = <>
              FieldName = 'CTSI'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'CTSInspection'
            end
            item
              EditButtons = <>
              FieldName = 'RSD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'R3ShippingDate'
            end
            item
              EditButtons = <>
              FieldName = 'remarks'
              Footers = <>
              ReadOnly = True
              Width = 649
            end
            item
              EditButtons = <>
              FieldName = 'fit'
              Footers = <>
              ReadOnly = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'wear'
              Footers = <>
              ReadOnly = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'subtype'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Component_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Lasted_Upper_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Finished_shoe_Qty'
              Footers = <>
              Title.Caption = 'Finished shoe to Tech team Qty'
            end
            item
              EditButtons = <>
              FieldName = 'Half_Stitching_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Costing_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'IE_Qty'
              Footers = <>
            end>
        end
        object memor3: TMemo
          Left = 848
          Top = 88
          Width = 185
          Height = 89
          Lines.Strings = (
            'memor3')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'R4'
      ImageIndex = 8
      object Panel25: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 56
        Align = alTop
        TabOrder = 0
        object Label81: TLabel
          Left = 411
          Top = 5
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label83: TLabel
          Left = 525
          Top = 4
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label230: TLabel
          Left = 451
          Top = 25
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label231: TLabel
          Left = 674
          Top = 4
          Width = 38
          Height = 16
          Caption = 'TEAM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label232: TLabel
          Left = 806
          Top = 2
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label234: TLabel
          Left = 784
          Top = 32
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label285: TLabel
          Left = 561
          Top = 29
          Width = 101
          Height = 16
          Caption = 'MaterialTracking'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object r4bbt1: TBitBtn
          Left = 8
          Top = 0
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
          OnClick = r4bbt1Click
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
        object r4bbt2: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 1
          OnClick = r4bbt2Click
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
        object r4bbt3: TBitBtn
          Left = 104
          Top = 0
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
          OnClick = r4bbt3Click
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
        object r4bbt4: TBitBtn
          Left = 152
          Top = 0
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
          OnClick = r4bbt4Click
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
        object r4bbt5: TBitBtn
          Left = 200
          Top = 0
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
          TabOrder = 4
          OnClick = r4bbt5Click
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
        object R4SEASON: TComboBox
          Left = 475
          Top = 0
          Width = 42
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 5
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object R4ARTICLE: TEdit
          Left = 554
          Top = 0
          Width = 116
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object R4FD: TComboBox
          Left = 477
          Top = 26
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 7
          OnChange = cbx1Change
        end
        object r4excel: TButton
          Left = 248
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 8
          OnClick = r4excelClick
        end
        object TeamR4: TComboBox
          Left = 721
          Top = 0
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'A'
            'B'
            'C'
            'SMU')
        end
        object r4type: TComboBox
          Left = 844
          Top = 2
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 10
          OnChange = r4typeChange
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object r4subtype: TComboBox
          Left = 846
          Top = 29
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
        object checkR4: TCheckBox
          Left = 312
          Top = 9
          Width = 73
          Height = 17
          Caption = '+ETA'
          TabOrder = 12
        end
        object ShowSizer4: TCheckBox
          Left = 312
          Top = 25
          Width = 97
          Height = 17
          Caption = 'ShowSize'
          TabOrder = 13
          Visible = False
        end
        object R4LAI: TComboBox
          Left = 678
          Top = 24
          Width = 104
          Height = 28
          ItemHeight = 20
          TabOrder = 14
          Items.Strings = (
            ''
            'LAIV'
            'LAIT'
            'LAIK'
            'BYIV'
            'BYIK'
            'BYIT')
        end
      end
      object Panel26: TPanel
        Left = 0
        Top = 56
        Width = 1356
        Height = 249
        Align = alTop
        TabOrder = 1
        object Label237: TLabel
          Left = 273
          Top = 10
          Width = 50
          Height = 16
          Caption = 'TP Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label238: TLabel
          Left = 241
          Top = 34
          Width = 82
          Height = 16
          Caption = 'Project Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label239: TLabel
          Left = 297
          Top = 58
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label240: TLabel
          Left = 268
          Top = 81
          Width = 56
          Height = 16
          Caption = 'Colorway'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label241: TLabel
          Left = 552
          Top = 153
          Width = 37
          Height = 16
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label242: TLabel
          Left = 258
          Top = 129
          Width = 67
          Height = 16
          Caption = 'Tech Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label243: TLabel
          Left = 280
          Top = 153
          Width = 45
          Height = 16
          Caption = 'Gender'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label244: TLabel
          Left = 1650
          Top = 43
          Width = 125
          Height = 16
          Caption = ' (clarification, pattern)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label245: TLabel
          Left = 1688
          Top = 30
          Width = 85
          Height = 16
          Caption = 'Pending issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label247: TLabel
          Left = 449
          Top = 39
          Width = 135
          Height = 16
          Caption = 'Pullover Finished Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label248: TLabel
          Left = 497
          Top = 11
          Width = 89
          Height = 16
          Caption = 'Pullover Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label249: TLabel
          Left = 274
          Top = 204
          Width = 53
          Height = 16
          Caption = 'Outsole#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label250: TLabel
          Left = 292
          Top = 179
          Width = 32
          Height = 16
          Caption = 'Last#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label251: TLabel
          Left = 1714
          Top = 65
          Width = 26
          Height = 16
          Caption = 'Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label252: TLabel
          Left = 1004
          Top = 106
          Width = 89
          Height = 16
          Caption = 'Sample Notice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label253: TLabel
          Left = 984
          Top = 120
          Width = 110
          Height = 16
          Caption = 'To Sample Room '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label254: TLabel
          Left = 1616
          Top = 12
          Width = 156
          Height = 16
          Caption = 'Material Final Ready Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label255: TLabel
          Left = 1703
          Top = 148
          Width = 40
          Height = 16
          Caption = 'Cutting'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label256: TLabel
          Left = 1691
          Top = 176
          Width = 50
          Height = 16
          Caption = 'Stitching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label257: TLabel
          Left = 1680
          Top = 202
          Width = 60
          Height = 16
          Caption = 'Assembly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label258: TLabel
          Left = 1635
          Top = 91
          Width = 107
          Height = 16
          Caption = 'Shipping Quantity '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label259: TLabel
          Left = 775
          Top = 184
          Width = 68
          Height = 16
          Caption = 'Testing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label260: TLabel
          Left = 774
          Top = 206
          Width = 73
          Height = 16
          Caption = 'Keeping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label261: TLabel
          Left = 814
          Top = 230
          Width = 31
          Height = 16
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label262: TLabel
          Left = 1019
          Top = 10
          Width = 74
          Height = 16
          Caption = 'SampleETC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label263: TLabel
          Left = 1001
          Top = 32
          Width = 91
          Height = 16
          Caption = 'CTS inspection'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label264: TLabel
          Left = 988
          Top = 57
          Width = 105
          Height = 16
          Caption = 'R4 Shipping Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label265: TLabel
          Left = 1047
          Top = 84
          Width = 48
          Height = 16
          Caption = 'Remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label266: TLabel
          Left = 504
          Top = 181
          Width = 86
          Height = 16
          Caption = 'NA Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label267: TLabel
          Left = 496
          Top = 202
          Width = 94
          Height = 16
          Caption = 'CTS Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label268: TLabel
          Left = 496
          Top = 227
          Width = 92
          Height = 16
          Caption = 'Fcty Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label269: TLabel
          Left = 575
          Top = 101
          Width = 14
          Height = 16
          Caption = 'Fit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label270: TLabel
          Left = 557
          Top = 126
          Width = 33
          Height = 16
          Caption = 'Wear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label215: TLabel
          Left = 269
          Top = 106
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label281: TLabel
          Left = 769
          Top = 158
          Width = 76
          Height = 16
          Caption = 'Shipping Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label132: TLabel
          Left = 477
          Top = 67
          Width = 112
          Height = 16
          Caption = 'Pullover CFM Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ImageR4: TImage
          Left = 0
          Top = 0
          Width = 233
          Height = 161
          PopupMenu = shoePicpopo
          Stretch = True
        end
        object Label291: TLabel
          Left = 1066
          Top = 137
          Width = 26
          Height = 16
          Caption = 'Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label304: TLabel
          Left = 754
          Top = 9
          Width = 92
          Height = 16
          Caption = 'Component Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label305: TLabel
          Left = 739
          Top = 29
          Width = 105
          Height = 16
          Caption = 'Lasted Upper Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label306: TLabel
          Left = 742
          Top = 52
          Width = 188
          Height = 16
          Caption = 'Finished shoe to Tech team Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label307: TLabel
          Left = 747
          Top = 111
          Width = 100
          Height = 16
          Caption = 'Half Stitching Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label308: TLabel
          Left = 776
          Top = 136
          Width = 68
          Height = 16
          Caption = 'Costing Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object DBEdit59: TDBEdit
          Left = 328
          Top = 8
          Width = 100
          Height = 24
          DataField = 'TPDATE'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit60: TDBEdit
          Left = 328
          Top = 32
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XieMing'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit75: TDBEdit
          Left = 328
          Top = 56
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'devcode'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit98: TDBEdit
          Left = 328
          Top = 80
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'YSSM'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit103: TDBEdit
          Left = 328
          Top = 128
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'kflx'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit127: TDBEdit
          Left = 328
          Top = 152
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'GENDER'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit156: TDBEdit
          Left = 1776
          Top = 36
          Width = 121
          Height = 24
          DataField = 'PI'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
        end
        object DBEdit157: TDBEdit
          Left = 590
          Top = 35
          Width = 105
          Height = 24
          DataField = 'RRSRD'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit158: TDBEdit
          Left = 328
          Top = 202
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'DDMH'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit159: TDBEdit
          Left = 328
          Top = 177
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'XTMH'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit160: TDBEdit
          Left = 1744
          Top = 63
          Width = 121
          Height = 24
          Color = clScrollBar
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Visible = False
        end
        object DBEdit161: TDBEdit
          Left = 1744
          Top = 88
          Width = 121
          Height = 24
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
        object DBEdit165: TDBEdit
          Left = 1776
          Top = 11
          Width = 121
          Height = 24
          DataField = 'MFRD'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          Visible = False
        end
        object DBEdit166: TDBEdit
          Left = 1095
          Top = 109
          Width = 122
          Height = 24
          DataField = 'DPS_NTSR'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit167: TDBEdit
          Left = 1096
          Top = 82
          Width = 121
          Height = 24
          DataField = 'remarks'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Visible = False
        end
        object DBEdit168: TDBEdit
          Left = 1096
          Top = 56
          Width = 100
          Height = 24
          DataField = 'RSD'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit169: TDBEdit
          Left = 1096
          Top = 32
          Width = 100
          Height = 24
          DataField = 'CTSI'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit170: TDBEdit
          Left = 1096
          Top = 8
          Width = 100
          Height = 24
          DataField = 'SETC'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit171: TDBEdit
          Left = 848
          Top = 226
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'Total_Qty'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object DBEdit172: TDBEdit
          Left = 848
          Top = 202
          Width = 121
          Height = 24
          DataField = 'OQ'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnKeyPress = DBEdit172KeyPress
        end
        object DBEdit173: TDBEdit
          Left = 848
          Top = 178
          Width = 121
          Height = 24
          DataField = 'testing'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          OnKeyPress = DBEdit173KeyPress
        end
        object DBEdit174: TDBEdit
          Left = 592
          Top = 178
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'NA'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit175: TDBEdit
          Left = 592
          Top = 201
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'CTS'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit176: TDBEdit
          Left = 592
          Top = 224
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'FD'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object DBComboBox16: TDBComboBox
          Left = 590
          Top = 5
          Width = 122
          Height = 28
          DataField = 'ps'
          DataSource = R4recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Pending'
            'Confirm '
            'No Need')
          TabOrder = 24
        end
        object DBComboBox17: TDBComboBox
          Left = 592
          Top = 96
          Width = 122
          Height = 28
          Style = csDropDownList
          DataField = 'fit'
          DataSource = R4recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 25
        end
        object DBComboBox18: TDBComboBox
          Left = 592
          Top = 120
          Width = 122
          Height = 28
          Style = csDropDownList
          DataField = 'wear'
          DataSource = R4recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'Yes'
            'No'
            'None')
          TabOrder = 26
        end
        object DateTimePicker37: TDateTimePicker
          Left = 429
          Top = 8
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 27
          OnChange = DateTimePicker37Change
        end
        object DateTimePicker38: TDateTimePicker
          Left = 692
          Top = 34
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 28
          OnChange = DateTimePicker38Change
        end
        object DateTimePicker39: TDateTimePicker
          Left = 1197
          Top = 108
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 29
          OnChange = DateTimePicker39Change
        end
        object DateTimePicker40: TDateTimePicker
          Left = 1193
          Top = 8
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 30
          OnChange = DateTimePicker40Change
        end
        object DateTimePicker41: TDateTimePicker
          Left = 1194
          Top = 34
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 31
          OnChange = DateTimePicker41Change
        end
        object DateTimePicker42: TDateTimePicker
          Left = 1194
          Top = 57
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 32
          OnChange = DateTimePicker42Change
        end
        object DBComboBox19: TDBComboBox
          Left = 591
          Top = 148
          Width = 121
          Height = 28
          DataField = 'status'
          DataSource = R4recieve
          ItemHeight = 20
          Items.Strings = (
            ''
            'R3 Revise'
            'R3 Approved'
            'R4 Add')
          TabOrder = 33
        end
        object r4subtpdb: TDBComboBox
          Left = 327
          Top = 104
          Width = 122
          Height = 28
          Color = clScrollBar
          DataField = 'subtype'
          DataSource = R4recieve
          ItemHeight = 20
          TabOrder = 34
        end
        object DBEdit179: TDBEdit
          Left = 849
          Top = 154
          Width = 121
          Height = 24
          DataField = 'SQ'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 35
          OnKeyPress = DBEdit179KeyPress
        end
        object DBEdit181: TDBEdit
          Left = 591
          Top = 62
          Width = 106
          Height = 24
          DataField = 'PullCFMDate'
          DataSource = R3recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 36
        end
        object DateTimePicker45: TDateTimePicker
          Left = 690
          Top = 62
          Width = 22
          Height = 28
          Date = 42564.323215428240000000
          Time = 42564.323215428240000000
          TabOrder = 37
          OnChange = DateTimePicker45Change
        end
        object DBEdit188: TDBEdit
          Left = 1096
          Top = 135
          Width = 121
          Height = 24
          Color = clScrollBar
          DataField = 'ProductionLocation'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 38
        end
        object DBEdit201: TDBEdit
          Left = 849
          Top = 6
          Width = 121
          Height = 24
          DataField = 'Component_Qty'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          OnKeyPress = DBEdit201KeyPress
        end
        object DBEdit202: TDBEdit
          Left = 849
          Top = 25
          Width = 121
          Height = 24
          DataField = 'Lasted_Upper_Qty'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 40
          OnKeyPress = DBEdit202KeyPress
        end
        object DBEdit203: TDBEdit
          Left = 849
          Top = 73
          Width = 121
          Height = 24
          DataField = 'Finished_shoe_Qty'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
          OnKeyPress = DBEdit203KeyPress
        end
        object DBEdit204: TDBEdit
          Left = 849
          Top = 107
          Width = 121
          Height = 24
          DataField = 'Half_Stitching_Qty'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 42
          OnKeyPress = DBEdit204KeyPress
        end
        object DBEdit205: TDBEdit
          Left = 849
          Top = 131
          Width = 121
          Height = 24
          DataField = 'Costing_Qty'
          DataSource = R4recieve
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 43
          Visible = False
          OnKeyPress = DBEdit205KeyPress
        end
        object Panel31: TPanel
          Left = 0
          Top = 168
          Width = 265
          Height = 72
          Align = alCustom
          Caption = 'Panel28'
          TabOrder = 44
          object DBGridEh11: TDBGridEh
            Left = 1
            Top = 1
            Width = 263
            Height = 70
            Align = alClient
            DataSource = MaterialMonitorDS
            Enabled = False
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            VertScrollBar.VisibleMode = sbNeverShowEh
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Parts'
                Footers = <>
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'UpdateDate'
                Footers = <>
                Width = 144
              end>
          end
        end
      end
      object Panel27: TPanel
        Left = 0
        Top = 305
        Width = 1356
        Height = 353
        Align = alClient
        TabOrder = 2
        object DBGridEh7: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 351
          Align = alClient
          DataSource = R4recieve
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh7CellClick
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              ReadOnly = True
              Width = 125
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'devcode'
              Footer.FieldName = 'devcode'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Width = 123
            end
            item
              EditButtons = <>
              FieldName = 'TPDATE'
              Footers = <>
              ReadOnly = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'status'
              Footers = <>
              ReadOnly = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'PS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PulloverStatus'
              Width = 142
            end
            item
              EditButtons = <>
              FieldName = 'RRSRD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pullover Finished Date'
              Width = 173
            end
            item
              EditButtons = <>
              FieldName = 'PullCFMDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PulloverCFMDate'
            end
            item
              EditButtons = <>
              FieldName = 'PI'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'PendingIssue'
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'DPS_NTSR'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DataPassSpecNoticeToSampleRoom'
            end
            item
              EditButtons = <>
              FieldName = 'MFRD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MaterialFinalReadyDate'
              Width = 191
            end
            item
              EditButtons = <>
              FieldName = 'SQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'ShippingQty'
            end
            item
              EditButtons = <>
              FieldName = 'testing'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'TestingQty'
            end
            item
              EditButtons = <>
              FieldName = 'OQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'KeepingQty'
            end
            item
              EditButtons = <>
              FieldName = 'total'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'SETC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'SampleETC'
            end
            item
              EditButtons = <>
              FieldName = 'CTSI'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'CTSInspection'
            end
            item
              EditButtons = <>
              FieldName = 'RSD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'R4ShippingDate'
            end
            item
              EditButtons = <>
              FieldName = 'remarks'
              Footers = <>
              ReadOnly = True
              Width = 505
            end
            item
              EditButtons = <>
              FieldName = 'fit'
              Footers = <>
              ReadOnly = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'wear'
              Footers = <>
              ReadOnly = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'subtype'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Component_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Lasted_Upper_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Finished_shoe_Qty'
              Footers = <>
              Title.Caption = 'Finished shoe to Tech team Qty'
              Width = 107
            end
            item
              EditButtons = <>
              FieldName = 'Half_Stitching_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Costing_Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'IE_Qty'
              Footers = <>
            end>
        end
        object memor4: TMemo
          Left = 848
          Top = 88
          Width = 185
          Height = 89
          Lines.Strings = (
            'memor4')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object Sample_Image: TTabSheet
      Caption = 'Shoe_Image'
      ImageIndex = 2
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label67: TLabel
          Left = 304
          Top = 19
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TLabel
          Left = 660
          Top = 20
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TLabel
          Left = 815
          Top = 17
          Width = 37
          Height = 16
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label221: TLabel
          Left = 997
          Top = 16
          Width = 18
          Height = 16
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label272: TLabel
          Left = 416
          Top = 16
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label277: TLabel
          Left = 520
          Top = 17
          Width = 56
          Height = 16
          Caption = 'SubType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox2: TComboBox
          Left = 362
          Top = 14
          Width = 41
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn6: TBitBtn
          Left = 104
          Top = 0
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
          TabOrder = 1
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
        object BitBtn7: TBitBtn
          Left = 152
          Top = 0
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
        object BitBtn8: TBitBtn
          Left = 200
          Top = 0
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
        object BitBtn9: TBitBtn
          Left = 56
          Top = 0
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
          TabOrder = 4
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
        object BitBtn10: TBitBtn
          Left = 248
          Top = 0
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
          OnClick = BitBtn10Click
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
        object BitBtn11: TBitBtn
          Left = 8
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn11Click
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
        object Edit1: TEdit
          Left = 694
          Top = 15
          Width = 121
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit2: TEdit
          Left = 856
          Top = 14
          Width = 121
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit3: TEdit
          Left = 1021
          Top = 13
          Width = 121
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ComboBox4: TComboBox
          Left = 449
          Top = 15
          Width = 61
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 10
          OnChange = ComboBox4Change
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object ComboBox6: TComboBox
          Left = 576
          Top = 15
          Width = 81
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'Inline'
            'QuickStrike'
            'Transfer'
            'Offline'
            'SMU'
            'Segment')
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 49
        Width = 1356
        Height = 264
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Shape1: TShape
          Left = 24
          Top = 16
          Width = 225
          Height = 185
          Brush.Color = clActiveBorder
          Shape = stSquare
        end
        object sampleimg: TImage
          Left = 24
          Top = 24
          Width = 225
          Height = 177
          Center = True
          Stretch = True
        end
        object Label273: TLabel
          Left = 407
          Top = 16
          Width = 34
          Height = 32
          Caption = 'R1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object testimageR1: TImage
          Left = 336
          Top = 72
          Width = 161
          Height = 161
          Center = True
          Stretch = True
        end
        object Label274: TLabel
          Left = 570
          Top = 16
          Width = 34
          Height = 32
          Caption = 'R2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object testimageR2: TImage
          Left = 504
          Top = 72
          Width = 177
          Height = 161
          Center = True
          Stretch = True
        end
        object Label275: TLabel
          Left = 755
          Top = 16
          Width = 34
          Height = 32
          Caption = 'R3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object testimageR3: TImage
          Left = 687
          Top = 72
          Width = 185
          Height = 161
          Center = True
          Stretch = True
        end
        object Label164: TLabel
          Left = 944
          Top = 16
          Width = 34
          Height = 32
          Caption = 'R4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object testimageR4: TImage
          Left = 878
          Top = 72
          Width = 185
          Height = 161
          Center = True
          Stretch = True
        end
        object testimageCFM: TImage
          Left = 1068
          Top = 72
          Width = 177
          Height = 161
          Center = True
          Stretch = True
        end
        object Label276: TLabel
          Left = 1119
          Top = 16
          Width = 56
          Height = 32
          Caption = 'CFM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object UPBTN: TButton
          Left = 256
          Top = 8
          Width = 73
          Height = 57
          Caption = 'Upload'
          Enabled = False
          TabOrder = 0
          OnClick = UPBTNClick
        end
        object SAVEBTN: TButton
          Left = 256
          Top = 88
          Width = 73
          Height = 57
          Caption = 'Save'
          Enabled = False
          TabOrder = 1
          OnClick = SAVEBTNClick
        end
        object DBEdit43: TDBEdit
          Left = 22
          Top = 208
          Width = 99
          Height = 21
          Color = clScrollBar
          DataField = 'Article'
          DataSource = IMAGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit44: TDBEdit
          Left = 22
          Top = 232
          Width = 99
          Height = 21
          Color = clScrollBar
          DataField = 'DEVCODE'
          DataSource = IMAGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit45: TDBEdit
          Left = 128
          Top = 208
          Width = 97
          Height = 21
          Color = clScrollBar
          DataField = 'FD'
          DataSource = IMAGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit46: TDBEdit
          Left = 128
          Top = 232
          Width = 97
          Height = 21
          Color = clScrollBar
          DataField = 'IMAGER1'
          DataSource = IMAGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object CancelBtn: TButton
          Left = 256
          Top = 144
          Width = 73
          Height = 57
          Caption = 'Cancel'
          Enabled = False
          TabOrder = 6
          OnClick = CancelBtnClick
        end
        object DBEdit10: TDBEdit
          Left = 238
          Top = 208
          Width = 91
          Height = 21
          Color = clScrollBar
          DataField = 'xiexing'
          DataSource = IMAGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Visible = False
        end
        object DBEdit32: TDBEdit
          Left = 238
          Top = 232
          Width = 91
          Height = 21
          Color = clScrollBar
          DataField = 'shehao'
          DataSource = IMAGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Visible = False
        end
        object ComboBox5: TComboBox
          Left = 256
          Top = 64
          Width = 73
          Height = 24
          ItemHeight = 16
          TabOrder = 9
          Text = 'ChooseStage'
          Visible = False
          Items.Strings = (
            'R1'
            'R2'
            'R3'
            'R4'
            'CFM')
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 313
        Width = 1356
        Height = 345
        Align = alClient
        TabOrder = 2
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 343
          Align = alClient
          DataSource = IMAGE
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Width = 175
            end
            item
              EditButtons = <>
              FieldName = 'DEVCODE'
              Footer.FieldName = 'DEVCODE'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'SR#'
              Width = 188
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'IMAGER1'
              Footers = <>
              Title.Caption = 'R1'
              Width = 208
            end
            item
              EditButtons = <>
              FieldName = 'IMAGER2'
              Footers = <>
              Title.Caption = 'R2'
              Width = 214
            end
            item
              EditButtons = <>
              FieldName = 'IMAGER3'
              Footers = <>
              Title.Caption = 'R3'
              Width = 209
            end
            item
              EditButtons = <>
              FieldName = 'IMAGER4'
              Footers = <>
              Title.Caption = 'R4'
              Width = 183
            end
            item
              EditButtons = <>
              FieldName = 'IMAGECFM'
              Footers = <>
              Title.Caption = 'CFM'
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
              Width = 114
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'MEMO'
      ImageIndex = 6
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1356
        Height = 658
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = #37197#22871#34920#35215#21063
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 1348
            Height = 623
            Align = alClient
            Lines.Strings = (
              #30446#21069#26368#24460#37197#22871#26085#20778#20808#27402
              #31532#19968#20778#20808':'#22914#26524#26448#26009#26377'NG'#12289#26377#26368#26032'ETD'#65292#26368#24460#37197#22871#26085#28858#26368#26032'ETD'#21152#19978#25505#21312#22825#25976
              #31532#20108#20778#20808':'#22914#26524#26448#26009#26377'NG'#12289#28961#26368#26032'ETD'#65292#19981#39023#31034#26368#24460#37197#22871#26085
              #31532#19977#20778#20808':'#22914#26524#26448#26009#27794#26377'NG'#12289#26377#30332#31080#26085#65292#26368#24460#37197#22871#26085#28858#30332#31080#26085#21152#19978#25505#21312#22825#25976
              #31532#22235#20778#20808':'#22914#26524#26448#26009#27794#26377'NG'#12289#28961#30332#31080#26085#65292#26368#24460#37197#22871#26085#28858'ETD'#21152#19978#25505#21312#22825#25976
              #31532#20116#20778#20808':'#22914#26524#26448#26009#27794#26377'NG'#12289#28961#30332#31080#26085#12289#28961'ETD'#65292#19981#39023#31034#26368#24460#37197#22871#26085
              '=============================================================='
              ''
              '1.'#20027#38754#26009#65306
              '  '#33256#26178#26009#34399'V90'#38283#38957#19988#20998#39006#28858'VT Mat'
              '  '#26009#34399#38283#38957' A'#24067'('#21253#21547'A02'#32048#24067#12289'A08 T/C  '#20294#19981#21253#25324' A13'#19981#32340#24067#12289'A48'#38263#32406')'#12289'C'#24070#24067#12289'F'#30382#12289'K'#20154#36896#30382
              '  '#26009#34399#38283#38957' P'#21512#36028' '#19988#24288#21830#32232#34399#28858' M027,V192(COSMO CN & VN)'
              '  '#19981#21253#21547#25152#26377'JNG'#30340#24288#21830'('#20740#26149#24288#20839')'
              '2.'#37341#36554#21103#26009#65306
              '  '#33256#26178#26009#34399'V90'#38283#38957#19988#20998#39006#28858'VT Phu May'
              '  '#26009#34399#38283#38957' B'#27873#26825',D'#38795#24118',L'#24067#27161',M'#32218',N'#38651#32353
              '  '#26009#34399#21069#19977#30908#38283#38957' O02'#29105#29076#33184',J05'#27233#33184#29255',J04'#27233#33184#26009',A13'#19981#32340#24067',A48'#38263#32340',G03'#38795#22666
              '  '#26009#34399#38283#38957' P,G'#19988#24288#21830#32232#34399#28858'V097,V194,A104,A088,K110,V162 ('#38795#22666#24288#21830')'
              '  '#19981#21253#21547#25152#26377'JNG'#30340#24288#21830'('#20740#26149#24288#20839')'
              ''
              ''
              'B'#38283#38957#28858#25104#38263#27873#32191#30340#65292#27492#39006#28858#23433#20840#24235#23384#65292#19981#21015#20837#37197#22871#34920)
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Material Monitoring '
      ImageIndex = 7
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label222: TLabel
          Left = 352
          Top = 24
          Width = 55
          Height = 20
          Caption = 'Season'
        end
        object Label223: TLabel
          Left = 554
          Top = 24
          Width = 43
          Height = 20
          Caption = 'Stage'
        end
        object Label224: TLabel
          Left = 157
          Top = 23
          Width = 38
          Height = 20
          Caption = 'Ypdh'
        end
        object Edit4: TEdit
          Left = 410
          Top = 17
          Width = 121
          Height = 28
          Color = clScrollBar
          TabOrder = 0
        end
        object Edit5: TEdit
          Left = 600
          Top = 16
          Width = 121
          Height = 28
          Color = clScrollBar
          TabOrder = 1
        end
        object Edit6: TEdit
          Left = 200
          Top = 18
          Width = 121
          Height = 28
          Color = clYellow
          TabOrder = 2
        end
        object CHECKQRY: TButton
          Left = 752
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 3
          OnClick = CHECKQRYClick
        end
        object ComboBox3: TComboBox
          Left = 16
          Top = 17
          Width = 121
          Height = 28
          Color = clYellow
          ItemHeight = 20
          TabOrder = 4
          Text = 'Uppers'
          Items.Strings = (
            'Uppers'
            'Stitching')
        end
      end
      object Panel23: TPanel
        Left = 0
        Top = 65
        Width = 1356
        Height = 593
        Align = alClient
        TabOrder = 1
        object DBGridEh6: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 591
          Align = alClient
          DataSource = DSCheck
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
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
              FieldName = 'cgno'
              Footers = <>
              Title.Caption = 'CGNO|'#25505#36092#21934#34399
              Width = 111
            end
            item
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Caption = 'CGDATE|'#25505#36092#26085#26399
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'CLBH|'#26448#26009#32232#34399
              Width = 93
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = 'YWPM|'#26448#26009#25944#36848
              Width = 213
            end
            item
              EditButtons = <>
              FieldName = 'ETD'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'cidate'
              Footers = <>
              Title.Caption = 'Invoice|'#30332#31080#26085
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              Title.Caption = 'Location|'#24288#21830#22320#21312
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
              Title.Caption = 'Warehouse|'#20837#24235#26085#26399
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'ng_reason'
              Footers = <>
              Title.Caption = 'NGreason|NG'#21407#22240
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'NG_ETD'
              Footers = <>
              Title.Caption = 'If NG then New ETD|NG'#24460#19979#19968#27425'ETD'
              Width = 155
            end
            item
              EditButtons = <>
              FieldName = 'useType'
              Footers = <>
              Title.Caption = 'UseType|'#36092#36023'&'#24235#23384
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              Title.Caption = 'CSBH|'#24288#21830#20195#34399
              Width = 70
            end>
        end
      end
    end
  end
  object qrykfxxzl: TQuery
    AfterScroll = qrykfxxzlAfterScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      'select XXZLKF.xiexing,XXZLKF.SheHao,'
      'isnull(XXZLKF.imgnamecfm,'#39#39') as imgnamecfm,'
      'kfxxzl.DEVCODE,'
      'kfxxzl.Article,'
      'isnull(xxzlkf.userid,'#39#39') as userid,'
      'isnull(xxzlkf.userdate,'#39#39') as userdate,'
      'XXZLKF.dropped,'
      'XXZLKF.transfer,'
      'XXZLKF.Looksee,'
      'XXZLKF.transferin,'
      'XXZLKF.cut,'
      'XXZLKF.PFS,'
      'XXZLKF.CT,'
      'XXZLKF.SS,'
      'XXZLKF.SCC,'
      'XXZLKF.MMD,'
      'XXZLKF.miniC,'
      'XXZLKF.FTWT,'
      'XXZLKF.PCS,'
      'XXZLKF.NCD,'
      'XXZLKF.TEST,'
      'XXZLKF.CDC,'
      'XXZLKF.CTS,'
      'XXZLKF.UpperMat,'
      'XXZLKF.LiningMat,'
      'XXZLKF.InsoleMat,'
      'XXZLKF.OutsoleMat,'
      'XXZLKF.UpperMatDetail,'
      'XXZLKF.LiningMatDetail,'
      'XXZLKF.InsoleMatDetail,'
      'XXZLKF.OutsoleMatDetail,'
      'XXZLKF.NA,'
      'XXZLKF.Remarks,'
      'kfxxzl.kfcq,'
      'kfxxzl.jijie,'
      'xxzlkf.category,'
      'KFXXZL.XieMing,'
      'KFXXZL.YSSM,'
      'kfxxzl.kflx,'
      'KFXXZL.GENDER,'
      'kfxxzl.XTMH,'
      'kfxxzl.DDMH,'
      'KFXXZL.LOGO,'
      'kfxxzl.fd,'
      'xxzlkf.yn,'
      'xxzlkf.bucket,'
      'xxzlkf.extra,'
      'xxzlkf.extraday,'
      'xxzlkf.ToeCap,'
      'xxzlkf.ToeBumper,'
      'xxzlkf.Foxing,'
      'xxzlkf.HeelLogo,'
      'xxzlkf.Tier,'
      'xxzlkf.colorwaystatus,'
      'xxzlkf.Segment,'
      'xxzlkf.Type,'
      'xxzlkf.ProductionType,'
      'xxzlkf.Midsole,'
      'YPZL.ProductionLocation,'
      'xxzlkf.RFCDeadlineDate'
      'from XXZLKF'
      
        'left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXi' +
        'ng=XXZLKF.XieXing'
      
        'left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZ' +
        'LKF.XieXing'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      'left join ('
      
        '  select kfxxzl.XieXing,kfxxzl.SheHao,Max(YPZL.ProductionLocatio' +
        'n) as ProductionLocation from YPZL,kfxxzl,kfzl_GS '
      '  where '
      '        kfzl_GS.KHBH=kfxxzl.KHDH'
      '        and kfxxzl.SheHao=YPZL.SheHao '
      '        and kfxxzl.XieXing=YPZL.XieXing '
      '        and kfxxzl.jijie like '#39'%19H%'#39' '
      '        and kfzl_GS.GSBH= '#39'CDC'#39' '
      
        '  Group by kfxxzl.XieXing,kfxxzl.SheHao ) YPZL on kfxxzl.SheHao=' +
        'YPZL.SheHao and kfxxzl.XieXing=YPZL.XieXing'
      'where KFXXZL.jijie like '#39'%19H%'#39
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      '')
    UpdateObject = updateshoe
    Left = 144
    Top = 536
    object qrykfxxzlDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
      Size = 40
    end
    object qrykfxxzlArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 40
    end
    object qrykfxxzlimgnamecfm: TStringField
      FieldName = 'imgnamecfm'
      FixedChar = True
      Size = 50
    end
    object qrykfxxzlkfcq: TStringField
      FieldName = 'kfcq'
      FixedChar = True
      Size = 3
    end
    object qrykfxxzljijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object qrykfxxzlXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qrykfxxzlYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object qrykfxxzlkflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object qrykfxxzlGENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qrykfxxzlXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object qrykfxxzlDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qrykfxxzlfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object qrykfxxzlLOGO: TStringField
      FieldName = 'LOGO'
      FixedChar = True
      Size = 60
    end
    object qrykfxxzlcut: TStringField
      FieldName = 'cut'
      FixedChar = True
      Size = 8
    end
    object qrykfxxzlPFS: TStringField
      FieldName = 'PFS'
      FixedChar = True
      Size = 10
    end
    object qrykfxxzlSS: TStringField
      FieldName = 'SS'
      FixedChar = True
      Size = 5
    end
    object qrykfxxzlSCC: TStringField
      FieldName = 'SCC'
      FixedChar = True
      Size = 5
    end
    object qrykfxxzlPCS: TStringField
      FieldName = 'PCS'
      FixedChar = True
      Size = 10
    end
    object qrykfxxzlNCD: TStringField
      FieldName = 'NCD'
      FixedChar = True
      Size = 40
    end
    object qrykfxxzlCDC: TStringField
      FieldName = 'CDC'
      FixedChar = True
      Size = 40
    end
    object qrykfxxzlCTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object qrykfxxzlNA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object qrykfxxzlRemarks: TStringField
      FieldName = 'Remarks'
      FixedChar = True
      Size = 100
    end
    object qrykfxxzlyn: TBooleanField
      FieldName = 'yn'
    end
    object qrykfxxzlMMD: TStringField
      FieldName = 'MMD'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlTEST: TStringField
      FieldName = 'TEST'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlUpperMat: TStringField
      FieldName = 'UpperMat'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlLiningMat: TStringField
      FieldName = 'LiningMat'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlInsoleMat: TStringField
      FieldName = 'InsoleMat'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlOutsoleMat: TStringField
      FieldName = 'OutsoleMat'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlbucket: TStringField
      FieldName = 'bucket'
      FixedChar = True
      Size = 8
    end
    object qrykfxxzlextra: TStringField
      FieldName = 'extra'
      FixedChar = True
      Size = 100
    end
    object qrykfxxzlextraday: TIntegerField
      FieldName = 'extraday'
    end
    object qrykfxxzlCT: TStringField
      FieldName = 'CT'
      FixedChar = True
      Size = 5
    end
    object qrykfxxzlFTWT: TStringField
      FieldName = 'FTWT'
      FixedChar = True
      Size = 5
    end
    object qrykfxxzlMiniC: TStringField
      FieldName = 'MiniC'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlLooksee: TBooleanField
      FieldName = 'Looksee'
    end
    object qrykfxxzltransferin: TBooleanField
      FieldName = 'transferin'
    end
    object qrykfxxzlToeCap: TStringField
      FieldName = 'ToeCap'
      FixedChar = True
      Size = 100
    end
    object qrykfxxzlToeBumper: TStringField
      FieldName = 'ToeBumper'
      FixedChar = True
      Size = 100
    end
    object qrykfxxzlFoxing: TStringField
      FieldName = 'Foxing'
      FixedChar = True
      Size = 100
    end
    object qrykfxxzlHeelLogo: TStringField
      FieldName = 'HeelLogo'
      FixedChar = True
      Size = 100
    end
    object qrykfxxzlproductionType: TStringField
      FieldName = 'productionType'
      FixedChar = True
      Size = 15
    end
    object qrykfxxzlcolorwaystatus: TStringField
      FieldName = 'colorwaystatus'
      FixedChar = True
      Size = 15
    end
    object qrykfxxzlSegment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 50
    end
    object qrykfxxzlcategory: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
    object qrykfxxzlTier: TStringField
      FieldName = 'Tier'
      FixedChar = True
      Size = 50
    end
    object qrykfxxzlUpperMatDetail: TStringField
      FieldName = 'UpperMatDetail'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlLiningMatDetail: TStringField
      FieldName = 'LiningMatDetail'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlInsoleMatDetail: TStringField
      FieldName = 'InsoleMatDetail'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlOutsoleMatDetail: TStringField
      FieldName = 'OutsoleMatDetail'
      FixedChar = True
      Size = 200
    end
    object qrykfxxzlxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object qrykfxxzltransfer: TBooleanField
      FieldName = 'transfer'
    end
    object qrykfxxzldropped: TBooleanField
      FieldName = 'dropped'
    end
    object qrykfxxzlSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object c: TDateTimeField
      FieldName = 'userdate'
    end
    object qrykfxxzluserid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object qrykfxxzlMidsole: TStringField
      FieldName = 'Midsole'
      FixedChar = True
      Size = 30
    end
    object qrykfxxzlProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object qrykfxxzlType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 50
    end
    object qrykfxxzlRFCDeadlineDate: TDateTimeField
      FieldName = 'RFCDeadlineDate'
    end
  end
  object showkfxxzl: TDataSource
    DataSet = qrykfxxzl
    Left = 144
    Top = 504
  end
  object Upxxzlkf: TUpdateSQL
    ModifySQL.Strings = (
      '')
    InsertSQL.Strings = (
      ''
      'insert into xxzlkf'
      '  (xiexing, shehao)'
      'values'
      '  (:xiexing, :shehao)'
      ''
      ''
      'insert into cfm '
      '  (xiexing, shehao)'
      'values'
      '  (:xiexing, :shehao)'
      ''
      'insert into r1sample'
      '  (xiexing, shehao)'
      'values'
      '  (:xiexing, :shehao)'
      ''
      'insert into r2sample'
      '  (xiexing, shehao)'
      'values'
      '  (:xiexing, :shehao)'
      ''
      'insert into r3sample'
      '  (xiexing, shehao)'
      'values'
      '  (:xiexing, :shehao)'
      ''
      'insert into r4sample'
      '  (xiexing, shehao)'
      'values'
      '  (:xiexing, :shehao)')
    Left = 144
    Top = 608
  end
  object tempQ: TQuery
    DatabaseName = 'dB'
    UpdateObject = Upxxzlkf
    Left = 48
    Top = 536
  end
  object updateshoe: TUpdateSQL
    ModifySQL.Strings = (
      'update xxzlkf'
      'set'
      '    cut=:cut,'
      '    userdate = :userdate,'
      '    dropped = :dropped ,'
      '    transfer = :transfer ,'
      '    PFS = :PFS ,'
      '    CT = :CT ,'
      '    SS  = :SS ,'
      '    SCC = :SCC ,'
      '    MMD  = :MMD ,'
      '    MiniC= :MiniC,'
      '    FTWT= :FTWT,'
      '    PCS = :PCS ,'
      '    NCD = :NCD ,'
      '    TEST = :TEST ,'
      '    CDC = :CDC ,'
      '    CTS = :CTS ,'
      '    NA = :NA ,'
      '    YN = :YN ,'
      '    Remarks = :Remarks ,'
      '    userID= :userID,'
      '    category=:category,'
      '   UpperMat=:UpperMat,'
      '   LiningMat=:LiningMat,'
      '   InsoleMat=:InsoleMat,'
      '   OutsoleMat=:OutsoleMat,'
      '   UpperMatDetail=:UpperMatDetail,'
      '   LiningMatDetail=:LiningMatDetail,'
      '   InsoleMatDetail=:InsoleMatDetail,'
      '   OutsoleMatDetail=:OutsoleMatDetail,'
      '  bucket=:bucket,'
      '   extra=:extra,'
      '   extraday=:extraday,'
      '   Looksee=:Looksee,'
      '   transferin=:transferin,'
      '   ToeCap=:ToeCap,'
      '   ToeBumper=:ToeBumper,'
      '   Foxing=:Foxing,'
      '   HeelLogo=:HeelLogo,'
      '   Tier=:Tier,'
      '   colorwaystatus=:colorwaystatus,'
      '   Segment=:Segment,'
      '   TYPE=:TYPE,'
      '   ProductionType=:ProductionType,'
      '   midsole=:midsole,'
      '   RFCDeadlineDate=:RFCDeadlineDate'
      '  where'
      '   XieXing= :OLD_XieXing and'
      '   SheHao = :OLD_SheHao'
      ''
      '')
    Left = 144
    Top = 568
  end
  object startbasic: TQuery
    DatabaseName = 'dB'
    Left = 96
    Top = 568
  end
  object gettime: TQuery
    DatabaseName = 'dB'
    Left = 52
    Top = 568
  end
  object QryCFM: TQuery
    AfterScroll = QryCFMAfterScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      'select '
      'kfxxzl.xieming,'
      'isnull(XXZLKF.imgnamecfm,'#39#39') as imgnamecfm,'
      'isnull(KFXXZL.FD,'#39#39') as FD,'
      'isnull(KFXXZL.YSSM,'#39#39') as YSSM,'
      'isnull(kfxxzl.kflx,'#39#39') as kflx,'
      'isnull(kfxxzl.XTMH,'#39#39') as XTMH,'
      'isnull(kfxxzl.DDMH,'#39#39') as DDMH,'
      'isnull(kfxxzl.XieMing,'#39#39') as XieMing,'
      'isnull(xxzl.article,'#39#39') as article,'
      'isnull(kfxxzl.devcode,'#39#39') as devcode,'
      'isnull(xxzlkf.CTS,'#39#39') as CTS,'
      'isnull(xxzlkf.NA,'#39#39') as NA,'
      'isnull(KFXXZL.GENDER,'#39#39') as GENDER,'
      'isnull(xxzlkf.SS,'#39#39') as SS,'
      'isnull(ypzl.subtype,'#39#39') as subtype,'
      'isnull(ypzl.ProductionLocation,'#39#39')  as ProductionLocation,'
      'isnull(kfxxzl.jijie,'#39#39')  as season,'
      'CFM.* from CFM'
      
        'left join  kfxxzl on CFM.xiexing=kfxxzl.xiexing and CFM.shehao=k' +
        'fxxzl.shehao'
      
        'left join  xxzl on CFM.xiexing=xxzl.xiexing and CFM.shehao=xxzl.' +
        'shehao'
      
        'left join  (select xiexing,shehao,kfjd,subtype,ProductionLocatio' +
        'n from ypzl group by xiexing,shehao,kfjd,subtype,ProductionLocat' +
        'ion )ypzl on CFM.xiexing=ypzl.xiexing and CFM.shehao=ypzl.shehao'
      
        'left join  xxzlkf on CFM.xiexing=xxzlkf.xiexing and CFM.shehao=x' +
        'xzlkf.shehao'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH'
      'where kfxxzl.jijie like '#39'%19H%'#39
      'and (xxzlkf.dropped <>'#39'1'#39' or xxzlkf.dropped is null)'
      'and (xxzlkf.transfer <>'#39'1'#39' or xxzlkf.transfer is null)'
      'and kfxxzl.devcode <>'#39#39
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and ypzl.kfjd ='#39'CFM'#39' '
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      '')
    UpdateObject = UDCFM
    Left = 189
    Top = 576
    object QryCFMFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object QryCFMyssm: TStringField
      FieldName = 'yssm'
      FixedChar = True
      Size = 40
    end
    object QryCFMkflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object QryCFMXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object QryCFMDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object QryCFMgender: TStringField
      FieldName = 'gender'
      FixedChar = True
      Size = 10
    end
    object QryCFMNA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object QryCFMCTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object QryCFMXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object QryCFMSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object QryCFMUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object QryCFMuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object QryCFMPCDate: TStringField
      FieldName = 'PCDate'
      FixedChar = True
      Size = 15
    end
    object QryCFMRLDate: TStringField
      FieldName = 'RLDate'
      FixedChar = True
      Size = 15
    end
    object QryCFMOverride: TStringField
      FieldName = 'Override'
      FixedChar = True
      Size = 50
    end
    object QryCFMIDD: TStringField
      FieldName = 'IDD'
      FixedChar = True
      Size = 15
    end
    object QryCFMIBM: TStringField
      FieldName = 'IBM'
      FixedChar = True
      Size = 15
    end
    object QryCFMCFMSFD: TStringField
      FieldName = 'CFMSFD'
      FixedChar = True
      Size = 15
    end
    object QryCFMA4TW: TStringField
      FieldName = 'A4TW'
      FixedChar = True
      Size = 15
    end
    object QryCFMA4CHINA: TStringField
      FieldName = 'A4CHINA'
      FixedChar = True
      Size = 15
    end
    object QryCFMA4LYNDC: TStringField
      FieldName = 'A4LYNDC'
      FixedChar = True
      Size = 15
    end
    object QryCFMCSTW: TStringField
      FieldName = 'CSTW'
      FixedChar = True
      Size = 15
    end
    object QryCFMCSLYNDC: TStringField
      FieldName = 'CSLYNDC'
      FixedChar = True
      Size = 15
    end
    object QryCFMBOOKTW: TStringField
      FieldName = 'BOOKTW'
      FixedChar = True
      Size = 15
    end
    object QryCFMBOOKCHINA: TStringField
      FieldName = 'BOOKCHINA'
      FixedChar = True
      Size = 15
    end
    object QryCFMBOOKLYNDC: TStringField
      FieldName = 'BOOKLYNDC'
      FixedChar = True
      Size = 15
    end
    object QryCFMCcolorFD: TStringField
      FieldName = 'CcolorFD'
      FixedChar = True
      Size = 15
    end
    object QryCFMCspecSD: TStringField
      FieldName = 'CspecSD'
      FixedChar = True
      Size = 15
    end
    object QryCFMCcolorSD: TStringField
      FieldName = 'CcolorSD'
      FixedChar = True
      Size = 15
    end
    object QryCFMCshoeSD: TStringField
      FieldName = 'CshoeSD'
      FixedChar = True
      Size = 15
    end
    object QryCFMPCstatus: TStringField
      FieldName = 'PCstatus'
      FixedChar = True
      Size = 15
    end
    object QryCFMSS: TStringField
      FieldName = 'SS'
      FixedChar = True
      Size = 5
    end
    object QryCFMdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object QryCFMxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object QryCFMHandOver: TStringField
      FieldName = 'HandOver'
      FixedChar = True
      Size = 15
    end
    object QryCFMimgnamecfm: TStringField
      FieldName = 'imgnamecfm'
      FixedChar = True
      Size = 50
    end
    object QryCFMarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object QryCFMProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object QryCFMsubtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object QryCFMseason: TStringField
      FieldName = 'season'
      FixedChar = True
    end
  end
  object CFMreceive: TDataSource
    DataSet = QryCFM
    Left = 188
    Top = 536
  end
  object startcfm: TQuery
    DatabaseName = 'dB'
    Left = 100
    Top = 536
  end
  object UDCFM: TUpdateSQL
    ModifySQL.Strings = (
      'update cfm'
      'set'
      '    PCDATE=:PCDATE,'
      '    RLDATE=:RLDATE,'
      '    PCstatus=:PCstatus,'
      '    override=:override,'
      '    idd=:idd,'
      '    ibm=:ibm,'
      '    cfmsfd=:cfmsfd,'
      '    BOOKTW=:BOOKTW,'
      '   BOOKCHINA=:BOOKCHINA,'
      '   BOOKLYNDC=:BOOKLYNDC,'
      '   CSTW=:CSTW,'
      '   CSLYNDC=:CSLYNDC,'
      '   A4TW=:A4TW,'
      '   A4CHINA=:A4CHINA,'
      '   A4LYNDC=:A4LYNDC,'
      '   CcolorFD=:CcolorFD,'
      '   CspecSD=:CspecSD,'
      '   CcolorSD=:CcolorSD,'
      '   CshoeSD=:CshoeSD,'
      '   HandOver=:HandOver,'
      '    userdate = :userdate,'
      '    userID= :userID'
      '  where'
      '   XieXing= :OLD_XieXing and'
      '   SheHao = :OLD_SheHao'
      ''
      '')
    Left = 188
    Top = 608
  end
  object IMAGE: TDataSource
    DataSet = QryIMAGE
    Left = 468
    Top = 504
  end
  object QryIMAGE: TQuery
    AfterScroll = QryIMAGEAfterScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      'select isnull(KFXXZL.Article,'#39#39') as Article,'
      'isnull(KFXXZL.DEVCODE,'#39#39') as DEVCODE,'
      'isnull(KFXXZL.FD,'#39#39') as FD,'
      'isnull(XXZLKF.imgnamer1,'#39#39') as IMAGER1,'
      'isnull(XXZLKF.imgnamer2,'#39#39') as IMAGER2,'
      'isnull(XXZLKF.imgnamer3,'#39#39') as IMAGER3,'
      'isnull(XXZLKF.imgnamer4,'#39#39') as IMAGER4,'
      'isnull(XXZLKF.imgnamecfm,'#39#39') as IMAGECFM,'
      'KFXXZL.xiexing,KFXXZL.shehao'
      ' from KFXXZL'
      
        'left join  xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.sh' +
        'ehao=kfxxzl.shehao'
      'where kfxxzl.jijie like '#39'%%'#39
      'and KFXXZL.khdH='#39'036'#39' ')
    Left = 468
    Top = 536
    object QryIMAGEArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object QryIMAGEDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object QryIMAGEFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object QryIMAGEIMAGER1: TStringField
      FieldName = 'IMAGER1'
      FixedChar = True
      Size = 100
    end
    object QryIMAGEIMAGER2: TStringField
      FieldName = 'IMAGER2'
      FixedChar = True
      Size = 50
    end
    object QryIMAGEIMAGER3: TStringField
      FieldName = 'IMAGER3'
      FixedChar = True
      Size = 255
    end
    object QryIMAGExiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object QryIMAGEshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object QryIMAGEIMAGECFM: TStringField
      FieldName = 'IMAGECFM'
      FixedChar = True
      Size = 50
    end
    object QryIMAGEIMAGER4: TStringField
      FieldName = 'IMAGER4'
      FixedChar = True
      Size = 255
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'jpg'
    Filter = '*.JPG|*.JPG'
    Left = 68
    Top = 456
  end
  object shoePicpopo: TPopupMenu
    Left = 116
    Top = 456
    object Saveas1: TMenuItem
      Caption = 'Save as'
      OnClick = Saveas1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = '*.JPG|*.JPG'
    Left = 76
    Top = 488
  end
  object SaveSample: TSaveDialog
    DefaultExt = 'jpg'
    Filter = '*.JPG|*.JPG'
    Left = 108
    Top = 488
  end
  object saveImage: TQuery
    DatabaseName = 'dB'
    Left = 468
    Top = 568
  end
  object qryR1: TQuery
    AfterScroll = qryR1AfterScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      'select '
      'ypzl.FD as FD,ypzl.ypdh,'
      'isnull(KFXXZL.YSSM,'#39#39') as YSSM,'
      
        'case when kfxxzl.kflx = '#39'MU'#39' then '#39'NM'#39' when  kfxxzl.kflx = '#39'CU'#39' ' +
        'then '#39'NC'#39' else kfxxzl.kflx end  as kflx,'
      'isnull(kfxxzl.XTMH,'#39#39') as XTMH,'
      'isnull(kfxxzl.DDMH,'#39#39') as DDMH,'
      'isnull(kfxxzl.XieMing,'#39#39') as XieMing,'
      'isnull(kfxxzl.article,'#39#39') as article,'
      'isnull(kfxxzl.devcode,'#39#39') as devcode,'
      'isnull(xxzlkf.imgnameR1,'#39#39') as imgnameR1,'
      'isnull(xxzlkf.CTS,'#39#39') as CTS,'
      'isnull(xxzlkf.NA,'#39#39') as NA,'
      'isnull(KFXXZL.GENDER,'#39#39') as GENDER,'
      'isnull(ypzl.subtype,'#39#39') as subtype,'
      
        'R1Sample.xiexing,R1Sample.shehao,R1Sample.userid,R1Sample.userda' +
        'te,R1Sample.tpdate,R1Sample.status,R1Sample.rsd,R1Sample.ctsi,'
      
        'R1Sample.setc,R1Sample.total,R1Sample.oq,R1Sample.testing,shoete' +
        'st.complete rassembly,shoetest.stitchingDate rstitching,'
      
        'shoetest.cutdate rcutting,R1Sample.mfrd,R1Sample.dps_NTSR,R1Samp' +
        'le.pi,R1Sample.rrsrd,R1Sample.ps,R1Sample.remarks,R1Sample.fit,R' +
        '1Sample.SQ,R1Sample.pullcfmdate,'
      
        'R1Sample.wear,ypzl.subtype,xxzlkf.imgnameR1,ypzl.ProductionLocat' +
        'ion,R1Sample.Component_Qty,R1Sample.Lasted_Upper_Qty,R1Sample.Fi' +
        'nished_shoe_Qty,'
      
        'R1Sample.Half_Stitching_Qty,R1Sample.Costing_Qty,R1Sample.IE_Qty' +
        ','
      
        'cast(ISNULL(Component_Qty, 0) as float )+cast(ISNULL(Lasted_Uppe' +
        'r_Qty, 0) as float )+cast(ISNULL(Finished_shoe_Qty, 0) as float ' +
        ')+cast(ISNULL(Half_Stitching_Qty, 0) as float )+ '
      
        'cast(ISNULL(Costing_Qty, 0) as float )+cast(ISNULL(SQ, 0) as flo' +
        'at )+cast(ISNULL(testing, 0) as float )+cast(ISNULL(OQ, 0) as fl' +
        'oat ) as Total_Qty, '
      'isnull(ypzl.ProductionLocation,'#39#39') as ProductionLocation '
      'from R1Sample'
      
        'left join  kfxxzl on R1Sample.xiexing=kfxxzl.xiexing and R1Sampl' +
        'e.shehao=kfxxzl.shehao'
      
        'left join  xxzlkf on R1Sample.xiexing=xxzlkf.xiexing and R1Sampl' +
        'e.shehao=xxzlkf.shehao'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on ypzl.xiexing=R1Sample.xiexing and ypzl.shehao=' +
        'R1Sample.shehao'
      
        'left join (SELECT testno,ypdh,cutdate,stitchingDate,complete FRO' +
        'M SHOETEST)SHOETEST on shoetest.ypdh=ypzl.ypdh'
      'where kfxxzl.jijie like '#39'%21S%'#39
      'and (xxzlkf.dropped <>'#39'1'#39' or xxzlkf.dropped is null)'
      'and (xxzlkf.transfer <>'#39'1'#39' or xxzlkf.transfer is null)'
      'and ypzl.kfjd in ( '#39'CR1'#39' ) '
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      
        'group by ypzl.ypdh,ypzl.FD,YSSM,kfxxzl.kflx,XTMH,DDMH,kfxxzl.Xie' +
        'Ming,kfxxzl.Article,devcode,CTS,NA,'
      'gender,R1Sample.xiexing,R1Sample.shehao,'
      
        'R1Sample.userid,R1Sample.userdate,R1Sample.tpdate,R1Sample.statu' +
        's,R1Sample.rsd,R1Sample.ctsi,'
      
        'R1Sample.setc,R1Sample.total,R1Sample.oq,R1Sample.testing,shoete' +
        'st.complete,shoetest.stitchingDate ,'
      
        'shoetest.cutdate,R1Sample.mfrd,R1Sample.dps_NTSR,R1Sample.pi,R1S' +
        'ample.rrsrd,R1Sample.ps,R1Sample.remarks,R1Sample.fit,R1Sample.S' +
        'Q,R1Sample.pullcfmdate,'
      
        'R1Sample.wear,ypzl.subtype,xxzlkf.imgnameR1,ypzl.ProductionLocat' +
        'ion,R1Sample.Component_Qty,R1Sample.Lasted_Upper_Qty,R1Sample.Fi' +
        'nished_shoe_Qty,'
      'R1Sample.Half_Stitching_Qty,R1Sample.Costing_Qty,R1Sample.IE_Qty'
      'order by kfxxzl.devcode'
      '')
    UpdateObject = saver1
    Left = 305
    Top = 544
    object qryR1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qryR1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object qryR1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object qryR1kflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object qryR1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object qryR1DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qryR1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qryR1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object qryR1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qryR1imgnameR1: TStringField
      FieldName = 'imgnameR1'
      FixedChar = True
      Size = 255
    end
    object qryR1CTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object qryR1NA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object qryR1GENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qryR1subtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object qryR1ProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object qryR1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qryR1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qryR1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qryR1userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object qryR1TPDATE: TStringField
      FieldName = 'TPDATE'
      FixedChar = True
      Size = 15
    end
    object qryR1status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 15
    end
    object qryR1RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object qryR1CTSI: TStringField
      FieldName = 'CTSI'
      FixedChar = True
      Size = 15
    end
    object qryR1SETC: TStringField
      FieldName = 'SETC'
      FixedChar = True
      Size = 15
    end
    object qryR1OQ: TStringField
      FieldName = 'OQ'
      FixedChar = True
      Size = 8
    end
    object qryR1testing: TStringField
      FieldName = 'testing'
      FixedChar = True
      Size = 8
    end
    object qryR1MFRD: TStringField
      FieldName = 'MFRD'
      FixedChar = True
      Size = 200
    end
    object qryR1DPS_NTSR: TStringField
      FieldName = 'DPS_NTSR'
      FixedChar = True
      Size = 15
    end
    object qryR1PI: TStringField
      FieldName = 'PI'
      FixedChar = True
      Size = 15
    end
    object qryR1RRSRD: TStringField
      FieldName = 'RRSRD'
      FixedChar = True
      Size = 15
    end
    object qryR1PS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 100
    end
    object qryR1remarks: TStringField
      FieldName = 'remarks'
      FixedChar = True
      Size = 200
    end
    object qryR1fit: TStringField
      FieldName = 'fit'
      FixedChar = True
      Size = 4
    end
    object qryR1wear: TStringField
      FieldName = 'wear'
      FixedChar = True
      Size = 4
    end
    object qryR1SQ: TStringField
      FieldName = 'SQ'
      FixedChar = True
      Size = 8
    end
    object qryR1PullCFMDate: TStringField
      FieldName = 'PullCFMDate'
      FixedChar = True
      Size = 15
    end
    object qryR1Component_Qty: TStringField
      FieldName = 'Component_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR1Lasted_Upper_Qty: TStringField
      FieldName = 'Lasted_Upper_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR1Finished_shoe_Qty: TStringField
      FieldName = 'Finished_shoe_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR1Half_Stitching_Qty: TStringField
      FieldName = 'Half_Stitching_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR1Costing_Qty: TStringField
      FieldName = 'Costing_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR1IE_Qty: TStringField
      FieldName = 'IE_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR1total: TStringField
      FieldName = 'total'
      FixedChar = True
      Size = 8
    end
    object qryR1Total_Qty: TFloatField
      FieldName = 'Total_Qty'
    end
  end
  object R1recieve: TDataSource
    DataSet = qryR1
    Left = 304
    Top = 504
  end
  object saver1: TUpdateSQL
    ModifySQL.Strings = (
      'update r1sample'
      'set'
      '   TPDATE=:TPDATE,'
      '   status=:status,'
      '   RSD=:RSD,'
      '   CTSI=:CTSI,'
      '   SETC=:SETC,'
      '   total=:total,'
      '   OQ=:OQ,'
      '   testing=:testing,'
      '   DPS_NTSR=:DPS_NTSR,'
      '   MFRD=:MFRD,'
      '   PI=:PI,'
      '   pullcfmdate=:pullcfmdate,'
      '   RRSRD=:RRSRD,'
      '   PS=:PS,'
      '   userdate = :userdate,'
      '   userID= :userID,'
      '   remarks=:remarks,'
      '   fit=:fit,'
      '   SQ=:SQ,'
      '   wear=:wear,'
      '   Component_Qty=:Component_Qty,'
      '   Lasted_Upper_Qty=:Lasted_Upper_Qty,'
      '   Finished_shoe_Qty=:Finished_shoe_Qty,'
      '   Half_Stitching_Qty=:Half_Stitching_Qty,'
      '   Costing_Qty=:Costing_Qty,'
      '   IE_Qty=:IE_Qty'
      '   where'
      '   XieXing= :OLD_XieXing and'
      '   SheHao = :OLD_SheHao'
      ''
      ''
      ''
      '')
    Left = 304
    Top = 576
  end
  object qryR2: TQuery
    AfterScroll = qryR2AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'ypzl.FD as FD,ypzl.ypdh,'
      'isnull(KFXXZL.YSSM,'#39#39') as YSSM,'
      
        'case when kfxxzl.kflx = '#39'MU'#39' then '#39'NM'#39' when  kfxxzl.kflx = '#39'CU'#39' ' +
        'then '#39'NC'#39' else kfxxzl.kflx end  as kflx,'
      'isnull(kfxxzl.XTMH,'#39#39') as XTMH,'
      'isnull(kfxxzl.DDMH,'#39#39') as DDMH,'
      'isnull(kfxxzl.XieMing,'#39#39') as XieMing,'
      'isnull(kfxxzl.article,'#39#39') as article,'
      'isnull(kfxxzl.devcode,'#39#39') as devcode,'
      'isnull(xxzlkf.imgnameR2,'#39#39') as imgnameR2,'
      'isnull(xxzlkf.CTS,'#39#39') as CTS,'
      'isnull(xxzlkf.NA,'#39#39') as NA,'
      'isnull(KFXXZL.GENDER,'#39#39') as GENDER,'
      'isnull(ypzl.subtype,'#39#39') as subtype,'
      'R2Sample.*,'
      'isnull(ypzl.ProductionLocation,'#39#39') as ProductionLocation ,'
      'cast(ISNULL(Component_Qty, 0)  as float )+'
      'cast(ISNULL(Lasted_Upper_Qty, 0)  as float )+'
      'cast(ISNULL(Finished_shoe_Qty, 0) as float )+'
      'cast(ISNULL(Half_Stitching_Qty, 0)  as float )+'
      'cast(ISNULL(Costing_Qty, 0)  as float )+'
      'cast(ISNULL(SQ, 0)  as float )+ '
      'cast(ISNULL(testing, 0)  as float )+'
      'cast(ISNULL(OQ, 0)  as float )'
      ' as Total_Qty '
      'from R2Sample'
      
        'left join  kfxxzl on R2Sample.xiexing=kfxxzl.xiexing and R2Sampl' +
        'e.shehao=kfxxzl.shehao'
      
        'left join  xxzlkf on R2Sample.xiexing=xxzlkf.xiexing and R2Sampl' +
        'e.shehao=xxzlkf.shehao'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on ypzl.xiexing=R2Sample.xiexing and ypzl.shehao=' +
        'R2Sample.shehao'
      'where kfxxzl.jijie like '#39'%20S%'#39
      'and (xxzlkf.dropped <>'#39'1'#39' or xxzlkf.dropped is null)'
      'and (xxzlkf.transfer <>'#39'1'#39' or xxzlkf.transfer is null)'
      'and ypzl.kfjd in ( '#39'CR2'#39' ) '
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfxxzl.devcode like '#39'%G33561-CT002W-20S01%'#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      'and left(ypdh,4)='#39'LAIK'#39' '
      
        'group by ypzl.ypdh,ypzl.FD,YSSM,kfxxzl.kflx,XTMH,DDMH,kfxxzl.Xie' +
        'Ming,kfxxzl.Article,devcode,CTS,NA,'
      'gender,R2Sample.xiexing,R2Sample.shehao,'
      
        'R2Sample.userid,R2Sample.userdate,R2Sample.tpdate,R2Sample.statu' +
        's,R2Sample.rsd,R2Sample.ctsi,'
      
        'R2Sample.setc,R2Sample.total,R2Sample.oq,R2Sample.testing,R2Samp' +
        'le.rassembly,R2Sample.rstitching,'
      
        'R2Sample.rcutting,R2Sample.mfrd,R2Sample.dps_NTSR,R2Sample.pi,R2' +
        'Sample.rrsrd,R2Sample.ps,R2Sample.remarks,R2Sample.fit,R2Sample.' +
        'SQ,R2Sample.pullcfmdate,'
      
        'R2Sample.wear,ypzl.subtype,xxzlkf.imgnameR2,ypzl.ProductionLocat' +
        'ion,R2Sample.Component_Qty,R2Sample.Lasted_Upper_Qty,R2Sample.Fi' +
        'nished_shoe_Qty,'
      'R2Sample.Half_Stitching_Qty,R2Sample.Costing_Qty,R2Sample.IE_Qty'
      'order by kfxxzl.devcode')
    UpdateObject = saver2
    Left = 340
    Top = 544
    object qryR2FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qryR2YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object qryR2kflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object qryR2XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object qryR2DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qryR2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qryR2CTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object qryR2NA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object qryR2GENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qryR2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qryR2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qryR2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qryR2userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object qryR2TPDATE: TStringField
      FieldName = 'TPDATE'
      FixedChar = True
      Size = 15
    end
    object qryR2status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 15
    end
    object qryR2CTSI: TStringField
      FieldName = 'CTSI'
      FixedChar = True
      Size = 15
    end
    object qryR2SETC: TStringField
      FieldName = 'SETC'
      FixedChar = True
      Size = 15
    end
    object qryR2total: TStringField
      FieldName = 'total'
      FixedChar = True
      Size = 8
    end
    object qryR2OQ: TStringField
      FieldName = 'OQ'
      FixedChar = True
      Size = 8
    end
    object qryR2testing: TStringField
      FieldName = 'testing'
      FixedChar = True
      Size = 8
    end
    object qryR2MFRD: TStringField
      FieldName = 'MFRD'
      FixedChar = True
      Size = 8
    end
    object qryR2DPS_NTSR: TStringField
      FieldName = 'DPS_NTSR'
      FixedChar = True
      Size = 15
    end
    object qryR2PI: TStringField
      FieldName = 'PI'
      FixedChar = True
      Size = 15
    end
    object qryR2PS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 100
    end
    object qryR2remarks: TStringField
      FieldName = 'remarks'
      FixedChar = True
      Size = 200
    end
    object qryR2article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object qryR2devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qryR2RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object qryR2RRSRD: TStringField
      FieldName = 'RRSRD'
      FixedChar = True
      Size = 15
    end
    object qryR2subtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object qryR2imgnamer2: TStringField
      FieldName = 'imgnamer2'
      FixedChar = True
      Size = 50
    end
    object qryR2SQ: TStringField
      FieldName = 'SQ'
      FixedChar = True
      Size = 8
    end
    object qryR2fit: TStringField
      FieldName = 'fit'
      FixedChar = True
      Size = 4
    end
    object qryR2wear: TStringField
      FieldName = 'wear'
      FixedChar = True
      Size = 4
    end
    object qryR2PullCFMDate: TStringField
      FieldName = 'PullCFMDate'
      FixedChar = True
      Size = 15
    end
    object qryR2ProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object qryR2Component_Qty: TStringField
      FieldName = 'Component_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR2Lasted_Upper_Qty: TStringField
      FieldName = 'Lasted_Upper_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR2Finished_shoe_Qty: TStringField
      FieldName = 'Finished_shoe_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR2Half_Stitching_Qty: TStringField
      FieldName = 'Half_Stitching_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR2Costing_Qty: TStringField
      FieldName = 'Costing_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR2IE_Qty: TStringField
      FieldName = 'IE_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR2ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object qryR2Total_Qty: TFloatField
      FieldName = 'Total_Qty'
    end
  end
  object qryR3: TQuery
    AfterScroll = qryR3AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'ypzl.FD as FD,ypzl.ypdh,'
      'isnull(KFXXZL.YSSM,'#39#39') as YSSM,'
      
        'case when kfxxzl.kflx = '#39'MU'#39' then '#39'NM'#39' when  kfxxzl.kflx = '#39'CU'#39' ' +
        'then '#39'NC'#39' else kfxxzl.kflx end  as kflx,'
      'isnull(kfxxzl.XTMH,'#39#39') as XTMH,'
      'isnull(kfxxzl.DDMH,'#39#39') as DDMH,'
      'isnull(kfxxzl.XieMing,'#39#39') as XieMing,'
      'isnull(kfxxzl.article,'#39#39') as article,'
      'isnull(kfxxzl.devcode,'#39#39') as devcode,'
      'isnull(xxzlkf.imgnameR3,'#39#39') as imgnameR3,'
      'isnull(xxzlkf.CTS,'#39#39') as CTS,'
      'isnull(xxzlkf.NA,'#39#39') as NA,'
      'isnull(KFXXZL.GENDER,'#39#39') as GENDER,'
      'isnull(ypzl.subtype,'#39#39') as subtype,'
      'R3Sample.*,'
      'isnull(ypzl.ProductionLocation,'#39#39') as ProductionLocation,'
      'cast(ISNULL(Component_Qty, 0)  as float )+'
      'cast(ISNULL(Lasted_Upper_Qty, 0)  as float )+'
      'cast(ISNULL(Finished_shoe_Qty, 0) as float )+'
      'cast(ISNULL(Half_Stitching_Qty, 0)  as float )+'
      'cast(ISNULL(Costing_Qty, 0)  as float )+'
      'cast(ISNULL(SQ, 0)  as float )+ '
      'cast(ISNULL(testing, 0)  as float )+'
      'cast(ISNULL(OQ, 0)  as float )'
      ' as Total_Qty  '
      'from R3Sample'
      
        'left join  kfxxzl on R3Sample.xiexing=kfxxzl.xiexing and R3Sampl' +
        'e.shehao=kfxxzl.shehao'
      
        'left join  xxzlkf on R3Sample.xiexing=xxzlkf.xiexing and R3Sampl' +
        'e.shehao=xxzlkf.shehao'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on ypzl.xiexing=R3Sample.xiexing and ypzl.shehao=' +
        'R3Sample.shehao'
      'where kfxxzl.jijie like '#39'%19H%'#39
      'and (xxzlkf.dropped <>'#39'1'#39' or xxzlkf.dropped is null)'
      'and (xxzlkf.transfer <>'#39'1'#39' or xxzlkf.transfer is null)'
      'and ypzl.kfjd in ( '#39'SMS'#39','#39'CR3'#39' ) '
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfxxzl.devcode like '#39'%C34681-CT219U-19H01%'#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      'and left(ypdh,4)='#39'LAIK'#39' '
      
        'group by ypzl.ypdh,ypzl.FD,YSSM,kfxxzl.kflx,XTMH,DDMH,kfxxzl.Xie' +
        'Ming,kfxxzl.Article,devcode,CTS,NA,'
      'gender,R3Sample.xiexing,R3Sample.shehao,'
      
        'R3Sample.userid,R3Sample.userdate,R3Sample.tpdate,R3Sample.statu' +
        's,R3Sample.rsd,R3Sample.ctsi,'
      
        'R3Sample.setc,R3Sample.total,R3Sample.oq,R3Sample.testing,R3Samp' +
        'le.rassembly,R3Sample.rstitching,'
      
        'R3Sample.rcutting,R3Sample.mfrd,R3Sample.dps_NTSR,R3Sample.pi,R3' +
        'Sample.rrsrd,R3Sample.ps,R3Sample.remarks,R3Sample.fit,R3Sample.' +
        'SQ,R3Sample.pullcfmdate,'
      
        'R3Sample.wear,ypzl.subtype,xxzlkf.imgnameR3,ypzl.ProductionLocat' +
        'ion,R3Sample.Component_Qty,R3Sample.Lasted_Upper_Qty,R3Sample.Fi' +
        'nished_shoe_Qty,'
      'R3Sample.Half_Stitching_Qty,R3Sample.Costing_Qty,R3Sample.IE_Qty'
      'order by kfxxzl.devcode'
      '')
    UpdateObject = saver3
    Left = 388
    Top = 544
    object qryR3FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qryR3article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object qryR3devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qryR3YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object qryR3kflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object qryR3XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object qryR3DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qryR3XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qryR3CTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object qryR3NA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object qryR3GENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qryR3XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qryR3SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qryR3USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qryR3userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object qryR3TPDATE: TStringField
      FieldName = 'TPDATE'
      FixedChar = True
      Size = 15
    end
    object qryR3status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 15
    end
    object qryR3RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object qryR3CTSI: TStringField
      FieldName = 'CTSI'
      FixedChar = True
      Size = 15
    end
    object qryR3SETC: TStringField
      FieldName = 'SETC'
      FixedChar = True
      Size = 15
    end
    object qryR3total: TStringField
      FieldName = 'total'
      FixedChar = True
      Size = 8
    end
    object qryR3OQ: TStringField
      FieldName = 'OQ'
      FixedChar = True
      Size = 8
    end
    object qryR3testing: TStringField
      FieldName = 'testing'
      FixedChar = True
      Size = 8
    end
    object qryR3MFRD: TStringField
      FieldName = 'MFRD'
      FixedChar = True
      Size = 200
    end
    object qryR3DPS_NTSR: TStringField
      FieldName = 'DPS_NTSR'
      FixedChar = True
      Size = 15
    end
    object qryR3PI: TStringField
      FieldName = 'PI'
      FixedChar = True
      Size = 15
    end
    object qryR3RRSRD: TStringField
      FieldName = 'RRSRD'
      FixedChar = True
      Size = 15
    end
    object qryR3PS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 100
    end
    object qryR3remarks: TStringField
      FieldName = 'remarks'
      FixedChar = True
      Size = 200
    end
    object qryR3subtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object qryR3imgnamer3: TStringField
      FieldName = 'imgnamer3'
      FixedChar = True
      Size = 255
    end
    object qryR3SQ: TStringField
      FieldName = 'SQ'
      FixedChar = True
      Size = 8
    end
    object qryR3fit: TStringField
      FieldName = 'fit'
      FixedChar = True
      Size = 4
    end
    object qryR3wear: TStringField
      FieldName = 'wear'
      FixedChar = True
      Size = 4
    end
    object qryR3PullCFMDate: TStringField
      FieldName = 'PullCFMDate'
      FixedChar = True
      Size = 15
    end
    object qryR3ProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object qryR3Component_Qty: TStringField
      FieldName = 'Component_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR3Lasted_Upper_Qty: TStringField
      FieldName = 'Lasted_Upper_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR3Finished_shoe_Qty: TStringField
      FieldName = 'Finished_shoe_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR3Half_Stitching_Qty: TStringField
      FieldName = 'Half_Stitching_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR3Costing_Qty: TStringField
      FieldName = 'Costing_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR3IE_Qty: TStringField
      FieldName = 'IE_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR3ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object qryR3Total_Qty: TFloatField
      FieldName = 'Total_Qty'
    end
  end
  object R2recieve: TDataSource
    DataSet = qryR2
    Left = 340
    Top = 504
  end
  object R3recieve: TDataSource
    DataSet = qryR3
    Left = 388
    Top = 504
  end
  object saver2: TUpdateSQL
    ModifySQL.Strings = (
      'update R2sample'
      'set'
      '   TPDATE=:TPDATE,'
      '   status=:status,'
      '   RSD=:RSD,'
      '   CTSI=:CTSI,'
      '   SETC=:SETC,'
      '   total=:total,'
      '   OQ=:OQ,'
      '   testing=:testing,'
      '   DPS_NTSR=:DPS_NTSR,'
      '   MFRD=:MFRD,'
      '   PI=:PI,'
      '   pullcfmdate=:pullcfmdate,'
      '   RRSRD=:RRSRD,'
      '   PS=:PS,'
      '   userdate = :userdate,'
      '   userID= :userID,'
      '  remarks=:remarks,'
      '  fit=:fit,'
      '   SQ=:SQ,'
      '  wear=:wear,'
      '   Component_Qty=:Component_Qty,'
      '   Lasted_Upper_Qty=:Lasted_Upper_Qty,'
      '   Finished_shoe_Qty=:Finished_shoe_Qty,'
      '   Half_Stitching_Qty=:Half_Stitching_Qty,'
      '   Costing_Qty=:Costing_Qty,'
      '   IE_Qty=:IE_Qty'
      '  where'
      '   XieXing= :OLD_XieXing and'
      '   SheHao = :OLD_SheHao'
      '')
    Left = 340
    Top = 576
  end
  object saver3: TUpdateSQL
    ModifySQL.Strings = (
      'update R3sample'
      'set'
      '   TPDATE=:TPDATE,'
      '   status=:status,'
      '   RSD=:RSD,'
      '   CTSI=:CTSI,'
      '   SETC=:SETC,'
      '   total=:total,'
      '   OQ=:OQ,'
      '   testing=:testing,'
      '   DPS_NTSR=:DPS_NTSR,'
      '   MFRD=:MFRD,'
      '   PI=:PI,'
      '   pullcfmdate=:pullcfmdate,'
      '   RRSRD=:RRSRD,'
      '   PS=:PS,'
      '   userdate = :userdate,'
      '   userID= :userID,'
      '  remarks=:remarks,'
      '  fit=:fit,'
      '   SQ=:SQ,'
      '  wear=:wear,'
      '   Component_Qty=:Component_Qty,'
      '   Lasted_Upper_Qty=:Lasted_Upper_Qty,'
      '   Finished_shoe_Qty=:Finished_shoe_Qty,'
      '   Half_Stitching_Qty=:Half_Stitching_Qty,'
      '   Costing_Qty=:Costing_Qty,'
      '   IE_Qty=:IE_Qty'
      '  where'
      '   XieXing= :OLD_XieXing and'
      '   SheHao = :OLD_SheHao'
      '')
    Left = 388
    Top = 576
  end
  object BasicExcel: TQuery
    DatabaseName = 'dB'
    Left = 532
    Top = 512
  end
  object ExcelR1: TQuery
    DatabaseName = 'dB'
    Left = 588
    Top = 495
  end
  object ExcelR2: TQuery
    DatabaseName = 'dB'
    Left = 628
    Top = 495
  end
  object ExcelR3: TQuery
    DatabaseName = 'dB'
    Left = 668
    Top = 495
  end
  object ExcelCFM: TQuery
    DatabaseName = 'dB'
    Left = 748
    Top = 495
  end
  object SRDet_MLR2: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL3
    Left = 628
    Top = 528
  end
  object R2ETA: TDataSource
    DataSet = ExcelR2
    Left = 628
    Top = 464
  end
  object SRDet_FMLR2: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL4
    Left = 628
    Top = 568
  end
  object SRDet_MLR3: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL1
    Left = 668
    Top = 528
  end
  object SRDet_FMLR3: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL2
    Left = 668
    Top = 568
  end
  object R3ETA: TDataSource
    DataSet = ExcelR3
    Left = 668
    Top = 464
  end
  object R1ETA: TDataSource
    DataSet = ExcelR1
    Left = 588
    Top = 464
  end
  object SRDet_MLR1: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL5
    Left = 588
    Top = 528
  end
  object SRDet_FMLR1: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL6
    Left = 588
    Top = 568
  end
  object UpdateSQL1: TUpdateSQL
    Left = 668
    Top = 600
  end
  object UpdateSQL2: TUpdateSQL
    Left = 668
    Top = 632
  end
  object UpdateSQL3: TUpdateSQL
    Left = 628
    Top = 600
  end
  object UpdateSQL4: TUpdateSQL
    Left = 628
    Top = 632
  end
  object UpdateSQL5: TUpdateSQL
    Left = 588
    Top = 600
  end
  object UpdateSQL6: TUpdateSQL
    Left = 588
    Top = 632
  end
  object DSCheck: TDataSource
    DataSet = Qry_CheckML
    Left = 844
    Top = 512
  end
  object Qry_CheckML: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'Select isnull(CONVERT(char(10),MaterialNG.ng_ETD,111),'#39'N/A'#39') as ' +
        'NG_ETD,cg.cgno,isnull(CONVERT(char(10),cg.cgdate,111),'#39'N/A'#39') as ' +
        'cgdate,isnull(CONVERT(char(10),KCRKS.USERDATE,111),'#39'N/A'#39') as USE' +
        'RDATE,'
      
        'isnull(CONVERT(char(10),CGZLInvoice.cidate,111),'#39'N/A'#39') as cidate' +
        ',YPZL.*,CG.Qty,isnull(CONVERT(char(10),CG.ETD,111),'#39'N/A'#39') as ETD' +
        ','
      
        'CG.Location,isnull(CONVERT(char(10),CG.ETA,111),'#39'N/A'#39') as ETA,CG' +
        '.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.Us' +
        'erName,isnull(MaterialNG.ng_reason,'#39'N/A'#39') as ng_reason from ('
      'select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from ('
      
        'select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  ' +
        'from ( '
      
        'SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypz' +
        'ls.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39#39' and KFXXZL.JiJie='#39#39' an' +
        'd YPZL.GSDH='#39'CDC'#39'  and YPZL.ypdh='#39'LAIV160400199'#39
      'union all '
      
        'SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhz' +
        'l.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39#39' and KFXXZL.JiJie='#39#39' a' +
        'nd YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0  and YPZL.ypdh='#39'LAIV160400' +
        '199'#39
      'union all '
      
        'Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSB' +
        'H,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      'SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39#39' and KFXXZL.JiJie='#39#39' and YPZL.GSDH='#39'CDC'#39'   and' +
        ' CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and YPZL.ypdh='#39'LAIV1604001' +
        '99'#39' '
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlf' +
        'ilter.GSBH='#39'CDC'#39'  '
      
        'left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlf' +
        'ilter.GSBH='#39'CDC'#39'  '
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ' and zszlfilter.zsdh is null  and clzlfilter.cldh is null  '
      ')  YPZL '
      'Left Join ('
      
        'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty' +
        ') as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgd' +
        'ate,'
      
        'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 el' +
        'se Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy' +
        #39' as useType,'#39#39' as stock_memo'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS' +
        '.CLBH'
      'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH'
      'where  CGZL.SEASON='#39#39'  and CGZL.PURPOSE='#39#39'  '
      
        'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location' +
        ',cgzl.cgdate'
      ') CG'
      'on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH'
      'left join zszl on zszl.zsdh=ypzl.csbh '
      'left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='#39'CDC'#39' '
      'left join Busers on zszl_dev.SamplePurchaser=Busers.UserID '
      
        'left join (select CINO,CGNO,CLBH from CGZLInvoiceS)CGZLInvoiceS ' +
        'on CG.CGNO=CGZLInvoiceS.CGNO and CGZLInvoiceS.CLBH=cg.clbh'
      
        'left join (select CINO,CIDATE from CGZLInvoice)CGZLInvoice on CG' +
        'ZLInvoice.CINO=CGZLInvoiceS.CINO'
      
        'LEFT join (select KCRKS.DOCNO,CLBH,KCRK.USERDATE,RKSB from KCRKS' +
        ' ,KCRK where KCRK.RKNO=KCRKS.RKNO and KCRK.GSBH='#39'CDC'#39')KCRKS on  ' +
        'CG.CGNO=KCRKS.DOCNO and CG.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKS' +
        'B,'#39#39')<>'#39'NG'#39
      
        'LEFT join (select CGNO,CLBH,NG_REAsON,NG_ETD from MaterialNG)Mat' +
        'erialNG  on CG.CLBH=MaterialNG.CLBH and CG.CGNO=MaterialNG.CGNO '
      
        'WHERE (MaterialNG.ng_reason<>'#39'OK'#39' AND MaterialNG.ng_reason<>'#39'OK ' +
        'with improve'#39' AND KCRKS.USERDATE IS not null) OR KCRKS.USERDATE ' +
        'IS null '
      'and CG.useType <>'#39'stock'#39
      
        'group by MaterialNG.ng_ETD,cg.cgno,cg.cgdate,KCRKS.USERDATE,CGZL' +
        'Invoice.cidate,ypzl.ypdh,ypzl.fd,ypzl.clbh,ypzl.ywpm,'
      
        'ypzl.csbh,ypzl.clsl,CG.Qty,CG.ETD,CG.Location,CONVERT(char(10),C' +
        'G.ETA,111),CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc,Busers.U' +
        'serName,MaterialNG.ng_reason'
      'order by ypzl.ypdh')
    Left = 844
    Top = 552
    object Qry_CheckMLNG_ETD: TStringField
      FieldName = 'NG_ETD'
      FixedChar = True
      Size = 10
    end
    object Qry_CheckMLcgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object Qry_CheckMLcgdate: TStringField
      FieldName = 'cgdate'
      FixedChar = True
      Size = 10
    end
    object Qry_CheckMLUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 10
    end
    object Qry_CheckMLcidate: TStringField
      FieldName = 'cidate'
      FixedChar = True
      Size = 10
    end
    object Qry_CheckMLYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Qry_CheckMLFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Qry_CheckMLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_CheckMLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_CheckMLCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_CheckMLCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Qry_CheckMLQty: TCurrencyField
      FieldName = 'Qty'
    end
    object Qry_CheckMLETD: TStringField
      FieldName = 'ETD'
      FixedChar = True
      Size = 10
    end
    object Qry_CheckMLLocation: TStringField
      FieldName = 'Location'
      FixedChar = True
      Size = 15
    end
    object Qry_CheckMLETA: TStringField
      FieldName = 'ETA'
      FixedChar = True
      Size = 10
    end
    object Qry_CheckMLCGNO_1: TStringField
      FieldName = 'CGNO_1'
      FixedChar = True
      Size = 11
    end
    object Qry_CheckMLuseType: TStringField
      FieldName = 'useType'
      FixedChar = True
      Size = 3
    end
    object Qry_CheckMLStock_memo: TStringField
      FieldName = 'Stock_memo'
      FixedChar = True
      Size = 1
    end
    object Qry_CheckMLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object Qry_CheckMLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
    object Qry_CheckMLng_reason: TStringField
      FieldName = 'ng_reason'
      FixedChar = True
    end
  end
  object UpdateSQL7: TUpdateSQL
    Left = 708
    Top = 632
  end
  object UpdateSQL8: TUpdateSQL
    Left = 708
    Top = 600
  end
  object SRDet_FMLR4: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL7
    Left = 708
    Top = 568
  end
  object SRDet_MLR4: TQuery
    DatabaseName = 'dB'
    UpdateObject = UpdateSQL8
    Left = 708
    Top = 528
  end
  object ExcelR4: TQuery
    DatabaseName = 'dB'
    Left = 708
    Top = 495
  end
  object R4ETA: TDataSource
    DataSet = ExcelR4
    Left = 708
    Top = 464
  end
  object R4recieve: TDataSource
    DataSet = qryR4
    Left = 420
    Top = 504
  end
  object qryR4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'ypzl.FD as FD,ypzl.ypdh,'
      'isnull(KFXXZL.YSSM,'#39#39') as YSSM,'
      
        'case when kfxxzl.kflx = '#39'MU'#39' then '#39'NM'#39' when  kfxxzl.kflx = '#39'CU'#39' ' +
        'then '#39'NC'#39' else kfxxzl.kflx end  as kflx,'
      'isnull(kfxxzl.XTMH,'#39#39') as XTMH,'
      'isnull(kfxxzl.DDMH,'#39#39') as DDMH,'
      'isnull(kfxxzl.XieMing,'#39#39') as XieMing,'
      'isnull(kfxxzl.article,'#39#39') as article,'
      'isnull(kfxxzl.devcode,'#39#39') as devcode,'
      'isnull(xxzlkf.imgnameR4,'#39#39') as imgnameR4,'
      'isnull(xxzlkf.CTS,'#39#39') as CTS,'
      'isnull(xxzlkf.NA,'#39#39') as NA,'
      'isnull(KFXXZL.GENDER,'#39#39') as GENDER,'
      'isnull(ypzl.subtype,'#39#39') as subtype,'
      'R4Sample.*,'
      'isnull(ypzl.ProductionLocation,'#39#39') as ProductionLocation,'
      'cast(ISNULL(Component_Qty, 0)  as float )+'
      'cast(ISNULL(Lasted_Upper_Qty, 0)  as float )+'
      'cast(ISNULL(Finished_shoe_Qty, 0) as float )+'
      'cast(ISNULL(Half_Stitching_Qty, 0)  as float )+'
      'cast(ISNULL(Costing_Qty, 0)  as float )+'
      'cast(ISNULL(SQ, 0)  as float )+ '
      'cast(ISNULL(testing, 0)  as float )+'
      'cast(ISNULL(OQ, 0)  as float )'
      ' as Total_Qty  '
      'from R4Sample'
      
        'left join  kfxxzl on R4Sample.xiexing=kfxxzl.xiexing and R4Sampl' +
        'e.shehao=kfxxzl.shehao'
      
        'left join  xxzlkf on R4Sample.xiexing=xxzlkf.xiexing and R4Sampl' +
        'e.shehao=xxzlkf.shehao'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on ypzl.xiexing=R4Sample.xiexing and ypzl.shehao=' +
        'R4Sample.shehao'
      'where kfxxzl.jijie like '#39'%19H%'#39
      'and (xxzlkf.dropped <>'#39'1'#39' or xxzlkf.dropped is null)'
      'and (xxzlkf.transfer <>'#39'1'#39' or xxzlkf.transfer is null)'
      'and ypzl.kfjd in ( '#39'CR4'#39' ) '
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfxxzl.devtype like '#39'%Inline%'#39
      'and kfxxzl.devcode like '#39'%G32711-CTA33U-19H01%'#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      'and left(ypdh,4)='#39'LAIK'#39' '
      
        'group by ypzl.ypdh,ypzl.FD,YSSM,kfxxzl.kflx,XTMH,DDMH,kfxxzl.Xie' +
        'Ming,kfxxzl.Article,devcode,CTS,NA,'
      'gender,R4Sample.xiexing,R4Sample.shehao,'
      
        'R4Sample.userid,R4Sample.userdate,R4Sample.tpdate,R4Sample.statu' +
        's,R4Sample.rsd,R4Sample.ctsi,'
      
        'R4Sample.setc,R4Sample.total,R4Sample.oq,R4Sample.testing,R4Samp' +
        'le.rassembly,R4Sample.rstitching,'
      
        'R4Sample.rcutting,R4Sample.mfrd,R4Sample.dps_NTSR,R4Sample.pi,R4' +
        'Sample.rrsrd,R4Sample.ps,R4Sample.remarks,R4Sample.fit,R4Sample.' +
        'SQ,R4Sample.pullcfmdate,'
      
        'R4Sample.wear,ypzl.subtype,xxzlkf.imgnameR4,ypzl.ProductionLocat' +
        'ion,R4Sample.Component_Qty,R4Sample.Lasted_Upper_Qty,R4Sample.Fi' +
        'nished_shoe_Qty,'
      'R4Sample.Half_Stitching_Qty,R4Sample.Costing_Qty,R4Sample.IE_Qty'
      'order by kfxxzl.devcode')
    UpdateObject = saver4
    Left = 420
    Top = 544
    object qryR4FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qryR4ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object qryR4YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object qryR4kflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object qryR4XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object qryR4DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qryR4XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qryR4article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object qryR4devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qryR4imgnameR4: TStringField
      FieldName = 'imgnameR4'
      FixedChar = True
      Size = 255
    end
    object qryR4CTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object qryR4NA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object qryR4GENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object qryR4subtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object qryR4XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qryR4SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qryR4USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qryR4userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object qryR4TPDATE: TStringField
      FieldName = 'TPDATE'
      FixedChar = True
      Size = 15
    end
    object qryR4status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 15
    end
    object qryR4RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object qryR4CTSI: TStringField
      FieldName = 'CTSI'
      FixedChar = True
      Size = 15
    end
    object qryR4SETC: TStringField
      FieldName = 'SETC'
      FixedChar = True
      Size = 15
    end
    object qryR4total: TStringField
      FieldName = 'total'
      FixedChar = True
      Size = 8
    end
    object qryR4OQ: TStringField
      FieldName = 'OQ'
      FixedChar = True
      Size = 8
    end
    object qryR4testing: TStringField
      FieldName = 'testing'
      FixedChar = True
      Size = 8
    end
    object qryR4MFRD: TStringField
      FieldName = 'MFRD'
      FixedChar = True
      Size = 200
    end
    object qryR4DPS_NTSR: TStringField
      FieldName = 'DPS_NTSR'
      FixedChar = True
      Size = 15
    end
    object qryR4PI: TStringField
      FieldName = 'PI'
      FixedChar = True
      Size = 15
    end
    object qryR4RRSRD: TStringField
      FieldName = 'RRSRD'
      FixedChar = True
      Size = 15
    end
    object qryR4PS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 100
    end
    object qryR4remarks: TStringField
      FieldName = 'remarks'
      FixedChar = True
      Size = 200
    end
    object qryR4fit: TStringField
      FieldName = 'fit'
      FixedChar = True
      Size = 4
    end
    object qryR4wear: TStringField
      FieldName = 'wear'
      FixedChar = True
      Size = 4
    end
    object qryR4SQ: TStringField
      FieldName = 'SQ'
      FixedChar = True
      Size = 8
    end
    object qryR4PullCFMDate: TStringField
      FieldName = 'PullCFMDate'
      FixedChar = True
      Size = 15
    end
    object qryR4ProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object qryR4Component_Qty: TStringField
      FieldName = 'Component_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR4Lasted_Upper_Qty: TStringField
      FieldName = 'Lasted_Upper_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR4Finished_shoe_Qty: TStringField
      FieldName = 'Finished_shoe_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR4Half_Stitching_Qty: TStringField
      FieldName = 'Half_Stitching_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR4Costing_Qty: TStringField
      FieldName = 'Costing_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR4IE_Qty: TStringField
      FieldName = 'IE_Qty'
      FixedChar = True
      Size = 8
    end
    object qryR4Total_Qty: TFloatField
      FieldName = 'Total_Qty'
    end
  end
  object saver4: TUpdateSQL
    ModifySQL.Strings = (
      'update R4sample'
      'set'
      '   TPDATE=:TPDATE,'
      '   status=:status,'
      '   RSD=:RSD,'
      '   CTSI=:CTSI,'
      '   SETC=:SETC,'
      '   total=:total,'
      '   OQ=:OQ,'
      '   testing=:testing,'
      '   DPS_NTSR=:DPS_NTSR,'
      '   MFRD=:MFRD,'
      '   PI=:PI,'
      '   pullcfmdate=:pullcfmdate,'
      '   RRSRD=:RRSRD,'
      '   PS=:PS,'
      '   userdate = :userdate,'
      '   userID= :userID,'
      '  remarks=:remarks,'
      '  fit=:fit,'
      '   SQ=:SQ,'
      '  wear=:wear,'
      '   Component_Qty=:Component_Qty,'
      '   Lasted_Upper_Qty=:Lasted_Upper_Qty,'
      '   Finished_shoe_Qty=:Finished_shoe_Qty,'
      '   Half_Stitching_Qty=:Half_Stitching_Qty,'
      '   Costing_Qty=:Costing_Qty,'
      '   IE_Qty=:IE_Qty'
      '  where'
      '   XieXing= :OLD_XieXing and'
      '   SheHao = :OLD_SheHao'
      '')
    Left = 420
    Top = 576
  end
  object MaterialMonitor: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select '#39'Uppers'#39' as Parts,jijie Season,main.Stage,SRDet_ML.admind' +
        'ate UpdateDate from (select kfxxzl.jijie,ypzl.kfjd as Stage from' +
        ' kfxxzl'
      
        'left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao ' +
        '= kfxxzl.shehao'
      'where  kfxxzl.jijie = '#39'21U'#39'  and ypzl.kfjd in ( '#39'CR1'#39' ) '
      'group by kfxxzl.jijie,ypzl.kfjd)main'
      
        'left join (select season,stage,admindate from SRDet_ML group by ' +
        'season,stage,admindate )SRDet_ML on SRDet_ML.season=main.jijie a' +
        'nd SRDet_ML.stage=main.Stage'
      'union'
      
        'select '#39'Stitching'#39' as Parts ,jijie Season,main.Stage,SRDet_FML.a' +
        'dmindate UpdateDate from (select kfxxzl.jijie,ypzl.kfjd as Stage' +
        ' from kfxxzl'
      
        'left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao ' +
        '= kfxxzl.shehao'
      'where  kfxxzl.jijie = '#39'21U'#39'  and ypzl.kfjd in ( '#39'CR1'#39' ) '
      'group by kfxxzl.jijie,ypzl.kfjd)main'
      
        'left join (select season,stage,admindate from SRDet_FML group by' +
        ' season,stage,admindate )SRDet_FML on SRDet_FML.season=main.jiji' +
        'e and SRDet_FML.stage=main.Stage')
    Left = 188
    Top = 376
    object MaterialMonitorParts: TStringField
      FieldName = 'Parts'
      FixedChar = True
      Size = 9
    end
    object MaterialMonitorSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object MaterialMonitorStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object MaterialMonitorUpdateDate: TStringField
      FieldName = 'UpdateDate'
      FixedChar = True
    end
  end
  object MaterialMonitorDS: TDataSource
    DataSet = MaterialMonitor
    Left = 140
    Top = 376
  end
end
