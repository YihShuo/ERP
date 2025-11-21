object OrderSpec: TOrderSpec
  Left = 449
  Top = 349
  Width = 1119
  Height = 538
  Caption = 'OrderSpec'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1111
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 704
      Top = 32
      Width = 74
      Height = 24
      Caption = 'Master'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
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
      TabOrder = 4
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
      TabOrder = 5
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
    object bbt6: TBitBtn
      Left = 608
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
      TabOrder = 7
      OnClick = bbt6Click
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
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1111
    Height = 442
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'OrdList'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1103
        Height = 89
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 19
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SpecNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 172
          Top = 18
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 248
          Top = 50
          Width = 79
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Customer:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 155
          Top = 50
          Width = 46
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Mon:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Image1: TImage
          Left = 544
          Top = 0
          Width = 153
          Height = 89
          Stretch = True
        end
        object Edit1: TEdit
          Left = 72
          Top = 15
          Width = 97
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 252
          Top = 15
          Width = 149
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CBX2: TComboBox
          Left = 88
          Top = 47
          Width = 65
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            '2017'
            '2018'
            '2019'
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2024'
            '2026'
            '2027'
            '2028')
        end
        object CBX3: TComboBox
          Left = 193
          Top = 47
          Width = 49
          Height = 24
          DropDownCount = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object Button1: TButton
          Left = 427
          Top = 40
          Width = 86
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 328
          Top = 47
          Width = 89
          Height = 24
          TabOrder = 2
        end
        object CB1: TCheckBox
          Left = 6
          Top = 50
          Width = 81
          Height = 17
          Caption = 'ShipDate'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 89
        Width = 1103
        Height = 322
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
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh1DblClick
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Title.Caption = 'ArtNO'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Title.Caption = 'Color'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = 'Article Name'
            Width = 133
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DD'
            Footers = <>
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'XX'
            Footers = <>
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'KFJC'
            Footers = <>
            Width = 70
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'SpecDet'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1103
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 18
          Width = 42
          Height = 16
          Caption = 'ProNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 192
          Top = 19
          Width = 40
          Height = 16
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'SCBH'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 240
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'Article'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Button2: TButton
          Left = 376
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button2Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1103
        Height = 362
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'bwbh'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BWMCY'
            Footers = <>
            Width = 136
          end
          item
            EditButtons = <>
            FieldName = 'clbh'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'CLMCY'
            Footers = <>
            Width = 466
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'clsl'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'XFL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'JGYWSM'
            Footers = <>
            Width = 133
          end
          item
            EditButtons = <>
            FieldName = 'CLMCZ'
            Footers = <>
            Width = 134
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 128
    Top = 312
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 168
    Top = 344
  end
  object SpecMas: TQuery
    AfterScroll = SpecMasAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,DD' +
        'ZL.DDZT,'
      
        'SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,DDZL.CCGB as DD,XXZL.' +
        'CCGB as XX,XXZL.XieMing,KFZL.KFJC,XXZL.IMGname'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH '
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      'left join KFZL on KFZl.KFDH=DDZL.KHBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'order by SCZL.SCBH')
    Left = 168
    Top = 312
    object SpecMasSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasQty: TFloatField
      FieldName = 'Qty'
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SpecMasIMGname: TStringField
      FieldName = 'IMGname'
      FixedChar = True
      Size = 60
    end
    object SpecMasDD: TStringField
      FieldName = 'DD'
      FixedChar = True
      Size = 1
    end
    object SpecMasXX: TStringField
      FieldName = 'XX'
      FixedChar = True
      Size = 1
    end
  end
  object SpecDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT ZLZLS2.bwbh ,zlzls2.clbh AS clbh  ,sum(zlzls2.clsl) AS cl' +
        'sl ,MAX(ZLZLS2.USAGE) AS USAGE,max(BWZL.ywsm) AS BWMCY ,CLZL.CQD' +
        'H,'
      
        '       max(CLZL.ywpm) AS CLMCY , max(CLZL.Zwpm) AS CLMCZ,max(CLZ' +
        'L.dwbh) AS dwbh,XXZLS.LOSS, XXBWFLS.DFL,XXBWFLS.XFL,ZLZLS2.YN,CL' +
        'ZL.LYCC,XXZLS.JGYWSM'
      'FROM ZLZLS2 AS ZLZLS2 '
      'LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh '
      'LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh '
      
        'left join (select distinct  SCZL.SCBH,SCZL.ZLBH from SCZL where ' +
        'SCZL.ZLBH=:ZLBH) SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      'LEFT JOIN DDZL AS DDZL ON SCZL.ZLBH = DDZL.ZLBH '
      'LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING '
      
        '        AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.B' +
        'WBH AND ZLZLS2.CLBH = XXZLS.CLBH '
      
        'left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing  and  XXBWFL.BWB' +
        'H=ZLZLS2.BWBH '
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH'
      ' '
      'where  ZLZLS2.ZLBH=:SCBH and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      
        'GROUP BY zlzls2.zlbh,zlzls2.bwbh,zlzls2.clbh,XXZLS.CLSL,CLZL.CQD' +
        'H,XXZLS.LOSS,XXBWFLS.DFL,XXBWFLS.XFL,ZLZLS2.YN,CLZL.LYCC,CLZL.CQ' +
        'DH,XXZLS.JGYWSM'
      'ORDER BY zlzls2.zlbh , zlzls2.bwbh ASC')
    Left = 212
    Top = 311
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SpecDetbwbh: TStringField
      FieldName = 'bwbh'
      FixedChar = True
      Size = 4
    end
    object SpecDetBWMCY: TStringField
      FieldName = 'BWMCY'
      FixedChar = True
      Size = 30
    end
    object SpecDetclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 10
    end
    object SpecDetCLMCY: TStringField
      FieldName = 'CLMCY'
      FixedChar = True
      Size = 200
    end
    object SpecDetdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object SpecDetUSAGE: TFloatField
      FieldName = 'USAGE'
      DisplayFormat = '#,##0.0000'
    end
    object SpecDetLOSS: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '#,##0.0%'
    end
    object SpecDetclsl: TFloatField
      FieldName = 'clsl'
      DisplayFormat = '#,##0.0'
    end
    object SpecDetDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object SpecDetXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object SpecDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SpecDetLYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object SpecDetCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object SpecDetJGYWSM: TStringField
      FieldName = 'JGYWSM'
      FixedChar = True
      Size = 100
    end
    object SpecDetCLMCZ: TStringField
      FieldName = 'CLMCZ'
      FixedChar = True
      Size = 200
    end
  end
  object DS2: TDataSource
    DataSet = SpecDet
    Left = 212
    Top = 343
  end
  object PopupMenu1: TPopupMenu
    Left = 172
    Top = 276
    object Son1: TMenuItem
      Caption = 'Son'
      OnClick = Son1Click
    end
    object Size1: TMenuItem
      Caption = 'Size'
      OnClick = Size1Click
    end
  end
end
