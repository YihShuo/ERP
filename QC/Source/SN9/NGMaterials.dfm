object NGMaterial: TNGMaterial
  Left = 257
  Top = 177
  Width = 1624
  Height = 675
  Caption = 'NGMaterial'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn6: TBitBtn
    Left = 152
    Top = 8
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
    TabOrder = 0
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1608
    Height = 161
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 224
      Top = 72
      Width = 70
      Height = 20
      Caption = 'ReportID:'
    end
    object Label2: TLabel
      Left = 224
      Top = 112
      Width = 62
      Height = 20
      Caption = 'Supplier:'
    end
    object Label3: TLabel
      Left = 416
      Top = 112
      Width = 43
      Height = 20
      Caption = 'Issue:'
    end
    object Label4: TLabel
      Left = 420
      Top = 72
      Width = 51
      Height = 20
      Caption = 'DDBH:'
    end
    object Label6: TLabel
      Left = 960
      Top = 88
      Width = 94
      Height = 20
      Caption = 'DefectName:'
    end
    object Label5: TLabel
      Left = 600
      Top = 72
      Width = 47
      Height = 20
      Caption = 'CLBH:'
    end
    object Button1: TButton
      Left = 835
      Top = 89
      Width = 81
      Height = 33
      Caption = 'Search'
      TabOrder = 0
      OnClick = Button1Click
    end
    object edtRID: TEdit
      Left = 296
      Top = 72
      Width = 121
      Height = 28
      TabOrder = 1
    end
    object cbPDF: TCheckBox
      Left = 576
      Top = 24
      Width = 57
      Height = 17
      Caption = 'PDF'
      TabOrder = 2
    end
    object ckUSERDate: TCheckBox
      Left = 8
      Top = 72
      Width = 105
      Height = 17
      Caption = 'USERDate:'
      TabOrder = 3
    end
    object dtpUSERDate: TDateTimePicker
      Left = 120
      Top = 72
      Width = 105
      Height = 28
      Date = 45973.457989131940000000
      Time = 45973.457989131940000000
      TabOrder = 4
    end
    object MenuCode: TEdit
      Left = 776
      Top = 8
      Width = 121
      Height = 28
      ReadOnly = True
      TabOrder = 5
      Text = 'MenuCode'
      Visible = False
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
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
      TabOrder = 6
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
      Top = 8
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
      TabOrder = 7
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
      Top = 8
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
      TabOrder = 8
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
      Top = 8
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
      TabOrder = 9
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
      Top = 8
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
      TabOrder = 10
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
      Top = 8
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
      TabOrder = 11
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
    object bbt6: TBitBtn
      Left = 304
      Top = 8
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
      TabOrder = 12
      Visible = False
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
    object bExcel: TBitBtn
      Left = 384
      Top = 8
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
      TabOrder = 13
      Visible = False
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
      Left = 440
      Top = 8
      Width = 113
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel/PDF Format'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
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
    object ckInspecDate: TCheckBox
      Left = 8
      Top = 112
      Width = 113
      Height = 17
      Caption = 'InspecDate:'
      TabOrder = 15
    end
    object dtpInspecDate: TDateTimePicker
      Left = 120
      Top = 112
      Width = 105
      Height = 28
      Date = 46058.410904293980000000
      Time = 46058.410904293980000000
      TabOrder = 16
    end
    object edtSup: TEdit
      Left = 288
      Top = 112
      Width = 121
      Height = 28
      TabOrder = 17
    end
    object edtIssue: TEdit
      Left = 464
      Top = 112
      Width = 153
      Height = 28
      TabOrder = 18
    end
    object edtDDBH: TEdit
      Left = 472
      Top = 72
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 19
    end
    object DBMemo1: TDBMemo
      Left = 1056
      Top = 48
      Width = 409
      Height = 97
      DataField = 'DefectName'
      DataSource = DS1
      ScrollBars = ssVertical
      TabOrder = 20
    end
    object ckHideEx: TCheckBox
      Left = 576
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Hide Expired'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
    object edtCLBH: TEdit
      Left = 648
      Top = 72
      Width = 161
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 22
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 161
    Width = 1608
    Height = 475
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ReportID'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'RackLocation'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
        Width = 166
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 172
      end
      item
        EditButtons = <>
        FieldName = 'IsExpired'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'RDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'InspecDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DQty'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Issue'
        Footers = <>
        Width = 200
        OnEditButtonClick = DBGrid1Columns11EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'Brand'
        Footers = <>
        PickList.Strings = (
          'HOKA'
          'TEVA')
      end
      item
        EditButtons = <>
        FieldName = 'Result'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'PreparedID'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Visible = False
      end>
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from QC_NGMaterial'
      'where 1=2'
      '')
    UpdateObject = UpSQL1
    Left = 512
    Top = 216
    object Query1ReportID: TIntegerField
      FieldName = 'ReportID'
      Origin = 'DB.QC_NGMaterial.ReportID'
    end
    object Query1Supplier: TStringField
      FieldName = 'Supplier'
      Origin = 'DB.QC_NGMaterial.Supplier'
      FixedChar = True
      Size = 50
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.QC_NGMaterial.DDBH'
      FixedChar = True
      Size = 255
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.QC_NGMaterial.CLBH'
      FixedChar = True
      Size = 50
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.QC_NGMaterial.XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      Origin = 'DB.QC_NGMaterial.SKU'
      FixedChar = True
      Size = 50
    end
    object Query1RDate: TDateTimeField
      FieldName = 'RDate'
      Origin = 'DB.QC_NGMaterial.RDate'
    end
    object Query1InspecDate: TDateTimeField
      FieldName = 'InspecDate'
      Origin = 'DB.QC_NGMaterial.InspecDate'
    end
    object Query1Qty: TStringField
      FieldName = 'Qty'
      Origin = 'DB.QC_NGMaterial.Qty'
      FixedChar = True
    end
    object Query1DQty: TStringField
      FieldName = 'DQty'
      Origin = 'DB.QC_NGMaterial.DQty'
      FixedChar = True
    end
    object Query1Issue: TStringField
      FieldName = 'Issue'
      Origin = 'DB.QC_NGMaterial.Issue'
      FixedChar = True
      Size = 255
    end
    object Query1DefectName: TStringField
      FieldName = 'DefectName'
      Origin = 'DB.QC_NGMaterial.DefectName'
      FixedChar = True
      Size = 255
    end
    object Query1Brand: TStringField
      FieldName = 'Brand'
      Origin = 'DB.QC_NGMaterial.Brand'
      FixedChar = True
      Size = 10
    end
    object Query1Result: TStringField
      FieldName = 'Result'
      Origin = 'DB.QC_NGMaterial.Result'
      FixedChar = True
      Size = 100
    end
    object Query1PreparedID: TStringField
      FieldName = 'PreparedID'
      Origin = 'DB.QC_NGMaterial.ReportID'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.QC_NGMaterial.ReportID'
      FixedChar = True
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.QC_NGMaterial.ReportID'
    end
    object Query1YN: TIntegerField
      FieldName = 'YN'
      Origin = 'DB.QC_NGMaterial.ReportID'
    end
    object Query1IsExpired: TBooleanField
      FieldName = 'IsExpired'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 150
    end
    object Query1RackLocation: TStringField
      FieldName = 'RackLocation'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 560
    Top = 216
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update QC_NGMaterial'
      'set'
      '  ReportID = :ReportID,'
      '  RackLocation = :RackLocation,'
      '  Supplier = :Supplier,'
      '  DDBH = :DDBH,'
      '  CLBH = :CLBH,'
      '  XieMing = :XieMing,'
      '  SKU = :SKU,'
      '  RDate = :RDate,'
      '  InspecDate = :InspecDate,'
      '  Qty = :Qty,'
      '  DQty = :DQty,'
      '  Issue = :Issue,'
      '  DefectName = :DefectName,'
      '  Brand = :Brand,'
      '  Result = :Result,'
      '  PreparedID = :PreparedID,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate,'
      '  YN = :YN,'
      '  IsExpired = :IsExpired,'
      '  Remark = :Remark'
      'where'
      '  ReportID = :OLD_ReportID')
    InsertSQL.Strings = (
      'insert into QC_NGMaterial'
      
        '  (ReportID, RackLocation, Supplier, DDBH, CLBH, XieMing, SKU, R' +
        'Date, '
      'InspecDate, '
      
        '   Qty, DQty, Issue, DefectName, Brand, Result, PreparedID, USER' +
        'ID, USERDate, '
      '   YN, IsExpired, Remark)'
      'values'
      
        '  (:ReportID, :RackLocation, :Supplier, :DDBH, :CLBH, :XieMing, ' +
        ':SKU, :RDate, '
      
        '   :InspecDate, :Qty, :DQty, :Issue, :DefectName, :Brand, :Resul' +
        't, :PreparedID, '
      '   :USERID, :USERDate, :YN, :IsExpired, :Remark)')
    DeleteSQL.Strings = (
      'delete from QC_NGMaterial'
      'where'
      '  ReportID = :OLD_ReportID')
    Left = 608
    Top = 216
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 216
  end
  object OpenDialog1: TOpenDialog
    Left = 696
  end
  object SaveDialog: TSaveDialog
    Left = 648
    Top = 8
  end
  object QGetID: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 216
  end
  object QSig: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 216
  end
end
