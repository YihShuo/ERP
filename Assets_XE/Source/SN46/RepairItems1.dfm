object RepairItems: TRepairItems
  Left = 0
  Top = 0
  Caption = 'RepairItems'
  ClientHeight = 638
  ClientWidth = 1119
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
    Width = 1119
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      TabOrder = 0
      OnClick = BB2Click
    end
    object BB3: TBitBtn
      Left = 488
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
      TabOrder = 1
      OnClick = BB3Click
    end
    object BB4: TBitBtn
      Left = 104
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
      OnClick = BB4Click
    end
    object BB5: TBitBtn
      Left = 152
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
      TabOrder = 3
      OnClick = BB5Click
    end
    object BB6: TBitBtn
      Left = 200
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
      TabOrder = 4
      OnClick = BB6Click
    end
    object BB7: TBitBtn
      Left = 248
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
      ParentFont = False
      TabOrder = 5
      OnClick = BB7Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1119
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 587
      Top = 6
      Width = 374
      Height = 16
      AutoSize = False
    end
    object Label3: TLabel
      Left = 587
      Top = 28
      Width = 381
      Height = 16
      AutoSize = False
    end
    object Label2: TLabel
      Left = 232
      Top = 14
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Repair item:'
    end
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 464
      Top = 6
      Width = 81
      Height = 27
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
    object Edit2: TEdit
      Left = 324
      Top = 10
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object CBLSBH: TComboBox
      Left = 64
      Top = 6
      Width = 145
      Height = 24
      TabOrder = 2
      OnChange = CBLSBHChange
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 113
    Width = 1119
    Height = 525
    Align = alClient
    DataSource = DS2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fault_NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Repair_NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Repair_Item'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Chinese_Repair'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VN_Repair'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Visible = True
      end>
  end
  object TSCD_Faults: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT [Fault_NO]'
      '      ,[Repair_NO]'
      '      ,[Repair_Item]'
      '      ,[Chinese_Repair]'
      '      ,[VN_Repair]'
      '      ,[USERID]'
      '      ,[USERDATE]'
      ',[YN]'
      '  FROM [TSCD_Faults]'
      '  where 1<>1')
    UpdateObject = UpdateSQL1
    Left = 172
    Top = 388
    object TSCD_FaultsFault_NO: TIntegerField
      FieldName = 'Fault_NO'
      Origin = 'DB.TSCD_Faults.Fault_NO'
    end
    object TSCD_FaultsRepair_NO: TAutoIncField
      FieldName = 'Repair_NO'
      Origin = 'DB.TSCD_Faults.Repair_NO'
    end
    object TSCD_FaultsRepair_Item: TStringField
      FieldName = 'Repair_Item'
      Origin = 'DB.TSCD_Faults.Repair_Item'
      FixedChar = True
      Size = 200
    end
    object TSCD_FaultsChinese_Repair: TStringField
      FieldName = 'Chinese_Repair'
      Origin = 'DB.TSCD_Faults.Chinese_Repair'
      FixedChar = True
      Size = 200
    end
    object TSCD_FaultsVN_Repair: TStringField
      FieldName = 'VN_Repair'
      Size = 200
    end
    object TSCD_FaultsUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_Faults.USERID'
      FixedChar = True
      Size = 10
    end
    object TSCD_FaultsUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_Faults.USERDATE'
    end
    object TSCD_FaultsYN: TStringField
      FieldName = 'YN'
    end
  end
  object DS2: TDataSource
    DataSet = TSCD_Faults
    Left = 236
    Top = 388
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_Faults'
      'set'
      '  Repair_Item= :Repair_Item,'
      '  Chinese_Repair= :Chinese_Repair,'
      'VN_Repair= :VN_Repair,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      ' Fault_NO = :Fault_NO and Repair_NO = :Repair_NO')
    InsertSQL.Strings = (
      'insert into TSCD_Faults'
      
        '  (Fault_NO, Repair_Item, Chinese_Repair, VN_Repair, USERID, USE' +
        'RDATE, YN)'
      'values'
      
        '  (:Fault_NO, :Repair_Item, :Chinese_Repair, :VN_Repair, :USERID' +
        ', :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from TSCD_Faults'
      'where'
      '  Fault_NO = :OLD_Fault_NO and Repair_NO = :Repair_NO')
    Left = 92
    Top = 388
  end
  object LSBHQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT [Fault_NO]'
      '      ,[LSBH]'
      '      ,[Fault_item]'
      '      ,[Chinese_Fault]'
      '      ,[VN_Fault]'
      '  FROM [TSCD_Fault]'
      '  where [YN]=1')
    Left = 92
    Top = 204
    object IntegerField1: TIntegerField
      FieldName = 'Fault_NO'
      Origin = 'DB.TSCD_Faults.Fault_NO'
    end
    object LSBHQueryLSBH: TStringField
      FieldName = 'LSBH'
    end
    object LSBHQueryFault_item: TStringField
      FieldName = 'Fault_item'
    end
    object LSBHQueryChinese_Fault: TStringField
      FieldName = 'Chinese_Fault'
    end
    object LSBHQueryVN_Fault: TStringField
      FieldName = 'VN_Fault'
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    Left = 188
    Top = 204
  end
end
