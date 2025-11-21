object UILanguages: TUILanguages
  Left = 325
  Top = 231
  Width = 1305
  Height = 675
  Caption = 'UILanguages'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB1: TBitBtn
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
      Left = 152
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
      Left = 200
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
      Left = 248
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
      Left = 296
      Top = 8
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 129
    Width = 1297
    Height = 515
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = 'UI'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 484
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh1EditButtonClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MKID'
            Footer.FieldName = 'MKID'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = ' '#27169#32068'ID|MKID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'MKNAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #27169#32068#21517#31281'|MKNAME'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'mainForm'
            Footers = <>
            Title.Caption = #31995#32113#34920#21934'|mainForm'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VCLID'
            Footers = <>
            Title.Caption = #29289#20214'ID|VCLID'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_VN'
            Footers = <>
            Title.Caption = #36234#25991'|VCLName_VN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_EN'
            Footers = <>
            Title.Caption = #33521#25991'|VCLName_EN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_CN'
            Footers = <>
            Title.Caption = #20013#25991'|VCLName_CN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'FORMID'
            Footers = <>
            Title.Caption = #21151#33021#32232#34399'|FORMID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#25142'ID|UserID'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#25142#26085#26399'|UserDate'
            Width = 80
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'GRID'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 484
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh2EditButtonClick
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MKID'
            Footer.FieldName = 'MKID'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #27169#32068'ID|MKID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'MKNAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #27169#32068#21517#31281'|MKNAME'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'mainForm'
            Footers = <>
            Title.Caption = #31995#32113#34920#21934'|mainForm'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VCLID'
            Footers = <>
            Title.Caption = #29289#20214'ID|VCLID'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'FieldName'
            Footers = <>
            Title.Caption = #27396#20301#21015'|FieldName'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_VN'
            Footers = <>
            Title.Caption = #36234#25991'|VCLName_VN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_EN'
            Footers = <>
            Title.Caption = #33521#25991'|VCLName_EN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_CN'
            Footers = <>
            Title.Caption = #20013#25991'|VCLName_CN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'FORMID'
            Footers = <>
            Title.Caption = #21151#33021#32232#34399'|FORMID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#25142'ID|UserID'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#25142#26085#26399'|UserDate'
            Width = 80
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'BLimit'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 484
        Align = alClient
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh3EditButtonClick
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MKID'
            Footer.FieldName = 'MKID'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #27169#32068'ID|MKID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'FORMID'
            Footers = <>
            Title.Caption = #21151#33021#32232#34399'|FORMID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'MKNAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #27169#32068#21517#31281'|MKNAME'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'FORMNAME'
            Footers = <>
            Title.Caption = #21151#33021#21517#31281'|FORMNAME'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_VN'
            Footers = <>
            Title.Caption = #36234#25991'|VCLName_VN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_EN'
            Footers = <>
            Title.Caption = #33521#25991'|VCLName_EN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'VCLName_CN'
            Footers = <>
            Title.Caption = #20013#25991'|VCLName_CN'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Title.Caption = #20572#29992'|YN'
            Width = 33
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1297
    Height = 64
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 20
      Top = 8
      Width = 45
      Height = 16
      Caption = 'Module'
    end
    object Label2: TLabel
      Left = 231
      Top = 6
      Width = 60
      Height = 16
      Caption = 'MainForm'
    end
    object Label3: TLabel
      Left = 615
      Top = 7
      Width = 67
      Height = 16
      Caption = 'FieldName'
    end
    object Label4: TLabel
      Left = 19
      Top = 40
      Width = 88
      Height = 16
      Caption = 'VCLName_VN'
    end
    object Label5: TLabel
      Left = 220
      Top = 40
      Width = 88
      Height = 16
      Caption = 'VCLName_EN'
    end
    object Label6: TLabel
      Left = 439
      Top = 39
      Width = 88
      Height = 16
      Caption = 'VCLName_CN'
    end
    object Label7: TLabel
      Left = 660
      Top = 37
      Width = 62
      Height = 16
      Caption = 'VCLName'
    end
    object Label8: TLabel
      Left = 438
      Top = 9
      Width = 38
      Height = 16
      Caption = 'VCLID'
    end
    object Label9: TLabel
      Left = 823
      Top = 7
      Width = 52
      Height = 16
      Caption = 'FORMID'
    end
    object Button1: TButton
      Left = 878
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CB1: TComboBox
      Left = 72
      Top = 5
      Width = 145
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 1
    end
    object MainFormEdit: TEdit
      Left = 296
      Top = 5
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object FieldNMEdit: TEdit
      Left = 689
      Top = 3
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object VNEdit: TEdit
      Left = 111
      Top = 36
      Width = 106
      Height = 24
      TabOrder = 4
    end
    object ENEdit: TEdit
      Left = 312
      Top = 35
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object CNEdit: TEdit
      Left = 531
      Top = 34
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object ComboxVCLName: TComboBox
      Left = 731
      Top = 34
      Width = 142
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
      Items.Strings = (
        'All'
        'VCLName_VN is null'
        'VCLName_EN is null'
        'VCLName_CN is null'
        'VCLName_VN is not null'
        'VCLName_EN is not null'
        'VCLName_CN is not null')
    end
    object VCLIDEdit: TEdit
      Left = 482
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 8
    end
    object FormIDEdit: TEdit
      Left = 881
      Top = 3
      Width = 56
      Height = 24
      TabOrder = 9
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 24
    Top = 216
    object Query1MKID: TStringField
      FieldName = 'MKID'
      Size = 10
    end
    object Query1MKNAME: TStringField
      FieldName = 'MKNAME'
      Size = 15
    end
    object Query1mainForm: TStringField
      FieldName = 'mainForm'
      Size = 50
    end
    object Query1VCLID: TStringField
      FieldName = 'VCLID'
      Size = 50
    end
    object Query1VCLName_VN: TStringField
      FieldName = 'VCLName_VN'
      Size = 50
    end
    object Query1VCLName_EN: TStringField
      FieldName = 'VCLName_EN'
      Size = 50
    end
    object Query1VCLName_CN: TStringField
      FieldName = 'VCLName_CN'
      Size = 50
    end
    object Query1FORMID: TStringField
      FieldName = 'FORMID'
      Size = 6
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 184
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 120
    Top = 216
    object QSearchMKID: TStringField
      FieldName = 'MKID'
      Size = 2
    end
    object QSearchMKNAME: TStringField
      FieldName = 'MKNAME'
      Size = 15
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE BLanguage'
      'SET'
      '  VCLName_VN = :VCLName_VN,'
      '  VCLName_EN = :VCLName_EN,'
      '  VCLName_CN = :VCLName_CN,'
      '  FORMID = :FORMID,'
      '  VCLID =:VCLID,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  MKID = :OLD_MKID AND'
      '  mainForm = :OLD_mainForm AND'
      '  VCLID = :OLD_VCLID')
    InsertSQL.Strings = (
      'INSERT INTO BLanguage'
      
        '(MKID, mainForm, VCLID, VCLName_VN, VCLName_EN, VCLName_CN, FORM' +
        'ID, UserID, UserDate, YN)'
      'VALUES'
      
        '(:MKID, :mainForm, :VCLID, :VCLName_VN, :VCLName_EN, :VCLName_CN' +
        ', :FORMID, :UserID, GETDATE(), :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM BLanguage'
      'WHERE'
      'MKID = :OLD_MKID AND'
      'mainForm = :OLD_mainForm AND'
      'VCLID = :OLD_VCLID')
    Left = 24
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 56
    Top = 184
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL2
    Left = 56
    Top = 216
    object StringField1: TStringField
      FieldName = 'MKID'
      Size = 10
    end
    object Query2MKNAME: TStringField
      FieldName = 'MKNAME'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'mainForm'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'VCLID'
      Size = 50
    end
    object Query2FieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'VCLName_VN'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'VCLName_EN'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'VCLName_CN'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'FORMID'
      Size = 6
    end
    object StringField8: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object StringField9: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE BLanguage_DBGrid'
      'SET'
      '  VCLName_VN = :VCLName_VN,'
      '  VCLName_EN = :VCLName_EN,'
      '  VCLName_CN = :VCLName_CN,'
      '  FORMID = :FORMID,'
      '  FieldName =:FieldName,'
      '  VCLID =:VCLID,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  MKID = :OLD_MKID AND'
      '  mainForm = :OLD_mainForm AND'
      '  VCLID = :OLD_VCLID AND'
      '  FieldName = :OLD_FieldName')
    InsertSQL.Strings = (
      'INSERT INTO BLanguage_DBGrid'
      
        '(MKID, mainForm, VCLID, FieldName, VCLName_VN, VCLName_EN, VCLNa' +
        'me_CN, FORMID, UserID, UserDate, YN)'
      'VALUES'
      
        '(:MKID, :mainForm, :VCLID, :FieldName, :VCLName_VN, :VCLName_EN,' +
        ' :VCLName_CN, :FORMID, :UserID, GETDATE(), :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM BLanguage_DBGrid'
      'WHERE'
      'MKID = :OLD_MKID AND'
      'mainForm = :OLD_mainForm AND'
      'VCLID = :OLD_VCLID AND'
      'FieldName = :OLD_FieldName')
    Left = 56
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 88
    Top = 184
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from BLimit')
    UpdateObject = UpdateSQL3
    Left = 88
    Top = 216
    object Query3MKID: TStringField
      FieldName = 'MKID'
      Size = 2
    end
    object Query3FORMID: TStringField
      FieldName = 'FORMID'
      Size = 7
    end
    object StringField11: TStringField
      FieldName = 'MKNAME'
      Size = 15
    end
    object Query3FORMNAME: TStringField
      FieldName = 'FORMNAME'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'VCLName_VN'
      Size = 50
    end
    object StringField16: TStringField
      FieldName = 'VCLName_EN'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'VCLName_CN'
      Size = 50
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE BLimit'
      'SET'
      '  MKNAME = :MKNAME,'
      '  FORMNAME = :FORMNAME,'
      '  VCLName_VN = :VCLName_VN,'
      '  VCLName_EN = :VCLName_EN,'
      '  VCLName_CN = :VCLName_CN,'
      '  YN= :YN'
      'WHERE'
      '  MKID = :OLD_MKID AND'
      '  FORMID = :OLD_FORMID')
    InsertSQL.Strings = (
      'INSERT INTO BLimit'
      
        '(MKID, FORMID, MKNAME, FORMNAME, VCLName_VN, VCLName_EN, VCLName' +
        '_CN)'
      'VALUES'
      
        '(:MKID, :FORMID, :MKNAME, :FORMNAME, :VCLName_VN, :VCLName_EN, :' +
        'VCLName_CN)')
    DeleteSQL.Strings = (
      'DELETE FROM BLimit'
      'WHERE'
      'MKID = :OLD_MKID AND'
      'FORMID = :OLD_FORMID')
    Left = 88
    Top = 248
  end
end
