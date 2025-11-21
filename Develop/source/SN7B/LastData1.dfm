object LastData: TLastData
  Left = 444
  Top = 327
  Width = 1132
  Height = 474
  Caption = 'LastData'
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 57
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 61
      Top = 8
      Width = 53
      Height = 48
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
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
      Left = 114
      Top = 8
      Width = 53
      Height = 48
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
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
      Left = 167
      Top = 8
      Width = 53
      Height = 48
      Hint = 'Modify Current'
      Caption = 'Modify'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
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
      Left = 220
      Top = 8
      Width = 53
      Height = 48
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
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
      Left = 273
      Top = 8
      Width = 53
      Height = 48
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
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
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 53
      Height = 48
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
  end
  object ToolPanel: TPanel
    Left = 0
    Top = 57
    Width = 1124
    Height = 80
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 49
      Top = 11
      Width = 38
      Height = 16
      Caption = 'Mat ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 246
      Top = 11
      Width = 58
      Height = 16
      Caption = 'LastCode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 462
      Top = 11
      Width = 45
      Height = 16
      Caption = 'Gender'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 663
      Top = 43
      Width = 60
      Height = 16
      Caption = 'Vendor ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 43
      Width = 73
      Height = 16
      Caption = 'Construction'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 265
      Top = 44
      Width = 48
      Height = 16
      Caption = 'Material'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 487
      Top = 44
      Width = 19
      Height = 16
      Caption = 'Cut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button3: TButton
      Left = 864
      Top = 39
      Width = 80
      Height = 33
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 93
      Top = 8
      Width = 121
      Height = 28
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 320
      Top = 8
      Width = 121
      Height = 28
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 514
      Top = 6
      Width = 121
      Height = 28
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 732
      Top = 40
      Width = 121
      Height = 28
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 92
      Top = 40
      Width = 121
      Height = 28
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 320
      Top = 40
      Width = 121
      Height = 28
      TabOrder = 6
    end
    object Button4: TButton
      Left = 864
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button4Click
    end
    object Edit7: TEdit
      Left = 514
      Top = 40
      Width = 121
      Height = 28
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 1124
    Height = 306
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'LastCode'
        Footers = <>
        Width = 109
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Mat ID'
        Width = 87
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Caption = 'Vendor ID'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Vendor Name'
        Title.Color = clWhite
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Description'
        Title.Color = clWhite
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = 'Description Chinese'
        Width = 147
      end
      item
        EditButtons = <>
        FieldName = 'LastCodeProd'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'Material'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'Construction'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'Gender'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Cut'
        Footers = <>
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 143
      end>
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 444
    Top = 272
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 476
    Top = 249
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SessionName = 'Default'
    SQL.Strings = (
      'Select lastdatas.*,clzl.YWPM,CLZL.ZWPM,CLZL.DWBH,ZSZL.zsywjc'
      'from LastDatas '
      'left join clzl on clzl.cldh=LastDatas.CLBH '
      'left join zszl on zszl.zsdh=LastDatas.zsdh'
      'where 1=1'
      
        'ORDER BY LastDatas.LastCode,LastDatas.CLBH, LastDatas.UserDate D' +
        'ESC')
    UpdateObject = UpdateSQL1
    Left = 476
    Top = 273
    object Query1LastCode: TStringField
      FieldName = 'LastCode'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1Material: TStringField
      FieldName = 'Material'
      FixedChar = True
      Size = 30
    end
    object Query1LastCodeProd: TStringField
      FieldName = 'LastCodeProd'
      FixedChar = True
      Size = 50
    end
    object Query1Construction: TStringField
      FieldName = 'Construction'
      FixedChar = True
      Size = 30
    end
    object Query1Cut: TStringField
      FieldName = 'Cut'
      FixedChar = True
    end
    object Query1Gender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 10
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 6
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update LastDatas'
      'Set'
      '  LastCode=:LastCode,'
      '  ClBH=:ClBH,'
      '  ZSDH=:ZSDH,'
      '  LastCodeProd=:LastCodeProd,'
      '  Material=:Material,'
      '  Construction=:Construction,'
      '  cut=:cut,'
      '  gender=:gender,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where'
      '  LastCode = :OLD_LastCode  and'
      '  CLBH =:OLD_CLBH and'
      '  ZSDH =:OLD_ZSDH')
    InsertSQL.Strings = (
      'Insert into LastDatas'
      
        '   (LastCode, CLBH, ZSDH, LastCodeProd,  Material, Construction,' +
        ' Cut, Gender, UserID, UserDate, YN )'
      'Values'
      
        '   (:LastCode, :CLBH, :ZSDH, :Material, :LastCodeProd, :Construc' +
        'tion, :Cut, :Gender ,:UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'delete from LastDatas'
      'where'
      '  LastCode= :OLD_LastCode  and'
      '  CLBH=:OLD_CLBH and'
      '  ZSDH=:OLD_ZSDH')
    Left = 476
    Top = 304
  end
end
