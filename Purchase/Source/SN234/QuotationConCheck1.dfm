object QuotationConCheck: TQuotationConCheck
  Left = 205
  Top = 237
  Width = 1081
  Height = 417
  Caption = 'QuotationConCheck'
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
    Top = 0
    Width = 1065
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 17
      Width = 39
      Height = 16
      Caption = 'BJNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 166
      Top = 18
      Width = 48
      Height = 16
      Caption = 'SuppID:'
    end
    object Label3: TLabel
      Left = 481
      Top = 19
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 617
      Top = 19
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 280
      Top = 18
      Width = 72
      Height = 16
      Caption = 'SuppName:'
    end
    object Label9: TLabel
      Left = 8
      Top = 44
      Width = 46
      Height = 16
      Caption = 'Mat No:'
    end
    object Label10: TLabel
      Left = 168
      Top = 44
      Width = 65
      Height = 16
      Caption = 'Mat Name:'
    end
    object Label11: TLabel
      Left = 468
      Top = 45
      Width = 46
      Height = 16
      Caption = 'BuyNO:'
    end
    object BJNOEdit: TEdit
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 517
      Top = 16
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 641
      Top = 16
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 4
    end
    object SupIDEdit: TEdit
      Left = 216
      Top = 16
      Width = 57
      Height = 24
      TabOrder = 1
    end
    object SuppEdit: TEdit
      Left = 352
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 2
    end
    object CheckMine: TCheckBox
      Left = 739
      Top = 17
      Width = 57
      Height = 17
      Caption = 'Mine'
      TabOrder = 5
    end
    object MatNoEdit: TEdit
      Left = 56
      Top = 42
      Width = 105
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object MatNMEdit: TEdit
      Left = 240
      Top = 41
      Width = 209
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Check: TCheckBox
      Left = 464
      Top = 18
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object BuyNoEdit: TEdit
      Left = 517
      Top = 42
      Width = 124
      Height = 24
      TabOrder = 9
    end
    object CGZLCK: TCheckBox
      Left = 736
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Price>0'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object ExpireCK: TCheckBox
      Left = 656
      Top = 48
      Width = 73
      Height = 17
      Caption = 'Is Expire'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object BDT1: TBitBtn
      Left = 816
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
      TabOrder = 12
      OnClick = BDT1Click
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
    object BDT6: TBitBtn
      Left = 928
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BDT6Click
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
    object BDT5: TBitBtn
      Left = 872
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Confirm'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = BDT5Click
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1065
    Height = 104
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 12
      Top = 20
      Width = 39
      Height = 16
      Caption = 'BJNO:'
    end
    object Label8: TLabel
      Left = 188
      Top = 19
      Width = 48
      Height = 16
      Caption = 'BJDate:'
    end
    object Label15: TLabel
      Left = 336
      Top = 19
      Width = 51
      Height = 16
      Caption = 'SUppID:'
    end
    object Label16: TLabel
      Left = 484
      Top = 18
      Width = 72
      Height = 16
      Caption = 'SuppName:'
    end
    object Label19: TLabel
      Left = 15
      Top = 67
      Width = 45
      Height = 16
      Caption = 'MatNO:'
    end
    object Label20: TLabel
      Left = 245
      Top = 68
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label21: TLabel
      Left = 680
      Top = 17
      Width = 44
      Height = 16
      Caption = 'CFMID:'
    end
    object Label6: TLabel
      Left = 816
      Top = 17
      Width = 68
      Height = 16
      Caption = 'CFMDATE:'
    end
    object DBEdit9: TDBEdit
      Left = 56
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = 15987699
      DataField = 'BJNo'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 240
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Color = 15987699
      DataField = 'EXPDATE'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 392
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Color = 15987699
      DataField = 'ZSBH'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 560
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Color = 15987699
      DataField = 'ZSJC'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 312
      Top = 48
      Width = 489
      Height = 49
      DataField = 'YWPM'
      DataSource = DS4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 64
      Top = 64
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      DataField = 'CLBH'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit14: TDBEdit
      Left = 728
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Color = 15987699
      DataField = 'CFMID'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 888
      Top = 12
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Color = 15987699
      DataField = 'CFMDATE'
      DataSource = DS4
      ReadOnly = True
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 177
    Width = 1065
    Height = 202
    Align = alClient
    DataSource = DS4
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Title.Caption = #22577#20729#25928#26399'|Sea'
        Title.Color = clAqua
      end
      item
        EditButtons = <>
        FieldName = 'EXPDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22577#20729#25928#26399'|EXPDATE'
        Title.Color = clAqua
        Width = 77
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'File_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22577#20729#25928#26399'|FileNAME'
        Title.Color = clAqua
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footers = <>
        Title.Caption = #21934#34399'|BJNO'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Footers = <>
        Title.Caption = #24288#21830'|ZSJC'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|Mat No'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|Mat Name'
        Width = 446
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USPRICE'
        Footers = <>
        Title.Caption = #32654#37329#21934#20729'|USPrice'
        Title.Color = clYellow
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'VNPRICE'
        Footers = <>
        Title.Caption = #36234#24163#21934#20729'|VNPrice'
        Title.Color = clYellow
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Discount'
        Footers = <>
        Title.Caption = #25240#25187'|Discount'
        Title.Color = clYellow
        Width = 67
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'ErpEx'
        Footers = <>
        Title.Caption = #21295#29575'|ERP'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'SuppEx'
        Footers = <>
        Title.Caption = #21295#29575'|Supp'
        Title.Color = clYellow
        Width = 60
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'ERP_US'
        Footers = <>
        Title.Caption = 'ERP|USPrice'
        Width = 60
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'ERP_VN'
        Footers = <>
        Title.Caption = 'ERP|VNPrice'
        Width = 60
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #29992#25142#32232#34399'|USERID'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #38283#21934#26085#26399'|UserDate'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'PayVN'
        Footers = <>
        Title.Caption = #20184#27454#36234#30462'|PayVN'
        Width = 63
      end>
  end
  object DS4: TDataSource
    DataSet = BJDet
    Left = 298
    Top = 281
  end
  object BJDet: TQuery
    AfterOpen = BJDetAfterOpen
    OnCalcFields = BJDetCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGBJ.BJNO,CGBJ.ZSBH,ZSZL.ZSJC,CGBJ.CLBH,CLZL.YWPM,CLZL.DW' +
        'BH,CGBJ.USPRICE,CGBJ.VNPRICE,XXZL.Article,CGBJ.Discount,CGBJ.Sup' +
        'pEx,'
      
        ' IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate' +
        '()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as ErpEx,ZSZL.P' +
        'ayVN,CGBJ.USERID,CGBJ.USERDATE,CGBJ.EXPDATE,CGBJ.File_NAME,CGBJ.' +
        'Season,CGBJ.CFMID,CGBJ.CFMDATE from ('
      
        'select CGBJS.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.USPRICE,CGBJS.VNPRI' +
        'CE,CGBJS.XieXing,CGBJS.Shehao,CGBJS.Discount,CGBJS.SuppEx,CGBJS.' +
        'USERID,CGBJS.USERDATE,CGBJS.EXPDATE,CGBJS.File_NAME,CGBJS.Season' +
        ',CGBJS.CFMID,CGBJS.CFMDATE, '
      
        ' ROW_NUMBER() over (PARTITION BY CLBH,XieXing,Shehao ORDER BY CG' +
        'BJS.BJNO DESC) as  rn from CGBJS,CGBJ '
      'where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39' '
      'and (CGBJS.USPrice>0 or CGBJS.VNPrice>0) '
      
        'and convert(smalldatetime,convert(varchar,CGBJ.USERDATE,111)) be' +
        'tween '
      #39'2017/05/19'#39' and  '#39'2017/05/26'#39
      'and (CGBJS.EXPDATE is null or CGBJS.EXPDATE<GEtDate())'
      ' ) CGBJ '
      'Left join CLZL on CLZL.CLDH=CGBJ.CLBH '
      'Left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      
        'Left join XXZL on XXZL.XieXing=CGBJ.XieXing and XXZL.SheHao=CGBJ' +
        '.SheHao'
      'where CGBJ.rn=1 '
      
        ' and CGBJ.CLBH in (select XXZLS.CLBH from XXZLS,DDZL where DDZL.' +
        'XieXing=XXZLS.XieXing and DDZL.GSBH='#39'VA12'#39' and DDZL.SheHao=XXZLS' +
        '.SheHao and DDZL.BUYNO like '#39'2017%'#39' and DDZL.ShipDate>GetDate()-' +
        '720 group by XXZLS.CLBH)'
      
        'and exists (select BJNO from CGBJS,clzl where CGBJS.BJNO=CGBJ.BJ' +
        'NO and CGBJS.CLBH=CLZL.CLDH '
      'and clzl.cldh like '#39'F070001918%'#39' '
      'and clzl.ywpm like '#39'%%'#39') '
      'order by CGBJ.BJNO desc,CGBJ.ZSBH,CGBJ.CLBH')
    UpdateObject = UPDet
    Left = 266
    Top = 281
    object BJDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object BJDetZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object BJDetZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object BJDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object BJDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object BJDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object BJDetUSPRICE: TFloatField
      FieldName = 'USPRICE'
    end
    object BJDetVNPRICE: TFloatField
      FieldName = 'VNPRICE'
    end
    object BJDetArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BJDetDiscount: TFloatField
      FieldName = 'Discount'
    end
    object BJDetSuppEx: TFloatField
      FieldName = 'SuppEx'
    end
    object BJDetErpEx: TFloatField
      FieldName = 'ErpEx'
    end
    object BJDetPayVN: TStringField
      FieldName = 'PayVN'
      FixedChar = True
      Size = 1
    end
    object BJDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object BJDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object BJDetEXPDATE: TDateTimeField
      FieldName = 'EXPDATE'
    end
    object BJDetCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object BJDetCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object BJDetFile_NAME: TStringField
      FieldName = 'File_NAME'
      FixedChar = True
      Size = 60
    end
    object BJDetERP_US: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ERP_US'
      DisplayFormat = '#,##0.00000'
      Calculated = True
    end
    object BJDetERP_VN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ERP_VN'
      DisplayFormat = '#,##0'
      Calculated = True
    end
    object BJDetSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 5
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CGBJS'
      'set'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  Discount = :Discount,'
      '  SuppEx= :SuppEx,'
      '  EXPDATE= :EXPDATE,'
      '  File_Name= :File_Name'
      'where'
      '  BJNO = :OLD_BJNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CGBJS'
      
        '  (BJNO, CLBH, USPrice, VNPrice, USERDate, USERID,Discount, BJLX' +
        ', YN,SuppEx,XieXing,SheHao)'
      'values'
      
        '  (:BJNO, :CLBH, :USPrice, :VNPrice, :USERDate, :USERID, ,:Disco' +
        'unt, :BJLX,'
      '   :YN,:SuppEx, :XieXing, :SheHao, ,:EXPDATE, :File_Name)')
    DeleteSQL.Strings = (
      'delete from CGBJS'
      'where'
      '  BJNO = :OLD_BJNO and'
      '  CLBH = :OLD_CLBH')
    Left = 266
    Top = 314
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 312
    object DownloadFN1: TMenuItem
      Caption = 'Download Report'
      Visible = False
      OnClick = DownloadFN1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      OnClick = Confirm1Click
    end
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 331
    Top = 281
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 364
    Top = 282
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.*'
    Left = 388
    Top = 282
  end
end
