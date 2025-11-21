object HokaRubberWeight: THokaRubberWeight
  Left = 197
  Top = 147
  Width = 1024
  Height = 623
  Caption = 'HokaRubberWeight'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 585
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 281
      Width = 535
      Height = 5
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 535
      Height = 51
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 248
        Top = 16
        Width = 273
        Height = 20
        AutoSize = False
        Caption = '1.Botton Code # '#24213#27169#32232#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BA2: TBitBtn
        Left = 0
        Top = 1
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
        TabOrder = 0
        OnClick = BA2Click
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
      object BA3: TBitBtn
        Left = 48
        Top = 1
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
        TabOrder = 1
        OnClick = BA3Click
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
      object BA4: TBitBtn
        Left = 96
        Top = 1
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
        TabOrder = 2
        OnClick = BA4Click
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
      object BA5: TBitBtn
        Left = 144
        Top = 1
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
        OnClick = BA5Click
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
      object BA6: TBitBtn
        Left = 192
        Top = 1
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
        OnClick = BA6Click
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
      Top = 52
      Width = 535
      Height = 229
      Align = alTop
      DataSource = DS1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      Columns = <
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'LBDH'
          Footers = <>
          Title.Caption = 'ID'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'YWSM'
          Footers = <>
          Title.Caption = 'Bottom Code'
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'ZWSM'
          Footers = <>
          Title.Caption = 'Sample Stage'
          Width = 106
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 92
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 84
        end>
    end
    object Panel10: TPanel
      Left = 1
      Top = 286
      Width = 535
      Height = 51
      Align = alTop
      TabOrder = 2
      object Label2: TLabel
        Left = 248
        Top = 16
        Width = 265
        Height = 20
        AutoSize = False
        Caption = '2.M/S material name '#26448#26009#21517#31281
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BB2: TBitBtn
        Left = 0
        Top = 1
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
        TabOrder = 0
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
        Left = 48
        Top = 1
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
        TabOrder = 1
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
        Left = 96
        Top = 1
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
        TabOrder = 2
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
        Left = 144
        Top = 1
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
        Left = 192
        Top = 1
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
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 337
      Width = 535
      Height = 247
      Align = alClient
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'LBDH'
          Footers = <>
          Title.Caption = 'ID'
        end
        item
          EditButtons = <>
          FieldName = 'YWSM'
          Footers = <>
          Title.Caption = 'Material Name'
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'ZWSM'
          Footers = <>
          Title.Caption = 'Hardness'
          Width = 108
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
        end>
    end
  end
  object Panel2: TPanel
    Left = 537
    Top = 0
    Width = 471
    Height = 585
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 281
      Width = 469
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 469
      Height = 51
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 248
        Top = 16
        Width = 257
        Height = 20
        AutoSize = False
        Caption = '3.Production Stage'#29983#29986#36942#31243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BC2: TBitBtn
        Left = 0
        Top = 1
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
        TabOrder = 0
        OnClick = BC2Click
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
      object BC3: TBitBtn
        Left = 48
        Top = 1
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
        TabOrder = 1
        OnClick = BC3Click
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
      object BC4: TBitBtn
        Left = 96
        Top = 1
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
        TabOrder = 2
        OnClick = BC4Click
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
      object BC5: TBitBtn
        Left = 144
        Top = 1
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
        OnClick = BC5Click
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
      object BC6: TBitBtn
        Left = 192
        Top = 1
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
        OnClick = BC6Click
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
    object DBGridEh4: TDBGridEh
      Left = 1
      Top = 335
      Width = 469
      Height = 249
      Align = alClient
      DataSource = DS4
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      Columns = <
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'SIZE'
          Footers = <>
          ReadOnly = True
        end
        item
          EditButtons = <>
          FieldName = 'SWeightL'
          Footers = <>
          Width = 114
        end
        item
          EditButtons = <>
          FieldName = 'SWeightR'
          Footers = <>
          Width = 110
        end
        item
          EditButtons = <>
          FieldName = 'Std_SG'
          Footers = <>
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
        end>
    end
    object Panel11: TPanel
      Left = 1
      Top = 284
      Width = 469
      Height = 51
      Align = alTop
      TabOrder = 2
      object Label3: TLabel
        Left = 248
        Top = 16
        Width = 353
        Height = 20
        AutoSize = False
        Caption = '4.Standard Size Weight'#27161#28310#23610#30908#37325#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BD2: TBitBtn
        Left = 0
        Top = 1
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
        TabOrder = 0
        OnClick = BD2Click
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
      object BD3: TBitBtn
        Left = 48
        Top = 1
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
        TabOrder = 1
        OnClick = BD3Click
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
      object BD4: TBitBtn
        Left = 96
        Top = 1
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
        TabOrder = 2
        OnClick = BD4Click
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
      object BD5: TBitBtn
        Left = 144
        Top = 1
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
        OnClick = BD5Click
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
      object BD6: TBitBtn
        Left = 192
        Top = 1
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
        OnClick = BD6Click
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
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 52
      Width = 469
      Height = 229
      Align = alTop
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'LBDH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ID'
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'YWSM'
          Footers = <>
          PickList.Strings = (
            'Loading Weight'
            'Blocker Weight before buffing'
            'Blocker Weight after buffing'
            'Compressed M/S Weight'
            'Midsole weight range'
            'RB Weight')
          Title.Caption = 'Proudction Name'
          Width = 124
        end
        item
          EditButtons = <>
          FieldName = 'ZWSM'
          Footers = <>
          Title.Caption = 'Proudction Name EN'
          Width = 111
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 55
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 76
        end>
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 160
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select *'
      'from LIY_DD.dbo.HKDM_LBZLS'
      'where lb='#39'1'#39'  and layer=1'
      ''
      ''
      '')
    UpdateObject = UpLB1
    Left = 208
    Top = 192
    object Query1LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 5
    end
    object Query1LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 5
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1Layer: TSmallintField
      FieldName = 'Layer'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpLB1: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.HKDM_LBZLS'
      'set'
      '  YWSM = :YWSM,'
      '  ZWSM = :ZWSM,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  LB = :OLD_LB'
      '  and LBDH =:OLD_LBDH')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.HKDM_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM ,Layer, USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer ,:USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.HKDM_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 208
    Top = 224
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 208
    Top = 399
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select *'
      'from LIY_DD.dbo.HKDM_LBZLS'
      'where LB=:LBDH  and layer=2')
    UpdateObject = UpLB2
    Left = 208
    Top = 431
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 6
      end>
    object Query2LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 5
    end
    object Query2LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 5
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
    end
    object Query2ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
    end
    object Query2Layer: TSmallintField
      FieldName = 'Layer'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpLB2: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.HKDM_LBZLS'
      'set'
      '  YWSM = :YWSM,'
      '  ZWSM = :ZWSM,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  LB = :OLD_LB'
      '  and LBDH =:OLD_LBDH')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.HKDM_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM ,Layer , USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer , :USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.HKDM_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 207
    Top = 461
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 624
    Top = 160
  end
  object UpLB3: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.HKDM_LBZLS'
      'set'
      '  YWSM = :YWSM,'
      '  ZWSM = :ZWSM,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  LB = :OLD_LB'
      '  and LBDH =:OLD_LBDH')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.HKDM_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM , Layer, USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM , :Layer,  :USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.HKDM_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 624
    Top = 223
  end
  object Query3: TQuery
    AfterOpen = Query3AfterOpen
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select *'
      'from LIY_DD.dbo.HKDM_LBZLS'
      ' where lb=:LBDH  and layer=3')
    UpdateObject = UpLB3
    Left = 624
    Top = 192
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 6
      end>
    object Query3LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 5
    end
    object Query3LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 5
    end
    object Query3YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query3ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query3Layer: TSmallintField
      FieldName = 'Layer'
    end
    object Query3USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 175
    Top = 191
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 632
    Top = 392
  end
  object Query4: TQuery
    AfterOpen = Query4AfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'Select *'
      'from LIY_DD.dbo.HKDM_LBZLS_SIZE'
      'where LBDH=:LBDH')
    UpdateObject = UpLB4
    Left = 632
    Top = 424
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 6
      end>
    object Query4LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 5
    end
    object Query4SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query4SWeightL: TFloatField
      FieldName = 'SWeightL'
    end
    object Query4SWeightR: TFloatField
      FieldName = 'SWeightR'
    end
    object Std_SG: TFloatField
      FieldName = 'Std_SG'
    end
    object Query4USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query4USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query4YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpLB4: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.HKDM_LBZLS_SIZE'
      'set'
      '  SIZE = :SIZE,'
      '  SWeightL = :SWeightL,'
      '  SWeightR = :SWeightR,'
      '  Std_SG= :Std_SG,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  LBDH = :OLD_LBDH'
      '  and SIZE =:OLD_SIZE')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.HKDM_LBZLS_SIZE'
      
        '  ( LBDH, SIZE, SWeightL, SWeightR , Std_SG, USERID, USERDATE, Y' +
        'N )'
      'values'
      
        '  ( :LBDH, :SIZE, :SWeightL, :SWeightR , :Std_SG,  :USERID, :USE' +
        'RDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.HKDM_LBZLS_SIZE'
      'where'
      '  LBDH= :OLD_LBDH'
      '  and SIZE=:OLD_SIZE')
    Left = 632
    Top = 455
  end
end
