object ST_DONVI: TST_DONVI
  Left = 0
  Top = 0
  Caption = 'ST_DONVI'
  ClientHeight = 639
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 743
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
      TabOrder = 1
      OnClick = BB2Click
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
      TabOrder = 2
      OnClick = BB4Click
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
      TabOrder = 3
      OnClick = BB3Click
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
      TabOrder = 5
      OnClick = BB6Click
    end
    object BB7: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Tho'#225't'
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
      TabOrder = 6
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Truy v'#7845'n'
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
    object bbt6: TBitBtn
      Left = 351
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      TabOrder = 7
      OnClick = bbt6Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 65
    Width = 798
    Height = 37
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 743
    object Label14: TLabel
      Left = 19
      Top = 11
      Width = 44
      Height = 16
      Caption = 'DV M'#227':'
    end
    object Label15: TLabel
      Left = 196
      Top = 11
      Width = 47
      Height = 16
      Caption = 'DV T'#234'n:'
    end
    object Label16: TLabel
      Left = 377
      Top = 10
      Width = 38
      Height = 16
      Caption = 'Nh'#243'm:'
    end
    object Query4: TButton
      Left = 558
      Top = 6
      Width = 75
      Height = 25
      Caption = 'T'#236'm ki'#7871'm'
      TabOrder = 0
      OnClick = Query4Click
    end
    object DV_MAEdit: TEdit
      Left = 64
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object DV_TenEdit: TEdit
      Left = 248
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object ClzmlbComb: TComboBox
      Left = 419
      Top = 6
      Width = 49
      Height = 24
      ItemIndex = 0
      TabOrder = 3
      Items.Strings = (
        ''
        'Y'
        'N')
    end
    object SoNVCheckbox: TCheckBox
      Left = 475
      Top = 10
      Width = 81
      Height = 17
      Caption = 'S'#7889' NV >0'
      TabOrder = 4
    end
  end
  object DBGridEh5: TDBGridEh
    Left = 0
    Top = 102
    Width = 798
    Height = 537
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentFont = False
    PopupMenu = PopupMenu1
    RowHeight = 20
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnDrawColumnCell = DBGridEh5DrawColumnCell
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_MA'
        Footer.FieldName = 'DV_MA'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_TEN'
        Footers = <>
        Width = 189
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'TienSanluongHeso'
        Footers = <>
        PickList.Strings = (
          '0.8'
          '1')
        Title.Caption = 'HESO'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sumline'
        Footers = <>
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Flag'
        Footers = <>
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Clzmlb'
        Footers = <>
        Title.Caption = 'nhom'
        Width = 28
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NCount'
        Footers = <>
        Title.Caption = 'So NV'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 48
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 133
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ST_DONVIQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ST_DONVIQryAfterOpen
    BeforeClose = ST_DONVIQryBeforeClose
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      'Select * from ('
      
        'Select ST_DONVI.*,case when IT_ORGLEVEL.Counti>0 then '#39'Y'#39' else '#39 +
        'N'#39' end as Clzmlb,IsNull(IT_NHANVIEN_DONVI.NCount  ,0) as NCount '
      'from LIY_TYBACH.dbo.ST_DONVI ST_DONVI  '
      
        'Left join (Select DV_MA,Count(DV_MA1) as Counti from LIY_TYBACH.' +
        'dbo.IT_ORGLEVEL IT_ORGLEVEL Group by DV_MA) IT_ORGLEVEL on IT_OR' +
        'GLEVEL.DV_MA=ST_DONVI.DV_MA  '
      
        'Left join (Select DV_MA,Count(NV_MA) as NCount from LIY_TYBACH.d' +
        'bo.IT_NHANVIEN_DONVI IT_NHANVIEN_DONVI Group by DV_MA) IT_NHANVI' +
        'EN_DONVI on IT_NHANVIEN_DONVI.DV_MA=ST_DONVI.DV_MA  '
      'where 1=1 '
      ') ST_DONVI where 1=1')
    Left = 312
    Top = 193
    object ST_DONVIQryDV_MA: TWideStringField
      FieldName = 'DV_MA'
      Size = 50
    end
    object ST_DONVIQryDV_TEN: TWideStringField
      FieldName = 'DV_TEN'
      Size = 50
    end
    object ST_DONVIQryTienSanluongHeso: TFloatField
      FieldName = 'TienSanluongHeso'
    end
    object ST_DONVIQrysumline: TStringField
      FieldName = 'sumline'
      Size = 30
    end
    object ST_DONVIQryClzmlb: TStringField
      FieldName = 'Clzmlb'
      ReadOnly = True
      Size = 1
    end
    object ST_DONVIQryFlag: TStringField
      FieldName = 'Flag'
      Size = 10
    end
    object ST_DONVIQryNCount: TIntegerField
      FieldName = 'NCount'
      ReadOnly = True
    end
    object ST_DONVIQryUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object ST_DONVIQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object ST_DONVIQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = ST_DONVIQry
    Left = 312
    Top = 241
  end
  object UpdST_DONVI: TMyADOUpdateSQL
    DataSet = ST_DONVIQry
    ZModifyCommandObj.Connection = DM2.ADOConn
    ZModifyCommandObj.Parameters = <
      item
        Name = 'TienSanluongHeso'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
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
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_DV_MA'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update ST_DONVI'
      'Set'
      '  TienSanluongHeso =:TienSanluongHeso ,'
      '  UserID =:UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DV_MA =:OLD_DV_MA')
    ZDeleteCommandObj.Connection = DM2.ADOConn
    ZDeleteCommandObj.Parameters = <>
    ZInsertCommandObj.Connection = DM2.ADOConn
    ZInsertCommandObj.Parameters = <>
    SQLModify = 
      'Update ST_DONVI'#13#10'Set'#13#10'  TienSanluongHeso =:TienSanluongHeso ,'#13#10' ' +
      ' UserID =:UserID,'#13#10'  UserDate =:UserDate'#13#10'where'#13#10'  DV_MA =:OLD_D' +
      'V_MA'
    Left = 312
    Top = 289
  end
  object Qtemp: TADOQuery
    Connection = DM2.ADOConn
    Parameters = <>
    SQL.Strings = (
      '--//[1] Create Linkserver'
      'set ansi_nulls on '
      'set ansi_warnings on '
      ' '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39') '
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39'192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\s' +
        'ql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER                        '
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 256
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 344
    object MenuItem1: TMenuItem
      Caption = 'Don Vi Ket Noi '#31649#29702#21934#20301#36899#32080
      OnClick = MenuItem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object NhanvienDonvi1: TMenuItem
      Caption = 'Nhan Vien Don Vi '#21729#24037#21934#20301#25351#23450
      OnClick = NhanvienDonvi1Click
    end
  end
end
