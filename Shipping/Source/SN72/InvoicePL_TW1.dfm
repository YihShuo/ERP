object InvoicePL_TW: TInvoicePL_TW
  Left = 361
  Top = 150
  Width = 1303
  Height = 616
  Caption = 'InvoicePL_TW'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inv No.'
    end
    object Label2: TLabel
      Left = 180
      Top = 12
      Width = 9
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 256
      Top = 35
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CON_No.'
    end
    object INV_NOEdit: TEdit
      Left = 88
      Top = 32
      Width = 161
      Height = 24
      Color = cl3DLight
      TabOrder = 0
    end
    object Button1: TButton
      Left = 456
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object chkIndate: TCheckBox
      Left = 16
      Top = 8
      Width = 66
      Height = 17
      Caption = 'Inv Date'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 6
      Width = 89
      Height = 24
      Date = 41898.327956631950000000
      Format = 'yyyy/MM/dd'
      Time = 41898.327956631950000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 192
      Top = 6
      Width = 89
      Height = 24
      Date = 41898.327956631950000000
      Format = 'yyyy/MM/dd'
      Time = 41898.327956631950000000
      TabOrder = 4
    end
    object CON_NOEdit: TEdit
      Left = 324
      Top = 30
      Width = 121
      Height = 24
      TabOrder = 5
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 65
    Width = 1287
    Height = 50
    Align = alTop
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnInsert: TBitBtn
      Left = 0
      Top = 0
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
      TabOrder = 0
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
    object btndelete: TBitBtn
      Left = 48
      Top = 0
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
      TabOrder = 1
      OnClick = btndeleteClick
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
    object btnModify: TBitBtn
      Left = 96
      Top = 0
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
      TabOrder = 2
      OnClick = btnModifyClick
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
    object btnSave: TBitBtn
      Left = 144
      Top = 0
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
      TabOrder = 3
      OnClick = btnSaveClick
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
    object btnCancel: TBitBtn
      Left = 192
      Top = 0
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
      TabOrder = 4
      OnClick = btnCancelClick
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
    object btnexit: TBitBtn
      Left = 240
      Top = 0
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
      TabOrder = 5
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
    object btnExcel: TBitBtn
      Left = 391
      Top = 0
      Width = 66
      Height = 49
      Hint = 'Modify Current'
      Caption = 'P/L Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnExcelClick
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 115
    Width = 1287
    Height = 142
    Align = alTop
    AllowedOperations = [alopUpdateEh]
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
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    VTitleMargin = 0
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'INV_NO'
        Footer.FieldName = 'INV_NO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'INV_DATE'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'CON_NO'
        Footers = <>
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'CURRENCY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RISK'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SHIP_BY'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'FROM_WHERE'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'TO_WHERE'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'DESC_GOODS'
        Footers = <>
        PickList.Strings = (
          'RAW MATERIAL OF SHOES'
          'MACHINE & PARTS FOR MAKING SHOES')
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 76
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 257
    Width = 1287
    Height = 319
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'All'
      object Splitter3: TSplitter
        Left = 521
        Top = 0
        Height = 288
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 288
        Align = alLeft
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 26
          Width = 519
          Height = 261
          Align = alClient
          DataSource = DS2
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
          FrozenCols = 3
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'XH'
              Footers = <>
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'clpm'
              Footer.FieldName = 'clpm'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Name'
              Width = 136
            end
            item
              EditButtons = <>
              FieldName = 'madein'
              Footers = <>
              Title.Caption = 'Made'
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'dwbh'
              Footers = <>
              Title.Caption = 'Unit'
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'UNIT_PRICE'
              Footers = <>
              Title.Caption = 'Price'
            end
            item
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footer.FieldName = 'AMOUNT'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Amount'
            end
            item
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              Width = 49
            end
            item
              DisplayFormat = 'YYYY/MM/DD'
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
            end>
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 519
          Height = 25
          Align = alTop
          Caption = 'Invoice Detail'
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        Left = 524
        Top = 0
        Width = 755
        Height = 288
        Align = alClient
        TabOrder = 1
        object Splitter4: TSplitter
          Left = 1
          Top = 26
          Width = 753
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 29
          Width = 753
          Height = 258
          Align = alClient
          DataSource = DS3
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
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'clpm'
              Footer.FieldName = 'clpm'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Name'
              Width = 162
            end
            item
              EditButtons = <>
              FieldName = 'NO_SE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CTN'
              Footer.FieldName = 'CTN'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'NW'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'GW'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'TNW'
              Footer.FieldName = 'TNW'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'TGW'
              Footer.FieldName = 'TGW'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              Width = 82
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 753
          Height = 25
          Align = alTop
          Caption = 'Packing List'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from INVOICE_M_TW')
    UpdateObject = UpdateSQL1
    Left = 272
    Top = 144
    object Query1INV_NO: TStringField
      DisplayWidth = 6
      FieldName = 'INV_NO'
      Origin = 'DB.INVOICE_M_TW.INV_NO'
      FixedChar = True
      Size = 30
    end
    object Query1INV_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'INV_DATE'
      Origin = 'DB.INVOICE_M_TW.INV_DATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CON_NO: TStringField
      FieldName = 'CON_NO'
      Origin = 'DB.INVOICE_M_TW.CURRENCY'
      FixedChar = True
    end
    object Query1CURRENCY: TStringField
      DisplayWidth = 7
      FieldName = 'CURRENCY'
      Origin = 'DB.INVOICE_M_TW.CURRENCY'
      FixedChar = True
      Size = 10
    end
    object Query1RISK: TStringField
      DisplayWidth = 22
      FieldName = 'RISK'
      Origin = 'DB.INVOICE_M_TW.RISK'
      FixedChar = True
      Size = 50
    end
    object Query1SHIP_BY: TStringField
      DisplayWidth = 50
      FieldName = 'SHIP_BY'
      Origin = 'DB.INVOICE_M_TW.SHIP_BY'
      FixedChar = True
      Size = 50
    end
    object Query1FROM_WHERE: TStringField
      DisplayWidth = 50
      FieldName = 'FROM_WHERE'
      Origin = 'DB.INVOICE_M_TW.FROM_WHERE'
      FixedChar = True
      Size = 50
    end
    object Query1TO_WHERE: TStringField
      DisplayWidth = 50
      FieldName = 'TO_WHERE'
      Origin = 'DB.INVOICE_M_TW.TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object Query1DESC_GOODS: TStringField
      FieldName = 'DESC_GOODS'
      Origin = 'DB.INVOICE_M_TW.DESC_GOODS'
      FixedChar = True
      Size = 30
    end
    object Query1USERID: TStringField
      DisplayWidth = 10
      FieldName = 'USERID'
      Origin = 'DB.INVOICE_M_TW.USERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'USERDATE'
      Origin = 'DB.INVOICE_M_TW.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YN: TStringField
      DisplayWidth = 1
      FieldName = 'YN'
      Origin = 'DB.INVOICE_M_TW.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 176
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'Select clpm,Sum(Qty) as Qty,max(madein) as madein,max(dwbh) as d' +
        'wbh,max(UNIT_PRICE) as UNIT_PRICE,Sum(AMOUNT) as AMOUNT, Max(Use' +
        'rID) as UserID,Max(UserDate) as UserDate, Max(YN) as YN '
      
        '       ,ROW_NUMBER() over ( ORDER BY Max(INVOICE_D_TW.XH) asc) a' +
        's XH'
      'from INVOICE_D_TW'
      'where INVOICE_D_TW.INV_NO=:INV_NO'
      'Group by INVOICE_D_TW.clpm'
      'order by Max(INVOICE_D_TW.XH)')
    Left = 248
    Top = 409
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object Query2clpm: TStringField
      FieldName = 'clpm'
      FixedChar = True
      Size = 200
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2madein: TStringField
      FieldName = 'madein'
      FixedChar = True
      Size = 30
    end
    object Query2dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query2UNIT_PRICE: TCurrencyField
      FieldName = 'UNIT_PRICE'
      DisplayFormat = '#0.00'
    end
    object Query2AMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
      DisplayFormat = '#0.00'
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2XH: TFloatField
      FieldName = 'XH'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 248
    Top = 441
  end
  object Query3: TQuery
    AfterOpen = Query3AfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select PACKING_TW.*,INVOICE_D_TW.clpm,INVOICE_D_TW.dwbh '
      'from PACKING_TW'
      
        'left join INVOICE_D_TW on INVOICE_D_TW.INV_NO=PACKING_TW.INV_NO ' +
        'and INVOICE_D_TW.CON_NO=PACKING_TW.CON_NO and INVOICE_D_TW.clbh=' +
        'PACKING_TW.clbh'
      'where PACKING_TW.INV_NO=:INV_NO'
      'order by INVOICE_D_TW.XH')
    UpdateObject = UpdateSQL2
    Left = 832
    Top = 377
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object Query3INV_NO: TStringField
      DisplayWidth = 8
      FieldName = 'INV_NO'
      Origin = 'DB.PACKING_TW.INV_NO'
      FixedChar = True
      Size = 30
    end
    object Query3CON_NO: TStringField
      DisplayWidth = 11
      FieldName = 'CON_NO'
      Origin = 'DB.PACKING_TW.CON_NO'
      FixedChar = True
    end
    object Query3clbh: TStringField
      DisplayWidth = 15
      FieldName = 'clbh'
      Origin = 'DB.PACKING_TW.clbh'
      FixedChar = True
      Size = 13
    end
    object Query3clpm: TStringField
      FieldName = 'clpm'
      Origin = 'DB.INVOICE_D_TW.clpm'
      FixedChar = True
      Size = 200
    end
    object Query3dwbh: TStringField
      FieldName = 'dwbh'
      Origin = 'DB.INVOICE_D_TW.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query3NO_SE: TStringField
      DisplayWidth = 9
      FieldName = 'NO_SE'
      Origin = 'DB.PACKING_TW.NO_SE'
      FixedChar = True
      Size = 10
    end
    object Query3CTN: TSmallintField
      FieldName = 'CTN'
      Origin = 'DB.PACKING_TW.Qty'
    end
    object Query3Qty: TFloatField
      DisplayWidth = 6
      FieldName = 'Qty'
      Origin = 'DB.PACKING_TW.Qty'
    end
    object Query3NW: TFloatField
      DisplayWidth = 6
      FieldName = 'NW'
      Origin = 'DB.PACKING_TW.NW'
    end
    object Query3GW: TFloatField
      DisplayWidth = 6
      FieldName = 'GW'
      Origin = 'DB.PACKING_TW.GW'
    end
    object Query3TNW: TFloatField
      DisplayWidth = 5
      FieldName = 'TNW'
      Origin = 'DB.PACKING_TW.TNW'
    end
    object Query3TGW: TFloatField
      DisplayWidth = 6
      FieldName = 'TGW'
      Origin = 'DB.PACKING_TW.TGW'
    end
    object Query3UserID: TStringField
      DisplayWidth = 6
      FieldName = 'UserID'
      Origin = 'DB.PACKING_TW.UserID'
      FixedChar = True
      Size = 10
    end
    object Query3UserDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UserDate'
      Origin = 'DB.PACKING_TW.UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3YN: TStringField
      DisplayWidth = 1
      FieldName = 'YN'
      Origin = 'DB.PACKING_TW.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 833
    Top = 349
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update INVOICE_M_TW'
      'SET'
      '   INV_DATE = :INV_DATE'
      '   ,RISK = :RISK'
      '   ,CURRENCY =:CURRENCY'
      '   ,SHIP_BY = :SHIP_BY'
      '   ,FROM_WHERE = :FROM_WHERE'
      '   ,TO_WHERE = :TO_WHERE'
      '   ,DESC_GOODS =:DESC_GOODS'
      '   ,USERID = :USERID'
      '   ,USERDATE =:USERDATE'
      'WHERE'
      '   INV_NO=:INV_NO ')
    DeleteSQL.Strings = (
      'Delete'
      'from INVOICE_M_TW'
      'WHERE INV_NO=:OLD_INV_NO')
    Left = 272
    Top = 209
  end
  object qrytemp1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'update INVOICE_M'
      'set'
      'CFM_USER = :CFM_USER,'
      'CFM_TIME = :CFM_TIME,'
      'CFMED = :CFMED'
      'where'
      'INV_NO = :INV_NO '
      '')
    Left = 240
    Top = 144
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CFM_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFM_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CFMED'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 752
    Top = 372
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
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
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'Update PACKING_TW'
      'SET'
      '   CTN =:CTN,'
      '   Qty =:Qty,'
      '   NW =:NW,'
      '   GW =:GW,'
      '   TNW =:TNW,'
      '   TGW =:TGW,'
      '   USERID =:USERID,'
      '   USERDATE =:USERDATE'
      'WHERE'
      '   INV_NO=:INV_NO  and'
      '   CON_NO =:CON_NO and'
      '   clbh =:clbh  and'
      '   NO_SE =:NO_SE')
    Left = 832
    Top = 428
  end
end
