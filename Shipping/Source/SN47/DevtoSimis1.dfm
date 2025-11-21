object DevtoSimis: TDevtoSimis
  Left = 518
  Top = 185
  Width = 1171
  Height = 512
  Caption = 'Develop to Simis'
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
  object PageControl3: TPageControl
    Left = 0
    Top = 0
    Width = 1163
    Height = 481
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = 'Import Data'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1155
        Height = 65
        Align = alTop
        TabOrder = 0
        object BD9: TButton
          Left = 376
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Import'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BD9Click
        end
        object BD7: TBitBtn
          Left = 305
          Top = 8
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
          TabOrder = 1
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
        object BD6: TBitBtn
          Left = 256
          Top = 8
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
          TabOrder = 2
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
        object BD5: TBitBtn
          Left = 208
          Top = 8
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
        object BD4: TBitBtn
          Left = 160
          Top = 8
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
          TabOrder = 4
          Visible = False
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
        object BD3: TBitBtn
          Left = 112
          Top = 8
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
          TabOrder = 5
          Visible = False
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
        object BD2: TBitBtn
          Left = 64
          Top = 8
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
          TabOrder = 6
          Visible = False
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
        object BD1: TBitBtn
          Left = 16
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BD1Click
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
      end
      object ImportPanel: TPanel
        Left = 0
        Top = 114
        Width = 1155
        Height = 336
        Align = alClient
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 1153
          Height = 334
          Align = alClient
          DataSource = ExcelDS_Pur
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'SERNO'
              Footers = <>
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'Ex_factoryDate'
              Footers = <>
              ReadOnly = True
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'ETD'
              Footers = <>
              ReadOnly = True
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'Customer_Account'
              Footers = <>
              ReadOnly = True
              Width = 142
            end
            item
              EditButtons = <>
              FieldName = 'SHIP_QTY'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'TL_FOB_Amount'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'UNIT_PRICE'
            end
            item
              EditButtons = <>
              FieldName = 'TL_VN_Amount'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Amount'
            end
            item
              EditButtons = <>
              FieldName = 'InvoiceNo'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'AWB'
              Footers = <>
              ReadOnly = True
            end>
        end
      end
      object Panel24: TPanel
        Left = 0
        Top = 65
        Width = 1155
        Height = 49
        Align = alTop
        TabOrder = 2
        Visible = False
        object Label18: TLabel
          Left = 24
          Top = 13
          Width = 38
          Height = 16
          Caption = 'YPDH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 200
          Top = 15
          Width = 39
          Height = 16
          Caption = 'PONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ponoEdit: TEdit
          Left = 246
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 0
        end
        object Button3: TButton
          Left = 423
          Top = 7
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object ypdhEdit: TEdit
          Left = 70
          Top = 11
          Width = 107
          Height = 24
          TabOrder = 2
        end
      end
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'dB'
    Left = 145
    Top = 342
  end
  object ExcelDS_Pur: TDataSource
    DataSet = FC_Pur
    Left = 179
    Top = 309
  end
  object FC_Pur: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from Devtosimis')
    UpdateObject = upFC_pur
    Left = 179
    Top = 341
    object FC_PurSERNO: TStringField
      FieldName = 'SERNO'
      FixedChar = True
      Size = 18
    end
    object FC_PurYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.DevtoSimis.YPDH'
      FixedChar = True
      Size = 15
    end
    object FC_PurCustomer_Account: TStringField
      FieldName = 'Customer_Account'
      Origin = 'DB.DevtoSimis.Customer_Account'
      FixedChar = True
      Size = 50
    end
    object FC_PurInvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      Origin = 'DB.DevtoSimis.InvoiceNo'
      FixedChar = True
    end
    object FC_PurAWB: TStringField
      FieldName = 'AWB'
      Origin = 'DB.DevtoSimis.AWB'
      FixedChar = True
      Size = 25
    end
    object FC_PurUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.DevtoSimis.UserID'
      FixedChar = True
    end
    object FC_PurUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.DevtoSimis.UserDate'
    end
    object FC_PurYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.DevtoSimis.YN'
      FixedChar = True
      Size = 1
    end
    object FC_PurEx_factoryDate: TStringField
      FieldName = 'Ex_factoryDate'
      FixedChar = True
    end
    object FC_PurETD: TStringField
      FieldName = 'ETD'
      FixedChar = True
    end
    object FC_PurSHIP_QTY: TFloatField
      FieldName = 'SHIP_QTY'
    end
    object FC_PurTL_FOB_Amount: TFloatField
      FieldName = 'TL_FOB_Amount'
    end
    object FC_PurTL_VN_Amount: TFloatField
      FieldName = 'TL_VN_Amount'
    end
  end
  object upFC_pur: TUpdateSQL
    ModifySQL.Strings = (
      'update DevtoSimis'
      'set'
      '        ShippingDate=:ShippingDate,'
      '        ShippingUserID=:ShippingUserID'
      'WHERE'
      '   YPDH=:OLD_YPDH AND'
      '   PONO=:OLD_PONO'
      '')
    InsertSQL.Strings = (
      'insert into DevtoSimis'
      
        '  (SERNO,YPDH,Ex_factoryDate,ETD,Customer_Account,SHIP_QTY,TL_FO' +
        'B_Amount,TL_VN_Amount,InvoiceNo,AWB,userid,userdate,YN)'
      'values'
      
        '  (:SERNO,:YPDH,:Ex_factoryDate,:ETD,:Customer_Account,:SHIP_QTY' +
        ',:TL_FOB_Amount,:TL_VN_Amount,:InvoiceNo,:AWB,:userid,:userdate,' +
        ':YN)'
      '')
    DeleteSQL.Strings = (
      'Delete From DevtoSimis'
      'WHERE'
      '   YPDH=:OLD_YPDH AND'
      '   PONO=:OLD_PONO')
    Left = 179
    Top = 373
  end
  object opendialog: TOpenDialog
    Left = 640
    Top = 56
  end
end
