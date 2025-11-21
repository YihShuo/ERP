object ModelDepartment: TModelDepartment
  Left = 192
  Top = 138
  Width = 1183
  Height = 543
  Caption = 'ModelDepartment'
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
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1175
    Height = 447
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1173
      Height = 72
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      object Label2: TLabel
        Left = 351
        Top = 7
        Width = 60
        Height = 20
        Caption = 'Shehao:'
      end
      object Label1: TLabel
        Left = 185
        Top = 9
        Width = 59
        Height = 20
        Caption = 'XieXing:'
      end
      object Label3: TLabel
        Left = 196
        Top = 41
        Width = 48
        Height = 20
        Caption = 'Article:'
      end
      object Label4: TLabel
        Left = 6
        Top = 14
        Width = 51
        Height = 20
        Caption = 'DDBH:'
      end
      object Label5: TLabel
        Left = 369
        Top = 37
        Width = 39
        Height = 20
        Caption = 'Style:'
      end
      object Label6: TLabel
        Left = 6
        Top = 43
        Width = 51
        Height = 20
        Caption = 'BuyNo:'
      end
      object Label8: TLabel
        Left = 542
        Top = 35
        Width = 59
        Height = 20
        Caption = 'DaoMH:'
      end
      object edXiexing: TEdit
        Left = 248
        Top = 5
        Width = 97
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Button1: TButton
        Left = 810
        Top = 32
        Width = 89
        Height = 33
        Caption = 'QUERY'
        TabOrder = 1
        OnClick = Button1Click
      end
      object edShehao: TEdit
        Left = 415
        Top = 4
        Width = 121
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object edArticle: TEdit
        Left = 250
        Top = 37
        Width = 95
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object edDDBH: TEdit
        Left = 60
        Top = 8
        Width = 113
        Height = 28
        CharCase = ecUpperCase
        Color = clYellow
        TabOrder = 4
      end
      object edBuyNo: TEdit
        Left = 61
        Top = 41
        Width = 113
        Height = 28
        CharCase = ecUpperCase
        Color = clYellow
        TabOrder = 5
      end
      object edStyle: TEdit
        Left = 415
        Top = 34
        Width = 121
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object editDaoMH: TEdit
        Left = 604
        Top = 32
        Width = 95
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object CKDepID1: TCheckBox
        Left = 710
        Top = 5
        Width = 115
        Height = 17
        Caption = 'No Lean 1'
        TabOrder = 8
      end
      object CKDepID2: TCheckBox
        Left = 710
        Top = 26
        Width = 91
        Height = 17
        Caption = 'No Lean 2'
        TabOrder = 9
      end
      object CKDepID3: TCheckBox
        Left = 710
        Top = 45
        Width = 99
        Height = 17
        Caption = 'No Lean 3'
        TabOrder = 10
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 73
      Width = 1173
      Height = 373
      Align = alClient
      DataSource = DS1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnEditButtonClick = DBGridEh1EditButtonClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footer.FieldName = 'DDBH'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = #35330#21934#32232#34399'|DDBH'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #25976#37327'|Qty'
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'XieXing'
          Footers = <>
          ReadOnly = True
          Title.Caption = #38795#22411'|XieXing'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'SheHao'
          Footers = <>
          ReadOnly = True
          Title.Caption = #33394#34399'|SheHao'
          Title.TitleButton = True
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH'
          Footers = <>
          Title.Caption = #26028#20992'|DAOMH'
          Title.Color = clMoneyGreen
          Title.TitleButton = True
          Width = 156
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.Caption = 'SKU#|Article'
          Title.TitleButton = True
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'Style'
          Footers = <>
          Title.Caption = #22411#39636'|Style'
          Title.Color = clYellow
          Title.TitleButton = True
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'YinShua'
          Footers = <>
          Title.Caption = #21360#21047'|Print'
          Title.Color = clYellow
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'YGZP'
          Footers = <>
          Title.Caption = #22739#39640#21608#22369'|Laser'
          Title.Color = clYellow
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'DianXiu'
          Footers = <>
          Title.Caption = #38651#32353'|Embroid'
          Title.Color = clYellow
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'DepID1'
          Footers = <>
          Title.Caption = #35506#21029'1|Lean 1'
          Title.Color = clGradientInactiveCaption
          Title.TitleButton = True
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'DepID2'
          Footers = <>
          Title.Caption = #35506#21029'2|Lean 2'
          Title.Color = clGradientInactiveCaption
          Title.TitleButton = True
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'DepID3'
          Footers = <>
          Title.Caption = #35506#21029'3|Lean 3'
          Title.Color = clGradientInactiveCaption
          Title.TitleButton = True
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'S_CL'
          Footers = <>
          Title.Caption = #27161#28310#29986#37327'|S_BZCL'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'A_CL'
          Footers = <>
          Title.Caption = #27161#28310#29986#37327'|A_BZCL'
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'TierABC'
          Footers = <>
          Title.Caption = 'ABC'#32068#21029'|TierABC'
          Width = 73
        end>
    end
    object CB1: TDBComboBox
      Left = 344
      Top = 160
      Width = 81
      Height = 24
      DataField = 'TierABC'
      DataSource = DS1
      ItemHeight = 16
      Items.Strings = (
        'A'
        'B'
        'C')
      TabOrder = 2
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1175
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label7: TLabel
      Left = 688
      Top = 24
      Width = 64
      Height = 16
      Caption = 'Total Lean'
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
    object BBT1: TBitBtn
      Left = 368
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
      OnClick = BBT1Click
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
      Left = 416
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
      OnClick = BBT2Click
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
      Left = 464
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
      OnClick = BBT3Click
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
      Left = 512
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
      OnClick = BBT4Click
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
    object bbt6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'XLS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
    object edLean: TEdit
      Left = 760
      Top = 20
      Width = 41
      Height = 24
      TabOrder = 12
      Text = '38'
    end
    object bbt5: TBitBtn
      Left = 583
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
      TabOrder = 13
      OnClick = bbt5Click
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
  object qrySCXXDV: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,XXZL.DAOMH,XXZL.Articl' +
        'e,SCXXDV.Style,SCXXDV.DepID1,'
      
        '       SCXXDV.DepID2,SCXXDV.DepID3,SCXXCL.BZCL as A_CL, SC.BZCL ' +
        'AS S_CL,DDZL.Pairs,'
      
        '       SCXXDV.UserID,SCXXDV.UserDate,SCXXDV.YN,SCXXDV.YinShua,SC' +
        'XXDV.YGZP,SCXXDV.DianXiu,SCXXDV.TierABC'
      'from DDZL left join SCXXDV'
      'on SCXXDV.XieXing =DDZL.XieXing and SCXXDV.Shehao=DDZL.SheHao'
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHa' +
        'o=DDZL.SheHao and SCXXCL.GXLB='#39'A'#39
      
        'left join (select XieXing,SheHao,GXLB,BZCL from SCXXCL  where GX' +
        'LB='#39'S'#39') SC on SC.XieXing=DDZL.XieXing and SC.SheHao=DDZL.SheHao '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL' +
        '.SheHao '
      'where DDZL.GSBH='#39'VA12'#39' and DDZL.DDZT<>'#39'C'#39
      'and DDZL.DDBh like '#39'Y1808-0001%'#39
      
        'group by DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,XXZL.DAOMH,XXZL.Arti' +
        'cle,SCXXDV.Style,SCXXDV.DepID1,'
      
        '       SCXXDV.DepID2,SCXXDV.DepID3,SCXXCL.BZCL,SC.BZCL,DDZL.Pair' +
        's,'
      
        '       SCXXDV.UserID,SCXXDV.UserDate,SCXXDV.YN,SCXXDV.YinShua,SC' +
        'XXDV.YGZP,SCXXDV.DianXiu,SCXXDV.TierABC'
      'order by XXZL.Article'
      '')
    UpdateObject = upSCXXDV
    Left = 241
    Top = 201
    object qrySCXXDVXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qrySCXXDVStyle: TStringField
      FieldName = 'Style'
      FixedChar = True
      Size = 30
    end
    object qrySCXXDVDepID1: TStringField
      FieldName = 'DepID1'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVDepID2: TStringField
      FieldName = 'DepID2'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVDepID3: TStringField
      FieldName = 'DepID3'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object qrySCXXDVUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qrySCXXDVYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qrySCXXDVDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object qrySCXXDVDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object qrySCXXDVS_CL: TIntegerField
      FieldName = 'S_CL'
    end
    object qrySCXXDVA_CL: TIntegerField
      FieldName = 'A_CL'
    end
    object qrySCXXDVYinShua: TStringField
      FieldName = 'YinShua'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVYGZP: TStringField
      FieldName = 'YGZP'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVDianXiu: TStringField
      FieldName = 'DianXiu'
      FixedChar = True
      Size = 15
    end
    object qrySCXXDVPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object qrySCXXDVTierABC: TStringField
      FieldName = 'TierABC'
      FixedChar = True
      Size = 1
    end
  end
  object upSCXXDV: TUpdateSQL
    ModifySQL.Strings = (
      'update SCXXDV'
      'set'
      '  Style = :Style,'
      '  YinShua = :YinShua,'
      '  YGZP = :YGZP,'
      '  DianXiu = :DianXiu,'
      '  DepID1 = :DepID1,'
      '  DepID2 = :DepID2,'
      '  DepID3 = :DepID3,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  TierABC =:TierABC'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  Shehao = :OLD_Shehao')
    InsertSQL.Strings = (
      'insert into SCXXDV'
      
        '  (XieXing, Shehao, Style, DepID1, DepID2, DepID3,USERID, USERDA' +
        'TE, YN,YinShua,YGZP,DianXiu,TierABC)'
      'values'
      
        '  (:XieXing, :Shehao, :Style, :DepID1, :DepID2,:DepID3,:USERID, ' +
        ':USERDATE, :YN,:YinShua,:YGZP,:DianXiu,:TierABC)'
      '')
    DeleteSQL.Strings = (
      'delete from SCXXDV'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  Shehao = :OLD_Shehao')
    Left = 240
    Top = 235
  end
  object DS1: TDataSource
    DataSet = qrySCXXDV
    Left = 273
    Top = 202
  end
  object tmpQ: TQuery
    DatabaseName = 'DB'
    Left = 432
    Top = 201
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 432
    Top = 232
  end
end
