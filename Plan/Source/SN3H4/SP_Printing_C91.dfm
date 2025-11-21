object SP_Printing_C9: TSP_Printing_C9
  Left = 280
  Top = 257
  Width = 1505
  Height = 675
  Caption = 'Printing - C9'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1489
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label12: TLabel
      Left = 15
      Top = 16
      Width = 35
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 166
      Top = 16
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = 'Process'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 423
      Top = 16
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = 'Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 616
      Top = 16
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Building'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 801
      Top = 16
      Width = 30
      Height = 16
      Alignment = taRightJustify
      Caption = 'Lean'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP_PS: TDateTimePicker
      Left = 55
      Top = 12
      Width = 90
      Height = 24
      Date = 44896.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 44896.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DTP_PSChange
    end
    object Button5: TButton
      Left = 966
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button5Click
    end
    object CB_Process_PS: TComboBox
      Left = 221
      Top = 12
      Width = 158
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 2
      Text = 'CHUYEN IN'
      Items.Strings = (
        'IN'
        'CHUYEN IN')
    end
    object CB_Supplier_PS: TComboBox
      Left = 478
      Top = 12
      Width = 117
      Height = 24
      Style = csDropDownList
      DropDownCount = 10
      Enabled = False
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'TY XUAN'
      Items.Strings = (
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
    end
    object Button6: TButton
      Left = 378
      Top = 12
      Width = 22
      Height = 22
      Caption = 'VN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button6Click
    end
    object CB_Building_PS: TComboBox
      Left = 675
      Top = 12
      Width = 105
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      OnChange = CB_Building_PSChange
    end
    object CB_Lean_PS: TComboBox
      Left = 836
      Top = 12
      Width = 105
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
    end
  end
  object PC2: TPageControl
    Left = 0
    Top = 48
    Width = 1489
    Height = 588
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = 'Input'
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 65
        Width = 1481
        Height = 492
        Align = alClient
        DataSource = DS_PSI
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
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Date'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Building'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Lean'
            Footers = <>
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'schedule_date'
            Footers = <>
            Title.Caption = 'Plan Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = 'Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'BUY'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'RY'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Width = 100
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'RYPairs'
            Footers = <>
            Title.Caption = 'Total'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Part'
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
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'Process'
            Footers = <>
            KeyList.Strings = (
              'PRINTING'
              'TRANSFER PRINTING')
            PickList.Strings = (
              'IN'
              'CHUYEN IN')
            Width = 150
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'LackPairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Shortage'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Title.Caption = 'User ID'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Title.Caption = 'User Date'
            Width = 80
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1481
        Height = 65
        Align = alTop
        TabOrder = 1
        object BB2_PSI: TBitBtn
          Left = 88
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
          TabOrder = 0
          OnClick = BB2_PSIClick
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
        object BB3_PSI: TBitBtn
          Left = 136
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
          OnClick = BB3_PSIClick
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
        object BB1_PSI: TBitBtn
          Left = 16
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Upload'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BB1_PSIClick
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Output'
      ImageIndex = 1
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 65
        Width = 1481
        Height = 492
        Align = alClient
        DataSource = DS_PSO
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
        OnDrawColumnCell = DBGridEh5DrawColumnCell
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Date'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Building'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Lean'
            Footers = <>
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'schedule_date'
            Footers = <>
            Title.Caption = 'Plan Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = 'Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'BUY'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'RY'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Width = 100
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'RYPairs'
            Footers = <>
            Title.Caption = 'Total'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Part'
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
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'Process'
            Footers = <>
            KeyList.Strings = (
              'PRINTING'
              'TRANSFER PRINTING')
            PickList.Strings = (
              'IN'
              'CHUYEN IN')
            Width = 150
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'LackPairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Shortage'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Title.Caption = 'User ID'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Title.Caption = 'User Date'
            Width = 80
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1481
        Height = 65
        Align = alTop
        TabOrder = 1
        object BB2_PSO: TBitBtn
          Left = 88
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
          TabOrder = 0
          OnClick = BB2_PSOClick
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
        object BB3_PSO: TBitBtn
          Left = 136
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
          OnClick = BB3_PSOClick
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
        object BB1_PSO: TBitBtn
          Left = 16
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Upload'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BB1_PSOClick
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
      end
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 56
    Top = 224
  end
  object DS_PSI: TDataSource
    DataSet = Q_PSI
    Left = 24
    Top = 192
  end
  object Q_PSI: TQuery
    AfterOpen = Q_PSIAfterOpen
    DatabaseName = 'DB'
    UpdateObject = U_PSI
    Left = 24
    Top = 224
    object Q_PSIListNo: TStringField
      FieldName = 'ListNo'
      Size = 11
    end
    object Q_PSIDate: TDateTimeField
      FieldName = 'Date'
    end
    object Q_PSIBuilding: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object Q_PSILean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_PSIRY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Q_PSIRYPairs: TIntegerField
      FieldName = 'RYPairs'
    end
    object Q_PSIPart: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object Q_PSIProcess: TStringField
      FieldName = 'Process'
      Size = 30
    end
    object Q_PSIPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_PSILackPairs: TIntegerField
      FieldName = 'LackPairs'
    end
    object Q_PSIUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Q_PSIUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Q_PSIYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Q_PSIschedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Q_PSIDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_PSIARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_PSIBUY: TStringField
      FieldName = 'BUY'
      Size = 10
    end
  end
  object U_PSI: TUpdateSQL
    InsertSQL.Strings = (
      
        'INSERT INTO SecondProcessInput (ListNo, Date, Building, Lean, RY' +
        ', Process, Part, Pairs, Department, UserID, UserDate, YN)'
      
        'VALUES (:ListNo, :Date, :Building, :Lean, :RY, :Process, :Part, ' +
        ':Pairs, '#39'C9'#39', :UserID, GetDate(), '#39'1'#39')')
    Left = 24
    Top = 256
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'excel'
    Filter = 'Excel|*.xls*'
    Options = [ofHideReadOnly, ofNoChangeDir, ofExtensionDifferent, ofEnableSizing]
    Left = 56
    Top = 256
  end
  object DS_PSO: TDataSource
    DataSet = Q_PSO
    Left = 24
    Top = 288
  end
  object Q_PSO: TQuery
    AfterOpen = Q_PSOAfterOpen
    DatabaseName = 'DB'
    UpdateObject = U_PSO
    Left = 24
    Top = 320
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
      Size = 30
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
    object Q_PSORYPairs: TIntegerField
      FieldName = 'RYPairs'
    end
    object Q_PSOLackPairs: TIntegerField
      FieldName = 'LackPairs'
    end
    object Q_PSOschedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Q_PSODAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_PSOARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_PSOBUY: TStringField
      FieldName = 'BUY'
      Size = 10
    end
  end
  object U_PSO: TUpdateSQL
    InsertSQL.Strings = (
      
        'INSERT INTO SecondProcessOutput (ListNo, Date, Building, Lean, R' +
        'Y, Process, Part, Pairs, Department, UserID, UserDate, YN)'
      
        'VALUES (:ListNo, :Date, :Building, :Lean, :RY, :Process, :Part, ' +
        ':Pairs, '#39'C9'#39', :UserID, GetDate(), '#39'1'#39')')
    Left = 24
    Top = 352
  end
end
