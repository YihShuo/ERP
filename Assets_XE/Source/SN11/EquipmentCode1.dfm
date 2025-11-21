object EquipmentCode: TEquipmentCode
  Left = 429
  Top = 290
  Caption = 'EquipmentCode'
  ClientHeight = 561
  ClientWidth = 1102
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
  object Splitter2: TSplitter
    Left = 0
    Top = 232
    Width = 1102
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 945
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1102
    Height = 232
    Align = alTop
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 465
      Top = 1
      Width = 5
      Height = 230
      Color = clBtnFace
      ParentColor = False
    end
    object Panel4: TPanel
      Left = 470
      Top = 1
      Width = 631
      Height = 230
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 629
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 248
          Top = 16
          Width = 161
          Height = 20
          AutoSize = False
          Caption = #20729#20540#37329#38989#20998#39006
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = BC2Click
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
          ParentFont = False
          TabOrder = 1
          OnClick = BC3Click
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
          ParentFont = False
          TabOrder = 2
          OnClick = BC4Click
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
          ParentFont = False
          TabOrder = 3
          OnClick = BC5Click
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
          ParentFont = False
          TabOrder = 4
          OnClick = BC6Click
        end
      end
      object DBGrid3: TDBGridEh
        Left = 1
        Top = 52
        Width = 629
        Height = 177
        Align = alClient
        DataSource = DS3
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 154
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 183
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 464
      Height = 230
      Align = alLeft
      Caption = 'Panel4'
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 462
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 248
          Top = 16
          Width = 169
          Height = 20
          AutoSize = False
          Caption = #22823#20998#39006
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = BA2Click
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
          ParentFont = False
          TabOrder = 1
          OnClick = BA3Click
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
          ParentFont = False
          TabOrder = 2
          OnClick = BA4Click
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
          ParentFont = False
          TabOrder = 3
          OnClick = BA5Click
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
          ParentFont = False
          TabOrder = 4
          OnClick = BA6Click
        end
      end
      object DBGrid1: TDBGridEh
        Left = 1
        Top = 52
        Width = 462
        Height = 177
        Align = alClient
        DataSource = DS1
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 151
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 193
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 235
    Width = 1102
    Height = 326
    Align = alClient
    Caption = 'Panel7'
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 465
      Top = 1
      Height = 324
      ExplicitHeight = 332
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 464
      Height = 324
      Align = alLeft
      Caption = 'Panel8'
      TabOrder = 0
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 462
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 248
          Top = 16
          Width = 137
          Height = 20
          AutoSize = False
          Caption = #27231#22120#21697#21517#20998#39006' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = BB2Click
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
          ParentFont = False
          TabOrder = 1
          OnClick = BB3Click
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
          ParentFont = False
          TabOrder = 2
          OnClick = BB4Click
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
          ParentFont = False
          TabOrder = 3
          OnClick = BB5Click
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
          ParentFont = False
          TabOrder = 4
          OnClick = BB6Click
        end
      end
      object DBGrid2: TDBGridEh
        Left = 1
        Top = 93
        Width = 462
        Height = 230
        Align = alClient
        DataSource = DS2
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 162
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 183
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 52
        Width = 462
        Height = 41
        Align = alTop
        Caption = 'Panel2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label6: TLabel
          Left = 15
          Top = 15
          Width = 37
          Height = 16
          Caption = 'Name'
        end
        object ZWSM2Edit: TEdit
          Left = 65
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyDown = ZWSM2EditKeyDown
        end
        object YWSM2Edit: TEdit
          Left = 192
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 1
          OnKeyDown = YWSM2EditKeyDown
        end
      end
    end
    object Panel9: TPanel
      Left = 468
      Top = 1
      Width = 633
      Height = 324
      Align = alClient
      Caption = 'Panel9'
      TabOrder = 1
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 631
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 248
          Top = 16
          Width = 209
          Height = 20
          AutoSize = False
          Caption = #27231#22120#22411#34399#20998#39006' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = BD2Click
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
          ParentFont = False
          TabOrder = 1
          OnClick = BD3Click
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
          ParentFont = False
          TabOrder = 2
          OnClick = BD4Click
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
          ParentFont = False
          TabOrder = 3
          OnClick = BD5Click
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
          ParentFont = False
          TabOrder = 4
          OnClick = BD6Click
        end
      end
      object DBGrid4: TDBGridEh
        Left = 1
        Top = 93
        Width = 631
        Height = 230
        Align = alClient
        DataSource = DS4
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LBDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'LBDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 49
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 164
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YWSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 183
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel12: TPanel
        Left = 1
        Top = 52
        Width = 631
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label7: TLabel
          Left = 11
          Top = 10
          Width = 37
          Height = 16
          Caption = 'Name'
        end
        object ZWSM4Edit: TEdit
          Left = 60
          Top = 6
          Width = 121
          Height = 24
          TabOrder = 0
          OnKeyDown = ZWSM4EditKeyDown
        end
        object YWSM4Edit: TEdit
          Left = 188
          Top = 6
          Width = 121
          Height = 24
          TabOrder = 1
          OnKeyDown = YWSM4EditKeyDown
        end
      end
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
      'select * from TSCD_LBZLS where lb='#39'1'#39'  and layer=1')
    UpdateObject = UpLB1
    Left = 208
    Top = 192
    object Query1LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 4
    end
    object Query1LBDH: TStringField
      FieldName = 'LBDH'
      OnSetText = Query1LBDHSetText
      FixedChar = True
      Size = 1
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1Layer: TSmallintField
      FieldName = 'Layer'
      Origin = 'DB.TSCD_LBZLS.Layer'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpLB1: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_LBZLS'
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
      'insert into TSCD_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM ,Layer, USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer ,:USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from TSCD_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 207
    Top = 225
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 242
    Top = 190
  end
  object UpLB2: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_LBZLS'
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
      'insert into TSCD_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM ,Layer , USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer , :USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from TSCD_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 207
    Top = 465
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
      'select * from TSCD_LBZLS where lb=:LBDH  and layer=2')
    UpdateObject = UpLB2
    Left = 208
    Top = 431
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 2
      end>
    object Query2LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 4
    end
    object Query2LBDH: TStringField
      FieldName = 'LBDH'
      OnSetText = Query2LBDHSetText
      FixedChar = True
      Size = 4
    end
    object Query2ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query2Layer: TSmallintField
      FieldName = 'Layer'
      Origin = 'DB.TSCD_LBZLS.Layer'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 600
    Top = 400
  end
  object Query4: TQuery
    AfterOpen = Query4AfterOpen
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select * from TSCD_LBZLS where lb=:LBDH  and layer=4')
    UpdateObject = UpLB4
    Left = 600
    Top = 432
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query4LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 4
    end
    object Query4LBDH: TStringField
      FieldName = 'LBDH'
      OnSetText = Query4LBDHSetText
      FixedChar = True
      Size = 4
    end
    object Query4ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query4YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query4Layer: TSmallintField
      FieldName = 'Layer'
      Origin = 'DB.TSCD_LBZLS.Layer'
    end
    object Query4USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query4USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query4YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpLB4: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_LBZLS'
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
      'insert into TSCD_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM , Layer, USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM , :Layer,  :USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from TSCD_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 599
    Top = 465
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 616
    Top = 152
  end
  object Query3: TQuery
    AfterOpen = Query3AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TSCD_LBZLS where lb='#39'3'#39'  and layer=3')
    UpdateObject = UpLB3
    Left = 616
    Top = 184
    object Query3LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 4
    end
    object Query3LBDH: TStringField
      FieldName = 'LBDH'
      OnSetText = Query3LBDHSetText
      FixedChar = True
      Size = 1
    end
    object Query3ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query3YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query3Layer: TSmallintField
      FieldName = 'Layer'
      Origin = 'DB.TSCD_LBZLS.Layer'
    end
    object Query3USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_LBZLS.USERID'
      FixedChar = True
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_LBZLS.USERDATE'
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_LBZLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpLB3: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_LBZLS'
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
      'insert into TSCD_LBZLS'
      '  (LB, LBDH, ZWSM, YWSM , Layer, USERID, USERDATE, YN )'
      'values'
      '  (:LB, :LBDH, :ZWSM, :YWSM , :Layer, :USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from TSCD_LBZLS'
      'where'
      '  LB= :OLD_LB'
      '  and LBDH=:OLD_LBDH')
    Left = 615
    Top = 217
  end
end
