object SampleTrackingRms: TSampleTrackingRms
  Left = 314
  Top = 178
  Width = 928
  Height = 481
  Caption = 'SampleTrackingRms'
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
  object MasPanel: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 65
    Align = alTop
    TabOrder = 0
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
    object BBT1: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
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
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT2: TBitBtn
      Left = 416
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT3: TBitBtn
      Left = 464
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT4: TBitBtn
      Left = 512
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BDT6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Execl'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
  object ToolPanel: TPanel
    Left = 0
    Top = 217
    Width = 912
    Height = 75
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
      Left = 24
      Top = 46
      Width = 44
      Height = 16
      Caption = 'ZWSM:'
    end
    object Label2: TLabel
      Left = 208
      Top = 46
      Width = 45
      Height = 16
      Caption = 'YWSM:'
    end
    object Label3: TLabel
      Left = 18
      Top = 12
      Width = 49
      Height = 16
      Caption = 'ItemNM:'
    end
    object Button1: TButton
      Left = 560
      Top = 32
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ZWSM: TEdit
      Left = 72
      Top = 40
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object YWSM: TEdit
      Left = 256
      Top = 40
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object ItemNM: TEdit
      Left = 72
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object DBGridRm: TDBGridEh
    Left = 0
    Top = 292
    Width = 912
    Height = 151
    Align = alClient
    DataSource = DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridRmDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LYBH'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'ItemNM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
      end>
  end
  object InfoPanel: TPanel
    Left = 0
    Top = 65
    Width = 912
    Height = 152
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 329
      Height = 81
      TabOrder = 0
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 273
        Height = 16
        AutoSize = False
        Caption = 'CkExDate = Spec'#23526#38555#27298#26597#26085'/ Kiem tra Spec TG thuc te'
      end
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 273
        Height = 16
        AutoSize = False
        Caption = 'RelyDate = '#23458#25142#22238#35206#26085'/ Ngay nhan duoc tra loi'
      end
      object Label6: TLabel
        Left = 8
        Top = 40
        Width = 319
        Height = 16
        AutoSize = False
        Caption = 'SpExDate = '#36865'SPec'#32102#25505#36092'/ gui SPEC cho thu mua TG thuc te'
      end
      object Label7: TLabel
        Left = 8
        Top = 55
        Width = 313
        Height = 17
        AutoSize = False
        Caption = 'SKExDate = '#33394#21345#21514#29260'/ lam bang mau mark treo TG thuc te'
      end
    end
    object GroupBox2: TGroupBox
      Left = 344
      Top = 0
      Width = 241
      Height = 81
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 225
        Height = 16
        AutoSize = False
        Caption = 'ZBExDate = '#20570#32025#26495'/ Lam rap TG thuc te'
      end
      object Label9: TLabel
        Left = 8
        Top = 24
        Width = 225
        Height = 16
        AutoSize = False
        Caption = 'SJExDate = '#25163#21098#35430#20570'/ Thu rap TG thuc te'
      end
      object Label10: TLabel
        Left = 8
        Top = 40
        Width = 225
        Height = 16
        AutoSize = False
        Caption = 'JDExDate = '#26028#20992'/ Dao chat TG thuc te'
      end
      object Label11: TLabel
        Left = 8
        Top = 55
        Width = 225
        Height = 17
        AutoSize = False
        Caption = 'WBExDate = '#32178#29256'/ Khuon TG thuc te'
      end
    end
    object GroupBox3: TGroupBox
      Left = 592
      Top = 0
      Width = 265
      Height = 81
      TabOrder = 2
      object Label12: TLabel
        Left = 8
        Top = 8
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'MLExDate = '#25505#36092#38754#26009'/ Thu mua vat tu / VT mat'
      end
      object Label13: TLabel
        Left = 8
        Top = 24
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'FLExDate = '#25505#36092#21103#26009'/ Thu mua vat tu / phu lieu'
      end
      object Label14: TLabel
        Left = 8
        Top = 40
        Width = 233
        Height = 16
        AutoSize = False
        Caption = 'DLExDate = '#25505#36092#24213#26009'/ Thu mua vat tu / De'
      end
      object Label15: TLabel
        Left = 8
        Top = 55
        Width = 241
        Height = 17
        AutoSize = False
        Caption = 'BOMExDate = BOM'#34920'/ bang BOM TG thuc te'
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 80
      Width = 265
      Height = 65
      TabOrder = 3
      object Label16: TLabel
        Left = 8
        Top = 8
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'CutExDate = '#35009#26039'/ Phong mau san xuat / Chat'
      end
      object Label17: TLabel
        Left = 8
        Top = 24
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'SteExDate = '#37341#36554'/ Phong mau san xuat / May'
      end
      object Label18: TLabel
        Left = 8
        Top = 40
        Width = 233
        Height = 16
        AutoSize = False
        Caption = 'AseExDate = '#25104#22411'/ Phong mau san xuat / Go'
      end
    end
    object GroupBox5: TGroupBox
      Left = 280
      Top = 80
      Width = 265
      Height = 65
      TabOrder = 4
      object Label19: TLabel
        Left = 8
        Top = 8
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'YLExDate = '#29992#37327#35336#30059'/ Tinh dinh muc TG thuc te'
      end
      object Label20: TLabel
        Left = 8
        Top = 24
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'BGExDate = '#22577#20729'/ Bao gia TG thuc te'
      end
    end
  end
  object DS: TDataSource
    DataSet = SPSLRms
    Left = 176
    Top = 352
  end
  object SPSLRms: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select *,1 as YN from SPSCRmS ')
    UpdateObject = UpMas
    Left = 216
    Top = 352
    object SPSLRmsLYBH: TStringField
      FieldName = 'LYBH'
      Origin = 'DB.SPSCRms.LYBH'
      FixedChar = True
      Size = 5
    end
    object SPSLRmsGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.SPSCRms.GSBH'
      FixedChar = True
      Size = 4
    end
    object SPSLRmsItemNM: TStringField
      FieldName = 'ItemNM'
      Origin = 'DB.SPSCRms.ItemNM'
      FixedChar = True
    end
    object SPSLRmsZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.SPSCRms.ZWSM'
      FixedChar = True
    end
    object SPSLRmsYWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.SPSCRms.YWSM'
      FixedChar = True
    end
    object SPSLRmsUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.SPSCRms.UserID'
      FixedChar = True
      Size = 8
    end
    object SPSLRmsUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.SPSCRms.UserDate'
    end
    object SPSLRmsYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'Update SPSCRmS'
      '  Set'
      '    ZWSM=:ZWSM,'
      '    YWSM=:YWSM,'
      '    UserID=:UserID,'
      '    UserDate=:UserDate'
      'where'
      '   LYBH=:OLD_LYBH and'
      '   ItemNM=:OLD_ItemNM')
    InsertSQL.Strings = (
      'Insert into SPSCRmS'
      '   (LYBH, GSBH, ItemNM, ZWSM, YWSM, UserID, UserDate)'
      'Values'
      '   (:LYBH, :GSBH, :ItemNM, :ZWSM, :YWSM, :UserID, :UserDate)')
    DeleteSQL.Strings = (
      'Delete From  SPSCRmS Where LYBH=:OLD_LYBH')
    Left = 248
    Top = 352
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 386
  end
end
