object GhiChepKhoiPhucDuLieu: TGhiChepKhoiPhucDuLieu
  Left = 91
  Top = 0
  Caption = 'Ghi Ch'#233'p Kh'#244'i Ph'#7909'c D'#7919' Li'#7879'u'
  ClientHeight = 481
  ClientWidth = 1183
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
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
    Width = 1183
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
      Left = 58
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
      Top = 9
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
      Left = 449
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
    end
    object BB10: TBitBtn
      Left = 347
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'In KH'
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
    object BitBtn1: TBitBtn
      Left = 394
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'In TT'
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
      OnClick = BitBtn1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 119
    Width = 1183
    Height = 362
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'KPDLMas'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 41
        Width = 1175
        Height = 290
        Align = alClient
        DataSource = DS1
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FooterRowCount = 1
        ParentFont = False
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
            FieldName = 'KPDLNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'M'#227' Phi'#7871'u'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GhiChu'
            Footers = <>
            Title.Caption = 'Ghi Ch'#250
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NguoiDamNhan'
            Footers = <>
            Title.Caption = 'Ng'#432#7901'i '#273#7843'm nh'#7853'n'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DonViHoTro'
            Footers = <>
            Title.Caption = #272#417'n v'#7883' h'#7893' tr'#7907
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NgayHuongDan'
            Footers = <>
            Title.Caption = 'Ng'#224'y h'#432#7899'ng d'#7851'n'
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ThoiGianBatDau'
            Footers = <>
            Title.Caption = 'Th'#7901'i gian b'#7855't '#273#7847'u'
            Width = 113
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ThoiGianKetThuc'
            Footers = <>
            Title.Caption = 'Th'#7901'i gian k'#7871't th'#250'c'
            Width = 114
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ThoiGianLapKeHoach'
            Footers = <>
            Title.Caption = 'Th'#7901'i gian l'#7853'p k'#7871' ho'#7841'ch'
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ThoiGianThucTe'
            Footers = <>
            Title.Caption = 'Th'#7901'i gian l'#224'm vi'#7879'c th'#7921'c t'#7871
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'S'#7889' th'#7867
            Width = 68
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Ng'#224'y l'#224'm'
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'S'#7889' th'#7867' x'#225'c nh'#7853'n'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Ng'#224'y x'#225'c nh'#7853'n'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Width = 20
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'flowflag'
            Footers = <>
            Width = 50
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 14
          Top = 13
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
          Left = 478
          Top = 10
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
    end
    object TabSheet2: TTabSheet
      Caption = 'KPDLDet'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 39
        Width = 1175
        Height = 292
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
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TLTen'
            Footers = <>
            Title.Caption = 'H'#7841'ng m'#7909'c'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NoiDungVN'
            Footers = <>
            Title.Caption = 'N'#7897'i dung k'#7871' ho'#7841'ch| Ti'#7871'ng vi'#7879't'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NoiDungTW'
            Footers = <>
            Title.Caption = 'N'#7897'i dung k'#7871' ho'#7841'ch| Ti'#7871'ng hoa'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TrangThai'
            Footers = <>
            Title.Caption = 'Tr'#7841'ng th'#225'i'
            Width = 50
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
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 39
        Align = alTop
        TabOrder = 1
        object Button2: TButton
          Left = 764
          Top = 8
          Width = 77
          Height = 25
          Caption = 'Th'#234'm'
          TabOrder = 0
          OnClick = Button2Click
        end
        object CBX1: TComboBox
          Left = 160
          Top = 6
          Width = 598
          Height = 25
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = CBX1Click
        end
        object Button3: TButton
          Left = 8
          Top = 6
          Width = 146
          Height = 25
          Caption = 'T'#234'n Danh M'#7909'c S'#7921' C'#7889
          Enabled = False
          TabOrder = 2
          OnClick = Button1Click
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1183
    Height = 54
    Align = alTop
    TabOrder = 2
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
      Left = 58
      Top = 2
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
    Top = 248
  end
  object UpdateSQL1: TMyADOUpdateSQL
    DataSet = Query1
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'GhiChu'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'NguoiDamNhan'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'DonViHoTro'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'NgayHuongDan'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'ThoiGianBatDau'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'ThoiGianKetThuc'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'ThoiGianLapKeHoach'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'ThoiGianThucTe'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
        Name = 'OLD_KPDLNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE ITPC_KhoiPhucDuLieu'
      'SET'
      '  GhiChu = :GhiChu,'
      '  NguoiDamNhan = :NguoiDamNhan,'
      '  DonViHoTro =:DonViHoTro,'
      '  NgayHuongDan =:NgayHuongDan,'
      '  ThoiGianBatDau =:ThoiGianBatDau,'
      '  ThoiGianKetThuc =:ThoiGianKetThuc,'
      '  ThoiGianLapKeHoach =:ThoiGianLapKeHoach,'
      '  ThoiGianThucTe =:ThoiGianThucTe, '
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  KPDLNo= :OLD_KPDLNo')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_KPDLNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM ITPC_KhoiPhucDuLieu'
      'WHERE'
      '  KPDLNo = :OLD_KPDLNo')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'KPDLNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'GhiChu'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'NguoiDamNhan'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'DonViHoTro'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'NgayHuongDan'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'ThoiGianBatDau'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'ThoiGianKetThuc'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'ThoiGianLapKeHoach'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'ThoiGianThucTe'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
      end>
    ZInsertCommandObj.SQL.Strings = (
      
        'INSERT INTO ITPC_KhoiPhucDuLieu (KPDLNo, GhiChu, NguoiDamNhan,Do' +
        'nViHoTro,NgayHuongDan, ThoiGianBatDau, ThoiGianKetThuc, ThoiGian' +
        'LapKeHoach, ThoiGianThucTe, UserID, UserDate, CFMID, CFMDate,YN)'
      
        'VALUES (:KPDLNo, :GhiChu, :NguoiDamNhan, :DonViHoTro, :NgayHuong' +
        'Dan, :ThoiGianBatDau, :ThoiGianKetThuc, :ThoiGianLapKeHoach, :Th' +
        'oiGianThucTe, :UserID, :UserDate, :CFMID, :CFMDate, '#39'1'#39')')
    SQLDelete = 'DELETE FROM ITPC_KhoiPhucDuLieu'#13#10'WHERE'#13#10'  KPDLNo = :OLD_KPDLNo'#13#10
    SQLInsert = 
      'INSERT INTO ITPC_KhoiPhucDuLieu (KPDLNo, GhiChu, NguoiDamNhan,Do' +
      'nViHoTro,NgayHuongDan, ThoiGianBatDau, ThoiGianKetThuc, ThoiGian' +
      'LapKeHoach, ThoiGianThucTe, UserID, UserDate, CFMID, CFMDate,YN)' +
      #13#10'VALUES (:KPDLNo, :GhiChu, :NguoiDamNhan, :DonViHoTro, :NgayHuo' +
      'ngDan, :ThoiGianBatDau, :ThoiGianKetThuc, :ThoiGianLapKeHoach, :' +
      'ThoiGianThucTe, :UserID, :UserDate, :CFMID, :CFMDate, '#39'1'#39')'
    SQLModify = 
      'UPDATE ITPC_KhoiPhucDuLieu'#13#10'SET'#13#10'  GhiChu = :GhiChu,'#13#10'  NguoiDam' +
      'Nhan = :NguoiDamNhan,'#13#10'  DonViHoTro =:DonViHoTro,'#13#10'  NgayHuongDa' +
      'n =:NgayHuongDan,'#13#10'  ThoiGianBatDau =:ThoiGianBatDau,'#13#10'  ThoiGia' +
      'nKetThuc =:ThoiGianKetThuc,'#13#10'  ThoiGianLapKeHoach =:ThoiGianLapK' +
      'eHoach,'#13#10'  ThoiGianThucTe =:ThoiGianThucTe, '#13#10'  UserID = :UserID' +
      ','#13#10'  UserDate = :UserDate'#13#10'WHERE'#13#10'  KPDLNo= :OLD_KPDLNo'
    Left = 24
    Top = 344
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query1AfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ITPC_KhoiPhucDuLieu'
      'WHERE 1=2')
    Left = 24
    Top = 296
    object Query1KPDLNo: TStringField
      FieldName = 'KPDLNo'
      Size = 11
    end
    object Query1GhiChu: TWideStringField
      FieldName = 'GhiChu'
      Size = 50
    end
    object Query1NguoiDamNhan: TWideStringField
      FieldName = 'NguoiDamNhan'
      Size = 50
    end
    object Query1DonViHoTro: TWideStringField
      FieldName = 'DonViHoTro'
      Size = 100
    end
    object Query1NgayHuongDan: TDateTimeField
      FieldName = 'NgayHuongDan'
    end
    object Query1ThoiGianBatDau: TDateTimeField
      FieldName = 'ThoiGianBatDau'
    end
    object Query1ThoiGianKetThuc: TDateTimeField
      FieldName = 'ThoiGianKetThuc'
    end
    object Query1ThoiGianLapKeHoach: TWideStringField
      FieldName = 'ThoiGianLapKeHoach'
      Size = 50
    end
    object Query1ThoiGianThucTe: TWideStringField
      FieldName = 'ThoiGianThucTe'
      Size = 50
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
      Size = 10
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query1flowflag: TStringField
      FieldName = 'flowflag'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 88
    Top = 248
  end
  object Query2: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query2AfterOpen
    DataSource = DS1
    Parameters = <
      item
        Name = 'KPDLNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      
        'Select ITPC_KhoiPhucDuLieuChiTiet.*,TLTen,ITPC_DanhSachTenTuongL' +
        'ua.LB'
      
        'from ITPC_KhoiPhucDuLieuChiTiet left join ITPC_DanhSachTenTuongL' +
        'ua'
      'on ITPC_KhoiPhucDuLieuChiTiet.TLMa=ITPC_DanhSachTenTuongLua.TLMa'
      'where ITPC_KhoiPhucDuLieuChiTiet.KPDLNo=:KPDLNo'
      'Order by ITPC_DanhSachTenTuongLua.LB')
    Left = 88
    Top = 296
    object Query2KPDLNo: TStringField
      FieldName = 'KPDLNo'
      Size = 11
    end
    object Query2TLMa: TStringField
      FieldName = 'TLMa'
    end
    object Query2TLTen: TWideStringField
      FieldName = 'TLTen'
      Size = 200
    end
    object Query2NoiDungVN: TWideStringField
      FieldName = 'NoiDungVN'
      Size = 250
    end
    object Query2NoiDungTW: TStringField
      FieldName = 'NoiDungTW'
      Size = 250
    end
    object Query2TrangThai: TBooleanField
      FieldName = 'TrangThai'
    end
    object Query2LB: TStringField
      FieldName = 'LB'
      Size = 4
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
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
        Name = 'NoiDungVN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end
      item
        Name = 'NoiDungTW'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end
      item
        Name = 'TrangThai'
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
        Name = 'KPDLNo'
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
      'UPDATE ITPC_KhoiPhucDuLieuChiTiet'
      'SET'
      '  NoiDungVN= :NoiDungVN,'
      '  NoiDungTW= :NoiDungTW,'
      '  TrangThai=:TrangThai,'
      '  UserID= :UserID,'
      '  UserDate= :UserDate'
      'WHERE'
      '  KPDLNo= :KPDLNo and'
      '  TLMa = :OLD_TLMa ')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_KPDLNo'
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
      'DELETE ITPC_KhoiPhucDuLieuChiTiet'
      'WHERE'
      '  KPDLNo= :OLD_KPDLNo and'
      '  TLMa= :OLD_TLMa ')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'KPDLNo'
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
        Name = 'NoiDungVN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end
      item
        Name = 'NoiDungTW'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end
      item
        Name = 'TrangThai'
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
      
        'INSERT INTO ITPC_KhoiPhucDuLieuChiTiet(KPDLNo, TLMa, NoiDungVN, ' +
        'NoiDungTW,TrangThai, UserID, UserDate, YN)'
      
        'VALUES (:KPDLNo, :TLMa, :NoiDungVN, :NoiDungTW, :TrangThai, :Use' +
        'rID, :UserDate, '#39'1'#39')')
    SQLDelete = 
      'DELETE ITPC_KhoiPhucDuLieuChiTiet'#13#10'WHERE'#13#10'  KPDLNo= :OLD_KPDLNo ' +
      'and'#13#10'  TLMa= :OLD_TLMa '
    SQLInsert = 
      'INSERT INTO ITPC_KhoiPhucDuLieuChiTiet(KPDLNo, TLMa, NoiDungVN, ' +
      'NoiDungTW,TrangThai, UserID, UserDate, YN)'#13#10'VALUES (:KPDLNo, :TL' +
      'Ma, :NoiDungVN, :NoiDungTW, :TrangThai, :UserID, :UserDate, '#39'1'#39')'
    SQLModify = 
      'UPDATE ITPC_KhoiPhucDuLieuChiTiet'#13#10'SET'#13#10'  NoiDungVN= :NoiDungVN,' +
      #13#10'  NoiDungTW= :NoiDungTW,'#13#10'  TrangThai=:TrangThai,'#13#10'  UserID= :' +
      'UserID,'#13#10'  UserDate= :UserDate'#13#10'WHERE'#13#10'  KPDLNo= :KPDLNo and'#13#10'  ' +
      'TLMa = :OLD_TLMa '#13#10
    Left = 88
    Top = 344
  end
  object QUpdate: TMyADOQuery
    Connection = DM2.ADOConn2
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
    Top = 272
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
    Left = 392
    Top = 280
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      OnClick = Confirm1Click
    end
    object ConfirmAll1: TMenuItem
      Caption = 'Confirm All'
      OnClick = ConfirmAll1Click
    end
  end
end
