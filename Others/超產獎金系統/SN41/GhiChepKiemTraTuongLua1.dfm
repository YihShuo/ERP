object GhiChepKiemTraTuongLua: TGhiChepKiemTraTuongLua
  Left = 0
  Top = 0
  Caption = 'Ghi Ch'#233'p Ki'#7875'm Tra T'#432#7901'ng L'#7917'a'
  ClientHeight = 487
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Truy v'#7845'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
    end
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Th'#234'm'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 1
      OnClick = BB2Click
    end
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'S'#7917'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      OnClick = BB3Click
    end
    object BB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Xo'#769'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 3
      OnClick = BB4Click
    end
    object BB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'L'#432'u'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 4
      OnClick = BB5Click
    end
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Hu'#777'y'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 5
      OnClick = BB6Click
    end
    object BB7: TBitBtn
      Left = 458
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 6
      OnClick = BB7Click
    end
    object BB10: TBitBtn
      Left = 351
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'In MC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 7
      OnClick = BB10Click
    end
    object BB11: TBitBtn
      Left = 403
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'In TL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 8
      OnClick = BB11Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 119
    Width = 1103
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 30
      Height = 16
      Caption = 'From'
    end
    object Label2: TLabel
      Left = 156
      Top = 13
      Width = 15
      Height = 16
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 288
      Top = 14
      Width = 57
      Height = 16
      Caption = 'M'#227' Phi'#7871'u:'
    end
    object Button1: TButton
      Left = 480
      Top = 9
      Width = 77
      Height = 25
      Caption = 'T'#236'm ki'#7871'm'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 51
      Top = 9
      Width = 102
      Height = 24
      Date = 44576.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 44576.000000000000000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 177
      Top = 9
      Width = 102
      Height = 24
      Date = 44576.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 44576.000000000000000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 351
      Top = 9
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 160
    Width = 1103
    Height = 327
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'TLMas'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1095
        Height = 296
        Align = alClient
        DataSource = DS1
        DynProps = <>
        FooterRowCount = 1
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TLuaNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#34399'|M'#227' Phi'#7871'u'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TLDate'
            Footers = <>
            Title.Caption = #27298#26597#26085#26399'|Ng'#224'y'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30064#21205#20154#21729'|S'#7889' th'#7867
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30064#21205#26085#26399'|Ng'#224'y l'#224'm'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #23529#26680#21934#20301#20027#31649'|S'#7889' th'#7867' x'#225'c nh'#7853'n'
            Width = 146
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #23529#26680#26085#26399'|Ng'#224'y x'#225'c nh'#7853'n'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMID1'
            Footers = <>
            Title.Caption = #23529#26680#24288#21209#37096#38272#20027#31649'|S'#7889' th'#7867' x'#225'c nh'#7853'n'
            Width = 146
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMDate1'
            Footers = <>
            Title.Caption = #23529#26680#26085#26399'|Ng'#224'y x'#225'c nh'#7853'n'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 20
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TLDet'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1095
        Height = 296
        Align = alClient
        DataSource = DS2
        DynProps = <>
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TLMa'
            Footers = <>
            Width = 71
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TLTen'
            Footers = <>
            Title.Caption = 'H'#7841'ng m'#7909'c'
            Width = 712
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TTBinhThuong'
            Footers = <>
            Title.Caption = 'Ki'#7875'm tra t'#236'nh tr'#7841'ng|B'#236'nh th'#432#7901'ng'
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TTKhongBinhThuong'
            Footers = <>
            Title.Caption = 'Ki'#7875'm tra t'#236'nh tr'#7841'ng|Kh'#225'c th'#432#7901'ng'
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Title.Caption = 'S'#7889' th'#7867
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Title.Caption = 'Ng'#224'y l'#224'm'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Width = 25
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1103
    Height = 54
    Align = alTop
    TabOrder = 3
    Visible = False
    object BD6: TBitBtn
      Left = 248
      Top = 2
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Hu'#777'y'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 0
      OnClick = BD6Click
    end
    object BD5: TBitBtn
      Left = 200
      Top = 2
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'L'#432'u'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 1
      OnClick = BD5Click
    end
    object BD4: TBitBtn
      Left = 152
      Top = 2
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Xo'#769'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 2
      OnClick = BD4Click
    end
    object BD3: TBitBtn
      Left = 104
      Top = 2
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'S'#7917'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 3
      OnClick = BD3Click
    end
    object BD2: TBitBtn
      Left = 56
      Top = 3
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Th'#234'm'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 4
      OnClick = BD2Click
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 263
  end
  object UpdateSQL1: TMyADOUpdateSQL
    DataSet = Query1
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'Memo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'TLDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE ITPC_GhiChepTuongLua'
      'SET'
      '  Memo = :Memo,'
      '  TLDate = :TLDate,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  TLuaNo= :OLD_TLuaNo')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM ITPC_GhiChepTuongLua'
      'WHERE'
      '  TLuaNo = :OLD_TLuaNo')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'Memo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'TLDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'CFMID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CFMDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'CFMID1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CFMDate1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      
        'INSERT INTO ITPC_GhiChepTuongLua (TLuaNo, Memo, TLDate, UserID, ' +
        'UserDate, CFMID, CFMDate,CFMID1, CFMDate1,YN)'
      
        'VALUES (:TLuaNo, :Memo, :TLDate, :UserID, :UserDate, :CFMID, :CF' +
        'MDate,:CFMID1, :CFMDate1, '#39'1'#39')')
    SQLDelete = 
      'DELETE FROM ITPC_GhiChepTuongLua'#13#10'WHERE'#13#10'  TLuaNo = :OLD_TLuaNo'#13 +
      #10
    SQLInsert = 
      'INSERT INTO ITPC_GhiChepTuongLua (TLuaNo, Memo, TLDate, UserID, ' +
      'UserDate, CFMID, CFMDate,CFMID1, CFMDate1,YN)'#13#10'VALUES (:TLuaNo, ' +
      ':Memo, :TLDate, :UserID, :UserDate, :CFMID, :CFMDate,:CFMID1, :C' +
      'FMDate1, '#39'1'#39')'
    SQLModify = 
      'UPDATE ITPC_GhiChepTuongLua'#13#10'SET'#13#10'  Memo = :Memo,'#13#10'  TLDate = :T' +
      'LDate,'#13#10'  UserID = :UserID,'#13#10'  UserDate = :UserDate'#13#10'WHERE'#13#10'  TL' +
      'uaNo= :OLD_TLuaNo'
    Left = 24
    Top = 359
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query1AfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ITPC_GhiChepTuongLua'
      'WHERE 1=2')
    Left = 24
    Top = 311
    object Query1TLuaNo: TStringField
      FieldName = 'TLuaNo'
      Size = 11
    end
    object Query1Memo: TWideStringField
      FieldName = 'Memo'
      Size = 50
    end
    object Query1TLDate: TDateTimeField
      FieldName = 'TLDate'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
      Size = 10
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CFMID1: TStringField
      FieldName = 'CFMID1'
    end
    object Query1CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 88
    Top = 263
  end
  object Query2: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query2AfterOpen
    DataSource = DS1
    Parameters = <
      item
        Name = 'TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      'Select ITPC_GhiChepTuongLuaChiTiet.*,ITPC_DanhSachTenTuongLua.LB'
      'from ITPC_GhiChepTuongLuaChiTiet'
      
        'left join ITPC_DanhSachTenTuongLua on ITPC_GhiChepTuongLuaChiTie' +
        't.TLMa=ITPC_DanhSachTenTuongLua.TLMa  and LB in ('#39'01'#39','#39'04'#39')'
      'where ITPC_GhiChepTuongLuaChiTiet.TLuaNo=:TLuaNo')
    Left = 88
    Top = 311
    object Query2TLuaNo: TStringField
      FieldName = 'TLuaNo'
      Size = 11
    end
    object Query2LB: TStringField
      FieldName = 'LB'
      Size = 4
    end
    object Query2TLMa: TStringField
      FieldName = 'TLMa'
    end
    object Query2TLTen: TWideStringField
      FieldName = 'TLTen'
      Size = 200
    end
    object Query2TTBinhThuong: TBooleanField
      FieldName = 'TTBinhThuong'
    end
    object Query2TTKhongBinhThuong: TBooleanField
      FieldName = 'TTKhongBinhThuong'
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object UpdateSQL2: TMyADOUpdateSQL
    DataSet = Query2
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'TLTen'
        Size = -1
        Value = Null
      end
      item
        Name = 'TTBinhThuong'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'TTKhongBinhThuong'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'OLD_TLMa'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE ITPC_GhiChepTuongLuaChiTiet'
      'SET'
      '  TLTen=:TLTen,'
      '  TTBinhThuong= :TTBinhThuong,'
      '  TTKhongBinhThuong= :TTKhongBinhThuong,'
      '  UserID= :UserID,'
      '  UserDate= :UserDate'
      'WHERE'
      '  TLuaNo= :TLuaNo and'
      '  TLMa = :OLD_TLMa ')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'OLD_TLMa'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE ITPC_GhiChepTuongLuaChiTiet'
      'WHERE'
      '  TLuaNo= :OLD_TLuaNo and'
      '  TLMa= :OLD_TLMa ')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'TLuaNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'TLMa'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'TLTen'
        Size = -1
        Value = Null
      end
      item
        Name = 'TTBinhThuong'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'TTKhongBinhThuong'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      
        'INSERT INTO ITPC_GhiChepTuongLuaChiTiet(TLuaNo, TLMa, TLTen, TTB' +
        'inhThuong, TTKhongBinhThuong, UserID, UserDate, YN)'
      
        'VALUES (:TLuaNo, :TLMa, :TLTen, :TTBinhThuong, :TTKhongBinhThuon' +
        'g, :UserID, :UserDate, '#39'1'#39')')
    SQLDelete = 
      'DELETE ITPC_GhiChepTuongLuaChiTiet'#13#10'WHERE'#13#10'  TLuaNo= :OLD_TLuaNo' +
      ' and'#13#10'  TLMa= :OLD_TLMa '
    SQLInsert = 
      'INSERT INTO ITPC_GhiChepTuongLuaChiTiet(TLuaNo, TLMa, TLTen, TTB' +
      'inhThuong, TTKhongBinhThuong, UserID, UserDate, YN)'#13#10'VALUES (:TL' +
      'uaNo, :TLMa, :TLTen, :TTBinhThuong, :TTKhongBinhThuong, :UserID,' +
      ' :UserDate, '#39'1'#39')'
    SQLModify = 
      'UPDATE ITPC_GhiChepTuongLuaChiTiet'#13#10'SET'#13#10'  TLTen=:TLTen,'#13#10'  TTBi' +
      'nhThuong= :TTBinhThuong,'#13#10'  TTKhongBinhThuong= :TTKhongBinhThuon' +
      'g,'#13#10'  UserID= :UserID,'#13#10'  UserDate= :UserDate'#13#10'WHERE'#13#10'  TLuaNo= ' +
      ':TLuaNo and'#13#10'  TLMa = :OLD_TLMa '#13#10
    Left = 88
    Top = 359
  end
  object QUpdate: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 208
    Top = 280
  end
  object QTemp: TMyADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Category'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DailyMenu'
      'WHERE Category = :Category')
    Left = 208
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 328
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      OnClick = Confirm1Click
    end
    object ConfirmAll1: TMenuItem
      Caption = 'Confirm All'
      OnClick = ConfirmAll1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AddDateN: TMenuItem
      Caption = 'Add  30 Days'
      OnClick = AddDateNClick
    end
  end
end
