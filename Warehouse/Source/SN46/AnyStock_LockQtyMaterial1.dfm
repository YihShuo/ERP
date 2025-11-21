object AnyStock_LockQtyMaterial: TAnyStock_LockQtyMaterial
  Left = 348
  Top = 252
  Width = 1305
  Height = 675
  Caption = 'AnyStock_LockQtyMaterial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 65
    Align = alTop
    TabOrder = 0
    object btnBB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnBB2Click
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
    object btnBB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnBB3Click
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
    object btnBB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnBB4Click
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
    object btnBB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnBB5Click
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
    object btnBB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnBB6Click
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
    object btnbbt6: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = btnbbt6Click
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
  object pnl2: TPanel
    Left = 0
    Top = 65
    Width = 1289
    Height = 56
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbl1: TLabel
      Left = 20
      Top = 20
      Width = 56
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btn1: TButton
      Left = 232
      Top = 12
      Width = 89
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 121
    Width = 1289
    Height = 515
    Align = alClient
    DataSource = dsDS1
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
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh2EditButtonClick
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'GSDH'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        ReadOnly = True
        Width = 194
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        ReadOnly = True
        Width = 175
      end
      item
        DisplayFormat = '###,###.##'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 37
      end>
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from zszl'
      'order by zsdh')
    UpdateObject = UpSQL1
    Left = 136
    Top = 256
    object strngfldqry1CLBH: TStringField
      FieldName = 'CLBH'
    end
    object strngfldqry1CKBH: TStringField
      FieldName = 'CKBH'
    end
    object strngfldqry1GSDH: TStringField
      FieldName = 'GSDH'
    end
    object qry1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object strngfldqry1Memo: TStringField
      FieldName = 'Memo'
      Size = 250
    end
    object strngfldqry1UserID: TStringField
      FieldName = 'UserID'
    end
    object dtmfldqry1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object strngfldqry1YN: TStringField
      FieldName = 'YN'
    end
    object strngfldqry1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 250
    end
    object strngfldqry1zwpm: TStringField
      FieldName = 'zwpm'
      Size = 250
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE KCZL_QtyLock'
      'SET'
      '  CLBH     = :CLBH,'
      '  CKBH     = :CKBH,'
      '  GSDH     = :GSDH,'
      '  Qty      = :Qty,'
      '  Memo     = :Memo,'
      '  UserID   = :UserID,'
      '  UserDate = :UserDate,'
      '  YN       = :YN'
      'WHERE'
      '  CLBH = :OLD_CLBH'
      '  AND CKBH = :OLD_CKBH;')
    InsertSQL.Strings = (
      'INSERT INTO KCZL_QtyLock'
      '(CLBH,CKBH,GSDH,Qty,Memo,UserID,UserDate,YN)'
      'VALUES'
      '( :CLBH, :CKBH, :GSDH, :Qty, :Memo, :UserID, :UserDate, :YN);'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM KCZL_QtyLock'
      'WHERE CLBH = :OLD_CLBH'
      '  AND CKBH = :OLD_CKBH;')
    Left = 136
    Top = 288
  end
  object qryTmp: TQuery
    DatabaseName = 'dB'
    Left = 136
    Top = 321
  end
  object dsDS1: TDataSource
    DataSet = qry1
    Left = 168
    Top = 256
  end
end
