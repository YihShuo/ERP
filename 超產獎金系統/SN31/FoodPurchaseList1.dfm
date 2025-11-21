object FoodPurchaseList: TFoodPurchaseList
  Left = 0
  Top = 0
  Caption = 'FoodPurchaseList'
  ClientHeight = 483
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
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
    Width = 888
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Truy v'#7845'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
    end
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Th'#234'm'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
    end
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'S'#7917'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
    end
    object BB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Xo'#769'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
    end
    object BB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'L'#432'u'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
    end
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Hu'#777'y'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
    end
    object BB7: TBitBtn
      Left = 321
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 6
      OnClick = BB7Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 888
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 22
      Top = 12
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 182
      Top = 12
      Width = 19
      Height = 13
      Caption = 'Lo'#7841'i'
    end
    object Button1: TButton
      Left = 335
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Truy v'#7845'n'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 51
      Top = 9
      Width = 102
      Height = 21
      Date = 44576.668729398140000000
      Format = 'yyyy/MM/dd'
      Time = 44576.668729398140000000
      TabOrder = 1
      OnChange = DTP1Change
    end
    object CB1: TComboBox
      Left = 207
      Top = 9
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'C'#225'n B'#7897
      OnChange = CB1Change
      Items.Strings = (
        'C'#225'n B'#7897
        'Kh'#225'ch')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 106
    Width = 888
    Height = 377
    Align = alClient
    DataSource = DS1
    DynProps = <>
    FooterRowCount = 1
    ReadOnly = True
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Item'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #39135#21697#21517#31281'|T'#202'N TH'#7920'C PH'#7848'M'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemCN'
        Footers = <>
        Title.Caption = #39135#21697#21517#31281'|TI'#7870'NG HOA'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #36092#36023#25976#37327'|S'#7888' L'#431#7906'NG MUA V'#7872
        Width = 100
        OnUpdateData = DBGridEh1Columns2UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Unit'
        Footers = <>
        Title.Caption = #35336#31639#21934#20301'|'#272#416'N V'#7882
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitPrice'
        Footers = <>
        Title.Caption = #21934#20729'|'#272#416'N GI'#193
        OnUpdateData = DBGridEh1Columns4UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TotalPrice'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #37329#38989'|TH'#192'NH TI'#7872'N'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Condition'
        Footers = <>
        PickList.Strings = (
          'T'#7888'T'
          'V'#7914'A'
          'KH'#212'NG T'#7888'T')
        Title.Caption = #39135#21697#21697#36074'|TR'#7840'NG TH'#193'I'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Title.Caption = #20633#35387'|GHI CH'#218
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 176
  end
  object UpdateSQL1: TMyADOUpdateSQL
    DataSet = Query1
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'Item'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemCN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Qty'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Unit'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UnitPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TotalPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Condition'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Remark'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Type'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'OLD_Date'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_Type'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_Item'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE FoodPurchaseList'
      'SET'
      '  Item = :Item,'
      '  ItemCN = :ItemCN,'
      '  Qty = :Qty,'
      '  Unit = :Unit,'
      '  UnitPrice = :UnitPrice,'
      '  TotalPrice = :TotalPrice,'
      '  Condition = :Condition,'
      '  Remark = :Remark,'
      '  Type = :Type,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  Date = :OLD_Date AND'
      '  Type = :OLD_Type AND'
      '  Item = :OLD_Item')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_Date'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_Item'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM FoodPurchaseList'
      'WHERE'
      '  Date = :OLD_Date AND'
      '  Item = :OLD_Item')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'Date'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Item'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemCN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Qty'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Unit'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UnitPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TotalPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Condition'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Remark'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      
        'INSERT INTO FoodPurchaseList (Date, Item, ItemCN, Qty, Unit, Uni' +
        'tPrice, TotalPrice, Condition, Remark, Type, UserID, UserDate, Y' +
        'N)'
      
        'VALUES (:Date, :Item, :ItemCN, :Qty, :Unit, :UnitPrice, :TotalPr' +
        'ice, :Condition, :Remark, :Type, :UserID, GETDATE(), '#39'1'#39')')
    SQLDelete = 
      'DELETE FROM FoodPurchaseList'#13#10'WHERE'#13#10'  Date = :OLD_Date AND'#13#10'  I' +
      'tem = :OLD_Item'
    SQLInsert = 
      'INSERT INTO FoodPurchaseList (Date, Item, ItemCN, Qty, Unit, Uni' +
      'tPrice, TotalPrice, Condition, Remark, Type, UserID, UserDate, Y' +
      'N)'#13#10'VALUES (:Date, :Item, :ItemCN, :Qty, :Unit, :UnitPrice, :Tot' +
      'alPrice, :Condition, :Remark, :Type, :UserID, GETDATE(), '#39'1'#39')'
    SQLModify = 
      'UPDATE FoodPurchaseList'#13#10'SET'#13#10'  Item = :Item,'#13#10'  ItemCN = :ItemC' +
      'N,'#13#10'  Qty = :Qty,'#13#10'  Unit = :Unit,'#13#10'  UnitPrice = :UnitPrice,'#13#10' ' +
      ' TotalPrice = :TotalPrice,'#13#10'  Condition = :Condition,'#13#10'  Remark ' +
      '= :Remark,'#13#10'  Type = :Type,'#13#10'  UserID = :UserID,'#13#10'  UserDate = G' +
      'ETDATE(),'#13#10'  YN = :YN'#13#10'WHERE'#13#10'  Date = :OLD_Date AND'#13#10'  Type = :' +
      'OLD_Type AND'#13#10'  Item = :OLD_Item'
    Left = 24
    Top = 272
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    OnNewRecord = Query1NewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FoodPurchaseList'
      'WHERE 1 = 3')
    Left = 24
    Top = 224
    object Query1Date: TDateTimeField
      FieldName = 'Date'
    end
    object Query1Item: TWideStringField
      FieldName = 'Item'
      Size = 30
    end
    object Query1ItemCN: TWideStringField
      FieldName = 'ItemCN'
      Size = 30
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1Unit: TWideStringField
      FieldName = 'Unit'
      Size = 10
    end
    object Query1UnitPrice: TIntegerField
      FieldName = 'UnitPrice'
    end
    object Query1TotalPrice: TIntegerField
      FieldName = 'TotalPrice'
    end
    object Query1Condition: TWideStringField
      FieldName = 'Condition'
      Size = 10
    end
    object Query1Remark: TWideStringField
      FieldName = 'Remark'
      Size = 30
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query1Type: TWideStringField
      FieldName = 'Type'
      Size = 10
    end
  end
  object QUpdate: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    OnNewRecord = Query1NewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FoodPurchaseList'
      'WHERE 1 = 3')
    Left = 80
    Top = 224
  end
  object QSearch: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    OnNewRecord = Query1NewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FoodPurchaseList'
      'WHERE 1 = 3')
    Left = 80
    Top = 176
  end
end
