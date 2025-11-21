object TrackingUpdateList: TTrackingUpdateList
  Left = 492
  Top = 242
  Width = 1305
  Height = 675
  Caption = 'TrackingUpdateList'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 1289
    Height = 56
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 322
      Top = 22
      Width = 68
      Height = 16
      Caption = 'Sample No'
    end
    object Label4: TLabel
      Left = 519
      Top = 22
      Width = 26
      Height = 16
      Caption = 'SR#'
    end
    object Label3: TLabel
      Left = 9
      Top = 24
      Width = 74
      Height = 16
      Caption = 'DateUpdate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 192
      Top = 24
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object ED_SampleNo: TEdit
      Left = 396
      Top = 16
      Width = 107
      Height = 24
      Color = clWhite
      TabOrder = 0
    end
    object Button1: TButton
      Left = 726
      Top = 11
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 808
      Top = 11
      Width = 75
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object ED_SR: TEdit
      Left = 554
      Top = 16
      Width = 104
      Height = 24
      Color = clWhite
      TabOrder = 3
    end
    object Check: TCheckBox
      Left = 671
      Top = 21
      Width = 54
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 89
      Top = 20
      Width = 97
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 217
      Top = 19
      Width = 97
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 65
    Align = alTop
    TabOrder = 1
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
      TabOrder = 6
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
      TabOrder = 5
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
      TabOrder = 2
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
      TabOrder = 1
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
    object B_Exit: TBitBtn
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
      TabOrder = 0
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1289
    Height = 515
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DateUpdate'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Stage'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'SampleNo'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DevType'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SR#'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PartName'
        Footers = <>
        Width = 175
      end
      item
        EditButtons = <>
        FieldName = 'DetailUpdate'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'ReasonUpdate'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'DEV'
        Footers = <>
        Title.Caption = 'Responsiblity|DEV'
      end
      item
        EditButtons = <>
        FieldName = 'BOM'
        Footers = <>
        Title.Caption = 'Responsiblity|BOM'
      end
      item
        EditButtons = <>
        FieldName = 'CTS_HQ'
        Footers = <>
        Title.Caption = 'Responsiblity|CTS_HQ'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'TECH'
        Footers = <>
        Title.Caption = 'Responsiblity|TECH'
      end
      item
        EditButtons = <>
        FieldName = 'Pattern'
        Footers = <>
        Title.Caption = 'Responsiblity|Pattern'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CE'
        Footers = <>
        Title.Caption = 'Responsiblity|CE'
      end
      item
        EditButtons = <>
        FieldName = 'Vendor'
        Footers = <>
        Title.Caption = 'Responsiblity|Vendor'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Purchasing'
        Footers = <>
        Title.Caption = 'Responsiblity|Purchasing'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Others'
        Footers = <>
        Title.Caption = 'Responsiblity|Others'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'BOMTaker'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Engname'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 70
      end>
  end
  object DS1: TDataSource
    DataSet = QTracking
    Left = 72
    Top = 280
  end
  object QTracking: TQuery
    AfterOpen = QTrackingAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select BModRec_Dev.DelDate as DateUpdate,kfxxzl.JiJie as Season,' +
        'ypzl.KFJD as Stage,ypzl.YPDH as SampleNo,kfxxzl.DEVCODE as SR#,k' +
        'fxxzl.DevType,'
      
        #9'   DevChangeMemo.PartName,DevChangeMemo.DetailUpdate,  DevChang' +
        'eMemo.ReasonUpdate,DEV,BOM,CTS_HQ,TECH,Pattern,CE,Vendor,Purchas' +
        'ing,Others,kfxxzl.FD,'
      
        #9'   BModRec_Dev.DelID+ '#39' - '#39' +USERNAME as BOMTaker,Busers.Engnam' +
        'e,DevChangeMemo.Remark,DevChangeMemo.UserDate, DevChangeMemo.Use' +
        'rID,DevChangeMemo.YN, DevChangeMemo.DateUpdate, DevChangeMemo.YP' +
        'DH'
      'from BModRec_Dev inner join ypzl'
      'on BModRec_Dev.tno=ypzl.ypdh'
      
        'left join kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=' +
        'kfxxzl.SheHao'
      'left join Busers on BModRec_Dev.DelID=Busers.USERID'
      
        'left join DevChangeMemo on BModRec_Dev.DelDate=DevChangeMemo.Dat' +
        'eUpdate and BModRec_Dev.TNO=DevChangeMemo.ypdh'
      'where BModRec_Dev.ARTICLE='#39'FD_CHECK'#39
      'and BModRec_Dev.DelDate between '#39'2022-05-01'#39
      'and '#39'2022-05-10'#39
      'order by BModRec_Dev.DelDate'
      '')
    UpdateObject = UP_Tracking
    Left = 72
    Top = 312
    object QTrackingDateUpdate: TDateTimeField
      FieldName = 'DateUpdate'
    end
    object QTrackingSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object QTrackingStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object QTrackingSampleNo: TStringField
      FieldName = 'SampleNo'
      FixedChar = True
      Size = 15
    end
    object QTrackingSR: TStringField
      FieldName = 'SR#'
      FixedChar = True
    end
    object QTrackingDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
    object QTrackingPartName: TStringField
      FieldName = 'PartName'
      FixedChar = True
      Size = 100
    end
    object QTrackingDetailUpdate: TStringField
      FieldName = 'DetailUpdate'
      FixedChar = True
      Size = 200
    end
    object QTrackingReasonUpdate: TStringField
      FieldName = 'ReasonUpdate'
      FixedChar = True
      Size = 200
    end
    object QTrackingDEV: TBooleanField
      FieldName = 'DEV'
    end
    object QTrackingBOM: TBooleanField
      FieldName = 'BOM'
    end
    object QTrackingCTS_HQ: TBooleanField
      FieldName = 'CTS_HQ'
    end
    object QTrackingTECH: TBooleanField
      FieldName = 'TECH'
    end
    object QTrackingPattern: TBooleanField
      FieldName = 'Pattern'
    end
    object QTrackingCE: TBooleanField
      FieldName = 'CE'
    end
    object QTrackingVendor: TBooleanField
      FieldName = 'Vendor'
    end
    object QTrackingPurchasing: TBooleanField
      FieldName = 'Purchasing'
    end
    object QTrackingOthers: TBooleanField
      FieldName = 'Others'
    end
    object QTrackingFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object QTrackingBOMTaker: TStringField
      FieldName = 'BOMTaker'
      FixedChar = True
      Size = 48
    end
    object QTrackingEngname: TStringField
      FieldName = 'Engname'
      FixedChar = True
    end
    object QTrackingRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 200
    end
    object QTrackingUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QTrackingUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object QTrackingYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QTrackingDateUpdate_1: TDateTimeField
      FieldName = 'DateUpdate_1'
    end
    object QTrackingYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
    end
  end
  object UP_Tracking: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  DevChangeMemo'
      'SET'
      '  PartName =:PartName,'
      '  DetailUpdate = :DetailUpdate,'
      '  ReasonUpdate = :ReasonUpdate,'
      '  DEV =:DEV,'
      '  BOM =:BOM,'
      '  CTS_HQ =:CTS_HQ,'
      '  TECH =:TECH,'
      '  Pattern =:Pattern,'
      '  CE =:CE,'
      '  Vendor =:Vendor,'
      '  Purchasing =:Purchasing,'
      '  Others =:Others,'
      '  Remark =:Remark,'
      '  UserID =:UserID,'
      '  UserDate =GetDate()'
      'WHERE'
      '  DateUpdate = :OLD_DateUpdate and YPDH = :OLD_YPDH')
    Left = 72
    Top = 344
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 120
    Top = 312
  end
end
