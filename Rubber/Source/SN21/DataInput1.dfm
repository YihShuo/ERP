object DataInput: TDataInput
  Left = 463
  Top = 115
  Width = 979
  Height = 563
  Caption = 'DataInput'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 963
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 16
      Width = 45
      Height = 16
      Caption = 'Ho Ten'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Lname: TLabel
      Left = 216
      Top = 16
      Width = 9
      Height = 16
      Caption = '   '
    end
    object Label3: TLabel
      Left = 212
      Top = 43
      Width = 54
      Height = 16
      Caption = 'TotCount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 44
      Width = 60
      Height = 16
      Caption = 'Dang The'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 400
      Top = 43
      Width = 19
      Height = 16
      Caption = 'TO'
    end
    object Label5: TLabel
      Left = 393
      Top = 10
      Width = 26
      Height = 16
      Caption = 'Dep'
    end
    object cb1: TComboBox
      Left = 72
      Top = 11
      Width = 129
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      OnChange = cb1Change
    end
    object cb2: TComboBox
      Left = 72
      Top = 40
      Width = 129
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      OnChange = cb2Change
    end
    object seleb: TButton
      Left = 517
      Top = 36
      Width = 75
      Height = 25
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = selebClick
    end
    object Edit1: TEdit
      Left = 270
      Top = 40
      Width = 25
      Height = 24
      TabOrder = 3
      Text = '1'
    end
    object sd: TDateTimePicker
      Left = 306
      Top = 39
      Width = 89
      Height = 24
      Date = 40647.351139710650000000
      Time = 40647.351139710650000000
      TabOrder = 4
    end
    object ed: TDateTimePicker
      Left = 422
      Top = 40
      Width = 89
      Height = 24
      Date = 40647.351139710650000000
      Time = 40647.351139710650000000
      TabOrder = 5
    end
    object cbDep: TComboBox
      Left = 423
      Top = 5
      Width = 86
      Height = 24
      ItemHeight = 16
      TabOrder = 6
    end
  end
  object dbg1: TDBGridEh
    Left = 0
    Top = 146
    Width = 963
    Height = 379
    Align = alClient
    DataSource = DataSource1
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'workno'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'ST|workno'
      end
      item
        EditButtons = <>
        FieldName = 'inputdate'
        Footers = <>
        Title.Caption = 'Ngay|inputdate'
      end
      item
        EditButtons = <>
        FieldName = 'xiexing'
        Footers = <>
        Title.Caption = 'Dang the|xiexing'
      end
      item
        EditButtons = <>
        FieldName = 'MAXcount'
        Footers = <>
        Title.Caption = 'Tong so khuon|MAXcount'
      end
      item
        EditButtons = <>
        FieldName = 'THIScount'
        Footers = <>
        Title.Caption = 'Thuc te su dung|THIScount'
      end
      item
        EditButtons = <>
        FieldName = 'sqty'
        Footers = <>
        Title.Caption = 'San luong tieu chuan|Sqty'
      end
      item
        EditButtons = <>
        FieldName = 'rqty'
        Footers = <>
        Title.Caption = 'Luong tieu chuan|Rqty'
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'SL vuot tieu chuan|qty'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'cost'
        Footers = <>
        Title.Caption = 'Gia|cost'
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 65
    Align = alTop
    TabOrder = 2
    object BB2: TBitBtn
      Left = 16
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
      Left = 64
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
    object BB4: TBitBtn
      Left = 112
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
      TabOrder = 2
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
      Left = 160
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
      TabOrder = 3
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
      Left = 208
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
      TabOrder = 4
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
      Left = 281
      Top = 6
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'DelAll'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB7Click
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
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select workno from LIY_DD.dbo.people')
    Left = 552
    Top = 48
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.workoverreport'
      'set'
      '  workno = :workno,'
      '  inputdate = :inputdate,'
      '  xiexing = :xiexing,'
      '  MAXcount = :MAXcount,'
      '  THIScount = :THIScount,'
      '  sqty = :sqty,'
      '  rqty = :rqty,'
      '  qty = :qty,'
      '  cost = :cost'
      'where'
      '  workno = :OLD_workno and'
      '  inputdate = :OLD_inputdate and'
      '  xiexing = :OLD_xiexing')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.workoverreport'
      
        '  (workno, inputdate, xiexing, MAXcount, THIScount, sqty, rqty, ' +
        'qty, cost)'
      'values'
      
        '  (:workno, :inputdate, :xiexing, :MAXcount, :THIScount, :sqty, ' +
        ':rqty, '
      '   :qty, :cost)')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.workoverreport'
      'where'
      '  workno = :OLD_workno and'
      '  inputdate = :OLD_inputdate and'
      '  xiexing = :OLD_xiexing')
    Left = 440
    Top = 344
  end
  object showdata: TQuery
    AfterInsert = showdataAfterInsert
    DatabaseName = 'DB'
    SQL.Strings = (
      'select workoverreport .* ,'#39#39' as YN'
      'from LIY_DD.dbo.workoverreport  workoverreport ')
    UpdateObject = UpdateSQL1
    Left = 440
    Top = 312
    object showdataworkno: TStringField
      FieldName = 'workno'
      Origin = 'DB.LIY_DD.dbo.workoverreport.workno'
      FixedChar = True
      Size = 10
    end
    object showdatainputdate: TDateTimeField
      FieldName = 'inputdate'
      Origin = 'DB.LIY_DD.dbo.workoverreport.inputdate'
    end
    object showdataxiexing: TStringField
      FieldName = 'xiexing'
      Origin = 'DB.LIY_DD.dbo.workoverreport.xiexing'
      FixedChar = True
      Size = 30
    end
    object showdataMAXcount: TIntegerField
      FieldName = 'MAXcount'
      Origin = 'DB.LIY_DD.dbo.workoverreport.Maxcount'
      OnChange = showdataMAXcountChange
    end
    object showdataTHIScount: TIntegerField
      FieldName = 'THIScount'
      Origin = 'DB.LIY_DD.dbo.workoverreport.thiscount'
      OnChange = showdataTHIScountChange
    end
    object showdatasqty: TIntegerField
      FieldName = 'sqty'
      Origin = 'DB.LIY_DD.dbo.workoverreport.sqty'
      OnChange = showdatasqtyChange
    end
    object showdatarqty: TIntegerField
      FieldName = 'rqty'
      Origin = 'DB.LIY_DD.dbo.workoverreport.rqty'
      OnChange = showdatarqtyChange
    end
    object showdataqty: TIntegerField
      FieldName = 'qty'
      Origin = 'DB.LIY_DD.dbo.workoverreport.qty'
    end
    object showdatacost: TFloatField
      FieldName = 'cost'
      Origin = 'DB.LIY_DD.dbo.workoverreport.cost'
    end
    object showdataYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = showdata
    Left = 448
    Top = 272
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 600
    Top = 312
  end
end
