object LabelFinished_Out: TLabelFinished_Out
  Left = 428
  Top = 189
  Width = 434
  Height = 448
  BorderIcons = [biSystemMenu]
  Caption = 'LabelFinished_Out'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 65
      Height = 41
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
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
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 426
    Height = 349
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 204
      Width = 424
      Height = 144
      Align = alBottom
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 155
        Height = 24
        Caption = 'Scan the Barcode:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 8
        Top = 16
        Width = 265
        Height = 33
        DataField = 'DDBH'
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 8
        Top = 88
        Width = 361
        Height = 37
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 424
      Height = 203
      Align = alClient
      DataSource = DS1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DDBH'
          Width = 173
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTNO'
          Width = 144
          Visible = True
        end>
    end
  end
  object SCSMRKS: TQuery
    CachedUpdates = True
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      'select SCSMRKS.*'
      'from SCSMRKS'
      'where SCSMRKS.DDBH=:DDBH'
      'and SCSMRKS.CTNO=:CTNO'
      'order by SCSMRKS.LHXH')
    UpdateObject = UpSCSMRKS
    Left = 552
    Top = 121
    ParamData = <
      item
        DataType = ftString
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CTNO'
        ParamType = ptUnknown
        Size = 6
      end>
    object SCSMRKSDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object SCSMRKSCTNO: TStringField
      FieldName = 'CTNO'
      Size = 5
    end
    object SCSMRKSLHLabel: TStringField
      FieldName = 'LHLabel'
      Size = 25
    end
    object SCSMRKSXXCC: TStringField
      FieldName = 'XXCC'
      Size = 6
    end
    object SCSMRKSLHXH: TStringField
      FieldName = 'LHXH'
      Size = 2
    end
    object SCSMRKSQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object DS2: TDataSource
    DataSet = SCSMRKS
    Left = 584
    Top = 121
  end
  object UpSCSMRKS: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMRKS'
      'set'
      '  DDBH = :DDBH,'
      '  CTNO = :CTNO,'
      '  LHXH = :LHXH,'
      '  LHLabel = :LHLabel,'
      '  XXCC = :XXCC,'
      '  Qty = :Qty'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO and'
      '  LHXH = :OLD_LHXH')
    InsertSQL.Strings = (
      'insert into SCSMRKS'
      '  (DDBH, CTNO, LHXH, LHLabel, XXCC, Qty)'
      'values'
      '  (:DDBH, :CTNO, :LHXH, :LHLabel, :XXCC, :Qty)')
    DeleteSQL.Strings = (
      'delete from SCSMRKS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO and'
      '  LHXH = :OLD_LHXH')
    Left = 616
    Top = 121
  end
  object SCLH: TQuery
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from SCLH'
      'where DDBH=:DDBH')
    Left = 576
    Top = 281
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
  end
  object SCSMCK: TQuery
    CachedUpdates = True
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCSMCK'
      'order by DDBH')
    UpdateObject = UpSCSMCK
    Left = 80
    Top = 152
    object SCSMCKDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object SCSMCKCTNO: TStringField
      FieldName = 'CTNO'
      Size = 5
    end
    object SCSMCKUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object SCSMCKUSERID: TStringField
      FieldName = 'USERID'
      Size = 15
    end
    object SCSMCKYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object UpSCSMCK: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMCK'
      'set'
      '  DDBH = :DDBH,'
      '  CTNO = :CTNO,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    InsertSQL.Strings = (
      'insert into SCSMCK'
      '  (DDBH, CTNO, USERDate, USERID, YN)'
      'values'
      '  (:DDBH, :CTNO, :USERDate, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from SCSMCK'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    Left = 112
    Top = 152
  end
  object DS1: TDataSource
    DataSet = SCSMCK
    Left = 144
    Top = 152
  end
  object TDDXXZL: TTable
    IndexFieldNames = 'DDBH'
    TableName = 'DDXXZL.DB'
    Left = 80
    Top = 192
  end
end
