object ImportVNBOM: TImportVNBOM
  Left = 339
  Top = 118
  Width = 1042
  Height = 563
  Caption = 'ImportVNBOM'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB1: TBitBtn
      Left = 7
      Top = 7
      Width = 48
      Height = 48
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Left = 55
      Top = 7
      Width = 49
      Height = 48
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Top = 7
      Width = 49
      Height = 48
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      Left = 153
      Top = 7
      Width = 49
      Height = 48
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 202
      Top = 7
      Width = 48
      Height = 48
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Left = 250
      Top = 7
      Width = 49
      Height = 48
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Left = 299
      Top = 7
      Width = 49
      Height = 48
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
    object btnExcel: TBitBtn
      Left = 371
      Top = 7
      Width = 48
      Height = 48
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
    object BB8: TBitBtn
      Left = 427
      Top = 6
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Paste'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BB8Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A5A5A5A0A0A0A0A0A0A3A3
        A37C7C7CE1E1E1FFFFFFFFFFFFFFFFFFA6A6A69D9D9D9D9D9D9D9D9D9B9B9BBD
        BDBDA3A3A3FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0CACACAFFFFFFFFFFFFD3D3D3
        696969D3D3D3CACACACACACAC9C9C9E1E1E1A3A3A36B6B6B6C6C6C6C6C6C6565
        65B9B9B9CFCFCFFFFFFFFFFFFFD1D1D19A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9B9B9B9D9D9D9C9C9C9D9D9D999999C0C0C0CECECEFFFFFFFFFFFFD1D1D1
        969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AFAFAFAF2F2F2F2F2F2F4F4
        F4D5D5D5CCCCCCFFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9E9E9E636363646464656565606060B9B9B9CFCFCFFFFFFFFFFFFFD1D1D1
        969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696FFFFFFFFFFFFFFFFFFFFFF
        FFC8C8C8C9C9C9FFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF969696FFFFFFFFFFFFFFFFFF6A6A6A3E3E3EFFFFFFFFFFFFFFFFFFD1D1D1
        969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9696969696969999998080
        80FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB1B1B1BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1
        969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFB9B9
        B9FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAFAFAFB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1
        979797FFFFFF6363637070707171717171717070705E5E5EFFFFFFB1B1B1B9B9
        B9FFFFFFFFFFFFFFFFFFFFFFFFD0D0D0A7A7A7DDDDDD6969693939393F3F3F3F
        3F3F393939727272C0C0C0C3C3C3B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8
        2B2B2B505050434343000000000000000000000000424242434343373737D1D1
        D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36363621
        2121FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 169
    Width = 1026
    Height = 355
    Align = alClient
    DataSource = DS_XXZLSVN
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnColExit = DBGridEh1ColExit
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Caption = 'YWSM'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'YWPM'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'DWBH'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'FLBH'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'XFL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'ZSYWJC'
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1026
    Height = 106
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 24
      Top = 26
      Width = 37
      Height = 16
      Alignment = taRightJustify
      Caption = 'Article'
    end
    object Label2: TLabel
      Left = 184
      Top = 26
      Width = 45
      Height = 16
      Alignment = taRightJustify
      Caption = 'XieXing'
    end
    object Label3: TLabel
      Left = 345
      Top = 26
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = 'SheHao'
    end
    object Label4: TLabel
      Left = 24
      Top = 66
      Width = 35
      Height = 16
      Alignment = taRightJustify
      Caption = 'CLBH'
    end
    object Label5: TLabel
      Left = 187
      Top = 66
      Width = 42
      Height = 16
      Alignment = taRightJustify
      Caption = 'YWPM'
    end
    object Edit_Article: TEdit
      Left = 61
      Top = 22
      Width = 98
      Height = 24
      Color = clYellow
      TabOrder = 0
    end
    object Edit_Xiexing: TEdit
      Left = 232
      Top = 22
      Width = 99
      Height = 24
      Color = clYellow
      TabOrder = 1
    end
    object Edit_Shehao: TEdit
      Left = 399
      Top = 22
      Width = 46
      Height = 24
      Color = clWhite
      TabOrder = 2
    end
    object Button1: TButton
      Left = 494
      Top = 57
      Width = 81
      Height = 30
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit_CLBH: TEdit
      Left = 61
      Top = 62
      Width = 98
      Height = 24
      Color = clWhite
      TabOrder = 4
    end
    object Edit_YWPM: TEdit
      Left = 232
      Top = 62
      Width = 217
      Height = 24
      Color = clWhite
      TabOrder = 5
    end
  end
  object XXZLSVN: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT XXZL.ARTICLE,XXZLSVN.XieXing,XXZLSVN.SheHao,XXZLSVN.BWBH,' +
        'bwzl.ywsm,'
      
        #9#9'XXZLSVN.CLBH,clzl.ywpm,clzl.dwbh,XXZLSVN.CLSL,XXZLSVN.FLBH,XXB' +
        'WFLS.DFL,XXBWFLS.XFL, XXZLSVN.CSBH,zszl.zsywjc,'
      '    XXZLSVN.USERID,XXZLSVN.USERDATE,XXZLSVN.YN'
      'FROM XXZLSVN '
      
        'LEFT JOIN XXZL on XXZLSVN.SheHao=XXZL.SheHao and  XXZLSVN.XieXin' +
        'g=XXZL.XieXing'
      'left join clzl on XXZLSVN.CLBH=clzl.cldh'
      'left join bwzl on XXZLSVN.BWBH=bwzl.bwdh'
      'left join zszl on XXZLSVN.CSBH=zszl.zsdh'
      
        'left join xxbwfl on xxbwfl.xiexing=xxzlsvn.xiexing and xxbwfl.bw' +
        'bh=xxzlsvn.bwbh'
      'left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH'
      'WHERE 1=2'
      'ORDER BY XXZL.XieXing, XXZL.SheHao'
      '')
    UpdateObject = UpXXZLSVN
    Left = 208
    Top = 264
    object XXZLSVNARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object XXZLSVNXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLSVNBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSVNywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object XXZLSVNCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object XXZLSVNdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object XXZLSVNCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object XXZLSVNFLBH: TStringField
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object XXZLSVNDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object XXZLSVNXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object XXZLSVNCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object XXZLSVNzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object XXZLSVNUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object XXZLSVNYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_XXZLSVN: TDataSource
    DataSet = XXZLSVN
    Left = 208
    Top = 232
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 240
    Top = 264
  end
  object UpXXZLSVN: TUpdateSQL
    ModifySQL.Strings = (
      'update XXZLSVN'
      'set'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  BWBH = :BWBH,'
      '  CLBH = :CLBH,'
      '  CSBH = :CSBH,'
      '  CLSL = :CLSL,'
      '  FLBH = :FLBH,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH')
    InsertSQL.Strings = (
      'insert into XXZLSVN'
      '  (XieXing, SheHao, BWBH, CLBH, CSBH, CLSL, FLBH, USERID, '
      'USERDATE, YN)'
      'values'
      
        '  (:XieXing, :SheHao, :BWBH, :CLBH, :CSBH, :CLSL, :FLBH, :USERID' +
        ', '
      '   :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from XXZLSVN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH')
    Left = 209
    Top = 296
  end
  object UpVNBWFL: TUpdateSQL
    ModifySQL.Strings = (
      'update XXBWFL'
      'set'
      '  XieXing = :XieXing,'
      '  BWBH = :BWBH,'
      '  FLBH = :FLBH,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH')
    InsertSQL.Strings = (
      'insert into XXBWFL'
      '  (XieXing, BWBH, FLBH, USERDATE, USERID, YN)'
      'values'
      '  (:XieXing, :BWBH, :FLBH, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from XXBWFL'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH')
    Left = 284
    Top = 296
  end
  object VNBWFL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS_XXZLSVN
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from XXBWFL'
      'where XieXing=:XieXing')
    UpdateObject = UpVNBWFL
    Left = 284
    Top = 264
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end>
    object VNBWFLXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.XXBWFL.XieXing'
      FixedChar = True
      Size = 15
    end
    object VNBWFLBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.XXBWFL.BWBH'
      FixedChar = True
      Size = 4
    end
    object VNBWFLFLBH: TStringField
      FieldName = 'FLBH'
      Origin = 'DB.XXBWFL.FLBH'
      FixedChar = True
      Size = 2
    end
    object VNBWFLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.XXBWFL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object VNBWFLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.XXBWFL.USERID'
      FixedChar = True
      Size = 15
    end
    object VNBWFLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.XXBWFL.YN'
      FixedChar = True
      Size = 1
    end
  end
end
