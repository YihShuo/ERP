object MaterialWovenList: TMaterialWovenList
  Left = 358
  Top = 256
  Width = 1358
  Height = 675
  Caption = 'MaterialWovenList'
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
    Width = 1350
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
      OnClick = BB7Click
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
      Enabled = False
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
    object btnImport: TBitBtn
      Left = 432
      Top = 7
      Width = 48
      Height = 48
      Hint = 'Modify Current'
      Caption = 'Import'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnImportClick
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
    Top = 149
    Width = 1350
    Height = 495
    Align = alClient
    DataSource = DS1
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Mat No'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Material English'
        Width = 190
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'Material Chinese'
        Width = 190
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'tyjh'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'FlexCode'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'FlexDescription'
        Footers = <>
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'bz'
        Footers = <>
        Title.Caption = 'Mat.Remark'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Vendor'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'WovenItem'
        Footers = <>
        Title.Caption = 'Woven Item#'
        Width = 173
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1350
    Height = 86
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
      Left = 10
      Top = 16
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat No:'
    end
    object Label6: TLabel
      Left = 206
      Top = 52
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label2: TLabel
      Left = 233
      Top = 16
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat Name:'
    end
    object Label5: TLabel
      Left = 810
      Top = 16
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Flex Code:'
    end
    object Label3: TLabel
      Left = 564
      Top = 16
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Woven Item#:'
    end
    object Label4: TLabel
      Left = 390
      Top = 52
      Width = 36
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
    end
    object Label7: TLabel
      Left = 585
      Top = 52
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor:'
    end
    object Edit1: TEdit
      Left = 67
      Top = 13
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 15
      Top = 52
      Width = 82
      Height = 17
      Caption = 'UserDate:'
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 305
      Top = 13
      Width = 81
      Height = 24
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 393
      Top = 13
      Width = 73
      Height = 24
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 473
      Top = 13
      Width = 65
      Height = 24
      TabOrder = 4
    end
    object FlexCB: TCheckBox
      Left = 820
      Top = 50
      Width = 137
      Height = 17
      Caption = 'Flex Code is not null'
      TabOrder = 5
    end
    object FlexEdit: TEdit
      Left = 886
      Top = 13
      Width = 97
      Height = 24
      TabOrder = 6
    end
    object Button1: TButton
      Left = 1003
      Top = 30
      Width = 74
      Height = 30
      Caption = 'QUERY'
      TabOrder = 7
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 96
      Top = 48
      Width = 105
      Height = 24
      Date = 42812.762229814780000000
      Format = 'yyyy/MM/dd'
      Time = 42812.762229814780000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 229
      Top = 48
      Width = 105
      Height = 24
      Date = 42835.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 42835.762229814810000000
      TabOrder = 9
    end
    object WovenEdit: TEdit
      Left = 652
      Top = 13
      Width = 137
      Height = 24
      TabOrder = 10
    end
    object SKUEdit: TEdit
      Left = 430
      Top = 48
      Width = 108
      Height = 24
      TabOrder = 11
    end
    object VendorEdit: TEdit
      Left = 652
      Top = 48
      Width = 137
      Height = 24
      TabOrder = 12
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select clzl.cldh,ywpm,zwpm,dwbh,cqdh,clzl.tyjh,CLZL_FLEX.CLDHFLE' +
        'X AS FlexCode,cldhflexdes as FlexDescription,clbzzl.bz,zszl.zsyw' +
        'jc,CLZL_Woven.WovenItem,CLZL_Woven.USERID,CLZL_Woven.USERDATE,CL' +
        'ZL_Woven.YN'
      'from CLZL '
      'left join xxzls on clzl.cldh=xxzls.CLBH'
      
        'left join xxzl on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xx' +
        'zl.SheHao'
      'left join zszl on xxzls.CSBH=zszl.zsdh'
      
        'left join clbzzl on clbzzl.CLDH = CLZL.CLDH and clbzzl.zybb ='#39'E'#39 +
        ' and clbzzl.xh='#39'001'#39
      'left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH'
      'left join CLZL_FLEXS on CLZL_FLEXS.cldhflex=CLZL_FLEX.cldhflex'
      'left join CLZL_Woven on CLZL_Woven.cldh = clzl.cldh'
      'where 1=2'
      
        'Group by clzl.cldh,ywpm,zwpm,dwbh,cqdh,clzl.tyjh,CLZL_FLEX.CLDHF' +
        'LEX,cldhflexdes,clbzzl.bz,zszl.zsywjc,CLZL_Woven.WovenItem,CLZL_' +
        'Woven.USERID,CLZL_Woven.USERDATE,CLZL_Woven.YN'
      'order by CLZL.CLDH')
    UpdateObject = UpdateSQL1
    Left = 85
    Top = 256
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object Query1tyjh: TStringField
      FieldName = 'tyjh'
      FixedChar = True
      Size = 1
    end
    object Query1FlexCode: TStringField
      FieldName = 'FlexCode'
      FixedChar = True
      Size = 15
    end
    object Query1FlexDescription: TStringField
      FieldName = 'FlexDescription'
      FixedChar = True
      Size = 255
    end
    object Query1bz: TStringField
      FieldName = 'bz'
      FixedChar = True
      Size = 80
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1WovenItem: TStringField
      FieldName = 'WovenItem'
      FixedChar = True
      Size = 200
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 85
    Top = 224
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update CLZL_Woven'
      'set'
      '  WovenItem = :WovenItem,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate'
      'where'
      '  cldh = :OLD_cldh')
    InsertSQL.Strings = (
      'Insert into CLZL_Woven'
      '  (cldh, WovenItem, USERID, USERDate, YN)'
      'values'
      '  (:cldh, :WovenItem, :USERID, :USERDate, :YN)'
      ''
      '')
    Left = 85
    Top = 288
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 117
    Top = 256
  end
  object OpenDialog: TOpenDialog
    Left = 224
    Top = 242
  end
end
