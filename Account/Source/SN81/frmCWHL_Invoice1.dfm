object frmCWHL_Invoice: TfrmCWHL_Invoice
  Left = 494
  Top = 193
  Width = 730
  Height = 505
  Caption = 'CWHL Invoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 259
      Top = 19
      Width = 53
      Height = 16
      Caption = 'ShipDate'
    end
    object Ins_CWHL_Invoice: TBitBtn
      Left = 0
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Insert'
      Enabled = False
      TabOrder = 0
      OnClick = Ins_CWHL_InvoiceClick
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
    object Mod_CWHL_Invoice: TBitBtn
      Left = 48
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Modify'
      Enabled = False
      TabOrder = 1
      OnClick = Mod_CWHL_InvoiceClick
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
    object Del_CWHL_Invoice: TBitBtn
      Left = 96
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Delete'
      Enabled = False
      TabOrder = 2
      OnClick = Del_CWHL_InvoiceClick
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
    object Sav_CWHL_Invoice: TBitBtn
      Left = 144
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Save'
      Enabled = False
      TabOrder = 3
      OnClick = Sav_CWHL_InvoiceClick
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
    object Can_CWHL_Invoice: TBitBtn
      Left = 192
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Cancel'
      Enabled = False
      TabOrder = 4
      OnClick = Can_CWHL_InvoiceClick
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
    object Que_CWHL_Invoice: TBitBtn
      Left = 504
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Que_CWHL_InvoiceClick
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
      NumGlyphs = 2
    end
    object DTP1: TDateTimePicker
      Left = 321
      Top = 15
      Width = 90
      Height = 24
      Date = 44629.633245405090000000
      Time = 44629.633245405090000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 411
      Top = 15
      Width = 90
      Height = 24
      Date = 44629.633245405090000000
      Time = 44629.633245405090000000
      TabOrder = 7
    end
  end
  object DB_CWHL_Invoice: TDBGridEh
    Left = 0
    Top = 49
    Width = 714
    Height = 417
    Align = alClient
    DataSource = DS_CWHL_Invoice
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnGetCellParams = DB_CWHL_InvoiceGetCellParams
    Columns = <
      item
        ButtonStyle = cbsNone
        Color = 11796479
        EditButtons = <>
        FieldName = 'InvoiceDate'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'ShipDate'
        Title.TitleButton = True
        Width = 100
      end
      item
        DisplayFormat = '#,#'
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.TitleButton = True
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User ID'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Title.TitleButton = True
        Width = 70
      end>
  end
  object Qry_CWHL_Invoice: TQuery
    AfterOpen = Qry_CWHL_InvoiceAfterOpen
    BeforeClose = Qry_CWHL_InvoiceBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT InvoiceDate, CWHL, UserID, UserDate, '#39'1'#39' YN'
      'FROM CWHL_Invoice'
      'WHERE 1=2')
    UpdateObject = Up_CWHL_Invoice
    Left = 200
    Top = 200
    object Qry_CWHL_InvoiceInvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object Qry_CWHL_InvoiceCWHL: TIntegerField
      FieldName = 'CWHL'
    end
    object Qry_CWHL_InvoiceUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object Qry_CWHL_InvoiceUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Qry_CWHL_InvoiceYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_CWHL_Invoice: TDataSource
    DataSet = Qry_CWHL_Invoice
    Left = 200
    Top = 168
  end
  object Up_CWHL_Invoice: TUpdateSQL
    ModifySQL.Strings = (
      'update CWHL_Invoice'
      'set'
      '  InvoiceDate = :InvoiceDate,'
      '  CWHL = :CWHL,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'where'
      '  InvoiceDate = :OLD_InvoiceDate')
    InsertSQL.Strings = (
      'insert into CWHL_Invoice'
      '  (InvoiceDate, CWHL, UserID, UserDate)'
      'values'
      '  (:InvoiceDate, :CWHL, :UserID, GETDATE())')
    DeleteSQL.Strings = (
      'delete from CWHL_Invoice'
      'where'
      '  InvoiceDate = :OLD_InvoiceDate')
    Left = 200
    Top = 232
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 168
    Top = 200
  end
end
