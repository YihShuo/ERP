object RejectMaterial: TRejectMaterial
  Left = 187
  Top = 56
  Width = 1212
  Height = 654
  Caption = 'Entry Reject Material'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 384
    Width = 1196
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clSkyBlue
    ParentColor = False
  end
  object Label3: TLabel
    Left = 288
    Top = 40
    Width = 35
    Height = 16
    Caption = 'MatID'
  end
  object Label7: TLabel
    Left = 479
    Top = 40
    Width = 59
    Height = 16
    Caption = 'MatName'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1196
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label15: TLabel
      Left = 196
      Top = 9
      Width = 7
      Height = 25
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 126
      Top = 38
      Width = 32
      Height = 16
      Caption = 'Type'
    end
    object Label2: TLabel
      Left = 285
      Top = 38
      Width = 35
      Height = 16
      Caption = 'MatID'
    end
    object Label4: TLabel
      Left = 428
      Top = 38
      Width = 59
      Height = 16
      Caption = 'MatName'
    end
    object Label5: TLabel
      Left = 304
      Top = 8
      Width = 37
      Height = 16
      Caption = 'SupID'
    end
    object Label6: TLabel
      Left = 408
      Top = 8
      Width = 61
      Height = 16
      Caption = 'SupName'
    end
    object Label8: TLabel
      Left = 598
      Top = 38
      Width = 41
      Height = 16
      Caption = 'RMNO'
    end
    object Label42: TLabel
      Left = 12
      Top = 38
      Width = 38
      Height = 16
      Caption = 'GSBH'
    end
    object cbDate: TComboBox
      Left = 8
      Top = 3
      Width = 98
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'Date'
        'Reject Date'
        'Destroy Date'
        'W.H Date'
        '')
    end
    object DTP1: TDateTimePicker
      Left = 108
      Top = 3
      Width = 87
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 205
      Top = 3
      Width = 87
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 2
    end
    object cbType: TComboBox
      Left = 161
      Top = 33
      Width = 120
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 3
      Items.Strings = (
        ''
        'Leather'
        'Textitle/Synthetic'
        'Accessory'
        'Sole')
    end
    object edtMatID: TEdit
      Left = 323
      Top = 33
      Width = 100
      Height = 24
      TabOrder = 4
    end
    object edtSupID: TEdit
      Left = 345
      Top = 2
      Width = 51
      Height = 24
      TabOrder = 5
    end
    object edtSupN: TEdit
      Left = 474
      Top = 3
      Width = 150
      Height = 24
      TabOrder = 6
    end
    object edtMatN: TEdit
      Left = 491
      Top = 33
      Width = 103
      Height = 24
      TabOrder = 7
    end
    object btnExcel: TButton
      Left = 841
      Top = 11
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 8
      OnClick = btnExcelClick
    end
    object edtRMNO: TEdit
      Left = 641
      Top = 33
      Width = 103
      Height = 24
      TabOrder = 9
    end
    object cbo_Factory: TComboBox
      Left = 52
      Top = 34
      Width = 73
      Height = 24
      Style = csDropDownList
      Color = 14215640
      ItemHeight = 16
      TabOrder = 10
    end
    object btnQ: TButton
      Left = 763
      Top = 12
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 11
      OnClick = btnQClick
    end
  end
  object pnl_WH: TPanel
    Left = 0
    Top = 64
    Width = 1196
    Height = 43
    Align = alTop
    TabOrder = 1
    object Label9: TLabel
      Left = 304
      Top = 16
      Width = 50
      Height = 16
      AutoSize = False
      Color = clRed
      ParentColor = False
    end
    object Label10: TLabel
      Left = 360
      Top = 16
      Width = 127
      Height = 16
      Caption = 'Reject Date >6 month'
    end
    object Label11: TLabel
      Left = 505
      Top = 16
      Width = 50
      Height = 16
      AutoSize = False
      Color = clYellow
      ParentColor = False
    end
    object Label12: TLabel
      Left = 561
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Destroyed'
    end
    object Label13: TLabel
      Left = 256
      Top = 16
      Width = 38
      Height = 16
      Caption = 'Note:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btninsert1: TBitBtn
      Left = 3
      Top = 0
      Width = 44
      Height = 44
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
      OnClick = btninsert1Click
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
    object btnmodify1: TBitBtn
      Left = 46
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnmodify1Click
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
    object btndelete1: TBitBtn
      Left = 89
      Top = 0
      Width = 44
      Height = 44
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
      OnClick = btndelete1Click
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
    object btnsave1: TBitBtn
      Left = 132
      Top = 0
      Width = 44
      Height = 44
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
      OnClick = btnsave1Click
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
    object btncancel1: TBitBtn
      Left = 175
      Top = 0
      Width = 44
      Height = 44
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
      OnClick = btncancel1Click
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
  end
  object DB_WH: TDBGridEh
    Left = 0
    Top = 107
    Width = 1196
    Height = 277
    Align = alTop
    DataSource = DS_WH
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DB_WHDrawColumnCell
    OnGetCellParams = DB_WHGetCellParams
    Columns = <
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'RMNO'
        Footers = <>
        ReadOnly = True
        Width = 103
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Types'
        Footers = <>
        PickList.Strings = (
          ''
          'Leather'
          'Textitle/Synthetic'
          'Accessory'
          'Sole')
        Title.Caption = 'Type'
        Width = 142
      end
      item
        ButtonStyle = cbsNone
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'RejectDate'
        Footers = <>
        Title.Caption = 'Reject Date'
        Width = 91
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'DestroyDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Destroy Date'
        Width = 92
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 140
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Width = 65
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Width = 65
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 387
    Width = 1196
    Height = 228
    Align = alClient
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 801
      Top = 1
      Height = 226
      Align = alRight
      Color = clSkyBlue
      ParentColor = False
    end
    object pnl_RY: TPanel
      Left = 804
      Top = 1
      Width = 391
      Height = 226
      Align = alRight
      TabOrder = 0
      object pnlRY: TPanel
        Left = 1
        Top = 1
        Width = 389
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnInsRY: TBitBtn
          Left = 3
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnInsRYClick
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
        object btnModRY: TBitBtn
          Left = 46
          Top = 0
          Width = 44
          Height = 44
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnModRYClick
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
        object btnDelRY: TBitBtn
          Left = 89
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnDelRYClick
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
        object btnSavRY: TBitBtn
          Left = 132
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnSavRYClick
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
        object btnCanRY: TBitBtn
          Left = 175
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnCanRYClick
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
      end
      object DB_RY: TDBGridEh
        Left = 1
        Top = 44
        Width = 389
        Height = 181
        Align = alClient
        DataSource = DS_RY
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DB_RYGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'RY'
            Footers = <>
            Width = 93
            OnEditButtonClick = DB_RYColumns0EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 118
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Width = 65
          end>
      end
    end
    object pnl_Mat: TPanel
      Left = 1
      Top = 1
      Width = 800
      Height = 226
      Align = alClient
      TabOrder = 1
      object pnlMat: TPanel
        Left = 1
        Top = 1
        Width = 798
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnInsMat: TBitBtn
          Left = 3
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnInsMatClick
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
        object btnModMat: TBitBtn
          Left = 46
          Top = 0
          Width = 44
          Height = 44
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnModMatClick
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
        object btnDelMat: TBitBtn
          Left = 89
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnDelMatClick
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
        object btnSavMat: TBitBtn
          Left = 132
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnSavMatClick
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
        object btnCanMat: TBitBtn
          Left = 175
          Top = 0
          Width = 44
          Height = 44
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
          OnClick = btnCanMatClick
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
      end
      object DB_Mat: TDBGridEh
        Left = 1
        Top = 44
        Width = 798
        Height = 181
        Align = alClient
        DataSource = DS_Mat
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DB_MatGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'MatID'
            Width = 89
            OnEditButtonClick = DB_MatColumns0EditButtonClick
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Mat Name'
            Width = 171
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SupID'
            Width = 53
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sup Name'
            Width = 114
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Shipment'
            Width = 81
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'W.H Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Rack'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'Racks'
            Footers = <>
            Title.Caption = 'Location'
            Width = 67
          end
          item
            Color = clInfoBk
            DisplayFormat = '#,##0.#'
            EditButtons = <>
            FieldName = 'Qty'
            Footer.DisplayFormat = '#,##0.#'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 75
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 91
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Width = 65
          end>
      end
    end
  end
  object DS_WH: TDataSource
    DataSet = Qry_WH
    Left = 135
    Top = 171
  end
  object Qry_WH: TQuery
    AfterOpen = Qry_WHAfterOpen
    BeforeClose = Qry_WHBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT RejectMaterial.RMNO, RejectMaterial.CKBH, RejectMaterial.' +
        'Types,'
      
        '                  RejectMaterial.RejectDate, RejectMaterial.Rema' +
        'rk,'
      
        '                  RejectMaterial.UserID, RejectMaterial.UserDate' +
        ','
      
        '                  RejectMaterial.YN, RejectMaterial.GSBH,A.Destr' +
        'oyDate '
      'FROM RejectMaterial '
      'LEFT JOIN (SELECT DestroyRejectMs.RMNO, drm.DestroyDate '
      #9'  FROM DestroyRejectMs '
      
        '                  LEFT JOIN DestroyRejectM AS drm ON drm.DRNO = ' +
        'DestroyRejectMs.DRNO'
      
        '                  GROUP BY  DestroyRejectMs.RMNO, drm.DestroyDat' +
        'e )A ON A.RMNO = RejectMaterial.RMNO'
      'WHERE 1=2')
    UpdateObject = Up_WH
    Left = 135
    Top = 203
    object Qry_WHRMNO: TStringField
      FieldName = 'RMNO'
      Origin = 'DB.RejectMaterial.RMNO'
      FixedChar = True
      Size = 15
    end
    object Qry_WHCKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.RejectMaterial.CKBH'
      FixedChar = True
      Size = 5
    end
    object Qry_WHTypes: TStringField
      FieldName = 'Types'
      Origin = 'DB.RejectMaterial.Types'
      FixedChar = True
      Size = 50
    end
    object Qry_WHRejectDate: TDateTimeField
      FieldName = 'RejectDate'
      Origin = 'DB.RejectMaterial.RejectDate'
    end
    object Qry_WHRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.RejectMaterial.Remark'
      FixedChar = True
      Size = 150
    end
    object Qry_WHUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.RejectMaterial.UserID'
      FixedChar = True
      Size = 15
    end
    object Qry_WHUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.RejectMaterial.UserDate'
    end
    object Qry_WHYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.RejectMaterial.YN'
      FixedChar = True
      Size = 1
    end
    object Qry_WHGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.RejectMaterial.GSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_WHDestroyDate: TDateTimeField
      FieldName = 'DestroyDate'
    end
  end
  object Up_WH: TUpdateSQL
    ModifySQL.Strings = (
      'update RejectMaterial'
      'set'
      '  Types = :Types,'
      '  RejectDate = :RejectDate,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = getdate()'
      'where'
      '  RMNO = :OLD_RMNO')
    InsertSQL.Strings = (
      'insert into RejectMaterial'
      '  (RMNO, CKBH, Types, RejectDate,  Remark, UserID, UserDate, '
      '   YN,GSBH)'
      'values'
      
        '  (:RMNO, '#39'LYV_R'#39', :Types, :RejectDate,  :Remark, :UserID, getda' +
        'te(),'
      '   '#39'1'#39',:GSBH)')
    DeleteSQL.Strings = (
      'delete from RejectMaterial'
      'where'
      '  RMNO = :OLD_RMNO')
    Left = 135
    Top = 235
  end
  object DS_Mat: TDataSource
    DataSet = Qry_Mat
    Left = 184
    Top = 171
  end
  object Qry_Mat: TQuery
    AfterOpen = Qry_MatAfterOpen
    BeforeClose = Qry_MatBeforeClose
    DatabaseName = 'DB'
    DataSource = DS_WH
    SQL.Strings = (
      
        'SELECT rms.RMNO, rms.No_ID, rms.CGNO, rms.ZSBH, rms.CLBH, rms.Qt' +
        'y, rms.Remark,'
      
        '       rms.UserID, rms.UserDate, rms.YN, rms.RKDate,rms.Racks,rm' +
        's.Rack,'
      '       clzl.ywpm, clzl.dwbh, zszl.zsywjc'
      'FROM RejectMaterialS rms'
      'LEFT JOIN clzl ON clzl.cldh=rms.CLBH'
      'LEFT JOIN zszl ON zszl.zsdh=rms.ZSBH'
      'WHERE RMNO=:RMNO')
    UpdateObject = Up_Mat
    Left = 184
    Top = 203
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RMNO'
        ParamType = ptUnknown
        Size = 16
      end>
    object Qry_MatRMNO: TStringField
      FieldName = 'RMNO'
      FixedChar = True
      Size = 15
    end
    object Qry_MatNo_ID: TIntegerField
      FieldName = 'No_ID'
    end
    object Qry_MatCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
    end
    object Qry_MatZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_MatCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
    end
    object Qry_MatQty: TCurrencyField
      FieldName = 'Qty'
    end
    object Qry_MatRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object Qry_MatUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Qry_MatUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Qry_MatYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Qry_MatRKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object Qry_Matywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Qry_Matdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Qry_Matzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object Qry_MatRacks: TStringField
      FieldName = 'Racks'
      FixedChar = True
      Size = 6
    end
    object Qry_MatRack: TStringField
      FieldName = 'Rack'
      Size = 6
    end
  end
  object Up_Mat: TUpdateSQL
    ModifySQL.Strings = (
      'update RejectMaterialS'
      'set'
      '  Qty = :Qty,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = getdate(),'
      '  Racks=:Racks'
      ' where'
      '  RMNO = :OLD_RMNO and'
      '  No_ID = :OLD_No_ID and'
      '  CGNO = :OLD_CGNO and'
      '  ZSBH = :OLD_ZSBH and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into RejectMaterialS'
      '  (RMNO, No_ID, CGNO, ZSBH, CLBH, Qty, Remark, UserID, '
      'UserDate, YN, RKDate,Racks,Rack)'
      'values'
      '  (:RMNO, :No_ID, :CGNO, :ZSBH, :CLBH, :Qty, :Remark, :UserID, '
      '   getdate() , '#39'1'#39', :RKDate,:Racks,:Rack)')
    DeleteSQL.Strings = (
      'Delete from RejectMaterialS'
      'where'
      '  RMNO = :OLD_RMNO and'
      '  No_ID = :OLD_No_ID and'
      '  CGNO = :OLD_CGNO and'
      '  ZSBH = :OLD_ZSBH and'
      '  CLBH = :OLD_CLBH')
    Left = 184
    Top = 235
  end
  object DS_RY: TDataSource
    DataSet = Qry_RY
    Left = 232
    Top = 171
  end
  object Qry_RY: TQuery
    AfterOpen = Qry_RYAfterOpen
    BeforeClose = Qry_RYBeforeClose
    DatabaseName = 'DB'
    DataSource = DS_Mat
    SQL.Strings = (
      
        'SELECT RMNO, RY, CGNO, CLBH, Stage, Remark, UserID, UserDate, YN' +
        ', Season'
      'FROM RejectMaterialSS'
      'WHERE RMNO=:RMNO'
      ' AND CGNO=:CGNO'
      ' AND CLBH=:CLBH'
      ''
      ''
      '')
    UpdateObject = Up_RY
    Left = 232
    Top = 203
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RMNO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object Qry_RYRMNO: TStringField
      FieldName = 'RMNO'
      Origin = 'DB.RejectMaterialSS.RMNO'
      FixedChar = True
      Size = 15
    end
    object Qry_RYRY: TStringField
      FieldName = 'RY'
      Origin = 'DB.RejectMaterialSS.RY'
      FixedChar = True
      Size = 15
    end
    object Qry_RYCGNO: TStringField
      FieldName = 'CGNO'
      Origin = 'DB.RejectMaterialSS.CGNO'
      FixedChar = True
    end
    object Qry_RYCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.RejectMaterialSS.CLBH'
      FixedChar = True
    end
    object Qry_RYStage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.RejectMaterialSS.Stage'
      FixedChar = True
      Size = 15
    end
    object Qry_RYRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.RejectMaterialSS.Remark'
      FixedChar = True
      Size = 50
    end
    object Qry_RYUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.RejectMaterialSS.UserID'
      FixedChar = True
      Size = 15
    end
    object Qry_RYUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.RejectMaterialSS.UserDate'
    end
    object Qry_RYYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.RejectMaterialSS.YN'
      FixedChar = True
      Size = 10
    end
    object Qry_RYSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.RejectMaterialSS.Season'
      FixedChar = True
    end
  end
  object Up_RY: TUpdateSQL
    ModifySQL.Strings = (
      'update RejectMaterialSS'
      'set'
      '  RY = :RY,'
      '  CGNO = :CGNO,'
      '  CLBH = :CLBH,'
      '  Stage = :Stage,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate =getdate(),'
      '  Season=:Season'
      'where'
      '  RMNO = :OLD_RMNO and'
      '  RY = :OLD_RY and'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH and'
      '  Stage = :OLD_Stage')
    InsertSQL.Strings = (
      'insert into RejectMaterialSS'
      '  (RMNO, RY, CGNO, CLBH, Stage, Remark, UserID, UserDate, '
      '   YN,Season)'
      'values'
      
        '  (:RMNO, :RY, :CGNO, :CLBH, :Stage, :Remark, :UserID, getdate()' +
        ', '
      '   '#39'1'#39',:Season)')
    DeleteSQL.Strings = (
      'delete from RejectMaterialSS'
      'where'
      '  RMNO = :OLD_RMNO and'
      '  RY = :OLD_RY and'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH and'
      '  Stage = :OLD_Stage')
    Left = 232
    Top = 235
  end
  object Qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 86
    Top = 203
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 86
    Top = 235
  end
end
