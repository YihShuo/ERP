object MA_Box: TMA_Box
  Left = 351
  Top = 140
  Width = 1380
  Height = 788
  Caption = 'MA_Box'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1364
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label7: TLabel
      Left = 8
      Top = 9
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 38
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 196
      Top = 5
      Width = 57
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
    object BB5: TBitBtn
      Left = 252
      Top = 5
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
      TabOrder = 1
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
      Left = 300
      Top = 5
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
      TabOrder = 2
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
    object BitBtn1: TBitBtn
      Left = 1118
      Top = 10
      Width = 75
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Page down'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 1019
      Top = 11
      Width = 70
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Page Up'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
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
    object Thung: TDBEdit
      Left = 490
      Top = 10
      Width = 82
      Height = 24
      CharCase = ecUpperCase
      Color = clSilver
      DataField = 'box'
      DataSource = DataSource15
      Enabled = False
      ReadOnly = True
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 379
      Top = 2
      Width = 110
      Height = 61
      TabOrder = 6
      object RB1: TRadioButton
        Left = 2
        Top = 9
        Width = 102
        Height = 20
        Caption = 'Hour Inspect'
        Checked = True
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 3
        Top = 35
        Width = 102
        Height = 19
        Caption = 'Daily Inspect'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object AR: TDBEdit
      Left = 491
      Top = 35
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Color = clSilver
      DataField = 'Article'
      DataSource = DataSource15
      Enabled = False
      ReadOnly = True
      TabOrder = 7
    end
    object DDGB: TDBEdit
      Left = 574
      Top = 10
      Width = 135
      Height = 24
      CharCase = ecUpperCase
      Color = clSilver
      DataField = 'YWSM'
      DataSource = DataSource15
      Enabled = False
      ReadOnly = True
      TabOrder = 8
    end
    object Edit3: TEdit
      Left = 42
      Top = 4
      Width = 130
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object GroupBox3: TGroupBox
      Left = 712
      Top = -2
      Width = 275
      Height = 63
      TabOrder = 10
      object DBEdit1: TDBEdit
        Left = 3
        Top = 8
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Size_don'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 3
        Top = 26
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Size_tong_hop'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 3
        Top = 43
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Nhan_trang'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 94
        Top = 7
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Nhan_gia'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 94
        Top = 24
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Mac_treo'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 94
        Top = 42
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Nhan_de_trung'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 184
        Top = 7
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Nhan_nap_hop'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 183
        Top = 25
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Day_treo'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 184
        Top = 43
        Width = 91
        Height = 24
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'Day_dit_hop'
        DataSource = DataSource15
        Enabled = False
        ReadOnly = True
        TabOrder = 8
      end
    end
    object DBEdit10: TDBEdit
      Left = 574
      Top = 34
      Width = 135
      Height = 24
      CharCase = ecUpperCase
      Color = clSilver
      DataField = 'LBDH_MA'
      DataSource = DataSource15
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    object Edit6: TEdit
      Left = 42
      Top = 32
      Width = 129
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 64
    Width = 1364
    Height = 685
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Carton All'
      ImageIndex = 2
      object DBGridEh6: TDBGridEh
        Left = 1164
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource13
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 23
          end>
      end
      object DBGridEh1: TDBGridEh
        Left = 1067
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource12
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 25
          end>
      end
      object DBGridEh2: TDBGridEh
        Left = 970
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource11
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 23
          end>
      end
      object DBGridEh3: TDBGridEh
        Left = 873
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource10
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 24
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 776
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource9
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 24
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 679
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource8
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 23
          end>
      end
      object DBGridEh7: TDBGridEh
        Left = 582
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource7
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 23
          end>
      end
      object DBGridEh8: TDBGridEh
        Left = 485
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 24
          end>
      end
      object DBGridEh9: TDBGridEh
        Left = 388
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 24
          end>
      end
      object DBGridEh10: TDBGridEh
        Left = 291
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 23
          end>
      end
      object DBGridEh11: TDBGridEh
        Left = 194
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 23
          end>
      end
      object DBGridEh12: TDBGridEh
        Left = 97
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 25
          end>
      end
      object DBGridEh13: TDBGridEh
        Left = 0
        Top = 0
        Width = 97
        Height = 654
        Align = alLeft
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 24
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Carton'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 67
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 2
          Top = 11
          Width = 66
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DepName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 30
          Top = 38
          Width = 31
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'RY#:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 514
          Top = 35
          Width = 39
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Thung'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 609
          Top = 34
          Width = 39
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Thung'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 69
          Top = 5
          Width = 129
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit5: TEdit
          Left = 69
          Top = 33
          Width = 128
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object GroupBox2: TGroupBox
          Left = 204
          Top = 2
          Width = 311
          Height = 59
          TabOrder = 2
          object CheckBox4: TCheckBox
            Left = 2
            Top = 8
            Width = 74
            Height = 15
            Caption = 'Size don'
            TabOrder = 0
          end
          object CheckBox7: TCheckBox
            Left = 2
            Top = 25
            Width = 103
            Height = 15
            Caption = 'Size tong hop'
            TabOrder = 1
          end
          object CheckBox8: TCheckBox
            Left = 2
            Top = 40
            Width = 86
            Height = 17
            Caption = 'Nhan trang'
            TabOrder = 2
          end
          object CheckBox9: TCheckBox
            Left = 104
            Top = 43
            Width = 104
            Height = 13
            Caption = 'Nhan de trung'
            TabOrder = 3
          end
          object CheckBox10: TCheckBox
            Left = 104
            Top = 8
            Width = 77
            Height = 15
            Caption = 'Nhan gia'
            TabOrder = 4
          end
          object CheckBox11: TCheckBox
            Left = 104
            Top = 25
            Width = 72
            Height = 15
            Caption = 'Mac treo'
            TabOrder = 5
          end
          object CheckBox12: TCheckBox
            Left = 208
            Top = 8
            Width = 104
            Height = 15
            Caption = 'Nhan nap hop'
            TabOrder = 6
          end
          object CheckBox14: TCheckBox
            Left = 208
            Top = 25
            Width = 93
            Height = 15
            Caption = 'Day/dit hop'
            TabOrder = 7
          end
          object CheckBox1: TCheckBox
            Left = 208
            Top = 43
            Width = 93
            Height = 15
            Caption = 'Day treo'
            TabOrder = 8
          end
        end
        object BitBtn5: TBitBtn
          Left = 709
          Top = 9
          Width = 57
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn5Click
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
        object BitBtn6: TBitBtn
          Left = 765
          Top = 9
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
          OnClick = BitBtn6Click
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
        object BitBtn7: TBitBtn
          Left = 813
          Top = 9
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
          OnClick = BitBtn7Click
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
        object Edit1: TEdit
          Left = 554
          Top = 30
          Width = 55
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit2: TEdit
          Left = 649
          Top = 29
          Width = 58
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object DBGridEh14: TDBGridEh
        Left = 0
        Top = 67
        Width = 1356
        Height = 587
        Align = alClient
        DataSource = DataSource14
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCDate'
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'Carton'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'CheckCarton'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'GXLB'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Size_don'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Size_tong_hop'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Nhan_trang'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Nhan_gia'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Mac_treo'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Nhan_de_trung'
            Footers = <>
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'Nhan_nap_hop'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'Day_treo'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'Day_dit_hop'
            Footers = <>
            Width = 91
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Sco' +
        're from WOPR_Carton order by Int_Score')
    UpdateObject = UpdateSQL1
    Left = 48
    Top = 256
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object Query1Carton: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object Query1CheckCarton: TBooleanField
      FieldName = 'CheckCarton'
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object Query1Int_Score: TIntegerField
      FieldName = 'Int_Score'
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 48
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 224
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 504
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 152
    Top = 224
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 32'
      'order by Int_Score,WOPR_Carton.GXLB'
      '')
    UpdateObject = UpdateSQL2
    Left = 152
    Top = 256
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
    object DateTimeField1: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField1: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField2: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField1: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField3: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField5: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField1: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL2: TUpdateSQL
    Left = 152
    Top = 296
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 240
    Top = 224
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 64'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL3
    Left = 240
    Top = 256
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
    object DateTimeField3: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField6: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField7: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField2: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField8: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField10: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL3: TUpdateSQL
    Left = 240
    Top = 296
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 320
    Top = 224
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 96'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL4
    Left = 320
    Top = 256
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
    object DateTimeField5: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField11: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField12: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField3: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField13: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField15: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL4: TUpdateSQL
    Left = 320
    Top = 296
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 416
    Top = 232
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL5
    Left = 416
    Top = 264
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
    object DateTimeField7: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField16: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField17: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField4: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField18: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField20: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL5: TUpdateSQL
    Left = 416
    Top = 304
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 504
    Top = 232
  end
  object Query6: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL6
    Left = 504
    Top = 264
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
    object DateTimeField9: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField21: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField22: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField5: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField23: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField25: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField5: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL6: TUpdateSQL
    Left = 504
    Top = 304
  end
  object DataSource7: TDataSource
    DataSet = Query7
    Left = 600
    Top = 240
  end
  object Query7: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL7
    Left = 600
    Top = 272
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
    object DateTimeField11: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField26: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField27: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField6: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField28: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField29: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField30: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField6: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL7: TUpdateSQL
    Left = 600
    Top = 312
  end
  object DataSource8: TDataSource
    DataSet = Query8
    Left = 696
    Top = 232
  end
  object Query8: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL8
    Left = 696
    Top = 264
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
    object DateTimeField13: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField31: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField32: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField7: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField33: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField34: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField35: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField7: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL8: TUpdateSQL
    Left = 696
    Top = 304
  end
  object DataSource9: TDataSource
    DataSet = Query9
    Left = 792
    Top = 232
  end
  object Query9: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL9
    Left = 792
    Top = 264
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
    object DateTimeField15: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField36: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField37: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField8: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField38: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField39: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField16: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField40: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField8: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL9: TUpdateSQL
    Left = 792
    Top = 304
  end
  object DataSource10: TDataSource
    DataSet = Query10
    Left = 888
    Top = 232
  end
  object Query10: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL10
    Left = 888
    Top = 264
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
    object DateTimeField17: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField41: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField42: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField9: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField43: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField44: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField18: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField45: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField9: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL10: TUpdateSQL
    Left = 888
    Top = 304
  end
  object DataSource11: TDataSource
    DataSet = Query11
    Left = 984
    Top = 224
  end
  object Query11: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL11
    Left = 984
    Top = 256
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
    object DateTimeField19: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField46: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField47: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField10: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField48: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField49: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField20: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField50: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL11: TUpdateSQL
    Left = 984
    Top = 296
  end
  object DataSource12: TDataSource
    DataSet = Query12
    Left = 1080
    Top = 232
  end
  object Query12: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL12
    Left = 1080
    Top = 264
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
    object DateTimeField21: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField51: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField52: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField11: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField53: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField54: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField22: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField55: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField11: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL12: TUpdateSQL
    Left = 1080
    Top = 304
  end
  object DataSource13: TDataSource
    DataSet = Query13
    Left = 1168
    Top = 240
  end
  object Query13: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score'
      'from WOPR_Carton '
      'where DDBH=:DDBH and GXLB=:GXLB'
      'and  Carton > 128'
      'order by Int_Score,WOPR_Carton.GXLB'
      ''
      '')
    UpdateObject = UpdateSQL13
    Left = 1168
    Top = 272
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
    object DateTimeField23: TDateTimeField
      FieldName = 'SCDate'
    end
    object StringField56: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object StringField57: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object BooleanField12: TBooleanField
      FieldName = 'CheckCarton'
    end
    object StringField58: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField59: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object DateTimeField24: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField60: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object IntegerField12: TIntegerField
      FieldName = 'Int_Score'
    end
  end
  object UpdateSQL13: TUpdateSQL
    Left = 1168
    Top = 312
  end
  object Query14: TQuery
    DatabaseName = 'DB'
    Left = 544
    Top = 168
  end
  object DataSource14: TDataSource
    DataSet = Query15
    Left = 388
    Top = 427
  end
  object Query15: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) ' +
        'Int_Score,WOPR_Carton.GXLB'
      'from WOPR_Carton '
      'where DDBH='#39'Y2312-0300'#39' and GXLB= '#39'HI'#39
      'and WOPR_Carton.Carton>10'
      'order by Int_Score'
      '')
    UpdateObject = UpdateSQL14
    Left = 388
    Top = 459
    object Query15SCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object Query15DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object Query15Carton: TStringField
      FieldName = 'Carton'
      FixedChar = True
      Size = 15
    end
    object Query15CheckCarton: TBooleanField
      FieldName = 'CheckCarton'
    end
    object Query15GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object Query15DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query15Size_don: TStringField
      FieldName = 'Size_don'
      FixedChar = True
      Size = 30
    end
    object Query15Size_tong_hop: TStringField
      FieldName = 'Size_tong_hop'
      FixedChar = True
      Size = 30
    end
    object Query15Nhan_trang: TStringField
      FieldName = 'Nhan_trang'
      FixedChar = True
      Size = 30
    end
    object Query15Nhan_gia: TStringField
      FieldName = 'Nhan_gia'
      FixedChar = True
      Size = 30
    end
    object Query15Mac_treo: TStringField
      FieldName = 'Mac_treo'
      FixedChar = True
      Size = 30
    end
    object Query15Nhan_de_trung: TStringField
      FieldName = 'Nhan_de_trung'
      FixedChar = True
      Size = 30
    end
    object Query15USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object Query15USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query15YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object Query15Int_Score: TIntegerField
      FieldName = 'Int_Score'
    end
    object Query15GXLB_1: TStringField
      FieldName = 'GXLB_1'
      FixedChar = True
      Size = 10
    end
    object Query15Nhan_nap_hop: TStringField
      FieldName = 'Nhan_nap_hop'
      FixedChar = True
      Size = 30
    end
    object Query15Day_dit_hop: TStringField
      FieldName = 'Day_dit_hop'
      FixedChar = True
      Size = 30
    end
    object Query15Day_treo: TStringField
      FieldName = 'Day_treo'
      FixedChar = True
      Size = 30
    end
  end
  object UpdateSQL14: TUpdateSQL
    Left = 384
    Top = 496
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select WOPR_Carton.DDBH,max (ctz) as box,LBZLS.YWSM,LBZLS_MA.LBD' +
        'H_MA,ddzl.KHPO,DDZL.Article,max (WOPR_Carton.Size_don) as Size_d' +
        'on,max (WOPR_Carton.Mac_treo) as Mac_treo'
      
        ',max (WOPR_Carton.Nhan_de_trung) as Nhan_de_trung,max (WOPR_Cart' +
        'on.Nhan_gia) as Nhan_gia,max (WOPR_Carton.Nhan_nap_hop) as Nhan_' +
        'nap_hop,max (WOPR_Carton.Nhan_trang) as Nhan_trang'
      
        ',max (WOPR_Carton.Size_tong_hop) as Size_tong_hop,max (WOPR_Cart' +
        'on.Day_treo) as Day_treo,max (WOPR_Carton.Day_dit_hop) as Day_di' +
        't_hop'
      
        ' from WOPR_Carton left join YWBZPOS on YWBZPOS.ddbh=WOPR_Carton.' +
        'ddbh'
      'left join ddzl on ddzl.ddbh = WOPR_Carton.ddbh'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join LBZLS_MA on LBZLS_MA.LBDH=DDZL.DDGB'
      'where 1=1 and  WOPR_Carton.DDBH ='#39'Y2312-0300'#39
      
        'group by WOPR_Carton.DDBH,LBZLS.YWSM,LBZLS_MA.LBDH_MA,DDZL.Artic' +
        'le,ddzl.KHPO'
      ''
      ''
      ''
      ''
      '')
    Left = 520
    Top = 432
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object DDZLbox: TIntegerField
      FieldName = 'box'
    end
    object DDZLYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object DDZLLBDH_MA: TStringField
      FieldName = 'LBDH_MA'
      FixedChar = True
      Size = 10
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLSize_don: TStringField
      FieldName = 'Size_don'
      FixedChar = True
      Size = 30
    end
    object DDZLMac_treo: TStringField
      FieldName = 'Mac_treo'
      FixedChar = True
      Size = 30
    end
    object DDZLNhan_de_trung: TStringField
      FieldName = 'Nhan_de_trung'
      FixedChar = True
      Size = 30
    end
    object DDZLNhan_gia: TStringField
      FieldName = 'Nhan_gia'
      FixedChar = True
      Size = 30
    end
    object DDZLNhan_nap_hop: TStringField
      FieldName = 'Nhan_nap_hop'
      FixedChar = True
      Size = 30
    end
    object DDZLNhan_trang: TStringField
      FieldName = 'Nhan_trang'
      FixedChar = True
      Size = 30
    end
    object DDZLSize_tong_hop: TStringField
      FieldName = 'Size_tong_hop'
      FixedChar = True
      Size = 30
    end
    object DDZLDay_treo: TStringField
      FieldName = 'Day_treo'
      FixedChar = True
      Size = 30
    end
    object DDZLDay_dit_hop: TStringField
      FieldName = 'Day_dit_hop'
      FixedChar = True
      Size = 30
    end
    object DDZLKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource15: TDataSource
    DataSet = DDZL
    Left = 516
    Top = 475
  end
end
