object ForwarderSample: TForwarderSample
  Left = 184
  Top = 150
  Width = 1739
  Height = 618
  Caption = 'ForwarderSample'
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
    Top = 56
    Width = 1731
    Height = 535
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 362
      Width = 1729
      Height = 0
      Cursor = crVSplit
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1729
      Height = 35
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 13
        Top = 7
        Width = 13
        Height = 16
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 103
        Top = 7
        Width = 37
        Height = 16
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 34
        Top = 3
        Width = 38
        Height = 24
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 145
        Top = 3
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 308
        Top = 2
        Width = 89
        Height = 27
        Caption = 'Query'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 36
      Width = 1729
      Height = 326
      Align = alClient
      DataSource = DS2
      DrawMemoText = True
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      RowHeight = 120
      RowLines = 3
      RowSizingAllowed = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 5
      Columns = <
        item
          EditButtons = <>
          FieldName = 'zsdh'
          Footers = <>
          Title.Caption = 'Supplier|ID'
          Width = 37
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Supplier|Name'
          Width = 71
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Supplier'
          Footers = <>
          Title.Caption = 'Supplier|MEMO'
          Width = 216
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Full_Address'
          Footers = <>
          ShowImageAndText = True
          Title.Caption = 'Full Address'
          Width = 177
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Delivery_Term'
          Footers = <>
          Title.Caption = 'Delivery Term'
          Width = 130
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'FWD_VN'
          Footers = <>
          Title.Caption = 'AGENT FWD LOGISTIC|VN'
          Width = 189
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'FWD_AIR'
          Footers = <>
          Title.Caption = 'AGENT FWD LOGISTIC|AIR'
          Width = 201
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'FWD_SEA'
          Footers = <>
          Title.Caption = 'AGENT FWD LOGISTIC|SEA'
          Width = 205
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Price_AIR'
          Footers = <>
          Title.Caption = 'THE FREIGHT|AIR'
          Width = 99
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Price_HC'
          Footers = <>
          Title.Caption = 'THE FREIGHT|HC'
          Width = 101
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Price_DHL'
          Footers = <>
          Title.Caption = 'THE FREIGHT|DHL'
          Width = 113
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'Remark'
          Footers = <>
          Width = 221
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Width = 42
        end
        item
          ButtonStyle = cbsNone
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          ReadOnly = True
          Width = 69
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 362
      Width = 1729
      Height = 172
      Align = alBottom
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 253
        Top = 1
        Height = 170
        Color = clSkyBlue
        ParentColor = False
      end
      object Splitter3: TSplitter
        Left = 503
        Top = 1
        Height = 170
        Color = clSkyBlue
        ParentColor = False
      end
      object Splitter4: TSplitter
        Left = 754
        Top = 1
        Height = 170
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh3: TDBGridEh
        Left = 1
        Top = 1
        Width = 252
        Height = 170
        Align = alLeft
        DataSource = DS_CONTRACT
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        PopupMenu = Pop_Contract
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Contract_File_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|File_Name'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Contract_File_Size'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|File_Size'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Contract_USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|UserID'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'Contract_USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|UserDate'
            Width = 59
          end>
      end
      object DBGridEh1: TDBGridEh
        Left = 757
        Top = 1
        Width = 971
        Height = 170
        Align = alClient
        DataSource = DS_DHL
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        PopupMenu = Pop_DHL
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DHL_File_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (DHL)|File_Name'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DHL_File_Size'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (DHL)|File_Size'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'DHL_USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (DHL)|UserID'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'DHL_USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (DHL)|UserDate'
            Width = 60
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 256
        Top = 1
        Width = 247
        Height = 170
        Align = alLeft
        DataSource = DS_AIR
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        PopupMenu = Pop_AIR
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            EditButtons = <>
            FieldName = 'AIR_File_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (AIR)|File_Name'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'AIR_File_Size'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (AIR)|File_Size'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'AIR_USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (AIR)|UserID'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'AIR_USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (AIR)|UserDate'
            Width = 62
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 506
        Top = 1
        Width = 248
        Height = 170
        Align = alLeft
        DataSource = DS_HC
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        PopupMenu = Pop_HC
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            EditButtons = <>
            FieldName = 'HC_File_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (H/C)|File_Name'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'HC_File_Size'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (H/C)|File_Size'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'HC_USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (H/C)|UserID'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'HC_USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THE FREIGHT (H/C)|UserDate'
            Width = 60
          end>
      end
      object Panel5: TPanel
        Left = 1632
        Top = 3
        Width = 281
        Height = 169
        Caption = 'Panel5'
        TabOrder = 4
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 279
          Height = 167
          Align = alClient
          Color = clMenuBar
          Font.Charset = ANSI_CHARSET
          Font.Color = 14822282
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Lines.Strings = (
            '---------------------'
            #31243#24335#20027#35201#21151#33021#35498#26126
            ''
            #20027#35201#29992#26044#20195#29702#36008#36939#21450
            #27171#21697
            ''
            '---------------------'
            #37325#40670#27396#20301#35498#26126
            ''
            'Full Adress: '#23436#25972#22320#22336
            'Delivery Term: '#20132#36008
            #26399#38480
            'Agent FWD Logistic'
            #8594'VN: '#36234#21335#30070#22320#20195#29289
            #27969
            'Agent FWD Logistic'
            #8594'AIR: '#31354#36939#29289#27969
            'Agent FWD Logistic'
            #8594'SEA: '#28023#36939#29289#27969
            'The FREIGHT'#8594'AIR: '
            #36008#29289#31354#36939' '
            'The FREIGHT'#8594'HC: '
            #36008#29289#28023#36939
            'The FREIGHT'#8594'DHL: '
            #36008#29289#24555#36958
            'Remark: '#20633#35387
            ''
            '---------------------')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1731
    Height = 56
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 416
      Top = 8
      Width = 124
      Height = 16
      Caption = 'Enter = Ctrl +Enter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BB2: TBitBtn
      Left = 56
      Top = 3
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
      Top = 3
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
      Top = 3
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
      Top = 3
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
      Left = 248
      Top = 3
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
      Left = 296
      Top = 3
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
      Top = 3
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
      Left = 355
      Top = 3
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
  object qry_tmp: TQuery
    DatabaseName = 'dB'
    Left = 140
    Top = 285
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 675
    Top = 208
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 168
    Top = 200
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  ForwarderSample.zsdh,'
      '        ForwarderSample.Supplier,'
      '        ForwarderSample.Full_Address,'
      '        ForwarderSample.Delivery_Term,'
      '        ForwarderSample.Price_AIR,'
      '        ForwarderSample.Price_HC,'
      '        ForwarderSample.Price_DHL,'
      '        ForwarderSample.FWD_VN,'
      '        ForwarderSample.FWD_AIR,'
      '        ForwarderSample.FWD_SEA,'
      '        ForwarderSample.Remark,'
      '        ForwarderSample.USERID,'
      '        ForwarderSample.USERDATE,'
      '        ForwarderSample.YN,'
      '        zszl.zsywjc'
      'from ForwarderSample'
      'left join zszl on zszl.zsdh=ForwarderSample.zsdh'
      ''
      ''
      '')
    UpdateObject = UpSQL2
    Left = 136
    Top = 200
    object Query2zsdh: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query2zsywjc: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query2Full_Address: TMemoField
      FieldName = 'Full_Address'
      BlobType = ftMemo
    end
    object Query2Delivery_Term: TStringField
      FieldName = 'Delivery_Term'
      FixedChar = True
      Size = 50
    end
    object Query2FWD_VN: TMemoField
      FieldName = 'FWD_VN'
      BlobType = ftMemo
    end
    object Query2FWD_AIR: TMemoField
      FieldName = 'FWD_AIR'
      BlobType = ftMemo
    end
    object Query2FWD_SEA: TMemoField
      FieldName = 'FWD_SEA'
      BlobType = ftMemo
    end
    object Query2Remark: TMemoField
      FieldName = 'Remark'
      BlobType = ftMemo
    end
    object Query2USERID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query2USERDATE: TDateTimeField
      DisplayLabel = 'User Date'
      FieldName = 'USERDATE'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2Supplier: TMemoField
      FieldName = 'Supplier'
      Origin = 'DB.ForwarderSample.Supplier'
      BlobType = ftMemo
    end
    object Query2Price_AIR: TMemoField
      FieldName = 'Price_AIR'
      Origin = 'DB.ForwarderSample.Price_AIR'
      BlobType = ftMemo
    end
    object Query2Price_HC: TMemoField
      FieldName = 'Price_HC'
      Origin = 'DB.ForwarderSample.Price_HC'
      BlobType = ftMemo
    end
    object Query2Price_DHL: TMemoField
      FieldName = 'Price_DHL'
      Origin = 'DB.ForwarderSample.Price_DHL'
      BlobType = ftMemo
    end
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update ForwarderSample'
      'set'
      '  zsdh = :zsdh,'
      '  Supplier = :Supplier,'
      '  Full_Address = :Full_Address,'
      '  Delivery_Term = :Delivery_Term,'
      '  Price_AIR = :Price_AIR,'
      '  Price_HC = :Price_HC,'
      '  Price_DHL = :Price_DHL,'
      '  FWD_VN = :FWD_VN,'
      '  FWD_AIR = :FWD_AIR,'
      '  FWD_SEA = :FWD_SEA,'
      '  Remark = :Remark,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  zsdh = :OLD_zsdh')
    InsertSQL.Strings = (
      'insert into ForwarderSample'
      
        '  (zsdh, Supplier, Full_Address, Delivery_Term, Price_AIR, Price' +
        '_HC, Price_DHL, '
      '   FWD_VN, FWD_AIR, FWD_SEA, Remark, USERID, USERDATE, YN)'
      'values'
      
        '  (:zsdh, :Supplier, :Full_Address, :Delivery_Term, :Price_AIR, ' +
        ':Price_HC, '
      
        '   :Price_DHL, :FWD_VN, :FWD_AIR, :FWD_SEA, :Remark, :USERID, :U' +
        'SERDATE, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from ForwarderSample'
      'where'
      '  zsdh = :OLD_zsdh')
    Left = 136
    Top = 232
  end
  object Qry_CONTRACT: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select  Contract_File_Name,Contract_File_Size,Contract_USERID,Co' +
        'ntract_USERDATE'
      'from ForwarderSample'
      'where zsdh=:zsdh')
    Left = 140
    Top = 412
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'zsdh'
        ParamType = ptUnknown
        Size = 7
      end>
    object Qry_CONTRACTContract_File_Name: TStringField
      FieldName = 'Contract_File_Name'
      Origin = 'DB.ForwarderSample.Contract_File_Name'
      FixedChar = True
    end
    object Qry_CONTRACTContract_File_Size: TFloatField
      FieldName = 'Contract_File_Size'
      Origin = 'DB.ForwarderSample.Contract_File_Size'
    end
    object Qry_CONTRACTContract_USERID: TStringField
      FieldName = 'Contract_USERID'
      Origin = 'DB.ForwarderSample.Contract_USERID'
      FixedChar = True
    end
    object Qry_CONTRACTContract_USERDATE: TDateTimeField
      FieldName = 'Contract_USERDATE'
      Origin = 'DB.ForwarderSample.Contract_USERDATE'
    end
  end
  object DS_CONTRACT: TDataSource
    DataSet = Qry_CONTRACT
    Left = 172
    Top = 412
  end
  object Pop_Contract: TPopupMenu
    Left = 140
    Top = 444
    object Upload1: TMenuItem
      Caption = 'Upload Contract File'
      OnClick = Upload1Click
    end
    object Download1: TMenuItem
      Caption = 'Download  Contract File'
      OnClick = Download1Click
    end
    object DeleteReport1: TMenuItem
      Caption = 'Delete  Contract File'
      OnClick = DeleteReport1Click
    end
  end
  object Qry_AIR: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select  AIR_File_Name,AIR_File_Size,AIR_USERID,AIR_USERDATE'
      'from ForwarderSample'
      'where zsdh=:zsdh')
    Left = 228
    Top = 412
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'zsdh'
        ParamType = ptUnknown
        Size = 7
      end>
    object Qry_AIRAIR_File_Name: TStringField
      FieldName = 'AIR_File_Name'
      Origin = 'DB.ForwarderSample.AIR_File_Name'
      FixedChar = True
    end
    object Qry_AIRAIR_File_Size: TFloatField
      FieldName = 'AIR_File_Size'
      Origin = 'DB.ForwarderSample.AIR_File_Size'
    end
    object Qry_AIRAIR_USERID: TStringField
      FieldName = 'AIR_USERID'
      Origin = 'DB.ForwarderSample.AIR_USERID'
      FixedChar = True
    end
    object Qry_AIRAIR_USERDATE: TDateTimeField
      FieldName = 'AIR_USERDATE'
      Origin = 'DB.ForwarderSample.AIR_USERDATE'
    end
  end
  object DS_AIR: TDataSource
    DataSet = Qry_AIR
    Left = 260
    Top = 412
  end
  object Pop_AIR: TPopupMenu
    Left = 228
    Top = 444
    object MenuItem1: TMenuItem
      Caption = 'Upload THE FREIGHT (AIR) File'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Download THE FREIGHT (AIR) File'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Delete THE FREIGHT (AIR) File'
      OnClick = MenuItem3Click
    end
  end
  object Qry_HC: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select  HC_File_Name,HC_File_Size,HC_USERID,HC_USERDATE'
      'from ForwarderSample'
      'where zsdh=:zsdh')
    Left = 300
    Top = 412
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'zsdh'
        ParamType = ptUnknown
        Size = 7
      end>
    object Qry_HCHC_File_Name: TStringField
      FieldName = 'HC_File_Name'
      Origin = 'DB.ForwarderSample.HC_File_Name'
      FixedChar = True
    end
    object Qry_HCHC_File_Size: TFloatField
      FieldName = 'HC_File_Size'
      Origin = 'DB.ForwarderSample.HC_File_Size'
    end
    object Qry_HCHC_USERID: TStringField
      FieldName = 'HC_USERID'
      Origin = 'DB.ForwarderSample.HC_USERID'
      FixedChar = True
    end
    object Qry_HCHC_USERDATE: TDateTimeField
      FieldName = 'HC_USERDATE'
      Origin = 'DB.ForwarderSample.HC_USERDATE'
    end
  end
  object DS_HC: TDataSource
    DataSet = Qry_HC
    Left = 332
    Top = 412
  end
  object Pop_HC: TPopupMenu
    Left = 300
    Top = 444
    object MenuItem4: TMenuItem
      Caption = 'Upload THE FREIGHT (H/C) File'
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Download THE FREIGHT (H/C) File'
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Delete THE FREIGHT (H/C) File'
      OnClick = MenuItem6Click
    end
  end
  object Qry_DHL: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select  DHL_File_Name,DHL_File_Size,DHL_USERID,DHL_USERDATE'
      'from ForwarderSample'
      'where zsdh=:zsdh')
    Left = 372
    Top = 412
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'zsdh'
        ParamType = ptUnknown
        Size = 7
      end>
    object Qry_DHLDHL_File_Name: TStringField
      FieldName = 'DHL_File_Name'
      Origin = 'DB.ForwarderSample.DHL_File_Name'
      FixedChar = True
    end
    object Qry_DHLDHL_File_Size: TFloatField
      FieldName = 'DHL_File_Size'
      Origin = 'DB.ForwarderSample.DHL_File_Size'
    end
    object Qry_DHLDHL_USERID: TStringField
      FieldName = 'DHL_USERID'
      Origin = 'DB.ForwarderSample.DHL_USERID'
      FixedChar = True
    end
    object Qry_DHLDHL_USERDATE: TDateTimeField
      FieldName = 'DHL_USERDATE'
      Origin = 'DB.ForwarderSample.DHL_USERDATE'
    end
  end
  object DS_DHL: TDataSource
    DataSet = Qry_DHL
    Left = 404
    Top = 412
  end
  object Pop_DHL: TPopupMenu
    Left = 372
    Top = 444
    object MenuItem7: TMenuItem
      Caption = 'Upload THE FREIGHT (DHL) File'
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Download THE FREIGHT (DHL) File'
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Delete THE FREIGHT (DHL) File'
      OnClick = MenuItem9Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 564
    Top = 314
  end
end
