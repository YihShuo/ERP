object OrderImport: TOrderImport
  Left = 308
  Top = 232
  Width = 947
  Height = 577
  Caption = 'OrderImport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 939
    Height = 481
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 704
      Top = 65
      Width = 5
      Height = 415
      Align = alRight
    end
    object DBGrideh1: TDBGridEh
      Left = 1
      Top = 65
      Width = 703
      Height = 415
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16762052
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnGetCellParams = DBGrideh1GetCellParams
      OnKeyPress = DBGrideh1KeyPress
      Columns = <
        item
          Color = 12582911
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <
            item
              FieldName = 'DDBH'
              ValueType = fvtCount
            end>
          Title.TitleButton = True
          Width = 96
        end
        item
          EditButtons = <>
          FieldName = 'YSBH'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 79
        end
        item
          Color = 12582911
          DropDownRows = 10
          EditButtons = <>
          FieldName = 'GXLB'
          Footers = <>
          Title.TitleButton = True
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'MEMO'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 69
        end
        item
          Color = 12582911
          DropDownRows = 8
          EditButtons = <>
          FieldName = 'SCYEAR'
          Footers = <>
          PickList.Strings = (
            '2006'
            '2007'
            '2008'
            '2009'
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016'
            '2017'
            '2018'
            '2019'
            '2020')
          Title.Caption = 'YEAR'
          Title.TitleButton = True
          Width = 65
        end
        item
          Color = 12582911
          DropDownRows = 12
          EditButtons = <>
          FieldName = 'SCMONTH'
          Footers = <>
          PickList.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
          Title.Caption = 'MON'
          Title.TitleButton = True
          Width = 49
        end
        item
          Color = 12582911
          DropDownRows = 10
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Title.TitleButton = True
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.TitleButton = True
          Width = 110
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Title.TitleButton = True
          Width = 141
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <
            item
              FieldName = 'Qty'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'SCCX'
          Footers = <>
          Title.Caption = 'Next'
          Title.TitleButton = True
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'SB'
          Footers = <>
          PickList.Strings = (
            '1'
            '2'
            '3')
          ReadOnly = True
          Title.TitleButton = True
          Width = 31
        end
        item
          EditButtons = <>
          FieldName = 'DepNO'
          Footers = <>
          Title.TitleButton = True
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH'
          Footers = <>
          Width = 95
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 937
      Height = 64
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 288
        Top = 32
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'OrdNo:'
      end
      object Label2: TLabel
        Left = 467
        Top = 32
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'XieMing:'
      end
      object Label3: TLabel
        Left = 624
        Top = 32
        Width = 38
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GX:'
      end
      object Edit1: TEdit
        Left = 360
        Top = 28
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 728
        Top = 23
        Width = 81
        Height = 33
        Caption = 'Query'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit2: TEdit
        Left = 520
        Top = 28
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Panel6: TPanel
        Left = 16
        Top = 20
        Width = 265
        Height = 40
        TabOrder = 3
        object Label4: TLabel
          Left = 30
          Top = 12
          Width = 32
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label5: TLabel
          Left = 155
          Top = 12
          Width = 39
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object CBX1: TComboBox
          Left = 64
          Top = 8
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 0
          Items.Strings = (
            '2006'
            '2007'
            '2008'
            '2009'
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016'
            '2017'
            '2018'
            '2019'
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029'
            '2030')
        end
        object CBX2: TComboBox
          Left = 196
          Top = 8
          Width = 49
          Height = 24
          Style = csDropDownList
          DropDownCount = 12
          ItemHeight = 16
          TabOrder = 1
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
      end
      object CB1: TCheckBox
        Left = 16
        Top = 0
        Width = 161
        Height = 17
        Caption = 'Production Month'
        Checked = True
        Color = 7470961
        ParentColor = False
        State = cbChecked
        TabOrder = 4
        OnClick = CB1Click
      end
      object CBX3: TComboBox
        Left = 664
        Top = 28
        Width = 57
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 5
        Text = 'All'
        Items.Strings = (
          'All')
      end
    end
    object Panel4: TPanel
      Left = 709
      Top = 65
      Width = 229
      Height = 415
      Align = alRight
      TabOrder = 2
      object DBGrideh2: TDBGridEh
        Left = 1
        Top = 41
        Width = 227
        Height = 373
        Align = alClient
        DataSource = DS2
        EvenRowColor = clWindow
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763594
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrideh2DrawColumnCell
        OnGetCellParams = DBGrideh2GetCellParams
        Columns = <
          item
            Color = 10944511
            EditButtons = <>
            FieldName = 'XXCC'
            Footers = <
              item
                FieldName = 'XXCC'
                ValueType = fvtCount
              end>
            Width = 42
          end
          item
            Color = 10944511
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DDQty'
            Footers = <
              item
                FieldName = 'DDQty'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'okQty'
            Footers = <
              item
                FieldName = 'okQty'
                ValueType = fvtSum
              end>
            Width = 42
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 227
        Height = 40
        Align = alTop
        TabOrder = 1
        object BD3: TBitBtn
          Left = 147
          Top = -1
          Width = 49
          Height = 41
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BD3Click
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
        object BD2: TBitBtn
          Left = 99
          Top = -1
          Width = 49
          Height = 41
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BD2Click
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
        object BD1: TBitBtn
          Left = 3
          Top = -1
          Width = 49
          Height = 41
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
          OnClick = BD1Click
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
        object BD4: TBitBtn
          Left = 51
          Top = -1
          Width = 49
          Height = 41
          Hint = 'Modify Current'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BD4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 939
    Height = 65
    Align = alTop
    TabOrder = 1
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
      TabOrder = 1
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
      TabOrder = 2
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
      Left = 217
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
      Left = 265
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
      Left = 313
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
      Left = 361
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
      TabOrder = 6
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
      TabOrder = 0
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
    object BBT1: TBitBtn
      Left = 424
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT2: TBitBtn
      Left = 472
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT3: TBitBtn
      Left = 520
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT4: TBitBtn
      Left = 568
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt5: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 680
      Top = 8
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
      TabOrder = 12
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
    object BB8: TBitBtn
      Left = 152
      Top = 8
      Width = 65
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Del-All'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BB8Click
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
  end
  object SMDD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SMDD.*,SCGXDY.MEMO,XXZL.DAOMH from SMDD '
      'left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1 '
      'left join DDZL on DDZL.ZLBH=SMDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZl.SheHao=DDZL' +
        '.SheHao'
      'where SMDD.DDBH like '#39'%'#39
      '      and SMDD.XieMing like '#39'%%'#39
      '       and SMDD.SCYEAR='#39'2009'#39
      '       and SMDD.SCMONTH='#39'08'#39
      'order by SMDD.DDBH,SMDD.SCCX ')
    UpdateObject = UpSQL1
    Left = 128
    Top = 208
    object SMDDDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDD.DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDYSBH: TStringField
      FieldName = 'YSBH'
      Origin = 'DB.SMDD.YSBH'
      FixedChar = True
      Size = 15
    end
    object SMDDGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.SMDD.GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object SMDDSCYEAR: TStringField
      FieldName = 'SCYEAR'
      Origin = 'DB.SMDD.SCYEAR'
      FixedChar = True
      Size = 4
    end
    object SMDDSCMONTH: TStringField
      FieldName = 'SCMONTH'
      Origin = 'DB.SMDD.SCMONTH'
      FixedChar = True
      Size = 2
    end
    object SMDDGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.SMDD.GSBH'
      FixedChar = True
      Size = 4
    end
    object SMDDArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.SMDD.Article'
      FixedChar = True
    end
    object SMDDXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.SMDD.XieMing'
      FixedChar = True
      Size = 50
    end
    object SMDDQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDD.Qty'
      DisplayFormat = '##,#0'
    end
    object SMDDSB: TStringField
      FieldName = 'SB'
      Origin = 'DB.SMDD.SB'
      FixedChar = True
      Size = 1
    end
    object SMDDSCCX: TStringField
      FieldName = 'SCCX'
      Origin = 'DB.SMDD.SCCX'
      FixedChar = True
      Size = 1
    end
    object SMDDUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SMDD.USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SMDDUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SMDD.USERID'
      FixedChar = True
    end
    object SMDDYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SMDD.YN'
      FixedChar = True
      Size = 1
    end
    object SMDDDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMDDDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object SMDDXH: TIntegerField
      FieldName = 'XH'
    end
  end
  object DS1: TDataSource
    DataSet = SMDD
    Left = 160
    Top = 208
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDD'
      'set'
      '  GXLB = :GXLB,'
      '  YSBH = :YSBH,'
      '  GSBH = :GSBH,'
      '  Article = :Article,'
      '  XieMing = :XieMing,'
      '  Qty = :Qty,'
      '  SCCX = :SCCX,'
      '  SB = :SB,'
      '  SCYEAR = :SCYEAR,'
      '  SCMONTH = :SCMONTH,'
      '  DepNO = :DepNO,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    InsertSQL.Strings = (
      'insert into SMDD'
      
        '  (DDBH, GXLB, YSBH, GSBH, Article, XieMing, Qty, SCCX, SB, SCYE' +
        'AR, SCMONTH, DepNO, XH, USERDate, USERID, YN)'
      'values'
      
        '  (:DDBH, :GXLB, :YSBH, :GSBH, :Article, :XieMing, :Qty, :SCCX, ' +
        ':SB, :SCYEAR, :SCMONTH, :DepNO, :XH, :USERDate, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from SMDD'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    Left = 128
    Top = 240
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 235
    Top = 206
  end
  object PopupMenu1: TPopupMenu
    Left = 237
    Top = 238
    object N1: TMenuItem
      Caption = 'Send Out'#30332#22806#21152#24037
      Enabled = False
      OnClick = N1Click
    end
  end
  object DDdet: TQuery
    AfterOpen = DDdetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select SMDDS.*,ZLZLS.Qty as DDQty,SMDDok.okQty'
      'from SMDDS'
      'left join SMDD on SMDD.DDBH=SMDDS.DDBH and SMDD.GXLB=:GXLB'
      
        'left join ZLZLS on SMDDS.XXCC=ZLZLS.XXCC and ZLZLS.ZLBH=SMDD.YSB' +
        'H'
      'left join (select SMDDS.XXCC,sum(SMDDS.Qty) as okQty from SMDDS '
      '             left join SMDD on SMDD.DDBH=SMDDS.DDBH '
      '             where SMDD.GXLB=:GXLB and SMDD.YSBH=:YSBH'
      '             group by SMDDS.XXCC )  SMDDok'
      '           on SMDDok.XXCC=SMDDs.XXCC'
      'where SMDDS.DDBH=:DDBH'
      '         and SMDDS.YN='#39'1'#39
      'order by SMDDS.XXCC DESC')
    UpdateObject = UpDDDet
    Left = 679
    Top = 226
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'GXLB'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftFixedChar
        Name = 'GXLB'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YSBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DDdetDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDS.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDdetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDS.XXCC'
      FixedChar = True
      Size = 6
    end
    object DDdetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDS.Qty'
      DisplayFormat = '##,#0'
    end
    object DDdetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SMDDS.USERDate'
    end
    object DDdetUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SMDDS.USERID'
      FixedChar = True
    end
    object DDdetYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SMDDS.YN'
      FixedChar = True
      Size = 1
    end
    object DDdetDDQty: TIntegerField
      FieldName = 'DDQty'
      DisplayFormat = '##,#0'
    end
    object DDdetokQty: TIntegerField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = DDdet
    Left = 711
    Top = 226
  end
  object UpDDDet: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDDS'
      'set'
      '  DDBH = :DDBH,'
      '  XXCC = :XXCC,'
      '  Qty = :Qty,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XXCC = :OLD_XXCC')
    InsertSQL.Strings = (
      'insert into SMDDS'
      '  (DDBH, XXCC, Qty, USERDate, USERID, YN)'
      'values'
      '  (:DDBH, :XXCC, :Qty, :USERDate, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from SMDDS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XXCC = :OLD_XXCC')
    Left = 680
    Top = 258
  end
  object SMDDSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select DDBH'
      'from SMDDSS'
      'where DDBH=:DDBH'
      '         and GXLB=:GXLB'
      '         and okcts<>0'
      'Group  by SMDDSS.DDBH')
    Left = 283
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GXLB'
        ParamType = ptUnknown
      end>
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 160
    Top = 239
  end
end
