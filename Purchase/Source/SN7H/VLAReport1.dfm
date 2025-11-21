object VLAReport: TVLAReport
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'VLA Report'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 54
    Align = alTop
    TabOrder = 0
    object BB3: TBitBtn
      Left = 51
      Top = 3
      Width = 110
      Height = 49
      Caption = 'Delete <6month'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
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
      Left = 163
      Top = 3
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
    object BB5: TBitBtn
      Left = 211
      Top = 3
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
    object BB6: TBitBtn
      Left = 259
      Top = 3
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
    object BB7: TBitBtn
      Left = 307
      Top = 3
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
      Visible = False
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
      Left = 3
      Top = 3
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
    object below: TButton
      Left = 1302
      Top = 22
      Width = 49
      Height = 25
      Caption = 'Copy'
      TabOrder = 6
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 1289
    Height = 122
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 238
      Top = 9
      Width = 42
      Height = 16
      Caption = 'PO NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 130
      Top = 9
      Width = 45
      Height = 16
      Caption = 'SuppID'
    end
    object Label4: TLabel
      Left = 600
      Top = 10
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label5: TLabel
      Left = 105
      Top = 38
      Width = 69
      Height = 16
      Caption = 'SuppName'
    end
    object lbl1: TLabel
      Left = 236
      Top = 38
      Width = 43
      Height = 16
      Caption = 'Invoice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1
      Top = 9
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
    object Label7: TLabel
      Left = 9
      Top = 38
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
    object Label3: TLabel
      Left = 235
      Top = 70
      Width = 35
      Height = 16
      Caption = 'MatID'
    end
    object Label10: TLabel
      Left = 4
      Top = 69
      Width = 96
      Height = 16
      Caption = 'Invoice customs'
    end
    object Label14: TLabel
      Left = 471
      Top = 38
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
    object Label12: TLabel
      Left = 398
      Top = 38
      Width = 41
      Height = 16
      Caption = 'Frozen'
    end
    object Label13: TLabel
      Left = 382
      Top = 70
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object Label18: TLabel
      Left = 703
      Top = 9
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
    object Label15: TLabel
      Left = 614
      Top = 38
      Width = 29
      Height = 16
      Caption = 'SR#:'
    end
    object Label16: TLabel
      Left = 3
      Top = 98
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
    end
    object Edit1: TEdit
      Left = 284
      Top = 5
      Width = 100
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Button1: TButton
      Left = 739
      Top = 64
      Width = 72
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 512
      Top = 6
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 610
      Top = 6
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 176
      Top = 5
      Width = 56
      Height = 24
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 176
      Top = 34
      Width = 56
      Height = 24
      TabOrder = 3
    end
    object edt1: TEdit
      Left = 284
      Top = 34
      Width = 101
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 48
      Top = 5
      Width = 51
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
    end
    object Check: TCheckBox
      Left = 821
      Top = 68
      Width = 51
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 48
      Top = 34
      Width = 51
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
    end
    object CheckBox1: TCheckBox
      Left = 395
      Top = 10
      Width = 19
      Height = 17
      TabOrder = 10
    end
    object Edit6: TEdit
      Left = 274
      Top = 66
      Width = 102
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object Edit7: TEdit
      Left = 102
      Top = 66
      Width = 121
      Height = 24
      TabOrder = 12
    end
    object BrandCombo: TComboBox
      Left = 513
      Top = 34
      Width = 89
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 13
    end
    object Edit8: TEdit
      Left = 444
      Top = 33
      Width = 13
      Height = 24
      TabOrder = 14
      Text = '5'
    end
    object Edit9: TEdit
      Left = 450
      Top = 67
      Width = 96
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 15
    end
    object Edit10: TEdit
      Left = 548
      Top = 67
      Width = 88
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 16
    end
    object Edit11: TEdit
      Left = 639
      Top = 67
      Width = 93
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 17
    end
    object ComboBox14: TComboBox
      Left = 781
      Top = 6
      Width = 58
      Height = 24
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
    object ComboBox1: TComboBox
      Left = 409
      Top = 6
      Width = 101
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 19
      Text = 'PO Date'
      Items.Strings = (
        'PO Date'
        'Return Date'
        'PurReceive Date')
    end
    object Edit12: TEdit
      Left = 648
      Top = 34
      Width = 169
      Height = 24
      TabOrder = 20
    end
    object Cb_DevTP: TComboBox
      Left = 51
      Top = 94
      Width = 88
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 21
      Items.Strings = (
        ''
        'Inline'
        'Incubate'
        'CTM')
    end
    object CheckBox2: TCheckBox
      Left = 821
      Top = 36
      Width = 140
      Height = 17
      Caption = 'Haven'#39't ReportDay'
      Checked = True
      State = cbChecked
      TabOrder = 22
    end
  end
  object DBGrid4: TDBGridEh
    Left = 0
    Top = 176
    Width = 1289
    Height = 460
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
    FrozenCols = 4
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 2
    OnDblClick = DBGrid4DblClick
    OnDrawColumnCell = DBGrid4DrawColumnCell
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SEASON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sea'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 32
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'PURPOSE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Stage'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Devtype'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'P.O.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur Order Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Mat. No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 92
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.FieldName = 'YWPM'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 274
      end
      item
        EditButtons = <>
        FieldName = 'FlexCode'
        Footers = <>
        ReadOnly = True
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Order Memo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Commited ETD'
        Visible = False
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CommitedETD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Actual ETD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 74
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Article_All'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 111
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ZSBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 59
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'ReportDay'
        Footers = <>
      end
      item
        Color = clHighlightText
        EditButtons = <>
        FieldName = 'TestReportFile'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Width = 100
        OnEditButtonDown = DBGrid4Columns16EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'VLAReportUserID'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'VLAReportUserDate'
        Footers = <>
        ReadOnly = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 472
    Top = 336
  end
  object DS4: TDataSource
    DataSet = QryVLA
    Left = 516
    Top = 340
  end
  object QryVLA: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select CGZLS.CGNO '
      '       ,CGZLS.CLBH '
      '       ,CGZLInvoiceS_1.Invoice_Customs '
      
        '       ,CGZLS.Qty ,(cgzls.Qty - isnull(CGZLInvoiceS_1.Qty,0)) as' +
        ' Qty_not '
      '       ,CGZLS.YQDate '
      '       ,CGZLS.CFMDate '
      '       ,CGZLS.CFMDate as old_CFMDate'
      '       ,CGZLS.USERDate '
      '       ,CGZLS.USERID '
      '       ,CGZLS.Memo '
      '       ,CGZLS.USPrice '
      '       ,CGZLS.VNPrice '
      '       ,CGZLS.Article_All '
      
        '       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,CLZ' +
        'L.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH'
      
        '       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reas' +
        'on '
      '       ,MaterialNG.NG_Reason as old_NG_Reason'
      '       ,MaterialNG.NG_ETD'
      '       ,MaterialNG.NG_ETA'
      '       ,MaterialNG.Result'
      '       ,MaterialNG.NG_Date'
      '       ,MaterialNG.NG_Date as old_NG_Date'
      '       ,CGZL_color.visually'
      '       ,CGZL_color.spectro'
      '       ,CGZL_color.spectro_file'
      '       ,CGZL_color.result'
      '       ,CGZL_color.userdate'
      '       ,CGZL_color.userid'
      #9'      ,CGZL_color.remark remark'
      
        '       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_wind' +
        'ow '
      
        '       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,Mate' +
        'rialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice' +
        '_1.invoice,'#39#39') as invoice ,RKACC.USPrice as RKUSPrice,RKACC.VNPr' +
        'ice as RKVNPrice,BUSERS.USERNAME as SamplePurchaser_Name  '
      '       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  '
      
        '       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Si' +
        'ze'
      
        '       ,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl' +
        '_color2.DateA4Comfirm'
      
        '       ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl' +
        '_color2.PC_Confirm,cgzl_color2.shippedDate'
      
        '       ,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signe' +
        'r,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_col' +
        'or2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_col' +
        'or2.color2remark,cgzls.ETA'
      
        '       ,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber' +
        ',CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate,CGZLInvoiceS_1.CheckRe' +
        'sult,CGZLS.DelayReason,kfxxzl.Devtype'
      
        '       ,max(case when ((left(CGZLS.Article_All,1)='#39'S'#39' or left(CG' +
        'ZLS.Article_All,1)='#39'G'#39') and KFXXZL.Devtype = '#39'CTM'#39') then convert' +
        '(smalldatetime,R1Sample.RSD,111)-14  '
      
        #9#9'      when (left(CGZLS.Article_All,1)='#39'C'#39' and KFXXZL.Devtype =' +
        ' '#39'CTM'#39') then convert(smalldatetime,R3Sample.RSD,111)-14'
      
        #9#9'      when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype =' +
        ' '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR1'#39') then convert(smalldatetime,R' +
        '1Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR2'#39') then convert(smalldatetime' +
        ',R2Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'SMS'#39') then convert(smalldatetime' +
        ',R3Sample.RSD,111)-14'
      '          else GamePlan.Material_ETA end ) as Material_ETA'
      'from CGZLS  '
      'inner join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'inner join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH'
      'inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=' +
        #39'CDC'#39
      'left join BUSERS on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      
        'left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CG' +
        'NO=MaterialNG.CGNO '
      
        'left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH an' +
        'd CGZLS.CGNO=SampleLeatherQC.CGNO '
      
        'left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.S' +
        'EASON=MaterialMOQ.Season   '
      'left join cgzl_color2  on CGZLS.CLBH=cgzl_color2.CLBH'
      
        'left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1,Invoice_Customs, qty, CheckResult from CGZLInvoiceS GROUP B' +
        'Y CGNO,CLBH,Invoice_Customs, qty, CheckResult ) CGZLInvoiceS_1 o' +
        'n CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.C' +
        'GNO'
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1  '
      
        'left join cgzl_color on cgzl_color.cgno=cgzls.cgno and cgzl_colo' +
        'r.clbh=cgzls.clbh'
      
        'left join KCRKS RKACC  on RKACC.DOCNO=cgzls.cgno and RKACC.clbh=' +
        'cgzls.clbh '
      
        'inner join CGZLSS on CGZL.CGNO=CGZLSs.CGNO and cgzlss.CLBH = CGZ' +
        'LS.CLBH  '
      
        'Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH   Left join KFXXZL  on K' +
        'FXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing'
      
        'Left join xxzlkf  on  KFXXZL.XieXing=xxzlkf.XieXing  and KFXXZL.' +
        'SheHao=xxzlkf.SheHao'
      'left join ('
      
        '  select Season, Stage, MAX(Material_ETA) AS Material_ETA from G' +
        'amePlan'
      '  GROUP BY Season,Stage'
      
        ') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=Ga' +
        'mePlan.Stage'
      
        'left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2S' +
        'ample.Shehao = KFXXZL.Shehao '
      'where 1=2'
      
        'group by CGZLS.CGNO,CGZLS.CLBH,CGZLInvoiceS_1.Invoice_Customs,CL' +
        'ZL_FLEX.CLDHFLEX'
      ',CGZLS.Qty,CGZLS.YQDate,CGZLS.CFMDate'
      ',CGZLS.CFMDate,CGZLS.USERDate,CGZLS.USERID'
      ',CGZLS.Memo,CGZLS.USPrice,CGZLS.VNPrice,CGZLS.Article_All'
      
        ',ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.C' +
        'GDate,CGZL.ZSBH'
      ',MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason'
      ',MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA'
      
        ',MaterialNG.Result,MaterialNG.NG_Date,MaterialNG.NG_Date,CGZL_co' +
        'lor.visually'
      ',CGZL_color.spectro,CGZL_color.spectro_file'
      ',CGZL_color.result,CGZL_color.userdate'
      ',CGZL_color.userid,CGZL_color.remark'
      ',MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window'
      
        ',MaterialNG.Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZ' +
        'LInvoice_1.ETA'
      
        ',isnull(CGZLInvoice_1.invoice,'#39#39') ,RKACC.USPrice,RKACC.VNPrice,B' +
        'USERS.USERNAME'
      ',MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality'
      ',SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size'
      
        ',cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2' +
        '.DateA4Comfirm'
      
        ',cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2' +
        '.PC_Confirm'
      
        ',cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,' +
        'cgzl_color2.Signer,cgzl_color2.DCName'
      
        ',cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_' +
        'color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgz' +
        'ls.ETA,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber,' +
        ' CGZLInvoiceS_1.Qty,CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate,CGZ' +
        'LInvoiceS_1.CheckResult,CGZLS.DelayReason,kfxxzl.Devtype'
      'order by CGZLS.CGNO DESC'
      '')
    UpdateObject = UPVLA
    Left = 516
    Top = 372
    object QryVLASEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object QryVLAPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object QryVLACGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QryVLACGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object QryVLACLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QryVLAYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object QryVLAMatRemark: TStringField
      FieldName = 'MatRemark'
      Size = 80
    end
    object QryVLAQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
      currency = False
    end
    object QryVLADWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object QryVLAYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/mm/dd'
    end
    object QryVLAMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object QryVLACFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QryVLAArticle_All: TStringField
      FieldName = 'Article_All'
      FixedChar = True
      Size = 255
    end
    object QryVLAUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object QryVLAUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object QryVLAInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
    end
    object QryVLAACCUS: TCurrencyField
      DisplayLabel = 'US Amount'
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      currency = False
      Calculated = True
    end
    object QryVLAACCVN: TCurrencyField
      DisplayLabel = 'VN Amount'
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      currency = False
      Calculated = True
    end
    object QryVLAUSPrice: TCurrencyField
      FieldName = 'USPrice'
      currency = False
    end
    object QryVLAVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      currency = False
    end
    object QryVLAUSPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'USPrice_'
      currency = False
      Calculated = True
    end
    object QryVLAVNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNPrice_'
      currency = False
      Calculated = True
    end
    object QryVLAQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object QryVLAQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object QryVLAFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object QryVLACharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object QryVLAZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object QryVLAZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QryVLANG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object QryVLANG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object QryVLANG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object QryVLAResult: TStringField
      FieldName = 'Result'
      FixedChar = True
    end
    object QryVLAFile_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object QryVLAFile_Size: TFloatField
      FieldName = 'File_Size'
    end
    object QryVLAINV_ETA: TDateTimeField
      FieldName = 'INV_ETA'
    end
    object QryVLANG_Remark: TStringField
      FieldName = 'NG_Remark'
      Size = 50
    end
    object QryVLANG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object QryVLARKUSPrice: TCurrencyField
      FieldName = 'RKUSPrice'
      currency = False
    end
    object QryVLARKVNPrice: TCurrencyField
      FieldName = 'RKVNPrice'
      currency = False
    end
    object QryVLAold_NG_Date: TDateTimeField
      FieldName = 'old_NG_Date'
    end
    object QryVLAold_NG_Reason: TStringField
      FieldName = 'old_NG_Reason'
      FixedChar = True
    end
    object QryVLAold_CFMDate: TDateTimeField
      FieldName = 'old_CFMDate'
    end
    object QryVLAQC_skin: TCurrencyField
      FieldName = 'QC_skin'
      DisplayFormat = '##%'
      currency = False
    end
    object QryVLASkin_Size: TCurrencyField
      FieldName = 'Skin_Size'
      currency = False
    end
    object QryVLASkin_Quality: TCurrencyField
      FieldName = 'Skin_Quality'
      DisplayFormat = '##%'
      currency = False
    end
    object QryVLAQC_File_Name: TStringField
      FieldName = 'QC_File_Name'
      FixedChar = True
      Size = 50
    end
    object QryVLAQC_File_Size: TFloatField
      FieldName = 'QC_File_Size'
    end
    object QryVLAC_window: TStringField
      FieldName = 'C_window'
      FixedChar = True
      Size = 50
    end
    object QryVLALab: TStringField
      FieldName = 'Lab'
      FixedChar = True
      Size = 4
    end
    object QryVLALab_reason: TStringField
      FieldName = 'Lab_reason'
      FixedChar = True
      Size = 200
    end
    object QryVLAInvoice_Customs: TStringField
      FieldName = 'Invoice_Customs'
      FixedChar = True
      Size = 100
    end
    object QryVLASoftness: TStringField
      FieldName = 'Softness'
      FixedChar = True
      Size = 50
    end
    object QryVLAvisually: TStringField
      FieldName = 'visually'
      FixedChar = True
      Size = 10
    end
    object QryVLAspectro: TStringField
      FieldName = 'spectro'
      FixedChar = True
      Size = 10
    end
    object QryVLAspectro_file: TStringField
      FieldName = 'spectro_file'
      FixedChar = True
      Size = 30
    end
    object QryVLAresult_1: TStringField
      FieldName = 'result_1'
      FixedChar = True
      Size = 10
    end
    object QryVLASamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object QryVLAUSERDate_1: TDateTimeField
      FieldName = 'USERDate_1'
    end
    object QryVLAremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object QryVLAA4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 50
    end
    object QryVLAtrackingA4Comfirm: TStringField
      FieldName = 'trackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object QryVLADateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object QryVLAColorWindow: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object QryVLADateColorWindow: TDateTimeField
      FieldName = 'DateColorWindow'
    end
    object QryVLAPC_Confirm: TStringField
      FieldName = 'PC_Confirm'
      FixedChar = True
    end
    object QryVLAshippedDate: TDateTimeField
      FieldName = 'shippedDate'
    end
    object QryVLAsignedDate: TDateTimeField
      FieldName = 'signedDate'
    end
    object QryVLASigner: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object QryVLADCName: TStringField
      FieldName = 'DCName'
      FixedChar = True
      Size = 10
    end
    object QryVLAPRO: TStringField
      FieldName = 'PRO'
      FixedChar = True
      Size = 10
    end
    object QryVLASenter: TStringField
      FieldName = 'Senter'
      FixedChar = True
      Size = 10
    end
    object QryVLAExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
    object QryVLASharedDC: TStringField
      FieldName = 'SharedDC'
      FixedChar = True
      Size = 10
    end
    object QryVLAUpdater: TStringField
      FieldName = 'Updater'
      FixedChar = True
      Size = 10
    end
    object QryVLAcolor2remark: TStringField
      FieldName = 'color2remark'
      FixedChar = True
      Size = 60
    end
    object QryVLAAWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
      Size = 60
    end
    object QryVLAETA: TDateTimeField
      FieldName = 'ETA'
    end
    object QryVLAReturnDate: TDateTimeField
      FieldName = 'ReturnDate'
    end
    object QryVLAReturnQuantity: TCurrencyField
      FieldName = 'ReturnQuantity'
      DisplayFormat = '#,##0.0'
    end
    object QryVLASerialNumber: TStringField
      FieldName = 'SerialNumber'
      FixedChar = True
      Size = 40
    end
    object QryVLAQty_not: TFloatField
      FieldName = 'Qty_not'
      DisplayFormat = '#,##0.0'
    end
    object QryVLACommitedETD: TDateTimeField
      FieldName = 'CommitedETD'
    end
    object QryVLAMaterial_ETA: TDateTimeField
      FieldName = 'Material_ETA'
      ReadOnly = True
    end
    object QryVLALateETA: TStringField
      FieldKind = fkCalculated
      FieldName = 'LateETA'
      ReadOnly = True
      Calculated = True
    end
    object QryVLAProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      ReadOnly = True
    end
    object QryVLAsampleorder: TStringField
      FieldName = 'sampleorder'
      ReadOnly = True
    end
    object QryVLAFlexCode: TStringField
      FieldName = 'FlexCode'
      FixedChar = True
      Size = 15
    end
    object QryVLAPurReceiveDate: TDateTimeField
      FieldName = 'PurReceiveDate'
    end
    object QryVLARFCDeadlineDate: TDateTimeField
      FieldName = 'RFCDeadlineDate'
    end
    object QryVLACheckResult: TStringField
      FieldName = 'CheckResult'
      FixedChar = True
      Size = 15
    end
    object QryVLADelayReason: TStringField
      FieldName = 'DelayReason'
      FixedChar = True
      Size = 150
    end
    object QryVLADevtype: TStringField
      FieldName = 'Devtype'
      FixedChar = True
      Size = 15
    end
    object DTMReceivedDate: TDateTimeField
      FieldName = 'DTMReceivedDate'
    end
    object QryVLAVLAReportUserID: TStringField
      FieldName = 'VLAReportUserID'
    end
    object QryVLAVLAReportUserDate: TDateTimeField
      FieldName = 'VLAReportUserDate'
    end
    object QryVLAReportDay: TDateTimeField
      FieldName = 'ReportDay'
    end
    object QryVLAYN: TStringField
      FieldName = 'YN'
    end
    object QryVLATestReportFile: TStringField
      DisplayWidth = 50
      FieldName = 'TestReportFile'
      Size = 100
    end
    object QryVLAHaveReportDay: TStringField
      FieldName = 'HaveReportDay'
    end
  end
  object UPVLA: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE VLAReport'
      'SET'
      '  SEASON = :SEASON,'
      '  PURPOSE = :PURPOSE,'
      '  DevType= :DevType,'
      '  CGDate= :CGDate,'
      '  ywpm= :ywpm,'
      '  FlexCode= :FlexCode,'
      '  dwbh= :dwbh,'
      '  Article_All= :Article_All,'
      '  ZSBH= :ZSBH,'
      '  zsywjc= :zsywjc,'
      '  ReportDay= :ReportDay,'
      '  TestReportFile= :TestReportFile,'
      '  HaveReportDay= :HaveReportDay,'
      '  UserID = :VLAReportUserID,'
      '  UserDate = :VLAReportUserDate,'
      '  YN = :YN'
      'WHERE'
      '  CGNO= :OLD_CGNO AND'
      '  CLBH= :OLD_CLBH')
    InsertSQL.Strings = (
      'INSERT INTO VLAReport'
      
        '(CGNO, CLBH, SEASON,PURPOSE ,DevType, CGDate, ywpm, FlexCode, dw' +
        'bh,Article_All,ZSBH,zsywjc,ReportDay,TestReportFile,HaveReportDa' +
        'y,UserID, UserDate, YN)'
      'VALUES'
      
        '(:CGNO, :CLBH, :SEASON, :PURPOSE,:DevType, :CGDate, :ywpm, :Flex' +
        'Code, :dwbh, :Article_All, :ZSBH, :zsywjc, :ReportDay, :TestRepo' +
        'rtFile, :HaveReportDay ,:VLAReportUserID, :VLAReportUserDate, :Y' +
        'N)')
    DeleteSQL.Strings = (
      'delete from VLAReport'
      'where'
      '  CGNO = :OLD_CGNO AND'
      '  CLBH = :OLD_CLBH')
    Left = 516
    Top = 405
  end
  object OpenDialog1: TOpenDialog
    Left = 476
    Top = 372
  end
end
