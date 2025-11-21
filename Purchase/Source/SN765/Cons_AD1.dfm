object Cons_AD: TCons_AD
  Left = 264
  Top = 198
  Width = 1055
  Height = 555
  Caption = 'Cons_AD'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1905
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 360
      Top = 6
      Width = 27
      Height = 16
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 526
      Top = 5
      Width = 54
      Height = 16
      Caption = 'Spec SR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 368
      Top = 28
      Width = 19
      Height = 16
      Caption = 'AD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB2: TBitBtn
      Left = 2
      Top = 1
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
      Left = 50
      Top = 1
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
      Left = 98
      Top = 1
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
      Left = 146
      Top = 1
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
      Left = 194
      Top = 1
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
      Left = 242
      Top = 1
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
      TabOrder = 5
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
    object Button1: TButton
      Left = 812
      Top = 21
      Width = 72
      Height = 27
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit_SR: TEdit
      Left = 592
      Top = 3
      Width = 185
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit_SKU: TEdit
      Left = 392
      Top = 4
      Width = 129
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object BDT7: TBitBtn
      Left = 299
      Top = 1
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
      TabOrder = 9
      OnClick = BDT7Click
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
    object ADCFMCK: TCheckBox
      Left = 530
      Top = 28
      Width = 135
      Height = 17
      Caption = 'Not yet  AD Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object SizeCFMCK: TCheckBox
      Left = 670
      Top = 28
      Width = 139
      Height = 17
      Caption = 'No yet Size Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object NoADCk: TCheckBox
      Left = 810
      Top = 4
      Width = 76
      Height = 17
      Caption = 'No AD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Edit_AD: TEdit
      Left = 392
      Top = 26
      Width = 129
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 50
    Width = 1905
    Height = 847
    Align = alClient
    DataSource = ADDS
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 2
    OnEditButtonClick = DBGridEditButtonClick
    OnGetCellParams = DBGridGetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <
          item
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Spec SR'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ADCode'
        Footers = <>
        Title.Caption = 'AD'
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Mat Name'
        Width = 455
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CCQQ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size From'
        Width = 69
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CCQZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size To'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = 'AD CFM'
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE1'
        Footers = <>
        Title.Caption = 'Size CFM'
        Width = 107
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Mat No'
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        ReadOnly = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 1640
    Top = 52
    Width = 265
    Height = 845
    Caption = 'Panel1'
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 263
      Height = 843
      Align = alClient
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = 14822282
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Lines.Strings = (
        '------------------------------'
        #31243#24335#20027#35201#21151#33021#35498#26126
        ''
        #20027#35201#29992#26044'Converse_AD'#24067#27161#36039#26009
        ''
        '------------------------------'
        #36039#26009#31721#36984#25805#20316#35498#26126
        ''
        'SKU: '#27491#24335#38795#23376#22411#39636#21517#31281
        'Spec SR: '#26283#26178#38795#23376#22411#39636#21517#31281
        'AD: '#38795#33292#27161
        ''
        '------------------------------'
        #37325#40670#27396#20301#35498#26126
        ''
        'MatName: '#26448#26009#21517#31281#35498#26126
        'Size From: '#23610#23544#36215
        'Size To: '#23610#23544#36804
        'AD CFM: '#38795#33292#27161#30906#35469
        'SIZE CFM: '#23610#23544#30906#35469
        'Mat No: '#26448#26009#21934#34399
        'BWBH: '#37096#20301#32232#34399
        ''
        '------------------------------')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object ADQry: TQuery
    AfterOpen = ADQryAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.ARTICLE as SKU,KFXXZL.DEVCODE  as SR,AD.*,XXZLS.CLBH' +
        ',XXZLS.CCQQ,XXZLS.CCQZ,CLZL.YWPM from Cons_Avery AD'
      
        'Left join XXZL on XXZL.XieXing=AD.XieXing and XXZL.SheHao=AD.She' +
        'Hao'
      
        'Left join KFXXZL on KFXXZL.XieXing=AD.XieXing and KFXXZL.SheHao=' +
        'AD.SheHao'
      
        'Left join XXZLS on XXZLS.XieXing=AD.XieXing and XXZLS.SheHao=AD.' +
        'SheHao and XXZLS.BWBH='#39'C209'#39' and XXZLS.CSBH='#39'P024'#39
      'Left join CLZL on CLZL.cldh=XXZLS.CLBH'
      'where XXZL.ARTICLE is not null '
      'Union all'
      
        'select XXZL.ARTICLE as SKU,KFXXZL.DEVCODE as SR,AD.*,YPZLS.CLBH,' +
        'Null as CCQQ,Null as CCQZ,CLZL.YWPM from Cons_Avery AD'
      
        'Left join KFXXZL on KFXXZL.XieXing=AD.XieXing and KFXXZL.SheHao=' +
        'AD.SheHao'
      
        'Left join ( select * from (select YPDH,XieXing,SheHao,ARTICLE,RO' +
        'W_NUMBER() over (PARTITION BY XieXing,SheHao,ARTICLE  ORDER BY  ' +
        'YPDH DESC) as  rn from '
      
        '(select YPZL.YPDH,KFXXZL.XieXing,KFXXZL.SheHao,kfxxzl.ARTICLE fr' +
        'om YPZL,KFXXZL where KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao and  YPZL.GSDH='#39'CDC'#39' Group by YPZL.YPDH,KFXXZL.Xi' +
        'eXing,KFXXZL.SheHao,kfxxzl.ARTICLE) A ) A'
      
        'where A.rn=1 ) YPZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheH' +
        'ao=kfxxzl.SheHao'
      
        'Left join YPZLS on YPZLS.YPDH=YPZL.YPDH and  YPZLS.BWBH='#39'C209'#39' a' +
        'nd YPZLS.CSBH='#39'P024'#39
      'Left join CLZL on CLZL.cldh=YPZLS.CLBH'
      
        'Left join XXZL on XXZL.XieXing=AD.XieXing and XXZL.SheHao=AD.She' +
        'Hao'
      'where XXZL.ARTICLE is null')
    UpdateObject = UpdAD
    Left = 224
    Top = 176
    object ADQrySKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object ADQrySR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object ADQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object ADQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object ADQryBWBH: TStringField
      FieldName = 'BWBH'
    end
    object ADQryADCode: TStringField
      FieldName = 'ADCode'
      FixedChar = True
    end
    object ADQryQty: TBooleanField
      FieldName = 'Qty'
    end
    object ADQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ADQryCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object ADQryCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object ADQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 6
    end
    object ADQryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object ADQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ADQryYN: TStringField
      FieldName = 'YN'
    end
    object ADQryCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 6
    end
    object ADQryCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object ADQryCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 6
    end
    object ADQryCFMDATE1: TDateTimeField
      FieldName = 'CFMDATE1'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object ADQryCLDH: TStringField
      FieldName = 'CLDH'
    end
  end
  object ADDS: TDataSource
    DataSet = ADQry
    Left = 264
    Top = 176
  end
  object UpdAD: TUpdateSQL
    ModifySQL.Strings = (
      'Update Cons_Avery'
      'Set'
      '   ADCode =:ADCode,'
      '   UserID =:UserID,'
      '   UserDate =:UserDate,'
      '   CFMID =:CFMID,'
      '   CFMDATE =:CFMDATE,'
      '   CFMID1 =:CFMID1,'
      '   CFMDATE1 =:CFMDATE1 '
      'where'
      '   XieXing =:Old_XieXing'
      '   and SheHao =:Old_SheHao'
      '   and BWBH =:Old_BWBH')
    InsertSQL.Strings = (
      'Insert Cons_Avery'
      
        '  (XieXing, SheHao ,BWBH ,ADCode, UserID, UserDate, CFMID, CFMDA' +
        'TE, CFMID1, CFMDATE1 )'
      'Values'
      
        '  (:XieXing, :SheHao ,:BWBH ,:ADCode, :UserID, :UserDate , :CFMI' +
        'D, :CFMDATE, :CFMID1, :CFMDATE1 )')
    DeleteSQL.Strings = (
      'Delete From  Cons_Avery'
      
        'where XieXing=:Old_XieXing and SheHao=:Old_SheHao   and BWBH=:Ol' +
        'd_BWBH')
    Left = 224
    Top = 208
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 209
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 225
    Top = 144
  end
end
