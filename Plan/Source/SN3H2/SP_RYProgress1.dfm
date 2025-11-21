object SP_RYProgress: TSP_RYProgress
  Left = 351
  Top = 234
  Width = 1341
  Height = 675
  BorderIcons = [biSystemMenu]
  Caption = 'RY Progress'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 1070
    Top = 0
    Height = 636
  end
  object Splitter2: TSplitter
    Left = 815
    Top = 0
    Height = 636
  end
  object Panel1: TPanel
    Left = 818
    Top = 0
    Width = 252
    Height = 636
    Align = alLeft
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 250
      Height = 64
      Align = alTop
      TabOrder = 0
      object BI1: TBitBtn
        Left = 4
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Insert one New Record'
        Caption = 'Insert'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BI1Click
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
      object BI2: TBitBtn
        Left = 52
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Delete one Record'
        Caption = 'Delete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BI2Click
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
      object BI3: TBitBtn
        Left = 100
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Modify'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BI3Click
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
      object BI4: TBitBtn
        Left = 148
        Top = 7
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
        OnClick = BI4Click
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
      object BI5: TBitBtn
        Left = 196
        Top = 7
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
        OnClick = BI5Click
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
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 65
      Width = 250
      Height = 570
      Align = alClient
      DataSource = DS_Input
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      HorzScrollBar.Tracking = True
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          ButtonStyle = cbsNone
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'Date'
          Footer.DisplayFormat = '###,###,##0'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Input|Date'
          Width = 120
        end
        item
          DisplayFormat = '###,###,##0'
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.DisplayFormat = '###,###,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Input|Pairs'
          Width = 90
          OnUpdateData = DBGridEh1Columns3UpdateData
        end>
    end
  end
  object Panel2: TPanel
    Left = 1073
    Top = 0
    Width = 252
    Height = 636
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 250
      Height = 64
      Align = alTop
      TabOrder = 0
      object BO1: TBitBtn
        Left = 4
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Insert one New Record'
        Caption = 'Insert'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BO1Click
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
      object BO2: TBitBtn
        Left = 52
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Delete one Record'
        Caption = 'Delete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BO2Click
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
      object BO3: TBitBtn
        Left = 100
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Modify'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BO3Click
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
      object BO4: TBitBtn
        Left = 148
        Top = 7
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
        OnClick = BO4Click
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
      object BO5: TBitBtn
        Left = 196
        Top = 7
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
        OnClick = BO5Click
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
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 65
      Width = 250
      Height = 570
      Align = alClient
      DataSource = DS_Output
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      HorzScrollBar.Tracking = True
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      OnGetCellParams = DBGridEh2GetCellParams
      Columns = <
        item
          ButtonStyle = cbsNone
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'Date'
          Footer.DisplayFormat = '###,###,##0'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Output|Date'
          Width = 120
        end
        item
          DisplayFormat = '###,###,##0'
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.DisplayFormat = '###,###,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Output|Pairs'
          Width = 90
          OnUpdateData = DBGridEh2Columns3UpdateData
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 636
    Align = alLeft
    TabOrder = 2
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 65
      Width = 813
      Height = 570
      Align = alClient
      DataSource = DS_Process
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      HorzScrollBar.Tracking = True
      ReadOnly = True
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      Columns = <
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'Part'
          Footer.ValueType = fvtCount
          Footers = <>
          KeyList.Strings = (
            'UPPER'
            'UPPER LOGO'
            'TONGUE'
            'TONGUE LOGO'
            'TONGUE LINING'
            'TONGUE LINING LOGO'
            'EYESTAY LOGO'
            'COLLAR LOGO'
            'BACKSTAY LOGO'
            'HEEL LOGO'
            'BACK TAB LOGO'
            'STAR/CHEVRN LOGO'
            'TOE CAP'
            'OUTSOLE'
            'FOXING'
            'BB FOXING'
            'INSOLE'
            'BACKSTAY'
            'STRAP'
            'WEBBING'
            'QUARTER OVERLAY BAR')
          PickList.Strings = (
            'THAN'
            'LOGO THAN'
            'LUOI GA'
            'LOGO LUOI GA'
            'LOT LUOI GA'
            'LOGO LOT LUOI GA'
            'LOGO DEM'
            'LOGO VONG CO'
            'LOGO DAY GOT'
            'NHAN GOT'
            'LOGO HAU'
            'TRANG/SAO'
            'BAO MUI'
            'DE LON'
            'DAY CCS'
            'TALON THAN'
            'DE TRUNG'
            'DAY GOT'
            'DAY QUAI'
            'DAY DET'
            'TRANG TRI THAN')
          Width = 150
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'Process'
          Footers = <>
          KeyList.Strings = (
            'PRINTING'
            'HEAT PRESSING'
            'EMBROIDERY'
            'TRANSFER PRINTING')
          PickList.Strings = (
            'IN'
            'EP'
            'THEU'
            'CHUYEN IN')
          Width = 100
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'Supplier'
          Footers = <>
          KeyList.Strings = (
            'JNG'
            'P154'
            'V066'
            'P213'
            'A159'
            'V133'
            'V034'
            'V194'
            'K110'
            'P186')
          PickList.Strings = (
            'TY XUAN'
            'TIEN HUNG'
            'BAO HE'
            'HAI AN'
            'O2 PARTNER LLC'
            'LI MAO'
            'CHEN TAI'
            'WEI SHENG'
            'COLORTECH'
            'JIA HUA')
          Width = 100
        end
        item
          Color = cl3DLight
          DisplayFormat = '###,###,##0'
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <>
          Width = 50
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'EstLaunchDate'
          Footers = <>
          Title.Caption = 'Launch Date|Estimated'
          Width = 70
        end
        item
          Color = cl3DLight
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'ActLaunchDate'
          Footers = <>
          Title.Caption = 'Launch Date|Actual'
          Width = 70
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'LackInputPairs'
          Footers = <>
          Title.Caption = 'Input|Shortage'
          Width = 65
        end
        item
          Color = cl3DLight
          DisplayFormat = '##0.0%'
          EditButtons = <>
          FieldName = 'InputRate'
          Footers = <>
          Title.Caption = 'Input|Rate'
          Width = 50
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'LackOutputPairs'
          Footers = <>
          Title.Caption = 'Output|Shortage'
          Width = 65
        end
        item
          Color = cl3DLight
          DisplayFormat = '##0.0%'
          EditButtons = <>
          FieldName = 'OutputRate'
          Footers = <>
          Title.Caption = 'Output|Rate'
          Width = 50
        end>
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 813
      Height = 64
      Align = alTop
      TabOrder = 1
      object RG1: TRadioGroup
        Left = 8
        Top = 2
        Width = 161
        Height = 56
        Caption = ' Language '
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'VN'
          'CH'
          'EN')
        TabOrder = 0
        OnClick = RG1Click
      end
    end
  end
  object Q_Input: TQuery
    OnNewRecord = Q_InputNewRecord
    DatabaseName = 'DB'
    DataSource = DS_Process
    UpdateObject = U_Input
    Left = 832
    Top = 176
    object Q_InputListNo: TStringField
      FieldName = 'ListNo'
      Size = 11
    end
    object Q_InputDate: TDateTimeField
      FieldName = 'Date'
    end
    object Q_InputBuilding: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object Q_InputLean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_InputRY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Q_InputPart: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object Q_InputProcess: TStringField
      FieldName = 'Process'
    end
    object Q_InputPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_InputUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Q_InputUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Q_InputYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Q_InputType: TStringField
      FieldName = 'Type'
      Size = 10
    end
  end
  object DS_Input: TDataSource
    DataSet = Q_Input
    Left = 832
    Top = 144
  end
  object U_Input: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE SecondProcessInput'
      'SET'
      '  Date = :Date,'
      '  Part = :Part,'
      '  Process = :Process,'
      '  Pairs = :Pairs,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  ListNo = :OLD_ListNo')
    InsertSQL.Strings = (
      
        'INSERT INTO SecondProcessInput (ListNo, Date, Building, Lean, RY' +
        ', Process, Part, Pairs, UserID, UserDate, YN)'
      
        'VALUES (:ListNo, :Date, :Building, :Lean, :RY, :Process, :Part, ' +
        ':Pairs, :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM SecondProcessInput'
      'WHERE'
      '  ListNo = :OLD_ListNo')
    Left = 832
    Top = 208
  end
  object DS_Output: TDataSource
    DataSet = Q_Output
    Left = 1088
    Top = 144
  end
  object U_Output: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE SecondProcessOutput'
      'SET'
      '  Date = :Date,'
      '  Part = :Part,'
      '  Process = :Process,'
      '  Pairs = :Pairs,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  ListNo = :OLD_ListNo')
    InsertSQL.Strings = (
      
        'INSERT INTO SecondProcessOutput (ListNo, Date, Building, Lean, R' +
        'Y, Process, Part, Pairs, UserID, UserDate, YN)'
      
        'VALUES (:ListNo, :Date, :Building, :Lean, :RY, :Process, :Part, ' +
        ':Pairs, :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM SecondProcessOutput'
      'WHERE'
      '  ListNo = :OLD_ListNo')
    Left = 1088
    Top = 208
  end
  object Q_Process: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 176
    object Q_ProcessPart: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object Q_ProcessProcess: TStringField
      FieldName = 'Process'
    end
    object Q_ProcessSupplier: TStringField
      FieldName = 'Supplier'
      Size = 6
    end
    object Q_ProcessPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_ProcessLackInputPairs: TIntegerField
      FieldName = 'LackInputPairs'
    end
    object Q_ProcessInputRate: TFloatField
      FieldName = 'InputRate'
    end
    object Q_ProcessLackOutputPairs: TIntegerField
      FieldName = 'LackOutputPairs'
    end
    object Q_ProcessOutputRate: TFloatField
      FieldName = 'OutputRate'
    end
    object Q_ProcessEstLaunchDate: TStringField
      FieldName = 'EstLaunchDate'
      Size = 15
    end
    object Q_ProcessActLaunchDate: TDateTimeField
      FieldName = 'ActLaunchDate'
    end
  end
  object DS_Process: TDataSource
    DataSet = Q_Process
    Left = 16
    Top = 144
  end
  object Q_Output: TQuery
    OnNewRecord = Q_OutputNewRecord
    DatabaseName = 'DB'
    DataSource = DS_Process
    UpdateObject = U_Output
    Left = 1088
    Top = 176
    object StringField1: TStringField
      FieldName = 'ListNo'
      Size = 11
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Date'
    end
    object StringField2: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'Process'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField7: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField8: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Q_OutputType: TStringField
      FieldName = 'Type'
      Size = 10
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 176
  end
end
