object FeeMonth: TFeeMonth
  Left = 211
  Top = 227
  Width = 870
  Height = 500
  Caption = 'FeeMonth'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 41
      Width = 860
      Height = 168
      Align = alTop
      DataSource = DS1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = POP2
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CWYEAR'
          ReadOnly = True
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CWMONTH'
          ReadOnly = True
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FYBH'
          ReadOnly = True
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FYJC'
          ReadOnly = True
          Width = 167
          Visible = True
        end
        item
          Color = 12582911
          Expanded = False
          FieldName = 'FYACC'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'okACC'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LackACC'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERID'
          ReadOnly = True
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERDATE'
          ReadOnly = True
          Width = 77
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 40
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label4: TLabel
        Left = 24
        Top = 16
        Width = 38
        Height = 20
        Caption = 'Year:'
      end
      object Label6: TLabel
        Left = 200
        Top = 16
        Width = 49
        Height = 20
        Caption = 'Month:'
      end
      object Button1: TButton
        Left = 392
        Top = 5
        Width = 89
        Height = 30
        Caption = 'QUERY'
        TabOrder = 0
        OnClick = Button1Click
      end
      object CBX1: TComboBox
        Left = 72
        Top = 4
        Width = 89
        Height = 28
        Style = csDropDownList
        CharCase = ecUpperCase
        ItemHeight = 20
        ItemIndex = 0
        TabOrder = 1
        Text = '2006'
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
          '2020')
      end
      object CBX2: TComboBox
        Left = 264
        Top = 4
        Width = 65
        Height = 28
        Style = csDropDownList
        CharCase = ecUpperCase
        DropDownCount = 12
        ItemHeight = 20
        ItemIndex = 0
        TabOrder = 2
        Text = '01'
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
    object StatusBar1: TStatusBar
      Left = 1
      Top = 209
      Width = 860
      Height = 16
      Align = alTop
      Color = 15269864
      Panels = <>
      SimplePanel = True
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 225
      Width = 860
      Height = 175
      Align = alClient
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = Pop1
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DDBH'
          ReadOnly = True
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Article'
          ReadOnly = True
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XieMing'
          ReadOnly = True
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          ReadOnly = True
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USACC'
          ReadOnly = True
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VNACC'
          Width = 112
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'FYACC'
          Width = 124
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    TabOrder = 1
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Import'
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
    object bbt5: TBitBtn
      Left = 584
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
      Left = 632
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
  object DS1: TDataSource
    DataSet = CWFY
    Left = 160
    Top = 152
  end
  object CWFY: TQuery
    AfterOpen = CWFYAfterOpen
    AfterScroll = CWFYAfterScroll
    OnCalcFields = CWFYCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWFY.*,CWFYZL.FYJC,CWFYS.okACC from CWFY'
      'left join CWFYZL on CWFY.FYBH=CWFYZL.FYBH '
      
        'left join (select CWYEAR,CWMONTH,FYBH,sum(FYACC) as okACC from C' +
        'WFYS '
      '            where  CWYEAR= '#39'2008'#39
      '                   and CWMONTH ='#39'05'#39
      '            group by CWYEAR,CWMONTH,FYBH ) CWFYS '
      
        '            on  CWFY.CWYEAR=CWFYS.CWYEAR and CWFY.CWMONTH=CWFYS.' +
        'CWMONTH and CWFY.FYBH=CWFYS.FYBH '
      'where CWFY.CWYEAR= '#39'2008'#39
      'and CWFY.CWMONTH ='#39'05'#39
      'order by CWFY.FYBH')
    UpdateObject = UpSQL1
    Left = 128
    Top = 152
    object CWFYCWYEAR: TStringField
      DisplayLabel = 'YEAR'
      FieldName = 'CWYEAR'
      Origin = 'DB.CWFY.CWYEAR'
      FixedChar = True
      Size = 4
    end
    object CWFYCWMONTH: TStringField
      DisplayLabel = 'MON'
      FieldName = 'CWMONTH'
      Origin = 'DB.CWFY.CWMONTH'
      FixedChar = True
      Size = 2
    end
    object CWFYFYBH: TStringField
      FieldName = 'FYBH'
      Origin = 'DB.CWFY.FYBH'
      FixedChar = True
      Size = 8
    end
    object CWFYFYJC: TStringField
      FieldName = 'FYJC'
      Origin = 'DB.CWFYZL.FYJC'
      FixedChar = True
      Size = 25
    end
    object CWFYFYACC: TFloatField
      FieldName = 'FYACC'
      Origin = 'DB.CWFY.FYACC'
      DisplayFormat = '##,#0'
    end
    object CWFYokACC: TFloatField
      FieldName = 'okACC'
      DisplayFormat = '##,#0'
    end
    object CWFYUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CWFY.USERID'
      FixedChar = True
      Size = 15
    end
    object CWFYUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CWFY.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object CWFYYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CWFY.YN'
      FixedChar = True
      Size = 1
    end
    object CWFYLackACC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LackACC'
      DisplayFormat = '##,#0'
      Calculated = True
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CWFY'
      'set'
      '  CWYEAR = :CWYEAR,'
      '  CWMONTH = :CWMONTH,'
      '  FYBH = :FYBH,'
      '  FYACC = :FYACC,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  CWYEAR = :OLD_CWYEAR and'
      '  CWMONTH = :OLD_CWMONTH and'
      '  FYBH = :OLD_FYBH')
    InsertSQL.Strings = (
      'insert into CWFY'
      '  (CWYEAR, CWMONTH, FYBH, FYACC, USERID, USERDATE, YN)'
      'values'
      '  (:CWYEAR, :CWMONTH, :FYBH, :FYACC, :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from CWFY'
      'where'
      '  CWYEAR = :OLD_CWYEAR and'
      '  CWMONTH = :OLD_CWMONTH and'
      '  FYBH = :OLD_FYBH')
    Left = 128
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 312
    Top = 145
  end
  object CWFYS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'declare @exchange int'
      
        'set @exchange=(select CWHL from CWHL where HLYEAR=:CWYEAR and HL' +
        'MONTH=:CWMONTH)'
      'select CWFYS.*,CWDD.Article,CWDD.XieMing,CWDD.Qty,'
      'CWDD.USACC,cast(round(CWDD.USACC*@exchange,0) as int) as VNACC'
      'from CWFYS'
      
        'left join CWDD on CWDD.CWYEAR=CWFYS.CWYEAR and CWDD.CWMONTH=CWFY' +
        'S.CWMONTH'
      '                        and CWDD.DDBH=CWFYS.DDBH '
      'where CWFYS.FYBH=:FYBH'
      'and CWFYS.CWYEAR=:CWYEAR'
      'and CWFYS.CWMONTH=:CWMONTH'
      'order by CWFYS.CWYEAR,CWFYS.CWMONTH,CWFYS.FYBH')
    UpdateObject = UpSQL2
    Left = 240
    Top = 329
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CWYEAR'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'CWMONTH'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftFixedChar
        Name = 'FYBH'
        ParamType = ptUnknown
        Size = 9
      end
      item
        DataType = ftFixedChar
        Name = 'CWYEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CWMONTH'
        ParamType = ptUnknown
      end>
    object CWFYSCWYEAR: TStringField
      DisplayLabel = 'YEAR'
      FieldName = 'CWYEAR'
      Origin = 'DB.CWFYS.CWYEAR'
      FixedChar = True
      Size = 4
    end
    object CWFYSCWMONTH: TStringField
      DisplayLabel = 'MON'
      FieldName = 'CWMONTH'
      Origin = 'DB.CWFYS.CWMONTH'
      FixedChar = True
      Size = 2
    end
    object CWFYSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.CWFYS.DDBH'
      FixedChar = True
      Size = 15
    end
    object CWFYSArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.CWDD.Article'
      FixedChar = True
      Size = 15
    end
    object CWFYSXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.CWDD.XieMing'
      FixedChar = True
      Size = 50
    end
    object CWFYSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.CWDD.Qty'
      DisplayFormat = '##,#0.0'
    end
    object CWFYSUSACC: TCurrencyField
      FieldName = 'USACC'
      Origin = 'DB.CWDD.USACC'
      DisplayFormat = '##,#0.00'
    end
    object CWFYSVNACC: TIntegerField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object CWFYSFYBH: TStringField
      FieldName = 'FYBH'
      Origin = 'DB.CWFYS.FYBH'
      FixedChar = True
      Size = 8
    end
    object CWFYSFYACC: TFloatField
      FieldName = 'FYACC'
      Origin = 'DB.CWFYS.FYACC'
      DisplayFormat = '##,#0'
    end
    object CWFYSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CWFYS.USERID'
      FixedChar = True
      Size = 15
    end
    object CWFYSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CWFYS.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object CWFYSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CWFYS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update CWFYS'
      'set'
      '  FYACC = :FYACC,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  CWYEAR = :OLD_CWYEAR and'
      '  CWMONTH = :OLD_CWMONTH and'
      '  FYBH = :OLD_FYBH and'
      '  DDBH = :OLD_DDBH')
    InsertSQL.Strings = (
      'insert into CWFYS'
      '  (FYACC, USERID, USERDATE)'
      'values'
      '  (:FYACC, :USERID, :USERDATE)')
    DeleteSQL.Strings = (
      'delete from CWFYS'
      'where'
      '  CWYEAR = :OLD_CWYEAR and'
      '  CWMONTH = :OLD_CWMONTH and'
      '  FYBH = :OLD_FYBH and'
      '  DDBH = :OLD_DDBH')
    Left = 280
    Top = 329
  end
  object DS2: TDataSource
    DataSet = CWFYS
    Left = 320
    Top = 329
  end
  object Pop1: TPopupMenu
    Left = 368
    Top = 329
    object N1: TMenuItem
      Caption = 'Devide by Qty'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Modify'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Save'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'Cancel'
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = 'Excel'
      OnClick = N5Click
    end
  end
  object POP2: TPopupMenu
    Left = 400
    Top = 161
    object M1: TMenuItem
      Caption = 'Import Fee'
    end
  end
end
