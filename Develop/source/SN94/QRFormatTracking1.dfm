object QRFormatTracking: TQRFormatTracking
  Left = 290
  Top = 84
  Width = 978
  Height = 620
  Caption = 'QR_Tracking'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 962
    Height = 581
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'QR'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 954
        Height = 65
        Align = alTop
        TabOrder = 0
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
      end
      object Panel6: TPanel
        Left = 0
        Top = 120
        Width = 954
        Height = 65
        Align = alTop
        TabOrder = 1
        Visible = False
        object BD2: TBitBtn
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
          Left = 153
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
          Left = 201
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
          Left = 249
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
        object BDT5: TBitBtn
          Left = 360
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
          TabOrder = 5
          OnClick = BDT5Click
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
      end
      object PC2: TPageControl
        Left = 0
        Top = 185
        Width = 954
        Height = 365
        ActivePage = TS3
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = PC2Change
        object TS3: TTabSheet
          Caption = 'SCMas'
          ImageIndex = 2
          object DBGrid3: TDBGridEh
            Left = 0
            Top = 0
            Width = 946
            Height = 334
            Align = alClient
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
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDblClick = DBGrid3DblClick
            OnGetCellParams = DBGrid3GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SCNO'
                Footers = <>
                ReadOnly = True
                Width = 130
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'ID'
                Footers = <>
                Width = 80
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Name'
                Footers = <>
                Width = 220
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Dept'
                Footers = <>
                Width = 180
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                ReadOnly = True
                Width = 91
              end>
          end
        end
        object TS4: TTabSheet
          Caption = 'SCDet'
          ImageIndex = 3
          object DBGrid4: TDBGridEh
            Left = 0
            Top = 0
            Width = 946
            Height = 334
            Align = alClient
            DataSource = DS4
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = 14737600
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnEditButtonClick = DBGrid4EditButtonClick
            OnGetCellParams = DBGrid4GetCellParams
            Columns = <
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'SKU'
                Footers = <>
                Width = 110
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'SR'
                Footers = <>
                Width = 180
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 50
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Purpose'
                Footers = <>
                PickList.Strings = (
                  'Hien truong muon giay tham khao Production borrow for reference'#9
                  'Gui giay qua LAB Send to LAB'#9
                  'Gui giay qua QC QC keep'#9
                  'Gui giay di in Shoe for printing'#9
                  'Giay thi nghiem keo nhip Shoe for flexing and bonding test'#9
                  'Dinh muc tham khao IE reference'#9
                  'Gui giay di A2 say Send to A2 for drying'#9
                  'Gui than giay qua LAB Send body shoe to LAB'#9
                  'Lam giay thu Do trial'#9
                  
                    'Tra giay cho QC (khong phai giay cua TT Khai thac) Return shoe t' +
                    'o QC (not DC shoe)'#9
                  
                    'Tra giay cho hien truong (khong phai giay cua TT Khai thac) Retu' +
                    'rn shoe to production (not DC shoe)'#9
                  'Di ep tem nhiet Heat Transfer Labels'#9
                  'Ky thong bao lam dao TB knife signing'#9
                  'Ky thong bao TB signing'#9
                  'Giay thu nhip Flexing test'#9
                  'Giay thu keo Bonding test'#9
                  
                    'Gui giay di hop voi khach hang Send shoe to CTS Nike Office for ' +
                    'meeting'#9
                  'Gui giay di Ty Dat tham khao Send to TY DAT for reference'#9)
                Width = 300
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'RON'
                Footers = <>
                Title.Caption = 'RETURN|(YES/NO)'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'barcode'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'QR CODE'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'Returnn'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Return with special case'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'Remarks'
                Footers = <>
                Width = 350
              end>
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 954
        Height = 55
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        object Label1: TLabel
          Left = 8
          Top = 20
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SCNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 161
          Top = 19
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dept:'
        end
        object Label3: TLabel
          Left = 476
          Top = 19
          Width = 34
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'From:'
        end
        object Label4: TLabel
          Left = 616
          Top = 20
          Width = 20
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'To:'
        end
        object Label9: TLabel
          Left = 328
          Top = 19
          Width = 38
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ID:'
        end
        object Edit1: TEdit
          Left = 56
          Top = 16
          Width = 105
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button1: TButton
          Left = 808
          Top = 11
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 512
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 2
        end
        object DTP2: TDateTimePicker
          Left = 640
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object Edit2: TEdit
          Left = 216
          Top = 16
          Width = 105
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CB1: TCheckBox
          Left = 744
          Top = 19
          Width = 57
          Height = 17
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object Edit5: TEdit
          Left = 368
          Top = 16
          Width = 81
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'TRACKING'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 954
        Height = 89
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 0
          Top = 20
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SCNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 304
          Top = 51
          Width = 30
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ID:'
        end
        object Label8: TLabel
          Left = 316
          Top = 19
          Width = 34
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'From:'
        end
        object Label10: TLabel
          Left = 464
          Top = 20
          Width = 20
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'To:'
        end
        object Label11: TLabel
          Left = 0
          Top = 52
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 152
          Top = 51
          Width = 38
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU:'
        end
        object Label13: TLabel
          Left = 395
          Top = 51
          Width = 89
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Return or not:'
        end
        object Label6: TLabel
          Left = 152
          Top = 19
          Width = 38
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dept:'
        end
        object Button3: TButton
          Left = 720
          Top = 43
          Width = 81
          Height = 33
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object Edit3: TEdit
          Left = 48
          Top = 16
          Width = 105
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit6: TEdit
          Left = 336
          Top = 48
          Width = 65
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP3: TDateTimePicker
          Left = 352
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object DTP4: TDateTimePicker
          Left = 488
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 4
        end
        object Button2: TButton
          Left = 720
          Top = 3
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button2Click
        end
        object Edit7: TEdit
          Left = 48
          Top = 48
          Width = 105
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 192
          Top = 48
          Width = 105
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object ComboBox5: TComboBox
          Left = 488
          Top = 48
          Width = 97
          Height = 24
          ItemHeight = 16
          TabOrder = 8
          Items.Strings = (
            'All'
            'Return'
            'No need to return')
        end
        object Edit4: TEdit
          Left = 192
          Top = 16
          Width = 105
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object RadioGroup1: TRadioGroup
          Left = 584
          Top = 0
          Width = 129
          Height = 73
          Items.Strings = (
            'All'
            'Receive'
            'Not yet receive')
          TabOrder = 10
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 89
        Width = 954
        Height = 461
        Align = alClient
        DataSource = DS5
        Flat = False
        FooterColor = 14737600
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCNO'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Dept'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'Purpose'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'ScanMoveDate'
            Footers = <>
            Title.Caption = 'MOVE OUT DATE'
            Title.Color = clMoneyGreen
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'ScanReDate'
            Footers = <>
            Title.Caption = 'RECEIVE DATE'
            Title.Color = clMoneyGreen
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'Day'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Returnn'
            Footers = <>
            Title.Caption = 'Return'
            Title.Color = clMoneyGreen
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Remarks'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 400
          end>
      end
    end
  end
  object DS4: TDataSource
    DataSet = SCDet
    Left = 524
    Top = 348
  end
  object SCDet: TQuery
    AfterOpen = SCDetAfterOpen
    OnNewRecord = SCDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select *'
      'from ShoeTestScanS'
      'where SCNO=:SCNO'
      'order by barcode')
    UpdateObject = UPDet
    Left = 492
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCNO'
        ParamType = ptUnknown
      end>
    object SCDetSCNO: TStringField
      FieldName = 'SCNO'
    end
    object SCDetSKU: TStringField
      FieldName = 'SKU'
    end
    object SCDetSR: TStringField
      FieldName = 'SR'
    end
    object SCDetbarcode: TStringField
      FieldName = 'barcode'
    end
    object SCDetQty: TIntegerField
      FieldName = 'Qty'
    end
    object SCDetRON: TBooleanField
      FieldName = 'RON'
    end
    object SCDetPurpose: TStringField
      FieldName = 'Purpose'
      Size = 200
    end
    object SCDetReturn: TBooleanField
      FieldName = 'Returnn'
    end
    object SCDetRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object SCDetIDScanMove: TStringField
      FieldName = 'IDScanMove'
    end
    object SCDetScanMoveDate: TDateTimeField
      FieldName = 'ScanMoveDate'
    end
    object SCDetIDScanRe: TStringField
      FieldName = 'IDScanRe'
    end
    object SCDetScanReDate: TDateTimeField
      FieldName = 'ScanReDate'
    end
    object SCDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object SCDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update ShoeTestScanS'
      'set'
      '  SKU = :SKU,'
      '  SR = :SR,'
      '  Qty = :Qty,'
      '  RON = :RON,'
      '  Purpose = :Purpose,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  SCNO = :OLD_SCNO and'
      '  SR = :OLD_SR and'
      '  barcode = :OLD_barcode')
    InsertSQL.Strings = (
      'insert into ShoeTestScanS'
      
        '  (SCNO, SKU, SR, barcode, Qty, RON, Purpose, Returnn,USERDATE, ' +
        'USERID, YN)'
      'values'
      
        '  (:SCNO, :SKU, :SR, :barcode, :Qty, :RON, :Purpose, :Returnn, :' +
        'USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from ShoeTestScanS'
      'where'
      '  SCNO = :OLD_SCNO and'
      '  SR = :OLD_SR and'
      '  barcode = :OLD_barcode')
    Left = 492
    Top = 381
  end
  object DS3: TDataSource
    DataSet = SCMas
    Left = 436
    Top = 348
  end
  object SCMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from ShoeTestScan'
      
        'where convert(smalldatetime,convert(varchar,USERDATE,111)) betwe' +
        'en '
      #39'2008/02/15'#39
      ' and '#39'2008/03/01'#39
      ' and SCNO like '#39'%'#39
      ' and Dept like '#39'%%'#39
      'order by SCNO DESC'
      '')
    UpdateObject = UpMas
    Left = 396
    Top = 348
    object SCMasSCNO: TStringField
      FieldName = 'SCNO'
    end
    object SCMasGSBH: TStringField
      FieldName = 'GSBH'
    end
    object SCMasID: TStringField
      FieldName = 'ID'
    end
    object SCMasName: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object SCMasDept: TStringField
      FieldName = 'Dept'
      Size = 40
    end
    object SCMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object SCMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object SCMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update ShoeTestScan'
      'set'
      '  GSBH = :GSBH,'
      '  ID = :ID,'
      '  Name = :Name,'
      '  Dept = :Dept,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  SCNO = :OLD_SCNO')
    InsertSQL.Strings = (
      'insert into ShoeTestScan'
      '  (SCNO, GSBH, ID, Name, Dept, USERDATE, USERID, YN)'
      'values'
      '  (:SCNO, :GSBH, :ID, :Name, :Dept, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from ShoeTestScan'
      'where'
      '  SCNO = :OLD_SCNO')
    Left = 396
    Top = 380
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 324
    Top = 350
  end
  object UpTemp: TQuery
    DatabaseName = 'DB'
    Left = 588
    Top = 350
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 620
    Top = 350
  end
  object Track: TQuery
    AfterOpen = SCDetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select *'
      'from ShoeTestScanS'
      'where SCNO=:SCNO'
      'order by SKU')
    Left = 676
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCNO'
        ParamType = ptUnknown
      end>
    object StringField2: TStringField
      FieldName = 'SKU'
    end
    object StringField3: TStringField
      FieldName = 'SR'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Qty'
    end
    object TrackName: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object TrackID: TStringField
      FieldName = 'ID'
    end
    object TrackDept: TStringField
      FieldName = 'Dept'
      Size = 40
    end
    object TrackPurpose: TStringField
      FieldName = 'Purpose'
      Size = 200
    end
    object TrackScanMoveDate: TStringField
      FieldName = 'ScanMoveDate'
      Size = 100
    end
    object TrackScanReDate: TStringField
      FieldName = 'ScanReDate'
      Size = 100
    end
    object TrackDay: TIntegerField
      FieldName = 'Day'
    end
    object BooleanField2: TBooleanField
      FieldName = 'Returnn'
      ReadOnly = True
    end
    object StringField5: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object TrackRON: TBooleanField
      FieldName = 'RON'
    end
    object TrackSCNO: TStringField
      FieldName = 'SCNO'
    end
  end
  object DS5: TDataSource
    DataSet = Track
    Left = 708
    Top = 348
  end
end
