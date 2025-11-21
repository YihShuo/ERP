object VendorMapSet: TVendorMapSet
  Left = 236
  Top = 186
  Width = 862
  Height = 480
  Caption = 'TW/VN Vendor Mapping Set'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 73
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 72
      Top = 10
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
      Left = 120
      Top = 10
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
    object BB1: TBitBtn
      Left = 24
      Top = 10
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object BB4: TBitBtn
      Left = 168
      Top = 10
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
      Left = 216
      Top = 10
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
      Left = 264
      Top = 10
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 846
    Height = 369
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 29
      Top = 58
      Width = 78
      Height = 20
      Caption = 'VN Vendor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 26
      Top = 17
      Width = 80
      Height = 20
      Caption = 'TW Vendor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 116
      Top = 55
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 116
      Top = 13
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 1
    end
    object DBGridEh1: TDBGridEh
      Left = 285
      Top = 1
      Width = 560
      Height = 367
      Align = alRight
      DataSource = DS1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'csbh'
          Footers = <>
          Title.Caption = 'csbh|'#24288#21830#32232#34399
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          Title.Caption = 'TW Vendor|'#21488#28771#24288#21830#21517#31281
          Width = 130
        end
        item
          EditButtons = <>
          FieldName = 'CSBHV'
          Footers = <>
          Title.Caption = 'CSBHV|'#24288#21830#32232#34399
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc_1'
          Footers = <>
          Title.Caption = 'VN Vendor|'#36234#21335#24288#21830#21517#31281
          Width = 130
        end
        item
          EditButtons = <>
          FieldName = 'userid'
          Footers = <>
          Title.Caption = 'userid|'#20351#29992#32773
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'userdate'
          Footers = <>
          Title.Caption = 'userdate|'#20462#25913#26085#26399
          Width = 77
        end>
    end
    object BitBtn1: TBitBtn
      Left = 236
      Top = 13
      Width = 25
      Height = 28
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 236
      Top = 53
      Width = 25
      Height = 28
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 408
    Top = 209
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select b2buser.*,zszl.zsywjc,k.CSBHV,k.zsywjc'
      'from B2BUser '
      'left join zszl on zszl.zsdh=B2BUser.csbh'
      'left join ('
      'select csbh,csbhv,zszl.zsywjc from B2BUser '
      'left join zszl on zszl.zsdh=B2BUser.CSBHV'
      ') as k on k.csbh=B2BUser.csbh')
    UpdateObject = UPSQL1
    Left = 408
    Top = 241
    object Query1csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1CSBHV: TStringField
      FieldName = 'CSBHV'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc_1: TStringField
      FieldName = 'zsywjc_1'
      FixedChar = True
    end
    object Query1userid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query1csuserid: TStringField
      FieldName = 'csuserid'
      FixedChar = True
      Size = 10
    end
    object Query1csuserpassword: TStringField
      FieldName = 'csuserpassword'
      FixedChar = True
      Size = 12
    end
    object Query1CSBHV_1: TStringField
      FieldName = 'CSBHV_1'
      FixedChar = True
      Size = 6
    end
  end
  object UPSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update b2buser'
      'set'
      '  csbh = :csbh,'
      '  csuserid = :csuserid,'
      '  csuserpassword = :csuserpassword,'
      '  CSBHV = :CSBHV,'
      '  userid = :userid,'
      '  userdate = :userdate'
      'where'
      '  csbh = :OLD_csbh and'
      '  csuserid = :OLD_csuserid and'
      '  csuserpassword = :OLD_csuserpassword and'
      '  CSBHV = :OLD_CSBHV and'
      '  userid = :OLD_userid and'
      '  userdate = :OLD_userdate')
    InsertSQL.Strings = (
      'insert into b2buser'
      '  (csbh, csuserid, csuserpassword, CSBHV, userid, userdate)'
      'values'
      
        '  (:csbh, :csuserid, :csuserpassword, :CSBHV, :userid, :userdate' +
        ')')
    DeleteSQL.Strings = (
      'delete from b2buser'
      'where'
      '  csbh = :OLD_csbh and'
      '  csuserid = :OLD_csuserid and'
      '  csuserpassword = :OLD_csuserpassword and'
      '  CSBHV = :OLD_CSBHV and'
      '  userid = :OLD_userid and'
      '  userdate = :OLD_userdate')
    Left = 440
    Top = 241
  end
end
