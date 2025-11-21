object MatINVOICE: TMatINVOICE
  Left = 407
  Top = 339
  Width = 928
  Height = 480
  Caption = 'Mat_INVOICE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 688
    Top = 32
    Width = 50
    Height = 13
    Caption = 'EngName:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 509
      Top = 11
      Width = 45
      Height = 16
      Caption = 'UserID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 492
      Top = 34
      Width = 63
      Height = 16
      Caption = 'Password:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 692
      Top = 36
      Width = 73
      Height = 16
      Caption = 'EngName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 686
      Top = 14
      Width = 79
      Height = 16
      Caption = 'UserName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EngName: TLabel
      Left = 764
      Top = 36
      Width = 133
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object UserName: TLabel
      Left = 765
      Top = 14
      Width = 132
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbInsert: TBitBtn
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
    object bbDelete: TBitBtn
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
      OnClick = bbDeleteClick
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
    object bbModify: TBitBtn
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
      OnClick = bbModifyClick
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
    object bbSave: TBitBtn
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
      OnClick = bbSaveClick
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
    object bbCancel: TBitBtn
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
      OnClick = bbCancelClick
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
    object bbExit: TBitBtn
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
      OnClick = bbExitClick
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
    object bbQuery: TBitBtn
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
      OnClick = bbQueryClick
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
    object bbExcel: TBitBtn
      Left = 432
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bbExcelClick
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
    object edtUserID: TEdit
      Left = 557
      Top = 9
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtUserPass: TEdit
      Left = 557
      Top = 32
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 9
      OnKeyDown = edtUserPassKeyDown
    end
    object bbImport: TBitBtn
      Left = 384
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Import'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = bbImportClick
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
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 920
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 25
      Top = 13
      Width = 56
      Height = 16
      Caption = 'INVOICE:'
    end
    object Label3: TLabel
      Left = 24
      Top = 41
      Width = 57
      Height = 16
      Caption = 'INV Date:'
    end
    object Label4: TLabel
      Left = 183
      Top = 42
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 225
      Top = 13
      Width = 42
      Height = 16
      Caption = 'NAME:'
    end
    object edtInvoice: TEdit
      Left = 85
      Top = 9
      Width = 134
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object bbtQuery: TButton
      Left = 363
      Top = 28
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = bbtQueryClick
    end
    object Check: TCheckBox
      Left = 310
      Top = 40
      Width = 57
      Height = 17
      Caption = 'Mine'
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 85
      Top = 38
      Width = 97
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 207
      Top = 38
      Width = 97
      Height = 24
      Date = 39255.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 39255.958333333340000000
      TabOrder = 4
    end
    object INV_CK: TCheckBox
      Left = 4
      Top = 41
      Width = 17
      Height = 17
      TabOrder = 5
    end
    object ShipToUserEdit: TEdit
      Left = 269
      Top = 9
      Width = 92
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 129
    Width = 920
    Height = 320
    Align = alClient
    DataSource = Mat_INVOICE
    Flat = False
    Font.Charset = ANSI_CHARSET
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
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'INV_DATE'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = [fsBold]
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'INV. D.|INV_DATE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'INV_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'INVOICE#|INV_NO'
        Title.Color = clYellow
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'BL_NO'
        Footers = <>
        Title.Caption = #25552#21934#34399#30908'|BL_NO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #20214#25976' |Qty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'INV_Mat'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21407#29289#26009#26126#32048'|INV_Mat'
        Title.Color = clYellow
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'SHIP_BY'
        Footers = <>
        Title.Caption = #20986#21475#22320'|SHIP_BY'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = 'ETD|ETD'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'ETA'
        Footers = <>
        Title.Caption = 'ETA|ETA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'SHIPPING'
        Footers = <>
        Title.Caption = #36939#36664'|SHIPPING'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Footers = <>
        Title.Caption = #24288#21830'|ZSJC'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SHIP_BY_USER'
        Footers = <>
        Title.Caption = #20986#36008#20154'|SHIP_BY_USER'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'SHIP_TO_USERID'
        Footers = <>
        Title.Caption = 'NAME|SHIP_TO_USERID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'REC_DOCS'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'Arrival_Notice_Date'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'Actual_ETA'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Application_DO'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'DO_Amount'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Acc_Paid_Do'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'TK_Date'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'Application_TAX'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Tax_Amount'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Acc_Paid_Tax'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'Arr_Truck_trailer'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Truck_Ton'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'Arrival_fty'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Annex'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Red_Invoice_Return_To_Fty'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 202
      end
      item
        EditButtons = <>
        FieldName = 'Acc_Dept_Receipt_Red_Invoice'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'Customs_Acc'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = False
        Width = 105
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 60
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 94
      end>
  end
  object Database: TDatabase
    AliasName = 'LTX_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=sa'
      'password=jack')
    SessionName = 'Default'
    OnLogin = DatabaseLogin
    Left = 224
    Top = 224
  end
  object UpMatINVOICE: TUpdateSQL
    ModifySQL.Strings = (
      'update Mat_INVOICE'
      'set  '
      '  SHIP_TO_USERID = :SHIP_TO_USERID,'
      '  REC_DOCS = :REC_DOCS,'
      '  Arrival_Notice_Date = :Arrival_Notice_Date,'
      '  Actual_ETA = :Actual_ETA,'
      '  Application_DO = :Application_DO,'
      '  DO_Amount = :DO_Amount,'
      '  Acc_Paid_Do = :Acc_Paid_Do,'
      '  TK_Date = :TK_Date,'
      '  Application_TAX = :Application_TAX,'
      '  Tax_Amount = :Tax_Amount,'
      '  Acc_Paid_Tax = :Acc_Paid_Tax,'
      '  Arr_Truck_trailer = :Arr_Truck_trailer,'
      '  Truck_Ton = :Truck_Ton,'
      '  Arrival_fty = :Arrival_fty,'
      '  Annex = :Annex,'
      '  Red_Invoice_Return_To_Fty = :Red_Invoice_Return_To_Fty,'
      '  Acc_Dept_Receipt_Red_Invoice = :Acc_Dept_Receipt_Red_Invoice,'
      '  Customs_Acc = :Customs_Acc,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'where'
      '  INV_NO = :OLD_INV_NO and  '
      '  INV_Mat = :OLD_INV_Mat '
      '  ')
    InsertSQL.Strings = (
      'Insert into Mat_INVOICE'
      
        '  (INV_DATE, INV_NO, BL_NO, Qty, INV_Mat, SHIP_BY, ETD, ETA, SHI' +
        'PPING, ZSJC, SHIP_BY_USER, SHIP_TO_USERID, UserID, UserDate, YN)'
      'values'
      
        '  (:INV_DATE, :INV_NO, :BL_NO, :Qty, :INV_Mat, :SHIP_BY, :ETD, :' +
        'ETA, :SHIPPING, :ZSJC, :SHIP_BY_USER, :SHIP_TO_USERID, :UserID, ' +
        ':UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from  Mat_INVOICE'
      'where'
      '  INV_NO = :OLD_INV_NO and  '
      '  INV_Mat = :OLD_INV_Mat ')
    Left = 288
    Top = 256
  end
  object MatINVOICE: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *from LIY_TYXUAN.dbo.Mat_INVOICE')
    UpdateObject = UpMatINVOICE
    Left = 288
    Top = 224
    object MatINVOICEINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object MatINVOICEINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEBL_NO: TStringField
      FieldName = 'BL_NO'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEQty: TStringField
      FieldName = 'Qty'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEINV_Mat: TStringField
      FieldName = 'INV_Mat'
      FixedChar = True
      Size = 15
    end
    object MatINVOICESHIP_BY: TStringField
      FieldName = 'SHIP_BY'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEETD: TDateTimeField
      FieldName = 'ETD'
    end
    object MatINVOICEETA: TDateTimeField
      FieldName = 'ETA'
    end
    object MatINVOICESHIPPING: TStringField
      FieldName = 'SHIPPING'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object MatINVOICESHIP_BY_USER: TStringField
      FieldName = 'SHIP_BY_USER'
      FixedChar = True
      Size = 15
    end
    object MatINVOICESHIP_TO_USERID: TStringField
      FieldName = 'SHIP_TO_USERID'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEREC_DOCS: TStringField
      FieldName = 'REC_DOCS'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEArrival_Notice_Date: TStringField
      FieldName = 'Arrival_Notice_Date'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEActual_ETA: TStringField
      FieldName = 'Actual_ETA'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEApplication_DO: TStringField
      FieldName = 'Application_DO'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEDO_Amount: TStringField
      FieldName = 'DO_Amount'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEAcc_Paid_Do: TStringField
      FieldName = 'Acc_Paid_Do'
      FixedChar = True
      Size = 15
    end
    object MatINVOICETK_Date: TStringField
      FieldName = 'TK_Date'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEApplication_TAX: TStringField
      FieldName = 'Application_TAX'
      FixedChar = True
      Size = 15
    end
    object MatINVOICETax_Amount: TStringField
      FieldName = 'Tax_Amount'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEAcc_Paid_Tax: TStringField
      FieldName = 'Acc_Paid_Tax'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEArr_Truck_trailer: TStringField
      FieldName = 'Arr_Truck_trailer'
      FixedChar = True
      Size = 15
    end
    object MatINVOICETruck_Ton: TStringField
      FieldName = 'Truck_Ton'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEArrival_fty: TStringField
      FieldName = 'Arrival_fty'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEAnnex: TStringField
      FieldName = 'Annex'
      FixedChar = True
      Size = 15
    end
    object MatINVOICERed_Invoice_Return_To_Fty: TStringField
      FieldName = 'Red_Invoice_Return_To_Fty'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEAcc_Dept_Receipt_Red_Invoice: TStringField
      FieldName = 'Acc_Dept_Receipt_Red_Invoice'
      FixedChar = True
      Size = 15
    end
    object MatINVOICECustoms_Acc: TStringField
      FieldName = 'Customs_Acc'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object MatINVOICEUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object MatINVOICEYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object Mat_INVOICE: TDataSource
    DataSet = MatINVOICE
    Left = 288
    Top = 192
  end
  object OpenDialog: TOpenDialog
    Filter = 'xls|*.XLS|*.XLSX'
    Left = 356
    Top = 16
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 224
  end
end
