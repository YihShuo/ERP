object SpecImport: TSpecImport
  Left = 3
  Top = 234
  Width = 1556
  Height = 500
  Caption = 'SpecImport'
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
  object Label2: TLabel
    Left = 712
    Top = 16
    Width = 246
    Height = 16
    Caption = 'Blue Color= Have purchase In warehouse'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnBottom: TPanel
    Left = 0
    Top = 65
    Width = 1540
    Height = 396
    Align = alClient
    TabOrder = 0
    object gdMain: TDBGridEh
      Left = 1
      Top = 57
      Width = 1538
      Height = 338
      Align = alClient
      DataSource = dsMain
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
      FrozenCols = 1
      ParentFont = False
      PopupMenu = pmMain
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnEditButtonClick = gdMainEditButtonClick
      OnGetCellParams = gdMainGetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <
            item
              FieldName = 'DDBH'
              ValueType = fvtCount
            end>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 98
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'DEVCODE'
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 112
        end
        item
          EditButtons = <>
          FieldName = 'ordermode'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'TL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 32
        end
        item
          Color = 8847359
          DisplayFormat = '##,#0'
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'Pairs'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 70
        end
        item
          Color = 8847359
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'CSD'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'KHPO'
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 117
        end
        item
          EditButtons = <>
          FieldName = 'DDGB_1'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 125
        end
        item
          EditButtons = <>
          FieldName = 'CCGB'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'KFJC'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'DDZT'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'YSSM'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 155
        end
        item
          EditButtons = <>
          FieldName = 'BZCC'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'XTMH'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'DDMH'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH'
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'JiJie'
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'DevType'
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'BUYNO'
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end>
    end
    object pnMiddle: TPanel
      Left = 1
      Top = 1
      Width = 1538
      Height = 56
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object lbOrdNo: TLabel
        Left = 221
        Top = 7
        Width = 100
        Height = 16
        AutoSize = False
        Caption = 'OrdNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbArticle: TLabel
        Left = 330
        Top = 8
        Width = 95
        Height = 16
        AutoSize = False
        Caption = 'Article:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbCSD: TLabel
        Left = 10
        Top = 8
        Width = 87
        Height = 16
        AutoSize = False
        Caption = 'CSD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbTo: TLabel
        Left = 120
        Top = 8
        Width = 89
        Height = 16
        AutoSize = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbBuyNo: TLabel
        Left = 437
        Top = 8
        Width = 100
        Height = 16
        AutoSize = False
        Caption = 'BuyNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbCustomer: TLabel
        Left = 547
        Top = 8
        Width = 94
        Height = 16
        AutoSize = False
        Caption = 'Customer:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbDevCode: TLabel
        Left = 651
        Top = 8
        Width = 102
        Height = 16
        AutoSize = False
        Caption = 'DevCode:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbCountry: TLabel
        Left = 755
        Top = 8
        Width = 94
        Height = 16
        AutoSize = False
        Caption = 'Country:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 857
        Top = 8
        Width = 94
        Height = 16
        AutoSize = False
        Caption = 'PO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edDDBH: TEdit
        Left = 221
        Top = 24
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
      object edArticle: TEdit
        Left = 328
        Top = 24
        Width = 97
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
      object dtpStart: TDateTimePicker
        Left = 9
        Top = 24
        Width = 89
        Height = 24
        Date = 39783.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 39783.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dtpEnd: TDateTimePicker
        Left = 118
        Top = 24
        Width = 91
        Height = 24
        Date = 39783.569282222220000000
        Format = 'yyyy/MM/dd'
        Time = 39783.569282222220000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edBuyNo: TEdit
        Left = 436
        Top = 24
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edCustomer: TEdit
        Left = 544
        Top = 24
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object bnQuery2: TButton
        Left = 959
        Top = 16
        Width = 81
        Height = 29
        Caption = 'Query'
        TabOrder = 6
        OnClick = bnQuery2Click
      end
      object edDevCode: TEdit
        Left = 648
        Top = 24
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object CountryEdit: TEdit
        Left = 752
        Top = 24
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object POEdit: TEdit
        Left = 856
        Top = 23
        Width = 97
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1540
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 672
      Top = 16
      Width = 257
      Height = 41
      AutoSize = False
      Caption = 'The Order have no purchase in warehouse'#28784#33394#20195#34920#36996#27794#25505#36092#20837#24235
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object bnInsert: TBitBtn
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
      OnClick = bnInsertClick
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
    object bnDelete: TBitBtn
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
      OnClick = bnDeleteClick
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
    object bnModify: TBitBtn
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
      OnClick = bnModifyClick
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
    object bnSave: TBitBtn
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
      OnClick = bnSaveClick
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
    object bnCancel: TBitBtn
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
      OnClick = bnCancelClick
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
    object bnExit: TBitBtn
      Left = 304
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
      OnClick = bnExitClick
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
    object bnQuery: TBitBtn
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
      OnClick = bnQueryClick
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
    object bnFirst: TBitBtn
      Left = 359
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
      OnClick = bnFirstClick
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
    object bnPrior: TBitBtn
      Left = 407
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
      OnClick = bnPriorClick
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
    object bnNext: TBitBtn
      Left = 455
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
      OnClick = bnNextClick
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
    object bnLast: TBitBtn
      Left = 503
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
      OnClick = bnLastClick
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
    object bnRefresh: TBitBtn
      Left = 568
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Refresh'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = bnRefreshClick
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
    object bnExcel: TBitBtn
      Left = 617
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
      OnClick = bnExcelClick
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
  object qrMain: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select DDZL.*,kfxxzl.DEVCODE,XXZl.XieMing,'
      '   lbzls.YWSM as DDGB,KFZL.KFJC,XXZL.YSSM,'
      
        '   XXZL.BZCC,XXZL.XTMH,XXZL.DDMH,XXZL.DAOMH,kfxxzl.JiJie,kfxxzl.' +
        'DevType,CheckPur.CGBH,'
      
        '   DDZLTW.DDLB as TWDDLB, DDZLTW.DDZT as TWDDZT, DDZLTW.ShipDate' +
        ' as TWShipDate, DDZLTW.BUYNO as TWBUYNO,'
      '   DDZLTW.Pairs as TWPairs'
      'from DDZL'
      
        'left join XXZL on DDZl.XieXing=XXZl.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao'
      'left join kfzl on KFZl.KFDH=DDZL.KHBH'
      'left join LBZLS on lbzls.lb='#39'06'#39' and lbzls.lbdh=DDZL.DDGB '
      
        'left join kfxxzl on DDZL.XieXing=kfxxzl.XieXing and DDZL.SheHao=' +
        'kfxxzl.SheHao'
      'left join ddzltw on ddzl.ddbh=ddzltw.ddbh'
      'left join ( '
      'SELECT EXZLSS.ZLBH as CGBH'
      
        'FROM EXZLSS left join EXZLS on EXZLS.EXNO=EXZLSS.exno AND exzls.' +
        'xh=exzlss.xh '
      'LEFT JOIN EXZL  with (nolock) ON EXZLSS.EXNO=EXZL.EXNO '
      'LEFT JOIN HGZL  with (nolock) ON EXZL.CON_NO=HGZL.CON_NO '
      
        'where Convert(smalldatetime,convert(varchar,EXZLSS.UserDate,111)' +
        ')>='#39'20141108'#39' '
      'GROUP BY EXZLSS.ZLBH '
      'UNION ALL '
      'select KCRKS.CGBH  '
      'from  KCRKS with (nolock)left join DDZL on DDZL.DDBH=KCRKS.CGBH '
      'left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO '
      
        'where Convert(smalldatetime,convert(varchar,KCRKS.UserDate,111))' +
        '>='#39'2014/11/08'#39' and KCRK.GSBH='#39'VA12'#39
      'group by KCRKS.CGBH) CheckPur on CheckPur.CGBH=DDZL.DDBH '
      'where DDZL.DDBH like '#39'%%'#39
      
        'and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) be' +
        'tween '
      #39'2015/02/06'#39' and '#39'2015/03/05'#39
      'and isnull(XXZL.article,'#39#39') like '#39'%%'#39
      'and isnull(kfzl.kfjc,'#39#39') like '#39'%%'#39
      'and DDZL.GSBH like '#39'%VA12%'#39
      'and isnull(kfxxzl.DEVCODE,'#39#39') like '#39'%%'#39' '
      'order by DDZL.DDBH')
    UpdateObject = udMain
    Left = 16
    Top = 176
    object qrMainDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.DDZL.DDBH'
      FixedChar = True
      Size = 15
    end
    object qrMainGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.DDZL.GSBH'
      FixedChar = True
      Size = 4
    end
    object qrMainXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.DDZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object qrMainSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.DDZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object qrMainARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.DDZL.ARTICLE'
      FixedChar = True
    end
    object qrMainXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.XXZL.XieMing'
      FixedChar = True
      Size = 50
    end
    object qrMainCCGB: TStringField
      FieldName = 'CCGB'
      Origin = 'DB.DDZL.CCGB'
      FixedChar = True
      Size = 1
    end
    object qrMainKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object qrMainDDZT: TStringField
      FieldName = 'DDZT'
      Origin = 'DB.DDZL.DDZT'
      FixedChar = True
      Size = 1
    end
    object qrMainShipDate: TDateTimeField
      FieldName = 'ShipDate'
      Origin = 'DB.DDZL.ShipDate'
    end
    object qrMainPairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'DB.DDZL.Pairs'
    end
    object qrMainDDGB_1: TStringField
      FieldName = 'DDGB_1'
      FixedChar = True
      Size = 50
    end
    object qrMainKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object qrMainKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object qrMainBB: TStringField
      FieldName = 'BB'
      FixedChar = True
      Size = 3
    end
    object qrMainVersion: TSmallintField
      FieldName = 'Version'
    end
    object qrMainTrader: TStringField
      FieldName = 'Trader'
      FixedChar = True
      Size = 4
    end
    object qrMainTraderPO: TStringField
      FieldName = 'TraderPO'
      FixedChar = True
      Size = 19
    end
    object qrMainDDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object qrMainCPLB: TStringField
      FieldName = 'CPLB'
      FixedChar = True
      Size = 1
    end
    object qrMainBZFS: TStringField
      FieldName = 'BZFS'
      FixedChar = True
      Size = 1
    end
    object qrMainDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object qrMainDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object qrMainDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object qrMainJYTJ: TStringField
      FieldName = 'JYTJ'
      FixedChar = True
      Size = 4
    end
    object qrMainFKTJ: TStringField
      FieldName = 'FKTJ'
      FixedChar = True
      Size = 4
    end
    object qrMainTotals: TFloatField
      FieldName = 'Totals'
    end
    object qrMainZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object qrMainGSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object qrMainCFNO: TStringField
      FieldName = 'CFNO'
      FixedChar = True
    end
    object qrMainUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qrMainUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qrMainDDCZ: TStringField
      FieldName = 'DDCZ'
      FixedChar = True
    end
    object qrMainDDPACKSM: TStringField
      FieldName = 'DDPACKSM'
      FixedChar = True
      Size = 150
    end
    object qrMainLABELCHARGE: TFloatField
      FieldName = 'LABELCHARGE'
    end
    object qrMainGender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 50
    end
    object qrMainYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qrMainYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object qrMainBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object qrMainXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 15
    end
    object qrMainDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 15
    end
    object qrMainDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object qrMainordermode: TStringField
      FieldName = 'ordermode'
      FixedChar = True
      Size = 3
    end
    object qrMainBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object qrMainDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object qrMainJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object qrMainDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object qrMainCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object qrMainTWDDLB: TStringField
      FieldName = 'TWDDLB'
      FixedChar = True
      Size = 1
    end
    object qrMainTWDDZT: TStringField
      FieldName = 'TWDDZT'
      FixedChar = True
      Size = 1
    end
    object qrMainTWShipDate: TDateTimeField
      FieldName = 'TWShipDate'
    end
    object qrMainTWBUYNO: TStringField
      FieldName = 'TWBUYNO'
      FixedChar = True
      Size = 10
    end
    object qrMainRYTYPE: TStringField
      FieldName = 'RYTYPE'
      FixedChar = True
      Size = 10
    end
    object qrMainTWPairs: TIntegerField
      FieldName = 'TWPairs'
    end
    object qrMainTWDDGB: TStringField
      FieldName = 'TWDDGB'
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 48
    Top = 176
  end
  object udMain: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL'
      'set'
      '  DDBH = :DDBH,'
      '  GSBH = :GSBH,'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  ARTICLE = :ARTICLE,'
      '  CCGB = :CCGB,'
      '  KHBH = :KHBH,'
      '  BB = :BB,'
      '  KHPO = :KHPO,'
      '  Version = :Version,'
      '  Trader = :Trader,'
      '  TraderPO = :TraderPO,'
      '  DDLB = :DDLB,'
      '  DDZT = :DDZT,'
      '  CPLB = :CPLB,'
      '  BZFS = :BZFS,'
      '  Dest = :Dest,'
      '  DDGB = :DDGB,'
      '  DDRQ = :DDRQ,'
      '  JYTJ = :JYTJ,'
      '  FKTJ = :FKTJ,'
      '  ShipDate = :ShipDate,'
      '  Pairs = :Pairs,'
      '  Totals = :Totals,'
      '  ZLBH = :ZLBH,'
      '  GSDH = :GSDH,'
      '  CFNO = :CFNO,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  DDCZ = :DDCZ,'
      '  DDPACKSM = :DDPACKSM,'
      '  LABELCHARGE = :LABELCHARGE,'
      '  Gender = :Gender,'
      '  YN = :YN,'
      '  ordermode = :ordermode,'
      '  buyno = :buyno'
      'where'
      '  DDBH = :OLD_DDBH'
      ''
      '')
    InsertSQL.Strings = (
      'insert into DDZL'
      
        '  (DDBH, GSBH, XieXing, SheHao, ARTICLE, CCGB, KHBH, BB, KHPO, V' +
        'ersion, '
      
        '   Trader, TraderPO, DDLB, DDZT, CPLB, BZFS, Dest, DDGB, DDRQ, J' +
        'YTJ, FKTJ, '
      
        '   ShipDate, Pairs, Totals, ZLBH, GSDH, CFNO, USERID, USERDATE, ' +
        'DDCZ, DDPACKSM, '
      '   LABELCHARGE, Gender, YN, ordermode,buyno,RYTYPE)'
      'values'
      
        '  (:DDBH, :GSBH, :XieXing, :SheHao, :ARTICLE, :CCGB, :KHBH, :BB,' +
        ' :KHPO, '
      
        '   :Version, :Trader, :TraderPO, :DDLB, :DDZT, :CPLB, :BZFS, :De' +
        'st, :DDGB, '
      
        '   :DDRQ, :JYTJ, :FKTJ, :ShipDate, :Pairs, :Totals, :ZLBH, :GSDH' +
        ', :CFNO, '
      
        '   :USERID, :USERDATE, :DDCZ, :DDPACKSM, :LABELCHARGE, :Gender, ' +
        ':YN, :ordermode,:buyno,:RYTYPE)')
    DeleteSQL.Strings = (
      'delete from DDZL'
      'where'
      '  DDBH = :DDBH')
    Left = 80
    Top = 176
  end
  object qrTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ddzl')
    Left = 16
    Top = 209
  end
  object pmMain: TPopupMenu
    Left = 112
    Top = 177
    object CheckTWOrder1: TMenuItem
      Caption = 'Check TW Order'
      OnClick = CheckTWOrder1Click
    end
    object tachdonhang1: TMenuItem
      Caption = 'Tach don hang'
      OnClick = tachdonhang1Click
    end
  end
end
