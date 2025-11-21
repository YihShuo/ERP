object TBDelayReason1: TTBDelayReason1
  Left = 608
  Top = 304
  Width = 1942
  Height = 675
  Caption = 'TB DelayReason'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1924
    Height = 630
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1922
      Height = 628
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Cutting'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1914
          Height = 81
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 272
            Top = 24
            Width = 188
            Height = 38
            Caption = 'Cutting Ly do'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -33
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BB6: TBitBtn
            Left = 186
            Top = 10
            Width = 57
            Height = 59
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
          object BB5: TBitBtn
            Left = 130
            Top = 10
            Width = 58
            Height = 59
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
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
          object BB4: TBitBtn
            Left = 73
            Top = 10
            Width = 58
            Height = 59
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
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
          object BB1: TBitBtn
            Left = 14
            Top = 10
            Width = 60
            Height = 59
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
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
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 81
          Width = 1914
          Height = 516
          Align = alClient
          DataSource = DS1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
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
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Title.Alignment = taCenter
              Width = 39
              OnEditButtonClick = DBGridEh1Columns0EditButtonClick
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 196
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 229
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 243
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.Alignment = taCenter
              Width = 87
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Alignment = taCenter
              Width = 69
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.Alignment = taCenter
              Width = 78
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'WarehouseOK'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'CuttingPlan'
              Footers = <>
              Title.Alignment = taCenter
              Width = 135
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Title.Alignment = taCenter
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Stitching'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1914
          Height = 81
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 272
            Top = 24
            Width = 210
            Height = 38
            Caption = 'Stitching Ly do'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -33
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BB66: TBitBtn
            Left = 186
            Top = 10
            Width = 57
            Height = 59
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BB66Click
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
          object BB55: TBitBtn
            Left = 130
            Top = 10
            Width = 58
            Height = 59
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BB55Click
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
          object BB44: TBitBtn
            Left = 73
            Top = 10
            Width = 58
            Height = 59
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BB44Click
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
          object BB11: TBitBtn
            Left = 14
            Top = 10
            Width = 60
            Height = 59
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BB11Click
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
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 81
          Width = 1914
          Height = 516
          Align = alClient
          DataSource = DS3
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
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
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Title.Alignment = taCenter
              OnEditButtonClick = DBGridEh2Columns0EditButtonClick
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 175
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 194
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 217
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.Alignment = taCenter
              Width = 94
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Alignment = taCenter
              Width = 92
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.Alignment = taCenter
              Width = 71
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'CuttingOK'
              Footers = <>
              Title.Alignment = taCenter
              Width = 181
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'SMatOK'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = 'WarehouseMTLOK'
              Width = 192
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'StitchingPlan'
              Footers = <>
              Title.Alignment = taCenter
              Width = 196
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Title.Alignment = taCenter
              Width = 103
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 320
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Title.Alignment = taCenter
              Width = 2
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Assemble'
        ImageIndex = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1914
          Height = 81
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 272
            Top = 24
            Width = 227
            Height = 38
            Caption = 'Assemble Ly do'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -33
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BB666: TBitBtn
            Left = 186
            Top = 10
            Width = 57
            Height = 59
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BB666Click
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
          object BB555: TBitBtn
            Left = 130
            Top = 10
            Width = 58
            Height = 59
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BB555Click
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
          object BB444: TBitBtn
            Left = 73
            Top = 10
            Width = 58
            Height = 59
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BB444Click
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
          object BB111: TBitBtn
            Left = 14
            Top = 10
            Width = 60
            Height = 59
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BB111Click
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
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 81
          Width = 1914
          Height = 516
          Align = alClient
          DataSource = DS4
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
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
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Title.Alignment = taCenter
              OnEditButtonClick = DBGridEh3Columns0EditButtonClick
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 160
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 222
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 230
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.Alignment = taCenter
              Width = 94
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Alignment = taCenter
              Width = 76
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.Alignment = taCenter
              Width = 74
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'StitchingOK'
              Footers = <>
              Title.Alignment = taCenter
              Width = 185
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'AMatOK'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = 'WarehouseMTLOK'
              Width = 181
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'AssemblePlan'
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Title.Alignment = taCenter
              Width = 85
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 297
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Title.Alignment = taCenter
              Width = 2
            end>
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 117
    Top = 204
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'C'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) AND ShoeTest.CutDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'C'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   CuttingPlan,groups,serino'
      '')
    UpdateObject = UPDSQL1
    Left = 117
    Top = 252
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query1Groups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object Query1Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1WarehouseOK: TDateTimeField
      FieldName = 'WarehouseOK'
    end
    object Query1CuttingPlan: TDateTimeField
      FieldName = 'CuttingPlan'
    end
    object Query1PlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Query1DP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object Query1DR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query1PartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object Query1PartV: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object Query1ReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object Query1ReasonV: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object UPDSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoetestDelay'
      'Set'
      '  DP=:DP,'
      '  DR=:DR'
      'where'
      '  Testno = :OLD_Testno  and'
      '  GXLB = C')
    InsertSQL.Strings = (
      'Insert into ShoetestDelay'
      '   (Testno, DP, DR ,GXLB)'
      'Values'
      '   (:Testno, :DP, :DR ,:GXLB)')
    Left = 117
    Top = 284
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'C'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) AND ShoeTest.CutDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Reason.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reaso' +
        'n.YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'C'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   CuttingPlan,groups,serino'
      '')
    Left = 69
    Top = 252
    object StringField1: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object IntegerField1: TIntegerField
      FieldName = 'Serino'
    end
    object StringField3: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField4: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'WarehouseOK'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'CuttingPlan'
    end
    object FloatField1: TFloatField
      FieldName = 'PlanQty'
    end
    object StringField5: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 261
    Top = 204
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.CuttingOK,main.SMatOK,main.SMatGet, main.StitchingPlan, ' +
        'SQplan.Qty AS PlanQty ,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'S'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_mater' +
        'ial SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ShoeTest.Sti' +
        'tchingDate_first AS StitchingPlan, ShoeTest.StitchingDate AS Sti' +
        'tchingOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, Get' +
        'Date(), 111) AND ShoeTest.StitchingDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts'
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitchi' +
        'ng Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper A' +
        'nd Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'S'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   StitchingPlan,groups,serino'
      '')
    UpdateObject = UPDSQL3
    Left = 261
    Top = 252
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query3Groups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object Query3Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query3SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query3Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query3CuttingOK: TDateTimeField
      FieldName = 'CuttingOK'
    end
    object Query3SMatOK: TDateTimeField
      FieldName = 'SMatOK'
    end
    object Query3SMatGet: TDateTimeField
      FieldName = 'SMatGet'
    end
    object Query3StitchingPlan: TDateTimeField
      FieldName = 'StitchingPlan'
    end
    object Query3PlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Query3DP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object Query3DR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query3PartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object Query3PartV: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object Query3ReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object Query3ReasonV: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object Query3GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object UPDSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoetestDelay'
      'Set'
      '  DP=:DP,'
      '  DR=:DR'
      'where'
      '  Testno = :OLD_Testno  and'
      '  GXLB = C')
    InsertSQL.Strings = (
      'Insert into ShoetestDelay'
      '   (Testno, DP, DR ,GXLB)'
      'Values'
      '   (:Testno, :DP, :DR ,:GXLB)')
    Left = 261
    Top = 284
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 349
    Top = 204
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.StitchingOK,main.AMatOK,main.AMatGet, main.AssemblePlan,' +
        ' SQplan.Qty AS PlanQty,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'A'#39' GXLB FROM ('
      ''
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.StitchingDate AS StitchingOK,shoetest' +
        '.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.Assemb' +
        'iyDate_first AS AssemblePlan, ShoeTest.Assemblecomplete AS Assem' +
        'bleOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWE' +
        'EN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetD' +
        'ate(), 111) AND ShoeTest.Assemblecomplete IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Up' +
        'per And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'A'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   AssemblePlan,groups,serino'
      '')
    UpdateObject = UPDSQL4
    Left = 349
    Top = 252
    object Query4TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query4Groups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object Query4Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query4SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query4Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query4StitchingOK: TDateTimeField
      FieldName = 'StitchingOK'
    end
    object Query4AMatOK: TDateTimeField
      FieldName = 'AMatOK'
    end
    object Query4AMatGet: TDateTimeField
      FieldName = 'AMatGet'
    end
    object Query4AssemblePlan: TDateTimeField
      FieldName = 'AssemblePlan'
    end
    object Query4PlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Query4DP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object Query4DR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query4PartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object Query4PartV: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object Query4ReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object Query4ReasonV: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object Query4GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object UPDSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoetestDelay'
      'Set'
      '  DP=:DP,'
      '  DR=:DR'
      'where'
      '  Testno = :OLD_Testno  and'
      '  GXLB = C')
    InsertSQL.Strings = (
      'Insert into ShoetestDelay'
      '   (Testno, DP, DR ,GXLB)'
      'Values'
      '   (:Testno, :DP, :DR ,:GXLB)')
    Left = 349
    Top = 284
  end
end
