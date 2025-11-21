object Upload_PLX: TUpload_PLX
  Left = 560
  Top = 217
  Width = 1456
  Height = 675
  Caption = 'Upload_PLX'
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
    Width = 1440
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 145
    Width = 1440
    Height = 491
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'VATFile'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Width = 250
        OnEditButtonClick = DBGridEh1Columns3EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'VATFile1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Width = 150
        OnEditButtonClick = DBGridEh1Columns4EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DOCDATE'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 1440
    Height = 82
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
      Left = 22
      Top = 11
      Width = 46
      Height = 16
      Caption = 'DocNo:'
    end
    object Label2: TLabel
      Left = 210
      Top = 11
      Width = 72
      Height = 16
      Caption = 'Declaration:'
    end
    object Label3: TLabel
      Left = 26
      Top = 51
      Width = 39
      Height = 16
      Caption = 'ZSBH:'
    end
    object Label4: TLabel
      Left = 190
      Top = 51
      Width = 93
      Height = 16
      Caption = 'Supplier Name:'
    end
    object Label5: TLabel
      Left = 455
      Top = 11
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DocDate:'
    end
    object Label6: TLabel
      Left = 624
      Top = 14
      Width = 9
      Height = 16
      Caption = '~'
    end
    object edtDocNo: TEdit
      Left = 71
      Top = 7
      Width = 98
      Height = 24
      TabOrder = 0
    end
    object edtDecl: TEdit
      Left = 286
      Top = 7
      Width = 145
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 522
      Top = 45
      Width = 84
      Height = 28
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object edtZSBH: TEdit
      Left = 69
      Top = 47
      Width = 98
      Height = 24
      TabOrder = 3
    end
    object edtSupp: TEdit
      Left = 286
      Top = 47
      Width = 145
      Height = 24
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 522
      Top = 8
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 642
      Top = 8
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object Check: TCheckBox
      Left = 464
      Top = 52
      Width = 57
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCRK.GSBH,KCRK.DOCNO,KCRK.ZSBH,DOCNO_File.VATFile,DOCNO_F' +
        'ile.VATFile1,DOCNO_File.Memo,KCPK.Declaretion,ZSZL.ZSYWJC,DOCDAT' +
        'E'
      #9'   ,DOCNO_File.UserID,DOCNO_File.UserDate,DOCNO_File.YN'
      'FROM KCRK'
      'left join zszl on kcrk.ZSBH=zszl.zsdh '
      'left join CGZL on KCRK.ZSNO = CGZL.CGNO '
      'left join KCPK on KCRK.RKNO=KCPK.PKNO'
      'left join DOCNO_File on KCRK.GSBH=DOCNO_File.GSBH '
      'and KCRK.DOCNO=DOCNO_File.DOCNO and KCRK.ZSBH=DOCNO_File.ZSBH'
      'where  1=1 and isnull(KCRK.DOCNO,'#39#39')<>'#39#39' '
      'and convert(varchar,KCRK.DOCDATE,111) between '
      #39'2023/09/01'#39' and '#39'2023/09/30'#39
      '  and  CGZL.USERID = '#39'35240'#39'  '
      
        ' group by KCRK.GSBH,KCRK.DOCNO,KCRK.ZSBH,DOCNO_File.VATFile,DOCN' +
        'O_File.VATFile1,DOCNO_File.Memo,KCPK.Declaretion,ZSZL.ZSYWJC,DOC' +
        'DATE'
      #9#9'  ,DOCNO_File.UserID,DOCNO_File.UserDate,DOCNO_File.YN'#9
      ' order by KCRK.DOCDATE')
    UpdateObject = UpdateSQL1
    Left = 77
    Top = 256
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1VATFile: TStringField
      FieldName = 'VATFile'
      FixedChar = True
      Size = 100
    end
    object Query1VATFile1: TStringField
      FieldName = 'VATFile1'
      FixedChar = True
      Size = 100
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1DOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 77
    Top = 224
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE DOCNO_File'
      'SET'
      '  VATFile = :VATFile,'
      '  VATFile1 = :VATFile1,'
      '  Memo = :Memo,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate,'
      '  YN = :YN'
      'WHERE'
      '  GSBH = :OLD_GSBH AND'
      '  DOCNO = :OLD_DOCNO AND'
      '  ZSBH = :OLD_ZSBH'
      '')
    InsertSQL.Strings = (
      'INSERT INTO DOCNO_File'
      
        '(GSBH, DOCNO, ZSBH, VATFile, VATFile1,Memo, UserID, UserDate, YN' +
        ')'
      'VALUES'
      
        '(:GSBH, :DOCNO, :ZSBH, :VATFile, :VATFile1, :Memo, :UserID, :Use' +
        'rDate, :YN)')
    Left = 77
    Top = 288
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 109
    Top = 256
  end
  object OpenDialog1: TOpenDialog
    Left = 216
    Top = 242
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    Top = 264
    object DownloadFile1: TMenuItem
      Caption = 'Download File'
      OnClick = DownloadFile1Click
    end
    object DownloadFile11: TMenuItem
      Caption = 'Download File1'
      OnClick = DownloadFile11Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DeleteFile1: TMenuItem
      Caption = 'Delete File'
      OnClick = DeleteFile1Click
    end
    object DeleteFile11: TMenuItem
      Caption = 'Delete File1'
      OnClick = DeleteFile11Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt|PDF F' +
      'iles(*.pdf)|*.pdf|All Files(*.*)|*.*'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 251
    Top = 242
  end
end
