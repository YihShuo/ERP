object IncomeMatRubberOutsoles: TIncomeMatRubberOutsoles
  Left = 251
  Top = 195
  Width = 1305
  Height = 675
  Caption = 'IncomeMatRubberOutsoles'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 200
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 72
      Width = 51
      Height = 20
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 488
      Top = 40
      Width = 62
      Height = 20
      Caption = 'Supplier:'
    end
    object Label3: TLabel
      Left = 488
      Top = 72
      Width = 70
      Height = 20
      Caption = 'ReportID:'
    end
    object Label5: TLabel
      Left = 8
      Top = 72
      Width = 39
      Height = 20
      Caption = 'Style:'
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 105
      Height = 20
      Caption = 'Total order qty:'
    end
    object Label7: TLabel
      Left = 272
      Top = 40
      Width = 48
      Height = 20
      Caption = 'MatID:'
    end
    object Label8: TLabel
      Left = 256
      Top = 104
      Width = 95
      Height = 20
      Caption = 'Received qty:'
    end
    object Label9: TLabel
      Left = 488
      Top = 104
      Width = 37
      Height = 20
      Caption = 'SKU:'
    end
    object BB1: TBitBtn
      Left = 0
      Top = 144
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      Left = 48
      Top = 144
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      Left = 96
      Top = 144
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 144
      Top = 144
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
      Left = 192
      Top = 144
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
      Left = 240
      Top = 144
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
      Left = 707
      Top = 89
      Width = 81
      Height = 33
      Caption = 'Search'
      TabOrder = 0
      OnClick = Button1Click
    end
    object bbt6: TBitBtn
      Left = 440
      Top = 144
      Width = 81
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Import Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
    object edtDDBH: TEdit
      Left = 360
      Top = 72
      Width = 121
      Height = 28
      TabOrder = 8
    end
    object bExcel: TBitBtn
      Left = 520
      Top = 144
      Width = 57
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
      TabOrder = 9
      OnClick = bExcelClick
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
    object bExF: TBitBtn
      Left = 576
      Top = 144
      Width = 113
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel/PDF Format'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = bExFClick
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
    object cbPDF: TCheckBox
      Left = 704
      Top = 144
      Width = 57
      Height = 17
      Caption = 'PDF'
      TabOrder = 11
    end
    object edtZSBH: TEdit
      Left = 568
      Top = 40
      Width = 121
      Height = 28
      TabOrder = 12
    end
    object ckUSERDate: TCheckBox
      Left = 8
      Top = 8
      Width = 105
      Height = 17
      Caption = 'USERDate:'
      TabOrder = 13
    end
    object dtpUSERDate: TDateTimePicker
      Left = 128
      Top = 8
      Width = 113
      Height = 28
      Date = 45973.457989131940000000
      Time = 45973.457989131940000000
      TabOrder = 14
    end
    object MenuCode: TEdit
      Left = 920
      Top = 152
      Width = 121
      Height = 28
      ReadOnly = True
      TabOrder = 15
      Text = 'MenuCode'
      Visible = False
    end
    object edtRID: TEdit
      Left = 568
      Top = 72
      Width = 121
      Height = 28
      TabOrder = 16
    end
    object dtpInsDate: TDateTimePicker
      Left = 152
      Top = 40
      Width = 113
      Height = 28
      Date = 45981.575782071760000000
      Time = 45981.575782071760000000
      TabOrder = 17
    end
    object edtStyle: TEdit
      Left = 120
      Top = 72
      Width = 121
      Height = 28
      TabOrder = 18
    end
    object edtTOQty: TEdit
      Left = 120
      Top = 104
      Width = 121
      Height = 28
      TabOrder = 19
    end
    object edtMatID: TEdit
      Left = 360
      Top = 40
      Width = 121
      Height = 28
      TabOrder = 20
    end
    object edtRQty: TEdit
      Left = 360
      Top = 104
      Width = 121
      Height = 28
      TabOrder = 21
    end
    object edtSKU: TEdit
      Left = 568
      Top = 104
      Width = 121
      Height = 28
      TabOrder = 22
    end
    object btClear: TButton
      Left = 704
      Top = 48
      Width = 83
      Height = 33
      Caption = 'Clear'
      TabOrder = 23
      OnClick = btClearClick
    end
    object ckInsDate: TCheckBox
      Left = 8
      Top = 40
      Width = 137
      Height = 17
      Caption = 'Inspection date:'
      TabOrder = 24
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 200
    Width = 1289
    Height = 436
    Align = alClient
    DataSource = DS1
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ReportID'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'InspecDate'
        Footers = <>
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 157
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'TOderQty'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'RQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TArrQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'IQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LHard'
        Footers = <>
        Title.Caption = 'Hardness|LHard'
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'RHard'
        Footers = <>
        Title.Caption = 'Hardness|RHard'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'SHard'
        Footers = <>
        Title.Caption = 'Hardness|SHard'
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'LWeight'
        Footers = <>
        Title.Caption = 'Weight|LWeight'
      end
      item
        EditButtons = <>
        FieldName = 'RWeight'
        Footers = <>
        Title.Caption = 'Weight|RWeight'
      end
      item
        EditButtons = <>
        FieldName = 'SWeight'
        Footers = <>
        Title.Caption = 'Weight|SWeight'
      end
      item
        EditButtons = <>
        FieldName = 'Issues'
        Footers = <>
        Title.Caption = 'Appearance|Issues'
      end
      item
        EditButtons = <>
        FieldName = 'DeQty'
        Footers = <>
        Title.Caption = 'Appearance|DeQty'
      end
      item
        EditButtons = <>
        FieldName = 'DeRate'
        Footers = <>
        Title.Caption = 'Appearance|DeRate'
      end
      item
        EditButtons = <>
        FieldName = 'WPLLen'
        Footers = <>
        Title.Caption = 'Wooden pattern|WPLLen'
      end
      item
        EditButtons = <>
        FieldName = 'WPRLen'
        Footers = <>
        Title.Caption = 'Wooden pattern|WPRLen'
      end
      item
        EditButtons = <>
        FieldName = 'WPLSize'
        Footers = <>
        Title.Caption = 'Wooden pattern|WPLSize'
      end
      item
        EditButtons = <>
        FieldName = 'WPRSize'
        Footers = <>
        Title.Caption = 'Wooden pattern|WPRSize'
      end
      item
        EditButtons = <>
        FieldName = 'SendDate'
        Footers = <>
        Title.Caption = 'LabTest|SendDate'
      end
      item
        EditButtons = <>
        FieldName = 'LabID'
        Footers = <>
        Title.Caption = 'LabTest|LabID'
      end
      item
        EditButtons = <>
        FieldName = 'LabResult'
        Footers = <>
        Title.Caption = 'LabTest|LabResult'
      end
      item
        EditButtons = <>
        FieldName = 'Reject'
        Footers = <>
        Title.Caption = 'LabTest|Reject'
      end
      item
        EditButtons = <>
        FieldName = 'SCFID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SCFDate'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'LCFID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LCFDate'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'MSCFID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MSCFDate'
        Footers = <>
        ReadOnly = True
      end>
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from QC_RubSole where 1=2')
    UpdateObject = UpSQL1
    Left = 448
    Top = 400
    object Query1ReportID: TAutoIncField
      FieldName = 'ReportID'
    end
    object Query1InspecDate: TDateTimeField
      FieldName = 'InspecDate'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
    end
    object Query1Supplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 30
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 30
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 30
    end
    object Query1TOderQty: TIntegerField
      FieldName = 'TOderQty'
    end
    object Query1RQty: TIntegerField
      FieldName = 'RQty'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 30
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      FixedChar = True
    end
    object Query1TArrQty: TIntegerField
      FieldName = 'TArrQty'
    end
    object Query1IQty: TIntegerField
      FieldName = 'IQty'
    end
    object Query1LHard: TStringField
      FieldName = 'LHard'
      FixedChar = True
    end
    object Query1RHard: TStringField
      FieldName = 'RHard'
      FixedChar = True
    end
    object Query1SHard: TStringField
      FieldName = 'SHard'
      FixedChar = True
    end
    object Query1LWeight: TStringField
      FieldName = 'LWeight'
      FixedChar = True
    end
    object Query1RWeight: TStringField
      FieldName = 'RWeight'
      FixedChar = True
    end
    object Query1SWeight: TStringField
      FieldName = 'SWeight'
      FixedChar = True
    end
    object Query1Issues: TStringField
      FieldName = 'Issues'
      FixedChar = True
    end
    object Query1DeQty: TIntegerField
      FieldName = 'DeQty'
    end
    object Query1DeRate: TFloatField
      FieldName = 'DeRate'
    end
    object Query1WPLLen: TIntegerField
      FieldName = 'WPLLen'
    end
    object Query1WPRLen: TIntegerField
      FieldName = 'WPRLen'
    end
    object Query1WPLSize: TIntegerField
      FieldName = 'WPLSize'
    end
    object Query1WPRSize: TIntegerField
      FieldName = 'WPRSize'
    end
    object Query1SendDate: TDateTimeField
      FieldName = 'SendDate'
    end
    object Query1LabID: TStringField
      FieldName = 'LabID'
      FixedChar = True
    end
    object Query1LabResult: TStringField
      FieldName = 'LabResult'
      FixedChar = True
    end
    object Query1Reject: TStringField
      FieldName = 'Reject'
      FixedChar = True
    end
    object Query1SCFID: TStringField
      FieldName = 'SCFID'
      FixedChar = True
    end
    object Query1SCFDate: TDateTimeField
      FieldName = 'SCFDate'
    end
    object Query1LCFID: TStringField
      FieldName = 'LCFID'
      FixedChar = True
    end
    object Query1LCFDate: TDateTimeField
      FieldName = 'LCFDate'
    end
    object Query1MSCFID: TStringField
      FieldName = 'MSCFID'
      FixedChar = True
    end
    object Query1MSCFDate: TDateTimeField
      FieldName = 'MSCFDate'
    end
    object Query1YN: TIntegerField
      FieldName = 'YN'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 400
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update QC_RubSole'
      'set'
      '  ReportID = :ReportID,'
      '  InspecDate = :InspecDate,'
      '  CLBH = :CLBH,'
      '  Supplier = :Supplier,'
      '  XieMing = :XieMing,'
      '  DDBH = :DDBH,'
      '  TOderQty = :TOderQty,'
      '  RQty = :RQty,'
      '  Article = :Article,'
      '  Size = :Size,'
      '  TArrQty = :TArrQty,'
      '  IQty = :IQty,'
      '  LHard = :LHard,'
      '  RHard = :RHard,'
      '  SHard = :SHard,'
      '  LWeight = :LWeight,'
      '  RWeight = :RWeight,'
      '  SWeight = :SWeight,'
      '  Issues = :Issues,'
      '  DeQty = :DeQty,'
      '  DeRate = :DeRate,'
      '  WPLLen = :WPLLen,'
      '  WPRLen = :WPRLen,'
      '  WPLSize = :WPLSize,'
      '  WPRSize = :WPRSize,'
      '  SendDate = :SendDate,'
      '  LabID = :LabID,'
      '  LabResult = :LabResult,'
      '  Reject = :Reject,'
      '  SCFID = :SCFID,'
      '  SCFDate = :SCFDate,'
      '  LCFID = :LCFID,'
      '  LCFDate = :LCFDate,'
      '  MSCFID = :MSCFID,'
      '  MSCFDate = :MSCFDate,'
      '  YN = :YN,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate'
      'where'
      '  ReportID = :OLD_ReportID and'
      '  InspecDate = :OLD_InspecDate and'
      '  CLBH = :OLD_CLBH and'
      '  Supplier = :OLD_Supplier and'
      '  XieMing = :OLD_XieMing and'
      '  DDBH = :OLD_DDBH and'
      '  TOderQty = :OLD_TOderQty and'
      '  RQty = :OLD_RQty and'
      '  Article = :OLD_Article and'
      '  Size = :OLD_Size and'
      '  TArrQty = :OLD_TArrQty and'
      '  IQty = :OLD_IQty and'
      '  LHard = :OLD_LHard and'
      '  RHard = :OLD_RHard and'
      '  SHard = :OLD_SHard and'
      '  LWeight = :OLD_LWeight and'
      '  RWeight = :OLD_RWeight and'
      '  SWeight = :OLD_SWeight and'
      '  Issues = :OLD_Issues and'
      '  DeQty = :OLD_DeQty and'
      '  DeRate = :OLD_DeRate and'
      '  WPLLen = :OLD_WPLLen and'
      '  WPRLen = :OLD_WPRLen and'
      '  WPLSize = :OLD_WPLSize and'
      '  WPRSize = :OLD_WPRSize and'
      '  SendDate = :OLD_SendDate and'
      '  LabID = :OLD_LabID and'
      '  LabResult = :OLD_LabResult and'
      '  Reject = :OLD_Reject and'
      '  SCFID = :OLD_SCFID and'
      '  SCFDate = :OLD_SCFDate and'
      '  LCFID = :OLD_LCFID and'
      '  LCFDate = :OLD_LCFDate and'
      '  MSCFID = :OLD_MSCFID and'
      '  MSCFDate = :OLD_MSCFDate and'
      '  YN = :OLD_YN and'
      '  USERID = :OLD_USERID and'
      '  USERDate = :OLD_USERDate')
    InsertSQL.Strings = (
      'insert into QC_RubSole'
      
        '  (ReportID, InspecDate, CLBH, Supplier, XieMing, DDBH, TOderQty' +
        ', RQty, '
      
        '   Article, Size, TArrQty, IQty, LHard, RHard, SHard, LWeight, R' +
        'Weight, '
      
        '   SWeight, Issues, DeQty, DeRate, WPLLen, WPRLen, WPLSize, WPRS' +
        'ize, SendDate, '
      
        '   LabID, LabResult, Reject, SCFID, SCFDate, LCFID, LCFDate, MSC' +
        'FID, MSCFDate, '
      '   YN, USERID, USERDate)'
      'values'
      
        '  (:ReportID, :InspecDate, :CLBH, :Supplier, :XieMing, :DDBH, :T' +
        'OderQty, '
      
        '   :RQty, :Article, :Size, :TArrQty, :IQty, :LHard, :RHard, :SHa' +
        'rd, :LWeight, '
      
        '   :RWeight, :SWeight, :Issues, :DeQty, :DeRate, :WPLLen, :WPRLe' +
        'n, :WPLSize, '
      
        '   :WPRSize, :SendDate, :LabID, :LabResult, :Reject, :SCFID, :SC' +
        'FDate, '
      
        '   :LCFID, :LCFDate, :MSCFID, :MSCFDate, :YN, :USERID, :USERDate' +
        ')')
    DeleteSQL.Strings = (
      'delete from QC_RubSole'
      'where'
      '  ReportID = :OLD_ReportID and'
      '  InspecDate = :OLD_InspecDate and'
      '  CLBH = :OLD_CLBH and'
      '  Supplier = :OLD_Supplier and'
      '  XieMing = :OLD_XieMing and'
      '  DDBH = :OLD_DDBH and'
      '  TOderQty = :OLD_TOderQty and'
      '  RQty = :OLD_RQty and'
      '  Article = :OLD_Article and'
      '  Size = :OLD_Size and'
      '  TArrQty = :OLD_TArrQty and'
      '  IQty = :OLD_IQty and'
      '  LHard = :OLD_LHard and'
      '  RHard = :OLD_RHard and'
      '  SHard = :OLD_SHard and'
      '  LWeight = :OLD_LWeight and'
      '  RWeight = :OLD_RWeight and'
      '  SWeight = :OLD_SWeight and'
      '  Issues = :OLD_Issues and'
      '  DeQty = :OLD_DeQty and'
      '  DeRate = :OLD_DeRate and'
      '  WPLLen = :OLD_WPLLen and'
      '  WPRLen = :OLD_WPRLen and'
      '  WPLSize = :OLD_WPLSize and'
      '  WPRSize = :OLD_WPRSize and'
      '  SendDate = :OLD_SendDate and'
      '  LabID = :OLD_LabID and'
      '  LabResult = :OLD_LabResult and'
      '  Reject = :OLD_Reject and'
      '  SCFID = :OLD_SCFID and'
      '  SCFDate = :OLD_SCFDate and'
      '  LCFID = :OLD_LCFID and'
      '  LCFDate = :OLD_LCFDate and'
      '  MSCFID = :OLD_MSCFID and'
      '  MSCFDate = :OLD_MSCFDate and'
      '  YN = :OLD_YN and'
      '  USERID = :OLD_USERID and'
      '  USERDate = :OLD_USERDate')
    Left = 528
    Top = 400
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 400
  end
  object OpenDialog1: TOpenDialog
    Left = 832
    Top = 160
  end
  object SaveDialog: TSaveDialog
    Left = 832
    Top = 120
  end
  object QGetID: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 400
  end
end
