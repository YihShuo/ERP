object SampleOderUserChange: TSampleOderUserChange
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'SampleOderUserChange'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 105
    Align = alTop
    TabOrder = 0
    object YPDH: TLabel
      Left = 26
      Top = 74
      Width = 81
      Height = 18
      Caption = 'Sample NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbNewUserID: TLabel
      Left = 469
      Top = 72
      Width = 83
      Height = 18
      Caption = 'New UserID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbUserID: TLabel
      Left = 295
      Top = 74
      Width = 48
      Height = 18
      Caption = 'UserID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object bbInsert: TBitBtn
      Left = 70
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
    object bbDelete: TBitBtn
      Left = 118
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
    object bbModify: TBitBtn
      Left = 166
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
      OnClick = bbModifyClick
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
    object bbSave: TBitBtn
      Left = 214
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
      OnClick = bbSaveClick
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
    object bbCancel: TBitBtn
      Left = 262
      Top = 8
      Width = 51
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
      OnClick = bbCancelClick
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
    object bbQuery: TBitBtn
      Left = 22
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bbQueryClick
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
    object edtYPDH: TEdit
      Left = 116
      Top = 69
      Width = 125
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtNewUserID: TEdit
      Left = 563
      Top = 68
      Width = 76
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object edtUserID: TEdit
      Left = 354
      Top = 68
      Width = 75
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 105
    Width = 1366
    Height = 601
    ActivePage = YPMas
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object YPMas: TTabSheet
      Caption = 'YPMas'
      object DBG_YPMas: TDBGridEh
        Left = 0
        Top = 0
        Width = 1358
        Height = 566
        Align = alClient
        DataSource = DS_YPMas
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBG_YPMasCellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'YPCC'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'Currency'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'KFRQ'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'SDRQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Quantity'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'PFC'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'CFM'
            Footers = <>
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'FINDATE'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'GSDH'
            Footers = <>
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'USERNAME'
            Footers = <>
            Width = 194
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 57
          end>
      end
    end
    object YPDet: TTabSheet
      Caption = 'YPDet'
      ImageIndex = 1
      object DBG_YPDet: TDBGridEh
        Left = 0
        Top = 0
        Width = 1358
        Height = 566
        Align = alClient
        DataSource = DS_YPDet
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Footers = <>
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'CLDJ'
            Footers = <>
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Currency'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'JGZWSM'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'JGYWSM'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'XH1'
            Footers = <>
            Width = 29
          end>
      end
    end
  end
  object DS_YPMas: TDataSource
    DataSet = Qry_YPMas
    Left = 28
    Top = 228
  end
  object Qry_YPMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *from YPZL'
      'left join Busers on YPZL.USERID = Busers.USERID ')
    UpdateObject = UpdateYPMas
    Left = 60
    Top = 228
    object Qry_YPMasYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.YPZL.YPDH'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object Qry_YPMasXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.YPZL.XieXing'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object Qry_YPMasSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.YPZL.SheHao'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object Qry_YPMasARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.YPZL.ARTICLE'
      ReadOnly = True
      FixedChar = True
    end
    object Qry_YPMasKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.YPZL.KFJD'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Qry_YPMasYPCC: TStringField
      FieldName = 'YPCC'
      Origin = 'DB.YPZL.YPCC'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object Qry_YPMasRate: TFloatField
      FieldName = 'Rate'
      Origin = 'DB.YPZL.Rate'
      ReadOnly = True
    end
    object Qry_YPMasCurrency: TStringField
      FieldName = 'Currency'
      Origin = 'DB.YPZL.Currency'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Qry_YPMasKFRQ: TStringField
      FieldName = 'KFRQ'
      Origin = 'DB.YPZL.KFRQ'
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object Qry_YPMasSDRQ: TStringField
      FieldName = 'SDRQ'
      Origin = 'DB.YPZL.SDRQ'
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object Qry_YPMasJHRQ: TStringField
      FieldName = 'JHRQ'
      Origin = 'DB.YPZL.JHRQ'
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object Qry_YPMasQuantity: TFloatField
      FieldName = 'Quantity'
      Origin = 'DB.YPZL.Quantity'
      ReadOnly = True
    end
    object Qry_YPMasPFC: TStringField
      FieldName = 'PFC'
      Origin = 'DB.YPZL.PFC'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Qry_YPMasCFM: TStringField
      FieldName = 'CFM'
      Origin = 'DB.YPZL.CFM'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object Qry_YPMasFINDATE: TStringField
      FieldName = 'FINDATE'
      Origin = 'DB.YPZL.FINDATE'
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object Qry_YPMasGSDH: TStringField
      FieldName = 'GSDH'
      Origin = 'DB.YPZL.GSDH'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Qry_YPMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YPZL.USERID'
      FixedChar = True
    end
    object Qry_YPMasUSERDATE: TStringField
      FieldName = 'USERDATE'
      Origin = 'DB.YPZL.USERDATE'
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object Qry_YPMasCGBH: TStringField
      FieldName = 'CGBH'
      Origin = 'DB.YPZL.CGBH'
      ReadOnly = True
      FixedChar = True
    end
    object Qry_YPMasKFLX: TStringField
      FieldName = 'KFLX'
      Origin = 'DB.YPZL.KFLX'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object Qry_YPMasYPCCO: TStringField
      FieldName = 'YPCCO'
      Origin = 'DB.YPZL.YPCCO'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object Qry_YPMasYPCCL: TStringField
      FieldName = 'YPCCL'
      Origin = 'DB.YPZL.YPCCL'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object Qry_YPMasCGBH1: TStringField
      FieldName = 'CGBH1'
      Origin = 'DB.YPZL.CGBH1'
      ReadOnly = True
      FixedChar = True
    end
    object Qry_YPMasMH: TStringField
      FieldName = 'MH'
      Origin = 'DB.YPZL.MH'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object Qry_YPMasLH: TStringField
      FieldName = 'LH'
      Origin = 'DB.YPZL.LH'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object Qry_YPMasBH: TStringField
      FieldName = 'BH'
      Origin = 'DB.YPZL.BH'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object Qry_YPMasFD_CHECK: TBooleanField
      FieldName = 'FD_CHECK'
      Origin = 'DB.YPZL.FD_CHECK'
      ReadOnly = True
    end
    object Qry_YPMasSubtype: TStringField
      FieldName = 'Subtype'
      Origin = 'DB.YPZL.Subtype'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object Qry_YPMasPUR_RECIEVE: TBooleanField
      FieldName = 'PUR_RECIEVE'
      Origin = 'DB.YPZL.PUR_RECIEVE'
      ReadOnly = True
    end
    object Qry_YPMasRE_CHECK: TBooleanField
      FieldName = 'RE_CHECK'
      Origin = 'DB.YPZL.RE_CHECK'
      ReadOnly = True
    end
    object Qry_YPMasTotalQuantity: TFloatField
      FieldName = 'TotalQuantity'
      Origin = 'DB.YPZL.TotalQuantity'
      ReadOnly = True
    end
    object Qry_YPMasFD: TStringField
      FieldName = 'FD'
      Origin = 'DB.YPZL.FD'
      ReadOnly = True
      FixedChar = True
    end
    object Qry_YPMasProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object Qry_YPMasUSERID_1: TStringField
      FieldName = 'USERID_1'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object Qry_YPMasUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Qry_YPMasPWD: TStringField
      FieldName = 'PWD'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object Qry_YPMasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 40
    end
    object Qry_YPMasLASTDATETIME: TDateTimeField
      FieldName = 'LASTDATETIME'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
    end
    object Qry_YPMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object Qry_YPMaspasswordchend: TDateTimeField
      FieldName = 'passwordchend'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
    end
    object Qry_YPMasfromIP: TStringField
      FieldName = 'fromIP'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 14
    end
    object Qry_YPMasdepid: TStringField
      FieldName = 'depid'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object Qry_YPMasEngname: TStringField
      FieldName = 'Engname'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
    end
    object Qry_YPMasReport: TStringField
      FieldName = 'Report'
      Origin = 'DB.YPZL.ProductionLocation'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
  end
  object Qry_YPDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS_YPMas
    SQL.Strings = (
      ''
      'select  * from YPZLS'
      '')
    UpdateObject = UpdateYPDet
    Left = 268
    Top = 228
    object Qry_YPDetYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.YPZLS.YPDH'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object Qry_YPDetXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YPZLS.XH'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Qry_YPDetBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.YPZLS.BWBH'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object Qry_YPDetBWLB: TStringField
      FieldName = 'BWLB'
      Origin = 'DB.YPZLS.BWLB'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object Qry_YPDetCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.YPZLS.CLBH'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object Qry_YPDetCSBH: TStringField
      FieldName = 'CSBH'
      Origin = 'DB.YPZLS.CSBH'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object Qry_YPDetLOSS: TFloatField
      FieldName = 'LOSS'
      Origin = 'DB.YPZLS.LOSS'
      ReadOnly = True
    end
    object Qry_YPDetCLSL: TFloatField
      FieldName = 'CLSL'
      Origin = 'DB.YPZLS.CLSL'
      ReadOnly = True
    end
    object Qry_YPDetCLDJ: TFloatField
      FieldName = 'CLDJ'
      Origin = 'DB.YPZLS.CLDJ'
      ReadOnly = True
    end
    object Qry_YPDetCurrency: TStringField
      FieldName = 'Currency'
      Origin = 'DB.YPZLS.Currency'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object Qry_YPDetRate: TFloatField
      FieldName = 'Rate'
      Origin = 'DB.YPZLS.Rate'
      ReadOnly = True
    end
    object Qry_YPDetRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.YPZLS.Remark'
      ReadOnly = True
      FixedChar = True
      Size = 255
    end
    object Qry_YPDetJGZWSM: TStringField
      FieldName = 'JGZWSM'
      Origin = 'DB.YPZLS.JGZWSM'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object Qry_YPDetJGYWSM: TStringField
      FieldName = 'JGYWSM'
      Origin = 'DB.YPZLS.JGYWSM'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object Qry_YPDetUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.YPZLS.UserID'
      FixedChar = True
      Size = 10
    end
    object Qry_YPDetUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.YPZLS.UserDate'
      ReadOnly = True
    end
    object Qry_YPDetXH1: TIntegerField
      FieldName = 'XH1'
      Origin = 'DB.YPZLS.XH1'
      ReadOnly = True
    end
  end
  object DS_YPDet: TDataSource
    DataSet = Qry_YPDet
    Left = 228
    Top = 228
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 308
    Top = 228
  end
  object UpdateYPMas: TUpdateSQL
    ModifySQL.Strings = (
      'update ypzl'
      'set userid =: userid'
      'where YPDH =: YPDH'
      'and userid =:userid')
    Left = 60
    Top = 268
  end
  object UpdateYPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update ypzls'
      'set userid =: userid'
      'where YPDH =: YPDH'
      'and userid =:userid')
    Left = 268
    Top = 268
  end
end
