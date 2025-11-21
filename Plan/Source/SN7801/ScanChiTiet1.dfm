object ScanChiTiet: TScanChiTiet
  Left = 464
  Top = 195
  Width = 1044
  Height = 480
  Caption = 'ChiTietScan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 121
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 207
      Top = 84
      Width = 35
      Height = 16
      Caption = 'Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 84
      Width = 52
      Height = 16
      Caption = 'OrdNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DDBH: TLabeledEdit
      Left = 72
      Top = 82
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      EditLabel.Width = 44
      EditLabel.Height = 16
      EditLabel.Caption = 'DDBH'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 0
    end
    object Size: TComboBox
      Left = 245
      Top = 81
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object btnQuery: TButton
      Left = 332
      Top = 74
      Width = 93
      Height = 31
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnQueryClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1026
      Height = 64
      Align = alTop
      TabOrder = 3
      object btnQuery1: TBitBtn
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
        OnClick = btnQuery1Click
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
      object btnInsert: TBitBtn
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
      object btnDelete: TBitBtn
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
        OnClick = btnDeleteClick
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
        Left = 201
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
        Left = 249
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
        Left = 297
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
      object btnExit: TBitBtn
        Left = 345
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
        OnClick = btnExitClick
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
      object BBT1: TBitBtn
        Left = 417
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
        Left = 465
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
        Left = 513
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
        Left = 561
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
      object btnDel_All: TBitBtn
        Left = 152
        Top = 8
        Width = 49
        Height = 49
        Hint = 'Delete one Record'
        Caption = 'Del_All'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = btnDel_AllClick
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
      object bbt6: TBitBtn
        Left = 683
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
        TabOrder = 12
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
      object bbt5: TBitBtn
        Left = 635
        Top = 8
        Width = 49
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Print'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 121
    Width = 1028
    Height = 320
    Align = alClient
    DataSource = DS
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEditButtonClick
    OnGetCellParams = DBGridGetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SMNO'
        Footer.EndEllipsis = True
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 41
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Width = 111
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
        ReadOnly = True
        Width = 129
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'totQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 60
      end>
  end
  object SMZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMNO, SMDDSS.CODEBAR, YSBH, SMDDSS.DDBH, SMDDSS.XXCC, SMD' +
        'DSS.GXLB, convert(smalldatetime,convert(varchar,SMZL.ScanDate,12' +
        '0)) as ScanDate, SMZL.UserDate, SMDDSS.Qty as Qty, SMZL.CTS as C' +
        'TS, SMZL.CTS*SMDDSS.Qty as totQty , SMZL.USERID, BDepartment.Dep' +
        'Name, SMZL.CTS as oldCTS, BDepartment.ID as ID, SMZL.DepNo as De' +
        'pNO from SMZL'
      'left join BDepartment on BDepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      
        'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXL' +
        'B'
      ' where 1=1'
      ' and SMDDSS.GXLB = '#39'S'#39
      ' and BDepartment.DepName like '#39'%A1_LEAN1%'#39
      ' and BDepartment.GSBH='#39'VA12'#39
      
        ' and SMZL.ScanDate between convert(smalldatetime,'#39'2018/10/09 07:' +
        '00:00'#39') and convert(smalldatetime,'#39'2018/10/09 07:59:59'#39')'
      ''
      '')
    UpdateObject = updateSMZL
    Left = 208
    Top = 176
    object SMZLSMNO: TFloatField
      FieldName = 'SMNO'
      ReadOnly = True
    end
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      ReadOnly = True
      FixedChar = True
    end
    object SMZLYSBH: TStringField
      FieldName = 'YSBH'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object SMZLXXCC: TStringField
      FieldName = 'XXCC'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object SMZLGXLB: TStringField
      FieldName = 'GXLB'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZLUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
      ReadOnly = True
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLtotQty: TIntegerField
      FieldName = 'totQty'
      ReadOnly = True
    end
    object SMZLUSERID: TStringField
      FieldName = 'USERID'
      ReadOnly = True
      FixedChar = True
    end
    object SMZLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLoldCTS: TIntegerField
      FieldName = 'oldCTS'
      ReadOnly = True
    end
    object SMZLID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object SMZLDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS: TDataSource
    DataSet = SMZL
    Left = 248
    Top = 176
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 208
  end
  object updateSMZL: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZL'
      'set DepNo =:DepNo,'
      '   ScanDate =:ScanDate,'
      '   USERDATE =:USERDATE'
      'where'
      '  SMNO =:OLD_SMNO and'
      '  ScanDate =:OLD_ScanDate and'
      '  USERDATE =:OLD_USERDATE and'
      '  DepNo =:OLD_DepNo'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from SMZL'
      'where'
      '  SMNO =:OLD_SMNO')
    Left = 296
    Top = 176
  end
  object SMDDSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS
    SQL.Strings = (
      
        'select SMZL.*,SMDD.YSBH,SCBB.PRONO,SMDDSS.XXCC,SMDDSS.Qty as Per' +
        'Qty,SMDDSS.GXLB'
      'from SMZL'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      'left join SMDD on SMDD.DDBH=SMDDSS.DDBH'
      
        'left join SCBB on SCBB.DepNO=SMZL.DepNO and convert(varchar,SCBB' +
        '.SCDate,111)=convert(varchar,SMZL.ScanDate,111)'
      'where SMZL.SMNO=:SMNO'
      '')
    Left = 248
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SMNO'
        ParamType = ptUnknown
      end>
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 356
    Top = 181
  end
end
