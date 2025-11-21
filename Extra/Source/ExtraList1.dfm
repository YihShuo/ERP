object ExtraList: TExtraList
  Left = 282
  Top = 206
  Width = 870
  Height = 500
  Caption = 'ExtraList'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 40
      Height = 16
      Caption = 'JGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BDT1: TBitBtn
      Left = 528
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
      TabOrder = 0
      OnClick = BDT1Click
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
    object BDT2: TBitBtn
      Left = 576
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
      TabOrder = 1
      OnClick = BDT2Click
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
    object BDT3: TBitBtn
      Left = 624
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
      TabOrder = 2
      OnClick = BDT3Click
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
    object BDT4: TBitBtn
      Left = 672
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
      TabOrder = 3
      OnClick = BDT4Click
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
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 192
      Top = 16
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 288
      Top = 16
      Width = 81
      Height = 33
      Caption = 'CONFIRM'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 384
      Top = 16
      Width = 129
      Height = 33
      Caption = 'CANCEL CONFIRM'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 862
    Height = 152
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label15: TLabel
      Left = 16
      Top = 16
      Width = 48
      Height = 20
      Caption = 'JGNO:'
    end
    object Label16: TLabel
      Left = 400
      Top = 72
      Width = 64
      Height = 20
      Caption = 'CFMID1:'
    end
    object Label19: TLabel
      Left = 8
      Top = 120
      Width = 54
      Height = 20
      Caption = 'MatNO:'
    end
    object Label20: TLabel
      Left = 232
      Top = 120
      Width = 73
      Height = 20
      Caption = 'MatName:'
    end
    object Label1: TLabel
      Left = 200
      Top = 16
      Width = 60
      Height = 20
      Caption = 'JGDate:'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 59
      Height = 20
      Caption = 'SuppID:'
    end
    object Label3: TLabel
      Left = 192
      Top = 72
      Width = 84
      Height = 20
      Caption = 'SuppName:'
    end
    object Label4: TLabel
      Left = 592
      Top = 72
      Width = 90
      Height = 20
      Caption = 'CFMDATE1:'
    end
    object Label5: TLabel
      Left = 400
      Top = 16
      Width = 67
      Height = 20
      Caption = 'USERID:'
    end
    object DBEdit11: TDBEdit
      Left = 72
      Top = 8
      Width = 105
      Height = 28
      Color = clSilver
      DataField = 'JGNO'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 464
      Top = 64
      Width = 121
      Height = 28
      Color = clSilver
      DataField = 'CFMID1'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 312
      Top = 104
      Width = 529
      Height = 49
      Color = clSilver
      DataField = 'YWPM'
      DataSource = DS4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit13: TDBEdit
      Left = 64
      Top = 112
      Width = 161
      Height = 28
      Color = clSilver
      DataField = 'CLBH'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 272
      Top = 8
      Width = 105
      Height = 28
      Color = clSilver
      DataField = 'JGDate'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 64
      Width = 105
      Height = 28
      Color = clSilver
      DataField = 'ZSBH'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 280
      Top = 64
      Width = 113
      Height = 28
      Color = clSilver
      DataField = 'ZSYWJC'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 680
      Top = 64
      Width = 121
      Height = 28
      Color = clSilver
      DataField = 'CFMDate1'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 480
      Top = 8
      Width = 121
      Height = 28
      Color = clSilver
      DataField = 'USERID'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 8
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 217
    Width = 862
    Height = 249
    Align = alClient
    DataSource = DS4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object JGMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select JGZL.*,ZSZL.ZSYWJC'
      'from JGZL'
      'left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH')
    UpdateObject = UpMas
    Left = 396
    Top = 348
    object JGMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object JGMasJGDate: TDateTimeField
      FieldName = 'JGDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object JGMasJGLX: TStringField
      FieldName = 'JGLX'
      FixedChar = True
      Size = 1
    end
    object JGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate2: TDateTimeField
      FieldName = 'CFMDate2'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object JGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZL'
      'set'
      '  CFMID1 = :CFMID1,'
      '  CFMDate1 = :CFMDate1'
      'where'
      '  JGNO = :OLD_JGNO')
    InsertSQL.Strings = (
      'insert into JGZL'
      '  (CFMID1, CFMDate1)'
      'values'
      '  (:CFMID1, :CFMDate1)')
    DeleteSQL.Strings = (
      'delete from JGZL'
      'where'
      '  JGNO = :OLD_JGNO')
    Left = 396
    Top = 372
  end
  object DS3: TDataSource
    DataSet = JGMas
    Left = 436
    Top = 348
  end
  object JGDet: TQuery
    CachedUpdates = True
    AfterOpen = JGDetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select JGZLS.*,CLZL.YWPM,CLZL.DWBH'
      'from JGZLS'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'where JGZLS.JGNO=:JGNO'
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'order by JGZLS.CLBH')
    UpdateObject = UPDet
    Left = 540
    Top = 348
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'JGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object JGDetJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 15
    end
    object JGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object JGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object JGDetVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object JGDetVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object JGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object JGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object JGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object JGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object JGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZLS'
      'set'
      '  Qty = :Qty,'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice'
      'where'
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZMLB = :OLD_ZMLB')
    InsertSQL.Strings = (
      'insert into JGZLS'
      '  (Qty, USPrice, VNPrice)'
      'values'
      '  (:Qty, :USPrice, :VNPrice)')
    DeleteSQL.Strings = (
      'delete from JGZLS'
      'where'
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZMLB = :OLD_ZMLB')
    Left = 540
    Top = 381
  end
  object DS4: TDataSource
    DataSet = JGDet
    Left = 580
    Top = 348
  end
end
