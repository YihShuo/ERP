object SampleMerge: TSampleMerge
  Left = 344
  Top = 125
  Width = 1308
  Height = 656
  Caption = 'SampleMerge'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 281
    Width = 1292
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1292
    Height = 281
    Align = alTop
    TabOrder = 0
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 1290
      Height = 88
      Align = alTop
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 1288
        Height = 83
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 386
          Top = 4
          Width = 57
          Height = 16
          Caption = 'MergeNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 588
          Top = 4
          Width = 47
          Height = 16
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 597
          Top = 31
          Width = 36
          Height = 16
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 417
          Top = 30
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
        object Label3: TLabel
          Left = 717
          Top = 6
          Width = 23
          Height = 13
          Caption = 'From'
        end
        object Label4: TLabel
          Left = 835
          Top = 7
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label14: TLabel
          Left = 909
          Top = 30
          Width = 129
          Height = 13
          Caption = 'CR1/CR2/SMS/PDT/CFM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnDblClick = Label14DblClick
        end
        object Label22: TLabel
          Left = 597
          Top = 60
          Width = 36
          Height = 16
          Caption = 'Brand'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 364
          Top = 60
          Width = 82
          Height = 16
          Caption = 'Material code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 717
          Top = 59
          Width = 18
          Height = 16
          Caption = 'TB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label5: TLabel
          Left = 821
          Top = 59
          Width = 63
          Height = 16
          Caption = 'Color Way'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label24: TLabel
          Left = 718
          Top = 31
          Width = 77
          Height = 16
          Caption = 'Brand GSBH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Edit4: TEdit
          Left = 448
          Top = 28
          Width = 125
          Height = 28
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object Edit1: TEdit
          Left = 449
          Top = 1
          Width = 124
          Height = 28
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = Edit1KeyPress
        end
        object Button1: TButton
          Left = 967
          Top = 46
          Width = 74
          Height = 34
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 743
          Top = 2
          Width = 90
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 848
          Top = 2
          Width = 90
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 4
        end
        object BB2: TBitBtn
          Left = 0
          Top = 16
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
          Left = 49
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
          Left = 98
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
          TabOrder = 7
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
          Left = 147
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
          TabOrder = 8
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
          Left = 196
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
          TabOrder = 9
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
          Left = 245
          Top = 16
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
          TabOrder = 10
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
          Left = 294
          Top = 16
          Width = 67
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Calculate'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = BB8Click
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
        object Edit2: TEdit
          Left = 637
          Top = 3
          Width = 69
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyPress = Edit2KeyPress
        end
        object Edit3: TEdit
          Left = 637
          Top = 28
          Width = 70
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnKeyPress = Edit3KeyPress
        end
        object Edit12: TEdit
          Left = 637
          Top = 55
          Width = 71
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnKeyPress = Edit2KeyPress
        end
        object Edit13: TEdit
          Left = 449
          Top = 55
          Width = 124
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnKeyPress = Edit2KeyPress
        end
        object TBEdit: TEdit
          Left = 741
          Top = 54
          Width = 71
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          Visible = False
          OnKeyPress = Edit2KeyPress
        end
        object YSSMEdit: TEdit
          Left = 885
          Top = 53
          Width = 71
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          Visible = False
          OnKeyPress = Edit2KeyPress
        end
        object ComboBox14: TComboBox
          Left = 797
          Top = 27
          Width = 73
          Height = 24
          Style = csDropDownList
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 18
          Visible = False
          Items.Strings = (
            ''
            'SKX'
            'SRL')
        end
        object CheckBox2: TCheckBox
          Left = 967
          Top = 2
          Width = 129
          Height = 17
          Caption = 'Show the instruction'
          TabOrder = 19
          OnClick = CheckBox2Click
        end
      end
    end
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 89
      Width = 1290
      Height = 191
      Align = alClient
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      VTitleMargin = 5
      OnCellMouseClick = DBGrid3CellMouseClick
      OnDrawColumnCell = DBGrid3DrawColumnCell
      Columns = <
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'YPZLBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Merge No'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'ProductionLocation'
          Footers = <>
          PickList.Strings = (
            ''
            'YZBY'
            'LYN'
            'LYN/YZBY')
          Width = 121
        end
        item
          EditButtons = <>
          FieldName = 'JiJie'
          Footers = <>
          Title.Caption = 'Season'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'KFJD'
          Footers = <>
          Title.Caption = 'Stage'
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'DevType'
          Footers = <>
          PickList.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU'
            'Innovation')
          Width = 115
        end
        item
          EditButtons = <>
          FieldName = 'memo'
          Footers = <>
          Title.Caption = 'Memo'
          Width = 232
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'CALDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Cal Date'
          Width = 77
        end
        item
          Color = 11927551
          EditButtons = <>
          FieldName = 'revise'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'BOM Revised'
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User ID'
          Width = 49
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'INSDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Insert Date'
          Width = 74
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User Date'
          Width = 75
        end>
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 284
    Width = 1292
    Height = 333
    ActivePage = TS4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS4: TTabSheet
      Caption = 'Detail'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 47
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label19: TLabel
          Left = 376
          Top = 18
          Width = 64
          Height = 13
          Caption = 'Sample Order'
        end
        object DBEdit13: TDBEdit
          Left = 465
          Top = 14
          Width = 123
          Height = 21
          CharCase = ecUpperCase
          DataField = 'YPDH'
          DataSource = DS4
          ReadOnly = True
          TabOrder = 1
        end
        object BBTT2: TBitBtn
          Left = 594
          Top = 14
          Width = 19
          Height = 25
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = BBTT2Click
        end
        object btn1: TBitBtn
          Left = 683
          Top = 0
          Width = 50
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btn1Click
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
        object BD2: TBitBtn
          Left = 2
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
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
          Left = 50
          Top = 2
          Width = 49
          Height = 46
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
          Left = 98
          Top = 2
          Width = 49
          Height = 46
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
          Left = 146
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
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
          Left = 194
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
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
        object BitBtn1: TBitBtn
          Left = 242
          Top = 1
          Width = 63
          Height = 46
          Hint = 'Modify Current'
          Caption = 'ExcelSR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = BitBtn1Click
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
        object BitBtn2: TBitBtn
          Left = 307
          Top = 1
          Width = 57
          Height = 46
          Hint = 'Modify Current'
          Caption = 'ExcelAll'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = BitBtn2Click
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
      object Panel12: TPanel
        Left = 0
        Top = 47
        Width = 1284
        Height = 255
        Align = alClient
        Caption = 'Panel12'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 779
          Top = 1
          Width = 5
          Height = 253
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh8: TDBGridEh
          Left = 1
          Top = 1
          Width = 778
          Height = 253
          Align = alClient
          DataSource = DS4
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid4DrawColumnCell
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 101
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'JiJie'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Season'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 41
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 53
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <
                item
                  FieldName = 'ARTICLE'
                  ValueType = fvtCount
                end>
              ReadOnly = True
              Title.Caption = 'SKU'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 118
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Size'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 37
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Stage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <
                item
                  FieldName = 'PAIRS'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Pairs'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 42
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sample Order'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 88
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User Date'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 83
            end>
        end
        object Panel13: TPanel
          Left = 784
          Top = 1
          Width = 499
          Height = 253
          Align = alRight
          Caption = 'Panel13'
          TabOrder = 1
          object DBGrid4: TDBGridEh
            Left = 1
            Top = 25
            Width = 231
            Height = 227
            Align = alClient
            DataSource = DS_Supplier
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGrid4DblClick
            OnDrawColumnCell = DBGrid4DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CSBH'
                Footers = <>
                Title.Caption = 'Sup ID'
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Title.Caption = 'Supplier'
                Width = 93
              end
              item
                EditButtons = <>
                FieldName = 'UserName'
                Footers = <>
                Title.Caption = 'Purchaser'
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Mat No'
              end
              item
                EditButtons = <>
                FieldName = 'CLMC'
                Footers = <>
                Title.Caption = 'Mat Name'
              end>
          end
          object Memo1: TMemo
            Left = 232
            Top = 25
            Width = 266
            Height = 227
            Align = alRight
            Color = clMenuBar
            Font.Charset = ANSI_CHARSET
            Font.Color = 14822282
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            Lines.Strings = (
              '---------------------------------'
              '------------------------'
              '--'
              #31243#24335#20027#35201#21151#33021#35498#26126
              ''
              #25505#36092#21512#20341#27171#21697#21934'-BOM'#34920
              #23559#25505#36092#25910#21040#30340#27171#21697#21934#20570#21512#20341#30340#21205
              #20316
              #36039#26009#20358#28304#30001'PurchaseN711 '#30906#35469
              #27171#21697#21934#25505#36092#25509#25910
              ''
              '---------------------------------'
              '------------------------'
              '--'
              #20998#38913#21508#21151#33021#35498#26126
              ''
              'Detail:'#25505#36092#21512#20341#27171#21697#21934
              'SampleOrder:'#27171#21697#35330#21934#26597#35426
              'Cal Result:'#38283#30332#26126#32048
              'Purchase Status[Article]:'#25505#36092
              '[Article]'#29376#24907
              'Purchase Status[Material]:'#25505#36092'['
              #26448#26009']'#29376#24907
              'Merge Date Check:'#21512#20341#26085#26399#27298
              #26597
              'BOM_Record:'#35352#37636'BOM'
              'BOM_MeMo:BOM'#35498#26126
              ''
              '---------------------------------'
              '------------------------'
              '--'
              #36039#26009#31721#36984#25805#20316#35498#26126
              ''
              'MergeNo:'#21512#20341#21934#34399
              'Season:'#23395#21029
              'SR#:'#26410#37559#27171#38795#23376#22411#39636#21517#31281
              'Stage:'#38542#27573
              'Calculate:'#27492#25353#37749#28858#37325#26032#35336#31639#65292#25235
              #21462#25505#36092#25910#27171#21934#26368#26032
              #37096#20998
              ''
              '---------------------------------'
              '------------------------'
              '--'
              #37325#40670#27396#20301#35498#26126
              ''
              'DEV Type:'#38283#30332#39006#22411
              'Cal Date:'#35336#31639#26085#26399
              'BOMRevised:bom'#20462#35330
              'FD:'#38283#30332#21729
              'Cal Date:'#35336#31639#26085#26399
              'DEV Type:'#38283#30332#39006#22411
              'BOM Revised:Bom '#20462#35330
              'SupID:'#24288#21830#32232#34399
              'Parts:'#37096#20301
              'Supplier:'#20379#25033#21830#20195#34399
              ''
              '---------------------------------'
              '------------------------'
              '--'
              '')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
            Visible = False
          end
          object Panel16: TPanel
            Left = 1
            Top = 1
            Width = 497
            Height = 24
            Align = alTop
            TabOrder = 2
            object Label15: TLabel
              Left = 1
              Top = 1
              Width = 327
              Height = 22
              Align = alLeft
              Caption = 'No assign purchaser or no supplier for material'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Sample Order'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 35
        Width = 1164
        Height = 184
        Align = alClient
        DataSource = DS5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <
              item
                FieldName = 'YPDH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Sample Order'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 128
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            Title.Caption = 'Itm'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 151
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Mat name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 361
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Title.Caption = 'Loss'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'Treatment'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'Size'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 39
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1164
        Height = 35
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          Left = 15
          Top = 9
          Width = 26
          Height = 16
          Caption = 'SR#'
        end
        object Edit5: TEdit
          Left = 49
          Top = 5
          Width = 176
          Height = 24
          TabOrder = 0
        end
        object Button2: TButton
          Left = 234
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cal Result'
      ImageIndex = 3
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 35
        Width = 1172
        Height = 192
        Align = alClient
        DataSource = DS6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <
              item
                FieldName = 'YPDH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Sample Order'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 128
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 151
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Mat name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 361
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Usage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'TP'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'MJBH'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = 'Supp ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'Size'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 39
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1172
        Height = 35
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 7
          Top = 9
          Width = 26
          Height = 16
          Caption = 'SR#'
        end
        object Label16: TLabel
          Left = 223
          Top = 9
          Width = 46
          Height = 16
          Caption = 'Mat No:'
        end
        object Label17: TLabel
          Left = 593
          Top = 11
          Width = 48
          Height = 16
          Caption = 'SuppID:'
        end
        object Label18: TLabel
          Left = 404
          Top = 9
          Width = 40
          Height = 16
          Caption = 'MJBH:'
        end
        object Edit6: TEdit
          Left = 49
          Top = 5
          Width = 160
          Height = 24
          TabOrder = 0
        end
        object Button3: TButton
          Left = 747
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object Edit8: TEdit
          Left = 274
          Top = 5
          Width = 119
          Height = 24
          TabOrder = 2
        end
        object Edit9: TEdit
          Left = 642
          Top = 5
          Width = 103
          Height = 24
          TabOrder = 3
        end
        object Button7: TButton
          Left = 825
          Top = 4
          Width = 64
          Height = 25
          Caption = 'EXCEL'
          TabOrder = 4
          OnClick = Button7Click
        end
        object Edit10: TEdit
          Left = 450
          Top = 5
          Width = 135
          Height = 24
          TabOrder = 5
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Purchase Status-[Article]'
      ImageIndex = 5
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 35
        Width = 1172
        Height = 192
        Align = alClient
        DataSource = DS_Purchase
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Purchase
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 128
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = 'Stage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Title.Caption = 'Pairs'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Mat No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Mat name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 361
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 59
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PurQty'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 59
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <>
            Title.Caption = 'Use Stock'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'cgdate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'cgno'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'yqdate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'Size'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'recs'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Title.Caption = 'Sample Order'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = 'Supp ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 38
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1172
        Height = 35
        Align = alTop
        TabOrder = 1
        object Button4: TButton
          Left = 266
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button4Click
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 8
          Width = 169
          Height = 17
          Caption = 'Only Show Pur. Material'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 192
          Top = 8
          Width = 57
          Height = 17
          Caption = 'All'
          TabOrder = 2
          OnClick = RadioButton2Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Purchase Status-[Material]'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 319
          Top = 8
          Width = 53
          Height = 16
          Caption = 'Supplier:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label11: TLabel
          Left = 445
          Top = 8
          Width = 48
          Height = 16
          Caption = 'MatNo:"'
        end
        object Label20: TLabel
          Left = 608
          Top = 8
          Width = 62
          Height = 16
          Caption = 'MatName:'
        end
        object Button5: TButton
          Left = 881
          Top = 5
          Width = 73
          Height = 24
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
        object Radio_PurMat: TRadioButton
          Left = 157
          Top = 8
          Width = 96
          Height = 17
          Caption = 'Pur. Material'
          TabOrder = 1
          OnClick = Radio_PurMatClick
        end
        object Radio_All: TRadioButton
          Left = 255
          Top = 8
          Width = 64
          Height = 17
          Caption = 'All Mat.'
          TabOrder = 2
          OnClick = Radio_AllClick
        end
        object Radio_Wait: TRadioButton
          Left = 38
          Top = 8
          Width = 118
          Height = 17
          Caption = 'Waiting Pur. Mat'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = Radio_WaitClick
        end
        object Chk_Mine: TCheckBox
          Left = 836
          Top = 8
          Width = 51
          Height = 17
          Caption = 'Mine'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
        end
        object Edit_Supplier: TEdit
          Left = 373
          Top = 5
          Width = 68
          Height = 24
          TabOrder = 5
        end
        object Edit_MatNo: TEdit
          Left = 487
          Top = 5
          Width = 113
          Height = 24
          TabOrder = 6
        end
        object CheckBox1: TCheckBox
          Left = 1031
          Top = 8
          Width = 155
          Height = 17
          Caption = 'Order all [for re-order]'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
        end
        object HideCK: TCheckBox
          Left = 1153
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Hide Top'
          TabOrder = 8
          OnClick = HideCKClick
        end
        object xlsBtn: TButton
          Left = 954
          Top = 4
          Width = 40
          Height = 25
          Caption = 'xls'
          TabOrder = 9
          OnClick = xlsBtnClick
        end
        object HideRightCK: TCheckBox
          Left = 1232
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Hide Right'
          TabOrder = 10
          OnClick = HideRightCKClick
        end
        object CKCLSL: TCheckBox
          Left = 3
          Top = 8
          Width = 34
          Height = 17
          Caption = '>0'
          Checked = True
          Color = clInactiveCaption
          ParentColor = False
          State = cbChecked
          TabOrder = 11
        end
        object Edit_MatName: TEdit
          Left = 671
          Top = 4
          Width = 154
          Height = 24
          TabOrder = 12
        end
        object Button10: TButton
          Left = 993
          Top = 4
          Width = 33
          Height = 25
          Caption = 'xls2'
          TabOrder = 13
          OnClick = Button10Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 35
        Width = 1284
        Height = 267
        Align = alClient
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 890
          Top = 1
          Height = 265
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 889
          Height = 265
          Align = alClient
          DataSource = DS_Summary
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_Summary
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          OnMouseDown = DBGridEh3MouseDown
          OnMouseUp = DBGridEh3MouseUp
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              ReadOnly = True
              Title.Caption = 'Mat No'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'cldhflex'
              Footers = <>
              Title.Caption = 'Flex MatNo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'CLMC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Mat name'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 361
            end
            item
              EditButtons = <>
              FieldName = 'MatRemark'
              Footers = <>
              Title.Caption = 'Mat.Remark'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supp ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'UserName'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pur'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Qty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = 'Use Stock'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 39
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'stock_memo'
              Footers = <>
              Title.Caption = 'Use Stock Memo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 207
            end
            item
              EditButtons = <>
              FieldName = 'SafeStock'
              Footers = <>
              ReadOnly = True
              Title.Caption = '45Days useStock'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'StockQty'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Stock Qty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'onthewayqty'
              Footers = <>
              Title.Caption = 'On the way qty'
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Unit'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 27
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH_VN'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'VN PayID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'recs'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'SampleLeadTime'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Lead Time'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'CLBH_NotUS'
              Footers = <>
              Title.Caption = 'CLBH Not Use Stock'
            end>
        end
        object DBGridEh5: TDBGridEh
          Left = 893
          Top = 1
          Width = 390
          Height = 265
          Align = alRight
          DataSource = DS_Article
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          OnDrawColumnCell = DBGridEh5DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Title.Caption = 'SampleNO'
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
            end
            item
              EditButtons = <>
              FieldName = 'YSSM'
              Footers = <>
              Title.Caption = 'Color Way'
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'SKU'
              Title.TitleButton = True
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              Title.Caption = 'Stage'
              Title.TitleButton = True
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <>
              Title.Caption = 'Pairs'
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Qty'
              Title.TitleButton = True
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'YPCCO'
              Footers = <>
              Title.Caption = 'OS Size'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footers = <>
              Title.Caption = 'PurQty'
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Width = 74
            end>
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'BOM Revised Detail'
      ImageIndex = 5
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 1172
        Height = 227
        Align = alClient
        DataSource = DS_Revise
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 3
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Purchase
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 134
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = 'Stage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'Parts'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Material'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 400
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
            Title.Caption = 'Usage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 38
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Merge data Check'
      ImageIndex = 6
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1172
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label12: TLabel
          Left = 7
          Top = 9
          Width = 50
          Height = 16
          Caption = 'Supplier'
        end
        object Edit7: TEdit
          Left = 65
          Top = 5
          Width = 120
          Height = 24
          TabOrder = 0
        end
        object Button6: TButton
          Left = 194
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 35
        Width = 1172
        Height = 192
        Align = alClient
        TabOrder = 1
        object DBGridEh7: TDBGridEh
          Left = 1
          Top = 1
          Width = 1170
          Height = 190
          Align = alClient
          DataSource = DS_MergeNOCheck
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_Purchase
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          Columns = <
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              Title.Caption = 'SKU'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              Title.Caption = 'Stage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <>
              Title.Caption = 'Pairs'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Mat No'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CLMC'
              Footers = <>
              Title.Caption = 'Mat name'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 361
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Qty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = 'Use Stock'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'LYCC'
              Footers = <>
              Title.Caption = 'Size'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'recs'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Title.Caption = 'Sample Order'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              Title.Caption = 'Supp ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 38
            end>
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'BOM_Record'
      ImageIndex = 7
      object DBGridEh9: TDBGridEh
        Left = 0
        Top = 41
        Width = 1172
        Height = 186
        Align = alClient
        DataSource = DS_Record
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1172
        Height = 41
        Align = alTop
        TabOrder = 1
        object Button8: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button8Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'BOM_Memo'
      ImageIndex = 8
      object DBGridEh10: TDBGridEh
        Left = 0
        Top = 46
        Width = 1172
        Height = 181
        Align = alClient
        DataSource = BOMMEMODS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ypdh'
            Footers = <>
            Title.Caption = 'YPDH'
            Width = 132
          end
          item
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = 'BOM|ID'
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'Check_Time'
            Footers = <>
            Title.Caption = 'BOM|CheckTime'
            Width = 174
          end
          item
            EditButtons = <>
            FieldName = 'remark'
            Footers = <>
            Title.Caption = 'BOM|Memo'
            Width = 412
          end
          item
            EditButtons = <>
            FieldName = 'recieveid'
            Footers = <>
            Title.Caption = 'Purchase|ID'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'recievedate'
            Footers = <>
            Title.Caption = 'Purchase|RecieveTime'
            Width = 170
          end>
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1172
        Height = 46
        Align = alTop
        TabOrder = 1
        object Label21: TLabel
          Left = 13
          Top = 13
          Width = 101
          Height = 16
          Caption = 'SampleOrderNO'
        end
        object Button9: TButton
          Left = 221
          Top = 7
          Width = 61
          Height = 26
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button9Click
        end
        object Edit11: TEdit
          Left = 117
          Top = 10
          Width = 98
          Height = 24
          TabOrder = 1
        end
      end
    end
  end
  object YPZLZLS: TQuery
    AfterOpen = YPZLZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'select YPZLZLS.YPZLBH, YPZLZLS.YPDH, YPZLZLS.PAIRS, YPZLZLS.USER' +
        'ID,'
      
        '       YPZLZLS.USERDATE,YPZLZLS.YN,kfxxzl.ARTICLE,ypzl.KFJD,kfxx' +
        'zl.JiJie ,kfxxzl.FD,ypzl.ypcc as Size,kfxxzl.devcode,YPZL.Produc' +
        'tionLocation, YPZLZL.DevType'
      'from YPZLZLS'
      'LEFT JOIN YPZLZL  ON YPZLZL.YPZLBH=YPZLZLS.YPZLBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS.YPDH'
      
        'left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl.SHEH' +
        'AO=ypzl.SHEHAO'
      'where YPZLZLS.YPZLBH=:YPZLBH')
    UpdateObject = UPDet
    Left = 436
    Top = 419
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YPZLZLSYPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.YPZLZLS.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLSYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.YPZLZLS.YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YPZLZLS.USERID'
      FixedChar = True
    end
    object YPZLZLSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YPZLZLS.USERDATE'
    end
    object YPZLZLSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YPZLZLS.YN'
      FixedChar = True
      Size = 1
    end
    object YPZLZLSKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.ypzl.KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLZLSJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object YPZLZLSPAIRS: TFloatField
      FieldName = 'PAIRS'
    end
    object YPZLZLSFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object YPZLZLSSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object YPZLZLSdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object YPZLZLSARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object YPZLZLSProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object YPZLZLSDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
  end
  object DS4: TDataSource
    DataSet = YPZLZLS
    Left = 436
    Top = 387
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update YPZLZLS'
      'set'
      '  YPZLBH = :YPZLBH,'
      '  YPDH = :YPDH,'
      '  PAIRS = :PAIRS,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  YPDH = :OLD_YPDH and'
      '  PAIRS = :OLD_PAIRS and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN')
    InsertSQL.Strings = (
      'insert into YPZLZLS'
      '  (YPZLBH, YPDH, PAIRS, USERID, USERDATE, YN)'
      'values'
      '  (:YPZLBH, :YPDH, :PAIRS, :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from YPZLZLS'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  YPDH = :OLD_YPDH and'
      '  PAIRS = :OLD_PAIRS and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN')
    Left = 436
    Top = 451
  end
  object DS3: TDataSource
    DataSet = YPZLZL
    Left = 396
    Top = 387
  end
  object YPZLZL: TQuery
    AfterOpen = YPZLZLAfterOpen
    AfterScroll = YPZLZLAfterScroll
    OnCalcFields = YPZLZLCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YPZLZL.*'
      'from YPZLZL'
      '')
    UpdateObject = UpMas
    Left = 396
    Top = 419
    object YPZLZLYPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.YPZLZL.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.YPZLZL.GSBH'
      FixedChar = True
      Size = 4
    end
    object YPZLZLKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.YPZLZL.KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLZLJiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.YPZLZL.JiJie'
      FixedChar = True
    end
    object YPZLZLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YPZLZL.USERID'
      FixedChar = True
    end
    object YPZLZLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YPZLZL.YN'
      FixedChar = True
      Size = 1
    end
    object YPZLZLINSDATE: TDateTimeField
      FieldName = 'INSDATE'
      Origin = 'DB.YPZLZL.INSDATE'
    end
    object YPZLZLCALDATE: TDateTimeField
      FieldName = 'CALDATE'
      Origin = 'DB.YPZLZL.CALDATE'
    end
    object YPZLZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YPZLZL.USERDATE'
    end
    object YPZLZLPD: TStringField
      FieldName = 'PD'
      Origin = 'DB.YPZLZL.PD'
      FixedChar = True
      Size = 1
    end
    object YPZLZLrevise: TStringField
      FieldKind = fkCalculated
      FieldName = 'revise'
      Size = 15
      Calculated = True
    end
    object YPZLZLmemo: TStringField
      DisplayWidth = 300
      FieldName = 'memo'
      Origin = 'DB.YPZLZL.memo'
      FixedChar = True
      Size = 300
    end
    object YPZLZLDevType: TStringField
      FieldName = 'DevType'
      Origin = 'DB.YPZLZL.DevType'
      FixedChar = True
      Size = 15
    end
    object YPZLZLProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      Origin = 'DB.YPZLZL.ProductionLocation'
      FixedChar = True
      Size = 10
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update YPZLZL'
      'set'
      '  YPZLBH = :YPZLBH,'
      '  GSBH = :GSBH,'
      '  INSDATE = :INSDATE,'
      '  KFJD = :KFJD,'
      '  JiJie = :JiJie,'
      '  DevType = :DevType,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  memo =:memo,'
      '  YN = :YN,'
      'ProductionLocation=:ProductionLocation'
      'where'
      '  YPZLBH = :OLD_YPZLBH ')
    InsertSQL.Strings = (
      'insert into YPZLZL'
      
        '  (YPZLBH, GSBH, INSDATE, KFJD, JiJie, DevType ,memo, USERID, US' +
        'ERDATE, YN,PD,ProductionLocation)'
      'values'
      
        '  (:YPZLBH, :GSBH, :INSDATE, :KFJD, :JiJie, :DevType, :memo, :US' +
        'ERID, :USERDATE, :YN,:PD,:ProductionLocation)')
    DeleteSQL.Strings = (
      'delete from YPZLZL'
      'where'
      '  YPZLBH = :OLD_YPZLBH ')
    Left = 396
    Top = 451
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 272
    Top = 415
  end
  object YPZLZLS1: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    Left = 240
    Top = 415
  end
  object YPZLZLS11: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH,BWZL.ywsm BWMC,Y' +
        'PZLZLS1.CLBH,CLZL.YWPM as CLMC, '
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS1.LOSS,YPZLZLS' +
        '1.CLSL,CLZL.CLZMLB ,kfxxzl.devcode ,kfxxzl.ARTICLE'
      ' FROM YPZLZLS1'
      
        'LEFT JOIN BWZL  ON YPZLZLS1.BWBH = BWZL.bwdh                    ' +
        '           '
      'LEFT JOIN CLZL   ON YPZLZLS1.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS1.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS1.YPDH'
      
        'LEFT JOIN kfxxzl  ON ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'where 1=2'
      'order by YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH')
    Left = 500
    Top = 419
    object StringField11: TStringField
      DisplayWidth = 4
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object StringField12: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object StringField13: TStringField
      DisplayWidth = 21
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object StringField14: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField15: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField16: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField17: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField19: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField3: TFloatField
      DisplayWidth = 5
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object FloatField4: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField20: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object YPZLZLS11YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLS11ARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object YPZLZLS11devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object DS5: TDataSource
    DataSet = YPZLZLS11
    Left = 500
    Top = 387
  end
  object YPZLZLS2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS2.YPDH,YPZLZLS2.BWBH,BWZL.ywsm BWMC,YPZLZLS2.CLBH,' +
        'CLZL.YWPM as CLMC, '
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CLSL,CLZL.CL' +
        'ZMLB,YPZLZLS2.USAGE,'
      
        '            YPZLZLS2.MJBH,YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.AR' +
        'TICLE,kfxxzl.FD'
      ' FROM YPZLZLS2'
      
        'LEFT JOIN BWZL  ON YPZLZLS2.BWBH = BWZL.bwdh                    ' +
        '           '
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join kfxxzl on ypzl.xiexing =kfxxzl.xiexing and ypzl.shehao' +
        ' =kfxxzl.shehao'
      'where 1=2'
      
        'group by YPZLZLS2.YPDH,YPZLZLS2.BWBH,BWZL.ywsm,YPZLZLS2.CLBH,CLZ' +
        'L.YWPM , '
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CLSL,CLZL.CL' +
        'ZMLB,YPZLZLS2.USAGE,'
      
        '            YPZLZLS2.MJBH,YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.AR' +
        'TICLE,kfxxzl.FD'
      
        'order by YPZLZLS2.YPDH  ASC, YPZLZLS2.BWBH  ASC,YPZLZLS2.MJBH DE' +
        'SC')
    Left = 548
    Top = 419
    object StringField2: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      DisplayWidth = 21
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object StringField4: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField2: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField10: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object StringField21: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLS2USAGE: TFloatField
      FieldName = 'USAGE'
    end
    object YPZLZLS2MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 10
    end
    object YPZLZLS2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object YPZLZLS2ARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object YPZLZLS2FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object YPZLZLS2devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object DS6: TDataSource
    DataSet = YPZLZLS2
    Left = 548
    Top = 387
  end
  object dlgSave1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 195
    Top = 415
  end
  object PopupMenu1: TPopupMenu
    Left = 500
    Top = 451
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 548
    Top = 451
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
  object Qry_Purchase: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,'
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS' +
        ' CLSL,'
      
        '            YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.ARTICLE,ypzl.KFJ' +
        'D'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS,cgkcuse.qty as UseStock'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39' '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cgzl.purpose,cs.zlbh,count' +
        '(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate' +
        ') as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      
        '                 group by cs.clbh,cgzl.season,cgzl.purpose,cs.zl' +
        'bh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.season=kfx' +
        'xzl.jijie and cg.purpose=ypzl.kfjd and cg.zlbh=YPZL.Article'
      ''
      'where CLZL.CLZMLB='#39'N'#39' and 1=2'
      'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM ,'
      '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,'
      
        '            YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.ARTICLE ,ypzl.KF' +
        'JD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS ,cgkcuse.qty'
      'order by YPZLZLS2.YPDH  ASC'
      ''
      '')
    Left = 588
    Top = 419
    object StringField1: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField22: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField34: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField35: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField37: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField6: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField39: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField41: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object StringField42: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object IntegerField1: TIntegerField
      FieldName = 'recs'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Purchase Date'
      FieldName = 'cgdate'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object StringField43: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object Qry_PurchaseKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Qry_PurchasePAIRS: TFloatField
      FieldName = 'PAIRS'
    end
    object Qry_PurchaseUseStock: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object Qry_Purchasedevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object DS_Purchase: TDataSource
    DataSet = Qry_Purchase
    Left = 588
    Top = 387
  end
  object Pop_Purchase: TPopupMenu
    Left = 588
    Top = 451
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object DS_Summary: TDataSource
    DataSet = Qry_Summary
    Left = 628
    Top = 387
  end
  object Qry_Summary: TQuery
    AfterOpen = Qry_SummaryAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZL_Mat.*,cg.recs,cg.cgno,IsNull(cg.PurQty,0) as PurQty,' +
        'IsNull(kcuse.UseStock,0) as UseStock,kcuse.stock_memo,IsNull(kcu' +
        'se_all.UseStock,0) as SafeStock, '
      
        'zszlSample.ZSDH_TW as ZSDH_VN,IsNull(KCCLMONTH.Qty,0) as StockQt' +
        'y,IsNull(MaterialMOQ.SampleLeadTime,14) as  SampleLeadTime ,'
      
        'case when substring(YPZL_Mat.csbh,1,3) <> '#39'JNG'#39' and substring(YP' +
        'ZL_Mat.CLBH,1,1) <> '#39'W'#39' then'
      
        '(select isnull(sum(isnull(xqqty,0))-sum(isnull(qty,0)),0)+isnull' +
        '((select sum(qty) from cgzls left join CGZL on CGZL.CGNO = cgzls' +
        '.CGNO  where clbh = YPZL_Mat.CLBH and CGZL.GSBH = '#39'CDC'#39' '
      
        'and cgzls.cgno not in (select distinct cgno from CGZLInvoiceS wh' +
        'ere CLBH = YPZL_Mat.CLBH)),0) from CGZLInvoiceS'
      
        'where CLBH = YPZL_Mat.CLBH) else 0 end as onthewayqty,clzl_flex.' +
        'cldhflex'
      'from     (select YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC'
      
        '              ,CLZL.DWBH,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL,' +
        'YPZLZLS2.CSBH,BUsers.UserName,IsNull(cg.NoBuy,0) as NoBuy,IsNull' +
        '(cuse.NoUse,0) as NoUse'
      '          FROM YPZLZLS2'
      '          LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      '          LEFT JOIN YPZL on YPZL.YPDH=YPZLZLS2.YPDH'
      '          LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      
        '          LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL' +
        '_DEV.GSBH='#39'CDC'#39' '
      
        '          LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.Us' +
        'erID'
      '          left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH'
      '          left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH'
      '          --'
      
        '          left join (select YPZLZLS2.CLBH,count(Distinct(YPZLZLS' +
        '2.YPDH)) as NoBuy from YPZLZLS2,ypzl where ypzl.YPDH=YPZLZLS2.YP' +
        'DH and YPZLZLS2.YPZLBH='#39'20150700200'#39'  and not exists (select cs.' +
        'zlbh from cgzlss cs where cs.clbh=YPZLZLS2.CLBH and cs.Stage=ypz' +
        'l.kfjd and cs.zlbh=YPZL.YPDH and cs.Qty>0) group by YPZLZLS2.CLB' +
        'H ) cg on YPZLZLS2.CLBH=cg.CLBH'
      
        '          left join (select YPZLZLS2.CLBH,count(Distinct(YPZLZLS' +
        '2.YPDH)) as NoUse from YPZLZLS2,ypzl where ypzl.YPDH=YPZLZLS2.YP' +
        'DH and YPZLZLS2.YPZLBH='#39'20150700200'#39'  and not exists (select cus' +
        'e.zlbh from cgkcuse cuse where cuse.clbh=YPZLZLS2.CLBH and  cuse' +
        '.zlbh=YPZL.YPDH and cuse.Qty>0) group by YPZLZLS2.CLBH ) cuse on' +
        ' YPZLZLS2.CLBH=cuse.CLBH'
      '          --'
      
        '          where CLZL.CLZMLB='#39'N'#39' and YPZLZLS2.YPZLBH='#39'20150700200' +
        #39
      '            --and YPZLZLS2.CLBH like '#39'%A180000199%'#39' '
      
        '          group by  YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,cg.NoBuy,cuse.' +
        'NoUse,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,YPZLZLS2.CSBH,BUsers.UserN' +
        'ame,clzlfilter.cldh'
      '          ) YPZL_Mat'
      
        'left join (select cs.clbh,count(cs.clbh) as recs, min(cs.cgno) a' +
        's cgno,sum(CS.Qty) as PurQty'
      '            from cgzlss cs'
      '            where exists (select ypzl.YPDH from YPZLZLS2,ypzl '
      
        '                          where ypzl.YPDH=YPZLZLS2.YPDH and YPZL' +
        'ZLS2.YPZLBH='#39'20150700200'#39
      
        '                                and cs.clbh=YPZLZLS2.CLBH and cs' +
        '.Stage=ypzl.kfjd and cs.zlbh=YPZL.YPDH )  '
      '            group by cs.clbh '
      '           ) cg on cg.clbh=YPZL_Mat.CLBH '
      
        'left join (select cgkcuse.clbh,sum(cgkcuse.qty) as UseStock,MAX(' +
        'cgkcuse.memo) as stock_memo from cgkcuse '
      '            where exists (select YPDH from YPZLZLS2 '
      '                          where  YPZLZLS2.YPZLBH='#39'20150700200'#39
      
        '                                 and cgkcuse.clbh=YPZLZLS2.CLBH ' +
        'and cgkcuse.zlbh=YPZLZLS2.ypdh  )  '
      '                  and cgkcuse.GSBH='#39'CDC'#39' '
      '            group by cgkcuse.clbh '
      '           ) kcuse on kcuse.clbh=YPZL_Mat.CLBH '
      
        'left join (select cgkcuse.clbh,sum(cgkcuse.qty) as UseStock from' +
        ' cgkcuse '
      '            where cgkcuse.userdate>getdate()-45 '
      '                  and cgkcuse.GSBH='#39'CDC'#39' '
      '            group by cgkcuse.clbh '
      '           ) kcuse_all on kcuse_all.clbh=YPZL_Mat.CLBH '
      'left join ZSZL_DEV zszlSample on zszlSample.ZSDH=YPZL_Mat.csbh '
      'left join ( '
      '  select KCCLDay.CLBH,KCCLDay.Qty from KCCLDay  '
      '  where KCCLDay.KCDay='#39'20150805'#39' and KCCLDay.CKBH='#39'CDC'#39' '
      ') KCCLMONTH on KCCLMONTH.CLBH=YPZL_Mat.CLBH  '
      
        'Left join (select CLBH,SampleLeadTime from ( select CLBH,SampleL' +
        'eadTime,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(' +
        'Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from Material' +
        'MOQ '
      ') A where A.rn=1 ) MaterialMOQ on MaterialMOQ.CLBH=YPZL_Mat.CLBH'
      'left join clzl_flex on clzl_flex.CLDH=YPZL_Mat.CLBH'
      'where 1=1 '
      'order by YPZL_Mat.ZSYWJC')
    UpdateObject = CGUseUpd
    Left = 628
    Top = 419
    object StringField8: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField18: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Qry_SummaryMatRemark: TStringField
      FieldName = 'MatRemark'
      Size = 80
    end
    object StringField23: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField25: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_SummaryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
    object FloatField1: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField27: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object IntegerField2: TIntegerField
      FieldName = 'recs'
    end
    object StringField29: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object Qry_SummaryYPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_SummaryZSDH_VN: TStringField
      FieldName = 'ZSDH_VN'
      Size = 10
    end
    object Qry_SummaryStockQty: TCurrencyField
      FieldName = 'StockQty'
      DisplayFormat = '0.00'
    end
    object Qry_SummarySampleLeadTime: TIntegerField
      FieldName = 'SampleLeadTime'
    end
    object Qry_Summarystock_memo: TStringField
      FieldName = 'stock_memo'
      FixedChar = True
      Size = 50
    end
    object Qry_SummarySafeStock: TCurrencyField
      FieldName = 'SafeStock'
      DisplayFormat = '0.00'
    end
    object Qry_SummaryNoBuy: TIntegerField
      FieldName = 'NoBuy'
    end
    object Qry_SummaryNoUse: TIntegerField
      FieldName = 'NoUse'
    end
    object Qry_Summaryonthewayqty: TCurrencyField
      FieldName = 'onthewayqty'
      DisplayFormat = '#.##'
    end
    object Qry_Summarycldhflex: TStringField
      FieldName = 'cldhflex'
      FixedChar = True
      Size = 15
    end
    object Qry_SummaryCLBH_NotUS: TStringField
      FieldName = 'CLBH_NotUS'
      Size = 10
    end
    object Qry_SummaryCLBH_NotBuy: TStringField
      FieldName = 'CLBH_NotBuy'
      Size = 10
    end
  end
  object Pop_Summary: TPopupMenu
    Left = 628
    Top = 451
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
    object PurchaseOrder1: TMenuItem
      Caption = 'Generate Purchase Order'
      OnClick = PurchaseOrder1Click
    end
    object UseStock1: TMenuItem
      Caption = 'Save Use Stock'
      OnClick = UseStock1Click
    end
    object CheckStock1: TMenuItem
      Caption = 'Request Check Stock'
      OnClick = CheckStock1Click
    end
  end
  object DS_Article: TDataSource
    DataSet = Qry_Article
    Left = 668
    Top = 387
  end
  object Qry_Article: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Summary
    SQL.Strings = (
      
        'select YPZLZLS2.YPDH,Max(YPZLZLS2.BWBH) as BWBH,YPZLZLS2.CLBH,CL' +
        'ZL.DWBH,SUM(YPZLZLS2.CLSL) AS CLSL,kfxxzl.devcode,kfxxzl.article' +
        ' ,ypzl.KFJD'
      
        '       ,YPZLZLS.PAIRS,IsNull(cgkcuse.qty,0) as UseStock,ypzl.YPC' +
        'CO,kfxxzl.FD,IsNull(CGZLSS.Qty,0) as CGQty ,ypzl.ProductionLocat' +
        'ion,kfxxzl.YSSM'
      'FROM YPZLZLS2 '
      
        'Inner JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS' +
        '.YPDH=YPZLZLS2.YPDH '
      'Inner JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh '
      'Inner JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH '
      
        'Inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheh' +
        'ao=ypzl.shehao '
      
        'Left JOIN  CGZLSS on CGZLSS.ZLBH=ypzl.YPDH and  CGZLSS.CLBH=:CLB' +
        'H and CGZLSS.Stage='#39'CFM'#39' '
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'CDC'#39' '
      'where  YPZLZLS2.CLBH=:CLBH '
      '       and YPZLZLS2.YPZLBH=:YPZLBH '
      
        'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,kfxxzl.devcode,k' +
        'fxxzl.article ,ypzl.KFJD'
      
        '         ,YPZLZLS.PAIRS ,cgkcuse.qty,ypzl.YPCCO,kfxxzl.FD,CGZLSS' +
        '.Qty ,ypzl.ProductionLocation,kfxxzl.YSSM '
      'order by kfxxzl.devcode  ASC'
      ''
      '')
    Left = 668
    Top = 419
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object StringField24: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField28: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object FloatField5: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField32: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Qry_Articledevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object StringField36: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object StringField40: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object FloatField7: TFloatField
      FieldName = 'PAIRS'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object Qry_ArticleYPCCO: TStringField
      FieldName = 'YPCCO'
      FixedChar = True
      Size = 6
    end
    object Qry_ArticleFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Qry_ArticleCGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '0.00'
    end
    object Qry_ArticleBWBH: TStringField
      FieldName = 'BWBH'
    end
    object Qry_ArticleProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object Qry_ArticleYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS_Revise: TDataSource
    DataSet = Qry_Revise
    Left = 708
    Top = 387
  end
  object Qry_Revise: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      ''
      '     select ypzls.YPDH,ypzls.BWBH,ypzls.CSBH,ZSZL.ZSYWJC,'
      '            '#39'ZZZZZZZZZZ'#39' as MJBH,ypzls.CLBH,CLZL.YWPM as CLMC,'
      
        '            ypzls.CLSL as USAGE,kfxxzl.devcode ,kfxxzl.ARTICLE ,' +
        'ypzl.KFJD,BWZL.ywsm BWMC ,kfxxzl.FD'
      '     from YPZLZLS'
      '     left join ypzls on ypzls.YPDH=YPZLZLS.YPDH'
      '     LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS.YPDH'
      
        '     left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl' +
        '.SHEHAO=ypzl.SHEHAO'
      '     left join CLZL on CLZL.CLDH=ypzls.CLBH'
      '     LEFT JOIN ZSZL on ZSZL.ZSDH=ypzls.CSBH'
      '     LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      '     where CLZL.CLZMLB='#39'N'#39' and YPZLZLS.YPZLBH=:YPZLBH'
      
        '           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 wh' +
        'ere YPZLZLS2.CLBH=ypzls.CLBH AND YPZLZLS2.YPZLBH=:YPZLBH )'
      '     union all'
      
        '     select ypzls.YPDH,ypzls.BWBH,CLZHZL.zsdh as CSBH,ZSZL.ZSYWJ' +
        'C,'
      
        '            ypzls.CLBH as MJBH,CLZHZL.CLDH1 as CLBH,CLZL.YWPM as' +
        ' CLMC,'
      
        '            ypzls.CLSL as USAGE,kfxxzl.devcode ,kfxxzl.ARTICLE  ' +
        ',ypzl.KFJD ,BWZL.ywsm BWMC ,kfxxzl.FD'
      '     from YPZLZLS'
      '     INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH'
      '     INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh'
      '     LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS.YPDH'
      
        '     left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl' +
        '.SHEHAO=ypzl.SHEHAO'
      '     left join CLZL on CLZL.CLDH=CLZHZL.CLDH1'
      '     LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.zsdh'
      '     LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      
        '     where CLZHZL.SYL>0 and CLZL.CLZMLB='#39'N'#39' and YPZLZLS.YPZLBH=:' +
        'YPZLBH'
      
        '           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 wh' +
        'ere YPZLZLS2.CLBH=CLZHZL.CLDH1 AND YPZLZLS2.YPZLBH=:YPZLBH )'
      ''
      '')
    Left = 708
    Top = 419
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
      end>
    object Qry_ReviseYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Qry_ReviseBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ReviseCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_ReviseZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_ReviseMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ReviseCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ReviseCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Qry_ReviseUSAGE: TFloatField
      FieldName = 'USAGE'
    end
    object Qry_Revisedevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Qry_ReviseARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Qry_ReviseKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Qry_ReviseBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object Qry_ReviseFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object Qry_Article_PO: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,SUM(YPZLZLS2.CLSL) ' +
        'AS CLSL,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS,cgkcuse.qty as UseStock,ypzl.YPCCO'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cs.Stage,cs.zlbh,count(cs.' +
        'clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as' +
        ' yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      '                 group by cs.clbh,cgzl.season,cs.Stage,cs.zlbh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl' +
        '.kfjd and cg.zlbh=YPZL.Article'
      'where  YPZLZLS2.CLBH=:CLBH and 1=2 '
      
        'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,ypzl.ARTICLE ,yp' +
        'zl.KFJD'
      
        '          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS' +
        '.PAIRS ,cgkcuse.qty,ypzl.YPCCO'
      'order by ypzl.ARTICLE  ASC'
      ''
      '')
    Left = 668
    Top = 451
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object StringField26: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object FloatField8: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField31: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField33: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object StringField45: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object StringField46: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
  end
  object DS_MergeNOCheck: TDataSource
    DataSet = Qry_MergeNOCheck
    Left = 748
    Top = 387
  end
  object Qry_MergeNOCheck: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC'
      
        '       ,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CL' +
        'SL'
      '       ,YPZLZLS2.CSBH,kfxxzl.devcode ,ypzl.article,ypzl.KFJD'
      
        '       ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PA' +
        'IRS,cgkcuse.qty as UseStock'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'CDC'#39' '
      'left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH'
      'left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cs.Stage,cs.zlbh,count(cs.clbh) as rec' +
        's, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate, min' +
        '(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39' '
      '                       and cgzlS.JGNO='#39'20170900068'#39
      '                 group by cs.clbh,cs.Stage,cs.zlbh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl' +
        '.kfjd and cg.zlbh=YPZL.Article'
      'where CLZL.CLZMLB='#39'N'#39' '
      '      and YPZLZLS2.YPZLBH='#39'20170900068'#39
      'and zszlfilter.zsdh is null '
      'and clzlfilter.cldh is null '
      '           and ZSZL.ZSYWJC like '#39'%JNG R3%'#39
      
        'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.L' +
        'YCC,ZSZL.ZSYWJC,YPZLZLS2.CSBH,kfxxzl.devcode,ypzl.article,ypzl.K' +
        'FJD'
      
        '          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS' +
        '.PAIRS,cgkcuse.qty'
      'union all'
      'select '#39#39' as YPDH,cgzlss.CLBH,CLZL.YWPM as CLMC'
      '       ,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,0 AS CLSL'
      
        '       ,cgzl.ZSBH as CSBH,'#39#39' as devcode,cgzlss.ZLBH as article ,' +
        'cgzlss.stage as KFJD'
      
        '       ,1 as recs,cgzl.cgdate,cgzls.yqdate,cgzls.cgno,cgzlss.Qty' +
        ' as PurQty,0 as PAIRS,0 as UseStock'
      'FROM cgzlss'
      'left join cgzl on cgzl.cgno=cgzlss.cgno'
      
        'left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.' +
        'clbh'
      'LEFT JOIN CLZL ON cgzls.CLBH=CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=cgzl.ZSBH'
      'where cgzl.CGLX='#39'6'#39' '
      '      and cgzlS.JGNO='#39'20170900068'#39
      '      and not exists (select YPZLBH from YPZLZLS2 '
      '                      LEFT JOIN ypzl ON ypzl.YPDH=YPZLZLS2.YPDH'
      '                      where YPZLZLS2.YPZLBH='#39'20170900068'#39
      
        '                            and ypzl.Article=cgzlss.ZLBH and YPZ' +
        'LZLS2.CLBH=cgzlss.CLBH and ypzl.KFJD=cgzlss.stage )'
      '   and ZSZL.ZSYWJC like '#39'%JNG R3%'#39
      '')
    Left = 748
    Top = 419
    object StringField30: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField44: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField47: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField48: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField49: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField9: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField50: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField51: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object StringField52: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'recs'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Purchase Date'
      FieldName = 'cgdate'
    end
    object DateTimeField6: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object StringField53: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object StringField54: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object FloatField10: TFloatField
      FieldName = 'PAIRS'
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object Qry_MergeNOCheckdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object DS_Supplier: TDataSource
    DataSet = SupplierQry
    Left = 468
    Top = 387
  end
  object SupplierQry: TQuery
    AfterOpen = YPZLZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select YPZL_Mat.*'
      'from     (select YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC'
      
        '              ,CLZL.DWBH,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL,' +
        'YPZLZLS2.CSBH,BUsers.UserName'
      
        '              ,case when clzlfilter.cldh is null then '#39#39'  else '#39 +
        'Other'#39'  end as SafeStock'
      '          FROM YPZLZLS2'
      '          LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      
        '          LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZ' +
        'L_DEV.GSBH=:GSBH'
      '          LEFT JOIN YPZL on YPZL.YPDH=YPZLZLS2.YPDH'
      '          LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      
        '          LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.Us' +
        'erID'
      '          left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH'
      '          left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH'
      
        '          where CLZL.CLZMLB='#39'N'#39' and YPZLZLS2.CLSL>0 and YPZLZLS2' +
        '.YPZLBH=:YPZLBH'
      
        '          group by  YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL' +
        '.DWBH,ZSZL.ZSYWJC,YPZLZLS2.CSBH,BUsers.UserName,clzlfilter.cldh'
      '          ) YPZL_Mat'
      'left join ZSZL zszlSample on zszlSample.ZSDH=YPZL_Mat.csbh '
      'left join zszlfilter on zszlfilter.zsdh=YPZL_Mat.CSBH'
      'left join clzlfilter on clzlfilter.cldh=YPZL_Mat.CLBH'
      
        'where (UserName='#39#39' or UserName is NULL or CSBH='#39#39' or CSBH is NUL' +
        'L)'
      '      and zszlfilter.zsdh is null '
      '      and clzlfilter.cldh is null '
      'order by YPZL_Mat.ZSYWJC')
    Left = 471
    Top = 419
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SupplierQryYPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object SupplierQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object SupplierQryCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object SupplierQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object SupplierQryZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object SupplierQryCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object SupplierQryCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SupplierQryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
    object SupplierQrySafeStock: TStringField
      FieldName = 'SafeStock'
      FixedChar = True
      Size = 5
    end
  end
  object CGUseUpd: TUpdateSQL
    ModifySQL.Strings = (
      'update clzl set'
      '  YWPM=:YWPM'
      'where 1=2')
    InsertSQL.Strings = (
      '')
    Left = 628
    Top = 483
  end
  object Qry_Recrod: TQuery
    DatabaseName = 'dB'
    DataSource = DS3
    SQL.Strings = (
      
        'select TNO as SampleNO,bwbh as Parts,CLBH as Material,CLSL as Us' +
        'age,'
      
        'CSBH as Supplier,OLDID as OwnerID,DELID as UpdateID,DELdate as U' +
        'pdateDate,article,Pairs,Xiexing,SheHao from bmodrec_dev where TN' +
        'O in (select ypdh from YPZLZLS where ypzlbh=:ypzlbh)'
      'order by TNO ,DELdate desc')
    Left = 788
    Top = 419
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object DS_Record: TDataSource
    DataSet = Qry_Recrod
    Left = 788
    Top = 387
  end
  object BOMMEMO: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select TNO as ypdh,delid as ID,deldate as Check_Time,recieveid,r' +
        'ecievedate, remark from BModRec_Dev'
      'where 1=2'
      'order by deldate desc')
    Left = 836
    Top = 427
    object BOMMEMOypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 50
    end
    object BOMMEMOID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 15
    end
    object BOMMEMOCheck_Time: TDateTimeField
      FieldName = 'Check_Time'
    end
    object BOMMEMOrecieveid: TStringField
      FieldName = 'recieveid'
      FixedChar = True
      Size = 15
    end
    object BOMMEMOrecievedate: TDateTimeField
      FieldName = 'recievedate'
    end
    object BOMMEMOremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 100
    end
  end
  object BOMMEMODS: TDataSource
    DataSet = BOMMEMO
    Left = 836
    Top = 395
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 272
    Top = 463
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 240
    Top = 463
  end
end
