object FGTTest: TFGTTest
  Left = 213
  Top = 25
  Width = 1036
  Height = 780
  Caption = 'FGTTest'
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
  object lbl2: TLabel
    Left = 312
    Top = 20
    Width = 58
    Height = 13
    Caption = 'ADICOLOR:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 62
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 460
      Top = 37
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 451
      Top = 10
      Width = 47
      Height = 16
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 593
      Top = 37
      Width = 18
      Height = 16
      Caption = 'FD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 575
      Top = 10
      Width = 36
      Height = 16
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 320
      Top = 10
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 306
      Top = 37
      Width = 55
      Height = 16
      Caption = 'Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 8
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
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
      Left = 56
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
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
      Left = 104
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
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
      Left = 152
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
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
      Left = 200
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
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
    object BB6: TBitBtn
      Left = 248
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
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
    object Button1: TButton
      Left = 814
      Top = 8
      Width = 68
      Height = 22
      Caption = 'Query'
      TabOrder = 11
      OnClick = Button1Click
    end
    object bbt6: TBitBtn
      Left = 889
      Top = 5
      Width = 114
      Height = 49
      Hint = 'Modify Current'
      Caption = 'FGT Tracking List'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      WordWrap = True
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
    object edt1: TEdit
      Left = 499
      Top = 33
      Width = 69
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edt3: TEdit
      Left = 612
      Top = 33
      Width = 74
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edt4: TEdit
      Left = 611
      Top = 6
      Width = 74
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object cbb2: TComboBox
      Left = 366
      Top = 6
      Width = 74
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        ''
        'Inline'
        'SMU')
    end
    object cbb1: TComboBox
      Left = 366
      Top = 33
      Width = 75
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 12
      Items.Strings = (
        ''
        'Sports'
        'Originals')
    end
    object edt2: TEdit
      Left = 499
      Top = 6
      Width = 68
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object CheckBox1: TCheckBox
      Left = 695
      Top = 8
      Width = 111
      Height = 15
      Caption = 'Show Shoe Pic'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Chk_Dropped: TCheckBox
      Left = 695
      Top = 38
      Width = 111
      Height = 15
      Caption = 'Hide Dropped '
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 15
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 62
    Width = 1020
    Height = 679
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Edit Page'
      TabVisible = False
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1082
        Height = 722
        Align = alClient
        DataSource = DS_Edit
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
        FrozenCols = 3
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = pm1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 8
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Article'
            Footers = <
              item
                FieldName = 'Article'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 55
          end
          item
            AutoDropDown = True
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 4
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            PickList.Strings = (
              'CR2'
              'CS1'
              'SMU'
              'Production')
            Title.TitleButton = True
            Width = 40
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SendDate'
            Footers = <>
            Title.TitleButton = True
            Width = 73
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 168
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 73
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT01'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 36
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT02'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 29
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT04'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 28
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT05'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 27
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT07_13'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.Caption = 'F07 _13'
            Title.TitleButton = True
            Width = 30
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT08'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 28
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT13'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 28
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT13_14'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.Caption = 'F13 _14'
            Title.TitleButton = True
            Width = 28
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT22'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 27
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT30'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 27
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT64'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 28
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT68'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 28
          end
          item
            AutoDropDown = True
            ButtonStyle = cbsNone
            Color = clScrollBar
            DblClickNextVal = True
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT78'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            Title.TitleButton = True
            Width = 25
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'RESULT'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 41
          end
          item
            ButtonStyle = cbsNone
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            PickList.Strings = (
              'Suggest FastTrack')
            Title.TitleButton = True
            Width = 98
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'FastTrack'
            Footers = <>
            Title.Caption = 'Fast Track'
            Width = 40
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'File_Name'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 109
          end
          item
            Color = clScrollBar
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'File_Size'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Dev Code'
            Title.TitleButton = True
            Width = 39
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 79
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 58
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Browse Page'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 461
        Width = 1012
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1012
        Height = 461
        Align = alClient
        DataSource = DS_Browse
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Edit
        ReadOnly = True
        RowHeight = 40
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Article'
            Footers = <
              item
                FieldName = 'Article'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 55
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Picture'
            Footers = <>
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.TitleButton = True
            Visible = False
            Width = 43
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.TitleButton = True
            Width = 169
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.TitleButton = True
            Width = 68
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            Title.Caption = 'Dev'
            Title.TitleButton = True
            Width = 35
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT01'
            Footers = <>
            Title.Caption = 'CR2/SMU|F01'
            Title.TitleButton = True
            Visible = False
            Width = 28
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT02'
            Footers = <>
            Title.Caption = 'CR2/SMU|F02'
            Title.TitleButton = True
            Visible = False
            Width = 28
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT04'
            Footers = <>
            Title.Caption = 'CR2/SMU|F04'
            Title.TitleButton = True
            Visible = False
            Width = 28
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT05'
            Footers = <>
            Title.Caption = 'CR2/SMU|F05'
            Title.TitleButton = True
            Visible = False
            Width = 27
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT07_13'
            Footers = <>
            Title.Caption = 'CR2/SMU|F07_13'
            Title.TitleButton = True
            Visible = False
            Width = 48
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT08'
            Footers = <>
            Title.Caption = 'CR2/SMU|F08'
            Title.TitleButton = True
            Visible = False
            Width = 31
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT13'
            Footers = <>
            Title.Caption = 'CR2/SMU|F13'
            Title.TitleButton = True
            Visible = False
            Width = 31
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT13_14'
            Footers = <>
            Title.Caption = 'CR2/SMU|F13_14'
            Title.TitleButton = True
            Visible = False
            Width = 49
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT22'
            Footers = <>
            Title.Caption = 'CR2/SMU|F22'
            Title.TitleButton = True
            Visible = False
            Width = 30
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT30'
            Footers = <>
            Title.Caption = 'CR2/SMU|F30'
            Title.TitleButton = True
            Visible = False
            Width = 29
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT64'
            Footers = <>
            Title.Caption = 'CR2/SMU|F64'
            Title.TitleButton = True
            Visible = False
            Width = 31
          end
          item
            Color = clScrollBar
            DropDownRows = 2
            EditButtons = <>
            FieldName = 'FGT68'
            Footers = <>
            Title.Caption = 'CR2/SMU|F68'
            Title.TitleButton = True
            Visible = False
            Width = 29
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'FGT78'
            Footers = <>
            Title.Caption = 'CR2/SMU|F78'
            Title.TitleButton = True
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SendDate'
            Footers = <>
            Title.Caption = 'CR2|SendDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RESULT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'CR2|Result'
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Caption = 'CR2|Remark'
            Title.TitleButton = True
            Width = 140
          end
          item
            Color = clBlack
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 3
          end
          item
            EditButtons = <>
            FieldName = 'CS1_SendDate'
            Footers = <>
            Title.Caption = 'CS1/SMU|SendDate'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'CS1_RESULT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'CS1/SMU|Result'
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'xxzlDropped'
            Footers = <>
            Width = 57
          end>
      end
      object DBGridEh_FGT: TDBGridEh
        Left = 0
        Top = 464
        Width = 1012
        Height = 187
        Align = alBottom
        DataSource = DS_FGT
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
        OnDrawColumnCell = DBGridEh_FGTDrawColumnCell
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Width = 67
          end
          item
            DropDownRows = 4
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            PickList.Strings = (
              'CR2'
              'CS1'
              'SMU'
              'Production')
            Width = 54
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'SendDate'
            Footers = <>
            Title.Caption = 'FDSentDate'
            Width = 80
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT01'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 28
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT02'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 30
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT04'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 29
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT05'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 27
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT08'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 30
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT13'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 30
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'FGT07'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'F07'
            Width = 30
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT07_13'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 47
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT13_14'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 49
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT22'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 29
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'FGT28'
            Footers = <>
            Title.Caption = 'F28'
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT30'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 29
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT64'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 30
          end
          item
            Color = cl3DLight
            DropDownRows = 3
            EditButtons = <>
            FieldName = 'FGT68'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Width = 30
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'FGT78'
            Footers = <>
            PickList.Strings = (
              'A'
              'RM'
              '')
            ReadOnly = True
            Title.Caption = 'F78'
            Width = 29
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CT05'
            Footers = <>
            Title.Caption = 'C05'
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CT09'
            Footers = <>
            Title.Caption = 'C09'
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'RESULT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Result'
            Width = 44
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'FastTrack'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'FastTrk'
            Width = 54
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            ReadOnly = True
            Width = 121
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'File_Name'
            Footers = <>
            ReadOnly = True
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'File_Size'
            Footers = <>
            ReadOnly = True
            Width = 66
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'UserDate'
            Width = 92
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User ID'
            Width = 58
          end>
      end
      object Memo1: TMemo
        Left = 304
        Top = 248
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'FGT-00~FGT-99'
      ImageIndex = 2
      object lbl4: TLabel
        Left = 24
        Top = 12
        Width = 199
        Height = 13
        Caption = 'FGT-00 : General issues for testing'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 24
        Top = 26
        Width = 337
        Height = 13
        Caption = 'FGT-01 : Aging in high temperature and humidity conditions'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 24
        Top = 40
        Width = 103
        Height = 13
        Caption = 'FGT-02 : Flex test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 24
        Top = 54
        Width = 176
        Height = 13
        Caption = 'FGT-04 : UV-light fastness test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 24
        Top = 68
        Width = 131
        Height = 13
        Caption = 'FGT-05 : Blooming test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 24
        Top = 82
        Width = 151
        Height = 13
        Caption = 'FGT-06 : Non marking test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 24
        Top = 96
        Width = 167
        Height = 13
        Caption = 'FGT-07 : adidas washing test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 24
        Top = 124
        Width = 186
        Height = 13
        Caption = 'FGT-08 : Parts pulling procedure'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl12: TLabel
        Left = 24
        Top = 138
        Width = 199
        Height = 13
        Caption = 'FGT-11 : adidas transportation test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 24
        Top = 153
        Width = 126
        Height = 13
        Caption = 'FGT-13 : Bonding test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl14: TLabel
        Left = 24
        Top = 181
        Width = 170
        Height = 13
        Caption = 'FGT-14 : Wascator Aging test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl15: TLabel
        Left = 24
        Top = 195
        Width = 215
        Height = 13
        Caption = 'FGT-17 : Internal length measurement'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl16: TLabel
        Left = 24
        Top = 209
        Width = 204
        Height = 13
        Caption = 'FGT-18 : Collar height measurement'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl17: TLabel
        Left = 24
        Top = 223
        Width = 200
        Height = 13
        Caption = 'FGT-19 : Torque strength of spikes'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl18: TLabel
        Left = 24
        Top = 237
        Width = 200
        Height = 13
        Caption = 'FGT-20 : Lace length measurement'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl19: TLabel
        Left = 24
        Top = 251
        Width = 159
        Height = 13
        Caption = 'FGT-21 : Reverse hook test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl20: TLabel
        Left = 24
        Top = 265
        Width = 173
        Height = 13
        Caption = 'FGT-22 : Closure part strength'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl21: TLabel
        Left = 24
        Top = 279
        Width = 186
        Height = 13
        Caption = 'FGT-23 : Sockliner measurement'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl22: TLabel
        Left = 24
        Top = 294
        Width = 232
        Height = 13
        Caption = 'FGT-24 : Bleeding test on rubber outsole'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl23: TLabel
        Left = 24
        Top = 308
        Width = 256
        Height = 13
        Caption = 'FGT-25 : Hardness measurement on midsoles'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl24: TLabel
        Left = 24
        Top = 322
        Width = 167
        Height = 13
        Caption = 'FGT-26 : Strap length control'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl25: TLabel
        Left = 24
        Top = 336
        Width = 270
        Height = 13
        Caption = 'FGT-28 : Polymer component adhesion strength'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl26: TLabel
        Left = 24
        Top = 350
        Width = 161
        Height = 13
        Caption = 'FGT-30 : Wear test machine'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl27: TLabel
        Left = 24
        Top = 364
        Width = 204
        Height = 13
        Caption = 'FGT-32 : Saur-system all in one tool'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl28: TLabel
        Left = 24
        Top = 378
        Width = 172
        Height = 13
        Caption = 'FGT-33 : Aquarium Bootie test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl29: TLabel
        Left = 24
        Top = 392
        Width = 249
        Height = 13
        Caption = 'FGT-34 : Stud torque strength measurement'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl30: TLabel
        Left = 24
        Top = 110
        Width = 243
        Height = 13
        Caption = 'FGT-07+13 : Bonding after adidas washing'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl31: TLabel
        Left = 24
        Top = 167
        Width = 242
        Height = 13
        Caption = 'FGT-13+14 : Bonding after wascator aging'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl32: TLabel
        Left = 24
        Top = 406
        Width = 173
        Height = 13
        Caption = 'FGT-64 : Spray Test on Shoes'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl33: TLabel
        Left = 24
        Top = 420
        Width = 156
        Height = 13
        Caption = 'FGT-68 : Non Marking Test'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl34: TLabel
        Left = 24
        Top = 435
        Width = 270
        Height = 13
        Caption = 'FGT-78 : Sharp Points,Sharp Edges,Small Parts'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object mmo1: TMemo
        Left = 0
        Top = 0
        Width = 1012
        Height = 651
        Align = alClient
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = []
        Lines.Strings = (
          'Test ID     Test description                 '
          
            '----------------------------------------------------------------' +
            '------'
          'FGT-01    : Aging in high temperature and humidity conditions'
          'FGT-02    : Flex test'
          'FGT-04    : UV-light fastness test'
          'FGT-05    : Blooming test'
          'FGT-07    : adidas washing test'
          'FGT-07+13 : Bonding after adidas washing'
          'FGT-08    : Parts pulling procedure'
          'FGT-11    : adidas transportation test'
          'FGT-13    : Bonding test'
          'FGT-13+14 : Bonding after wascator aging'
          'FGT-14    : Wascator Aging test'
          'FGT-17    : Internal length measurement'
          'FGT-18    : Collar height measurement'
          'FGT-19    : Torque strength of spikes'
          'FGT-20    : Lace length measurement'
          'FGT-21    : Reverse hook test'
          'FGT-22    : Closure part strength'
          'FGT-23    : Sockliner measurement'
          'FGT-24    : Bleeding test on rubber outsole'
          'FGT-25    : Hardness measurement on midsoles'
          'FGT-26    : Strap length control'
          'FGT-28    : Polymer component adhesion strength'
          'FGT-30    : Wear test machine'
          'FGT-32    : Saur-system all in one tool'
          'FGT-33    : Aquarium Bootie test'
          'FGT-34    : Stud torque strength measurement'
          'FGT-64    : Spray Test on Shoes'
          'FGT-68    : Non Marking Test'
          'FGT-78    : Sharp Points,Sharp Edges,Small Parts')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object ts1: TTabSheet
      Caption = 'Flow Chart'
      ImageIndex = 3
      object shp1: TShape
        Left = 28
        Top = 62
        Width = 170
        Height = 70
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object lbl35: TLabel
        Left = 80
        Top = 88
        Width = 70
        Height = 16
        Caption = 'FGT(CR2)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl36: TLabel
        Left = 150
        Top = 262
        Width = 141
        Height = 13
        Caption = '2.CS1 Fit/wear test pass'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl37: TLabel
        Left = 150
        Top = 290
        Width = 232
        Height = 13
        Caption = '3.Lab manager and Dev manager agreed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl38: TLabel
        Left = 150
        Top = 246
        Width = 146
        Height = 13
        Caption = '1.No any material change'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object shp2: TShape
        Left = 114
        Top = 131
        Width = 5
        Height = 222
        Brush.Color = clBlack
      end
      object shp3: TShape
        Left = 352
        Top = 60
        Width = 170
        Height = 70
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object lbl39: TLabel
        Left = 405
        Top = 88
        Width = 69
        Height = 16
        Caption = 'FGT(CS1)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object shp5: TShape
        Left = 400
        Top = 129
        Width = 5
        Height = 194
        Brush.Color = clBlack
      end
      object shp6: TShape
        Left = 197
        Top = 95
        Width = 156
        Height = 4
        Brush.Color = clBlack
      end
      object shp8: TShape
        Left = 116
        Top = 349
        Width = 242
        Height = 4
        Brush.Color = clBlack
      end
      object shp9: TShape
        Left = 358
        Top = 316
        Width = 402
        Height = 70
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object lbl45: TLabel
        Left = 516
        Top = 342
        Width = 115
        Height = 16
        Caption = 'FGT(Production)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object shp10: TShape
        Left = 590
        Top = 92
        Width = 4
        Height = 95
        Brush.Color = clBlack
      end
      object lbl49: TLabel
        Left = 97
        Top = 259
        Width = 37
        Height = 20
        Caption = 'Fast'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl51: TLabel
        Left = 88
        Top = 283
        Width = 55
        Height = 20
        Caption = ' Track '
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl46: TLabel
        Left = 249
        Top = 76
        Width = 27
        Height = 16
        Caption = 'Fail'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl47: TLabel
        Left = 120
        Top = 148
        Width = 36
        Height = 16
        Caption = 'Pass'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object shp4: TShape
        Left = 473
        Top = 184
        Width = 121
        Height = 4
        Brush.Color = clBlack
      end
      object shp7: TShape
        Left = 521
        Top = 92
        Width = 72
        Height = 4
        Brush.Color = clBlack
      end
      object shp11: TShape
        Left = 473
        Top = 129
        Width = 4
        Height = 58
        Brush.Color = clBlack
      end
      object lbl40: TLabel
        Left = 363
        Top = 140
        Width = 36
        Height = 16
        Caption = 'Pass'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl42: TLabel
        Left = 483
        Top = 164
        Width = 86
        Height = 16
        Caption = 'Fail-Resend'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape1: TShape
        Left = 640
        Top = 60
        Width = 170
        Height = 70
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 693
        Top = 88
        Width = 74
        Height = 16
        Caption = 'FGT(SMU)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape2: TShape
        Left = 878
        Top = 92
        Width = 4
        Height = 95
        Brush.Color = clBlack
      end
      object Shape3: TShape
        Left = 761
        Top = 184
        Width = 121
        Height = 4
        Brush.Color = clBlack
      end
      object Shape4: TShape
        Left = 809
        Top = 92
        Width = 72
        Height = 4
        Brush.Color = clBlack
      end
      object Shape5: TShape
        Left = 761
        Top = 129
        Width = 4
        Height = 58
        Brush.Color = clBlack
      end
      object Label4: TLabel
        Left = 771
        Top = 164
        Width = 86
        Height = 16
        Caption = 'Fail-Resend'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object shp12: TShape
        Left = 704
        Top = 129
        Width = 5
        Height = 188
        Brush.Color = clBlack
      end
      object lbl41: TLabel
        Left = 659
        Top = 140
        Width = 36
        Height = 16
        Caption = 'Pass'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl43: TLabel
        Left = 8
        Top = 8
        Width = 236
        Height = 20
        Caption = 'FGT=Finished Goods Testing'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl44: TLabel
        Left = 162
        Top = 276
        Width = 137
        Height = 13
        Caption = 'or no construction issue'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Qry_Edit: TQuery
    AfterOpen = Qry_EditAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select FGT_TEST.*,KFxxzl.XieMing,KFxxzl.DEVCODE,xxzlKF.FD  from ' +
        'FGT_TEST'
      ' left join KFxxzl on KFxxzl.ARTICLE=FGT_TEST.ARTICLE'
      
        ' left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlkf.Sh' +
        'eHao=kfxxzl.SheHao and xxzlkf.YN='#39'N'#39
      ' where 1=2')
    UpdateObject = UpdateSQL1
    Left = 88
    Top = 288
    object Qry_EditArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 50
    end
    object Qry_EditStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 50
    end
    object Qry_EditSendDate: TDateTimeField
      FieldName = 'SendDate'
    end
    object Qry_EditFGT01: TStringField
      DisplayLabel = 'F01'
      FieldName = 'FGT01'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT02: TStringField
      DisplayLabel = 'F02'
      FieldName = 'FGT02'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT04: TStringField
      DisplayLabel = 'F04'
      FieldName = 'FGT04'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT05: TStringField
      DisplayLabel = 'F05'
      FieldName = 'FGT05'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT08: TStringField
      DisplayLabel = 'F08'
      FieldName = 'FGT08'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT13: TStringField
      DisplayLabel = 'F13'
      FieldName = 'FGT13'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT07_13: TStringField
      DisplayLabel = 'F07_13'
      FieldName = 'FGT07_13'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT13_14: TStringField
      DisplayLabel = 'F13_14'
      FieldName = 'FGT13_14'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT22: TStringField
      DisplayLabel = 'F22'
      FieldName = 'FGT22'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT64: TStringField
      DisplayLabel = 'F64'
      FieldName = 'FGT64'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT68: TStringField
      DisplayLabel = 'F68'
      FieldName = 'FGT68'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT78: TStringField
      DisplayLabel = 'F78'
      FieldName = 'FGT78'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditFGT30: TStringField
      DisplayLabel = 'F30'
      FieldName = 'FGT30'
      OnChange = Qry_EditFGT01Change
      FixedChar = True
      Size = 5
    end
    object Qry_EditRESULT: TStringField
      DisplayLabel = 'Result'
      FieldName = 'RESULT'
      FixedChar = True
      Size = 10
    end
    object Qry_EditRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object Qry_EditUSERDATE: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
    end
    object Qry_EditUSERID: TStringField
      DisplayLabel = 'UserID'
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_EditXieMing: TStringField
      DisplayLabel = 'Shoe Name'
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Qry_EditDEVCODE: TStringField
      DisplayLabel = 'DevCode'
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Qry_EditFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object strngfldQuery1File_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object fltfldQuery1File_Size: TFloatField
      FieldName = 'File_Size'
    end
    object Qry_EditDropped: TBooleanField
      FieldName = 'Dropped'
    end
    object Qry_EditFastTrack: TBooleanField
      FieldName = 'FastTrack'
    end
  end
  object DS_Edit: TDataSource
    DataSet = Qry_Edit
    Left = 88
    Top = 256
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update FGT_TEST'
      'set'
      '  Article = :Article,'
      '  Stage = :Stage,'
      '  SendDate = :SendDate,'
      '  FGT01 = :FGT01,'
      '  FGT02 = :FGT02,'
      '  FGT04 = :FGT04,'
      '  FGT05 = :FGT05,'
      '  FGT08 = :FGT08,'
      '  FGT13 = :FGT13,'
      '  FGT07_13 = :FGT07_13,'
      '  FGT13_14 = :FGT13_14,'
      '  FGT22 = :FGT22,'
      '  FGT64 = :FGT64,'
      '  FGT68 = :FGT68,'
      '  FGT78 = :FGT78,  '
      '  FGT30 = :FGT30,'
      '  RESULT = :RESULT,'
      '  Remark = :Remark,'
      '  Dropped = :Dropped,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  FastTrack = :FastTrack'
      'where'
      '  Article = :OLD_Article and'
      '  Stage = :OLD_Stage and'
      '  SendDate = :OLD_SendDate and'
      '  Dropped =:OLD_Dropped')
    InsertSQL.Strings = (
      'insert into FGT_TEST'
      
        '  (Article, Stage, SendDate, FGT01, FGT02, FGT04, FGT05, FGT08, ' +
        'FGT13, '
      
        '   FGT07_13, FGT13_14, FGT22, FGT64, FGT68,FGT78, FGT30, RESULT,' +
        ' Remark,'
      'USERDATE,Dropped,USERID,FastTrack)'
      'values'
      
        '  (:Article, :Stage, :SendDate, :FGT01, :FGT02, :FGT04, :FGT05, ' +
        ':FGT08, '
      
        '   :FGT13, :FGT07_13, :FGT13_14, :FGT22, :FGT64, :FGT68,:FGT78, ' +
        ':FGT30, :RESULT,'
      '   :Remark, :USERDATE,:Dropped, :USERID,:FastTrack)')
    DeleteSQL.Strings = (
      'delete from FGT_TEST'
      'where'
      '  Article = :OLD_Article and'
      '  Stage = :OLD_Stage and'
      '  SendDate = :OLD_SendDate and '
      '  Dropped =:OLD_Dropped')
    Left = 88
    Top = 320
  end
  object Qry_Browse: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select FGT_TEST.*,KFxxzl.XieMing,KFxxzl.DEVCODE,xxzlKF.FD,ShoePi' +
        'cture.Picture,xxzlKF.Dropped as xxzlDropped  from FGT_TEST'
      ' left join KFxxzl on KFxxzl.ARTICLE=FGT_TEST.ARTICLE'
      ' left join ShoePicture on ShoePicture.ARTICLE=FGT_TEST.ARTICLE'
      
        ' left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlkf.Sh' +
        'eHao=kfxxzl.SheHao and xxzlkf.YN='#39'N'#39
      ' where 1=2')
    Left = 192
    Top = 288
    object blbfldQuery2Picture: TBlobField
      FieldName = 'Picture'
    end
    object StringField1: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 50
    end
    object StringField18: TStringField
      DisplayLabel = 'Shoe Name'
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object StringField19: TStringField
      DisplayLabel = 'DevCode'
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object StringField3: TStringField
      DisplayLabel = 'F01'
      FieldName = 'FGT01'
      FixedChar = True
      Size = 5
    end
    object StringField4: TStringField
      DisplayLabel = 'F02'
      FieldName = 'FGT02'
      FixedChar = True
      Size = 5
    end
    object StringField5: TStringField
      DisplayLabel = 'F04'
      FieldName = 'FGT04'
      FixedChar = True
      Size = 5
    end
    object StringField6: TStringField
      DisplayLabel = 'F05'
      FieldName = 'FGT05'
      FixedChar = True
      Size = 5
    end
    object StringField9: TStringField
      DisplayLabel = 'F07_13'
      FieldName = 'FGT07_13'
      FixedChar = True
      Size = 5
    end
    object StringField7: TStringField
      DisplayLabel = 'F08'
      FieldName = 'FGT08'
      FixedChar = True
      Size = 5
    end
    object StringField8: TStringField
      DisplayLabel = 'F13'
      FieldName = 'FGT13'
      FixedChar = True
      Size = 5
    end
    object StringField10: TStringField
      DisplayLabel = 'F13_14'
      FieldName = 'FGT13_14'
      FixedChar = True
      Size = 5
    end
    object StringField11: TStringField
      DisplayLabel = 'F22'
      FieldName = 'FGT22'
      FixedChar = True
      Size = 5
    end
    object StringField14: TStringField
      DisplayLabel = 'F30'
      FieldName = 'FGT30'
      FixedChar = True
      Size = 5
    end
    object StringField12: TStringField
      DisplayLabel = 'F64'
      FieldName = 'FGT64'
      FixedChar = True
      Size = 5
    end
    object StringField13: TStringField
      DisplayLabel = 'F68'
      FieldName = 'FGT68'
      FixedChar = True
      Size = 5
    end
    object Qry_BrowseFGT78: TStringField
      DisplayLabel = 'F78'
      FieldName = 'FGT78'
      FixedChar = True
      Size = 5
    end
    object StringField15: TStringField
      DisplayLabel = 'Result'
      FieldName = 'RESULT'
      FixedChar = True
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object Qry_BrowseCS1_RESULT: TStringField
      FieldName = 'CS1_RESULT'
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField17: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object StringField20: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object StringField2: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'SendDate'
    end
    object Qry_BrowsexxzlDropped: TBooleanField
      DisplayLabel = 'Dropped'
      FieldName = 'xxzlDropped'
    end
    object Qry_BrowseCS1_SendDate: TStringField
      FieldName = 'CS1_SendDate'
      Size = 10
    end
    object Qry_BrowseFGT28: TStringField
      FieldName = 'FGT28'
      FixedChar = True
      Size = 5
    end
    object Qry_BrowseCT09: TStringField
      FieldName = 'CT09'
      FixedChar = True
      Size = 5
    end
    object Qry_BrowseCT05: TStringField
      FieldName = 'CT05'
      FixedChar = True
      Size = 5
    end
  end
  object Qry_FGT: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Browse
    SQL.Strings = (
      'select FGT_TEST.*  from FGT_TEST'
      ' where 1=2')
    UpdateObject = Update_FGT
    Left = 192
    Top = 376
    object StringField21: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 50
    end
    object StringField22: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 50
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'SendDate'
    end
    object StringField23: TStringField
      DisplayLabel = 'F01'
      FieldName = 'FGT01'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField24: TStringField
      DisplayLabel = 'F02'
      FieldName = 'FGT02'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField25: TStringField
      DisplayLabel = 'F04'
      FieldName = 'FGT04'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField26: TStringField
      DisplayLabel = 'F05'
      FieldName = 'FGT05'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField27: TStringField
      DisplayLabel = 'F08'
      FieldName = 'FGT08'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField28: TStringField
      DisplayLabel = 'F13'
      FieldName = 'FGT13'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField29: TStringField
      DisplayLabel = 'F07_13'
      FieldName = 'FGT07_13'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField30: TStringField
      DisplayLabel = 'F13_14'
      FieldName = 'FGT13_14'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField31: TStringField
      DisplayLabel = 'F22'
      FieldName = 'FGT22'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField32: TStringField
      DisplayLabel = 'F64'
      FieldName = 'FGT64'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField33: TStringField
      DisplayLabel = 'F68'
      FieldName = 'FGT68'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField34: TStringField
      DisplayLabel = 'F30'
      FieldName = 'FGT30'
      OnChange = StringField23Change
      FixedChar = True
      Size = 5
    end
    object StringField35: TStringField
      FieldName = 'RESULT'
      FixedChar = True
      Size = 10
    end
    object StringField36: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField37: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_FGTFastTrack: TBooleanField
      FieldName = 'FastTrack'
    end
    object Qry_FGTFile_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object Qry_FGTFile_Size: TFloatField
      FieldName = 'File_Size'
    end
    object Qry_FGTDropped: TBooleanField
      FieldName = 'Dropped'
    end
    object Qry_FGTFGT78: TStringField
      FieldName = 'FGT78'
      Origin = 'DB.FGT_TEST.FGT78'
      FixedChar = True
      Size = 5
    end
    object Qry_FGTFGT07: TStringField
      FieldName = 'FGT07'
      Origin = 'DB.FGT_TEST.FGT07'
      FixedChar = True
      Size = 5
    end
    object Qry_FGTFGT28: TStringField
      FieldName = 'FGT28'
      FixedChar = True
      Size = 5
    end
    object Qry_FGTCT09: TStringField
      FieldName = 'CT09'
      FixedChar = True
      Size = 5
    end
    object Qry_FGTCT05: TStringField
      FieldName = 'CT05'
      FixedChar = True
      Size = 5
    end
  end
  object DS_Browse: TDataSource
    DataSet = Qry_Browse
    Left = 192
    Top = 256
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 288
    Top = 216
  end
  object DS_FGT: TDataSource
    DataSet = Qry_FGT
    Left = 192
    Top = 344
  end
  object pm1: TPopupMenu
    Left = 364
    Top = 218
    object S1: TMenuItem
      Caption = 'Upload'
      OnClick = S1Click
    end
    object S2: TMenuItem
      Caption = 'Download'
      OnClick = S2Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 468
    Top = 210
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.*'
    Left = 468
    Top = 258
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 516
    Top = 212
  end
  object Update_FGT: TUpdateSQL
    ModifySQL.Strings = (
      'update FGT_TEST'
      'set'
      '  Article = :Article,'
      '  Stage = :Stage,'
      '  SendDate = :SendDate,'
      '  FGT01 = :FGT01,'
      '  FGT02 = :FGT02,'
      '  FGT04 = :FGT04,'
      '  FGT05 = :FGT05,'
      '  FGT08 = :FGT08,'
      '  FGT13 = :FGT13,'
      '  FGT07_13 = :FGT07_13,'
      '  FGT13_14 = :FGT13_14,'
      '  FGT22 = :FGT22,'
      '  FGT64 = :FGT64,'
      '  FGT68 = :FGT68,'
      '  FGT78 = :FGT78,'
      '  FGT30 = :FGT30,'
      '  RESULT = :RESULT,'
      '  Remark = :Remark,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  Dropped = :Dropped,'
      '  FastTrack = :FastTrack'
      'where'
      '  Article = :OLD_Article and'
      '  Stage = :OLD_Stage and'
      '  SendDate = :OLD_SendDate and'
      '  Dropped = :OLD_Dropped')
    InsertSQL.Strings = (
      'insert into FGT_TEST'
      
        '  (Article, Stage, SendDate, FGT01, FGT02, FGT04, FGT05, FGT08, ' +
        'FGT13, '
      
        '   FGT07_13, FGT13_14, FGT22, FGT64, FGT68, FGT78, FGT30, RESULT' +
        ', Remark, '
      '   USERDATE, USERID, Dropped, FastTrack)'
      'values'
      
        '  (:Article, :Stage, :SendDate, :FGT01, :FGT02, :FGT04, :FGT05, ' +
        ':FGT08, '
      
        '   :FGT13, :FGT07_13, :FGT13_14, :FGT22, :FGT64, :FGT68, :FGT78,' +
        ' :FGT30, '
      '   :RESULT, :Remark, :USERDATE, :USERID, :Dropped, :FastTrack)')
    DeleteSQL.Strings = (
      'delete from FGT_TEST'
      'where'
      '  Article = :OLD_Article and'
      '  Stage = :OLD_Stage and'
      '  SendDate = :OLD_SendDate and'
      '  Dropped = :OLD_Dropped')
    Left = 192
    Top = 408
  end
  object PopupMenu2: TPopupMenu
    Left = 192
    Top = 443
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
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = Delete1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Upload1: TMenuItem
      Caption = 'Upload FGT Adidas Report'
      Enabled = False
      OnClick = Upload1Click
    end
    object Download1: TMenuItem
      Caption = 'Download FGT Adidas Report'
      OnClick = Download1Click
    end
    object DeleteReport1: TMenuItem
      Caption = 'Delete FGT Adidas Report'
      Enabled = False
      OnClick = DeleteReport1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
  end
  object Pop_Edit: TPopupMenu
    Left = 87
    Top = 354
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
