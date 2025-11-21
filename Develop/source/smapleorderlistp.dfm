object SmapleOrderList: TSmapleOrderList
  Left = 353
  Top = 114
  Width = 1038
  Height = 619
  Caption = 'Merger Smaple Order'
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
  object Label11: TLabel
    Left = 232
    Top = 16
    Width = 40
    Height = 20
    Caption = 'Mode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 448
      Top = 24
      Width = 4
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 8
      Top = 7
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
    object BB2: TBitBtn
      Left = 56
      Top = 7
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
      OnClick = bb2Click
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
      Top = 7
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
      Top = 7
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
      Top = 7
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
      Top = 7
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
    object Flag: TEdit
      Left = 576
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 6
      Visible = False
    end
    object BB7: TBitBtn
      Left = 296
      Top = 7
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
      TabOrder = 7
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
  end
  object pc1: TPageControl
    Left = 0
    Top = 274
    Width = 1022
    Height = 306
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = pc1Change
    object TabSheet3: TTabSheet
      Caption = 'Merger Order'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1014
        Height = 275
        Align = alClient
        DataSource = ypzlzl_ds
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh2DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPZLBH'
            Footers = <>
            Title.Caption = 'Merger No'
            Width = 148
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'INSDATE'
            Footers = <>
            Title.Caption = 'CreateDATE'
            Width = 138
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'KFJDMEMO'
            Footers = <>
            Title.Caption = 'Smaple Mode'
            Width = 186
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Width = 109
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.Caption = 'Season'
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'CALDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Computer Date'
            Width = 138
          end
          item
            EditButtons = <>
            FieldName = 'memo'
            Footers = <>
            Title.Caption = 'Memo'
            Width = 355
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Smaple Order List'
      object Panel2_ToolPanel: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 97
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 16
          Top = 24
          Width = 82
          Height = 20
          Caption = 'Merger  No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 256
          Top = 60
          Width = 148
          Height = 20
          Caption = 'Last Computer Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 60
          Width = 82
          Height = 20
          Caption = 'Creat Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 536
          Top = 16
          Width = 184
          Height = 32
          Caption = 'Execute compute after Inser or delete sample No,'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Button2: TButton
          Left = 416
          Top = 16
          Width = 113
          Height = 33
          Caption = 'Compute'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = ComputeClick
        end
        object DBEdit1: TDBEdit
          Left = 104
          Top = 24
          Width = 145
          Height = 24
          DataField = 'YPZLBH'
          DataSource = ypzlzl_ds
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 416
          Top = 59
          Width = 169
          Height = 24
          DataField = 'CALDATE'
          DataSource = ypzlzl_ds
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 103
          Top = 59
          Width = 146
          Height = 24
          DataField = 'INSDATE'
          DataSource = ypzlzl_ds
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 272
          Top = 24
          Width = 121
          Height = 24
          TabOrder = 4
          Visible = False
        end
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 97
        Width = 1014
        Height = 178
        Align = alClient
        DataSource = ypzlzls_ds
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPZLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Merger No'
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sample No'
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Type'
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Color'
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Width = 28
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Order Bom'
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 275
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 0
        object GridYPZLZLS1_Det: TDBGridEh
          Left = 1
          Top = 151
          Width = 1012
          Height = 123
          Align = alBottom
          DataSource = DS_ypzls1_Det
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DEVCODE'
              Footers = <
                item
                  DisplayFormat = 'count=0'
                  FieldName = 'DEVCODE'
                  ValueType = fvtCount
                end>
              Title.Caption = 'SR'
              Width = 153
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Title.Caption = 'Cateory'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Title.Caption = 'SHOE NAME'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'JiJie'
              Footers = <>
              Title.Caption = 'Seson'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <
                item
                  FieldName = 'CLSL'
                  ValueType = fvtSum
                end>
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'BWBHMM'
              Footers = <>
              Title.Caption = 'BWBH'
              Width = 483
            end>
        end
        object GridYPZLZLS1_Mas: TDBGridEh
          Left = 1
          Top = 81
          Width = 1012
          Height = 70
          Align = alClient
          DataSource = ypzlzls1_ds
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = GridYPZLZLS1_MasEditButtonClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'YPZLBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Merger  No'
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  DisplayFormat = 'count=0'
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              ReadOnly = True
              Title.Caption = 'Material No'
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material English'
              Width = 491
            end
            item
              EditButtons = <>
              FieldName = 'dwywsm'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Unit'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Need Qty'
              Width = 60
            end
            item
              Color = 8454143
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = 'Purchase Qty'
              Width = 84
            end
            item
              Color = 8454143
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier Name'
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier NO'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              ReadOnly = True
              Width = 47
            end
            item
              Color = 8454143
              EditButtons = <>
              FieldName = 'YN'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Child'
              Width = 37
            end>
        end
        object Panel3_ToolPanel: TPanel
          Left = 1
          Top = 1
          Width = 1012
          Height = 80
          Align = alTop
          TabOrder = 2
          object Label13: TLabel
            Left = 20
            Top = 16
            Width = 106
            Height = 20
            Caption = 'Material Name:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 16
            Top = 48
            Width = 108
            Height = 20
            Caption = 'Supplier Name:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 324
            Top = 16
            Width = 84
            Height = 20
            Caption = 'Material No:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object QryBtn_zls1: TButton
            Left = 496
            Top = 44
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = QryBtn_zls1Click
          end
          object MatNMEdit: TEdit
            Left = 128
            Top = 16
            Width = 185
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object ChildCKbox: TCheckBox
            Left = 324
            Top = 49
            Width = 157
            Height = 17
            Caption = 'Only Child Material'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 2
          end
          object SupNMEdit: TEdit
            Left = 128
            Top = 48
            Width = 185
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object MatNoEdit: TEdit
            Left = 416
            Top = 16
            Width = 153
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Simple Order DEF'
      ImageIndex = 3
      object Panel4_ToolPanel: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 16
          Top = 16
          Width = 40
          Height = 20
          Caption = 'Mode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 184
          Top = 16
          Width = 37
          Height = 20
          Caption = 'Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 280
          Top = 16
          Width = 68
          Height = 20
          Caption = 'ARTICLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 64
          Top = 16
          Width = 105
          Height = 24
          Color = clScrollBar
          DataField = 'XieXing'
          DataSource = ypzlzls_ds
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 224
          Top = 16
          Width = 41
          Height = 24
          Color = clScrollBar
          DataField = 'SheHao'
          DataSource = ypzlzls_ds
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 352
          Top = 16
          Width = 225
          Height = 24
          Color = clScrollBar
          DataField = 'ARTICLE'
          DataSource = ypzlzls_ds
          TabOrder = 2
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1014
        Height = 226
        Align = alClient
        DataSource = ypzls_po_ds
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Sample No'
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Width = 64
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material No'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Material English'
            Width = 403
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = 'Supplier NO'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Need Qty'
          end>
      end
    end
  end
  object Tool_Panel: TPanel
    Left = 0
    Top = 195
    Width = 1022
    Height = 79
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 82
      Height = 20
      Caption = 'Merger  No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 16
      Width = 102
      Height = 20
      Caption = 'Smaple Mode:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 304
      Top = 48
      Width = 59
      Height = 20
      Caption = 'Season:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object QryBtn: TButton
      Left = 504
      Top = 44
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = QryBtnClick
    end
    object Edit1: TEdit
      Left = 120
      Top = 16
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dtc: TDateTimePicker
      Left = 120
      Top = 48
      Width = 121
      Height = 24
      Date = 0.372210393521527300
      Format = 'yyyy/MM/dd'
      Time = 0.372210393521527300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 368
      Top = 16
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 368
      Top = 48
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 49
      Width = 101
      Height = 17
      Caption = 'Creat Date:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object mine: TCheckBox
      Left = 508
      Top = 17
      Width = 101
      Height = 17
      Caption = 'only mine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1022
    Height = 65
    Align = alTop
    TabOrder = 3
    Visible = False
    object dd2: TBitBtn
      Left = 56
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = dd2Click
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
    object dd3: TBitBtn
      Left = 104
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = dd3Click
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
    object dd4: TBitBtn
      Left = 152
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = dd4Click
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
    object dd5: TBitBtn
      Left = 200
      Top = 7
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
      OnClick = dd5Click
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
    object ddt1: TBitBtn
      Left = 384
      Top = 7
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
      TabOrder = 4
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
    object dd6: TBitBtn
      Left = 248
      Top = 7
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
      OnClick = dd6Click
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
  object Panel3: TPanel
    Left = 0
    Top = 130
    Width = 1022
    Height = 65
    Align = alTop
    TabOrder = 4
    Visible = False
    object EE2: TBitBtn
      Left = 56
      Top = 7
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
    object EE3: TBitBtn
      Left = 104
      Top = 7
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
    object EE4: TBitBtn
      Left = 152
      Top = 7
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
      OnClick = EE4Click
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
    object EE5: TBitBtn
      Left = 200
      Top = 7
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
      OnClick = EE5Click
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
    object EET1: TBitBtn
      Left = 384
      Top = 7
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
      TabOrder = 4
      OnClick = EET1Click
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
    object EE6: TBitBtn
      Left = 248
      Top = 7
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
      OnClick = EE6Click
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
  object ypzlzls: TQuery
    DatabaseName = 'dB'
    DataSource = ypzlzl_ds
    SQL.Strings = (
      'select * from ypzlzls'
      'left join ypzl on ypzl.ypdh=ypzlzls.ypdh'
      'where ypzlbh=:ypzlbh')
    UpdateObject = UpSQL1
    Left = 92
    Top = 441
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object ypzlzlsYPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object ypzlzlsYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ypzlzls.YPDH'
      FixedChar = True
      Size = 15
    end
    object ypzlzlsXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object ypzlzlsSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 5
    end
    object ypzlzlsARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
    end
    object ypzlzlsPAIRS: TFloatField
      FieldName = 'PAIRS'
      Origin = 'DB.ypzlzls.PAIRS'
    end
    object ypzlzlsUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ypzlzls.USERID'
      FixedChar = True
    end
    object ypzlzlsUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ypzlzls.USERDATE'
    end
    object ypzlzlsYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.ypzlzls.YN'
      FixedChar = True
      Size = 1
    end
    object ypzlzlsRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.ypzlzls.Remark'
      FixedChar = True
      Size = 30
    end
  end
  object ypzlzls_ds: TDataSource
    DataSet = ypzlzls
    Left = 92
    Top = 409
  end
  object ypzlzls1_ds: TDataSource
    DataSet = ypzlzls1
    Left = 164
    Top = 409
  end
  object ypzlzls2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'insert  LIY_ERP.dbo.ypzlzls2'
      '--'#27597#26448#26009
      
        'select '#39'*'#39' as ypzlbh,ypzl.ypdh,ypzls.bwbh,ypzls.csbh,'#39'ZZZZZZZZZZ' +
        #39' as mjbh,ypzls.clbh '
      #9',clzl.clzmlb as zmlb,'#39'ZZZZZZ'#39' as size,ypzls.clsl'
      
        #9',((ypzl.quantity*ypzls.clsl)*(1+ypzls.loss)) as clsl,'#39'21083'#39'as ' +
        'userid,getdate() as userdate,'#39'N'#39' as yn'
      'from ypzl'
      'left join ypzls on ypzl.ypdh=ypzls.ypdh'
      'left join clzl on ypzls.clbh=clzl.cldh'
      ' where ypzl.ypdh='#39'LAIS120200391'#39' and clsl > 0'
      'union all '
      '--'#23376#26448#26009
      
        'select '#39'*'#39' as ypzlbh,ypzl.ypdh,ypzls.bwbh,ypzls.csbh,ypzls.clbh ' +
        'as mjbh,clzhzl.cldh1 '
      #9',clzl.clzmlb as zmlb,'#39'ZZZZZZ'#39' as size,ypzls.clsl'
      
        #9',((ypzl.quantity*ypzls.clsl*clzhzl.syl)*(1+ypzls.loss)) as clsl' +
        ','#39'21083'#39'as userid,getdate() as userdate,'#39'N'#39' as yn'
      'from ypzl'
      'left join ypzls on ypzl.ypdh=ypzls.ypdh'
      'left join clzl on ypzls.clbh=clzl.cldh'
      'left join clzhzl on clzl.cldh=clzhzl.cldh'
      
        ' where ypzl.ypdh='#39'LAIS120200391'#39' and clzl.clzmlb='#39'Y'#39' and clsl > ' +
        '0'
      ''
      'order by bwbh')
    Left = 740
    Top = 233
  end
  object ypzlzl: TQuery
    AfterInsert = ypzlzlAfterInsert
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ypzlzl')
    UpdateObject = UpSQL3
    Left = 36
    Top = 441
    object ypzlzlYPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.ypzlzl.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object ypzlzlINSDATE: TDateTimeField
      FieldName = 'INSDATE'
      Origin = 'DB.ypzlzl.INSDATE'
      DisplayFormat = 'YYYY/MM/DD HH:NN:SS'
    end
    object ypzlzlKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.ypzlzl.KFJD'
      FixedChar = True
      Size = 10
    end
    object ypzlzlJiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.ypzlzl.JiJie'
      FixedChar = True
      Size = 10
    end
    object ypzlzlUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ypzlzl.USERID'
      FixedChar = True
    end
    object ypzlzlUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ypzlzl.USERDATE'
    end
    object ypzlzlYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.ypzlzl.YN'
      FixedChar = True
      Size = 1
    end
    object ypzlzlCALDATE: TDateTimeField
      FieldName = 'CALDATE'
      Origin = 'DB.ypzlzl.CALDATE'
      DisplayFormat = 'YYYY/MM/DD HH:NN:SS'
    end
    object ypzlzlmemo: TStringField
      FieldName = 'memo'
      Origin = 'DB.ypzlzl.memo'
      FixedChar = True
      Size = 50
    end
    object ypzlzlPD: TStringField
      FieldName = 'PD'
      Origin = 'DB.ypzlzl.PD'
      FixedChar = True
      Size = 1
    end
    object ypzlzlKFJDMEMO: TStringField
      FieldKind = fkLookup
      FieldName = 'KFJDMEMO'
      LookupDataSet = lbzls
      LookupKeyFields = 'lbdh'
      LookupResultField = 'ywsm'
      KeyFields = 'KFJD'
      Lookup = True
    end
    object ypzlzlGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.ypzlzl.GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object ypzlzl_ds: TDataSource
    DataSet = ypzlzl
    Left = 36
    Top = 409
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update ypzlzls'
      'set'
      '  PAIRS = :PAIRS,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  YPDH = :OLD_YPDH')
    InsertSQL.Strings = (
      'insert into ypzlzls'
      '  (YPZLBH, YPDH, PAIRS, USERID, USERDATE, YN, Remark)'
      'values'
      '  (:YPZLBH, :YPDH, :PAIRS, :USERID, :USERDATE, :YN, :Remark)')
    DeleteSQL.Strings = (
      'delete from ypzlzls'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  YPDH = :OLD_YPDH')
    Left = 92
    Top = 473
  end
  object UpSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update ypzlzl'
      'set'
      '  YPZLBH = :YPZLBH,'
      '  GSBH = :GSBH,'
      '  INSDATE = :INSDATE,'
      '  KFJD = :KFJD,'
      '  JiJie = :JiJie,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  CALDATE = :CALDATE,'
      '  PD = :PD,'
      '  memo = :memo'
      'where'
      '  YPZLBH = :OLD_YPZLBH')
    InsertSQL.Strings = (
      'insert into ypzlzl'
      
        '  (YPZLBH, GSBH, INSDATE, KFJD, JiJie, USERID, USERDATE, YN, CAL' +
        'DATE, PD, '
      '   memo)'
      'values'
      
        '  (:YPZLBH, :GSBH, :INSDATE, :KFJD, :JiJie, :USERID, :USERDATE, ' +
        ':YN, '
      ':CALDATE, '
      '   :PD, :memo)')
    DeleteSQL.Strings = (
      'delete from ypzlzl'
      'where'
      '  YPZLBH = :OLD_YPZLBH')
    Left = 36
    Top = 473
  end
  object tq: TQuery
    DatabaseName = 'DB'
    Left = 520
    Top = 16
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update ypzlzls1'
      'set'
      '  CSBH = :CSBH,'
      '  Qty = :Qty'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  CLBH = :OLD_CLBH and'
      '  CSBH = :OLD_CSBH')
    DeleteSQL.Strings = (
      '')
    Left = 164
    Top = 473
  end
  object ypzlzls1: TQuery
    DatabaseName = 'dB'
    DataSource = ypzlzl_ds
    SQL.Strings = (
      
        'select ypzlzls1.*,CLZL.YWPM,clzl.DWYWSM,clzl.CQDH,zszl.ZSYWJC fr' +
        'om ypzlzls1'
      'left join clzl on clzl.cldh=ypzlzls1.clbh'
      'left join zszl on zszl.zsdh=ypzlzls1.CSBH'
      'where ypzlbh=:ypzlbh and ypzlzls1.YN='#39'Y'#39
      'order by clzl.CQDH,ypzlzls1.csbh,ypzlzls1.yn,ypzlzls1.clbh')
    UpdateObject = UpSQL2
    Left = 164
    Top = 441
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object ypzlzls1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.ypzlzls1.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object ypzlzls1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.ypzlzls1.CLBH'
      FixedChar = True
      Size = 10
    end
    object ypzlzls1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.ypzlzls1.YPZLBH'
      FixedChar = True
      Size = 200
    end
    object ypzlzls1CLSL: TFloatField
      FieldName = 'CLSL'
      Origin = 'DB.ypzlzls1.CLSL'
    end
    object ypzlzls1Qty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.ypzlzls1.Qty'
    end
    object ypzlzls1dwywsm: TStringField
      FieldName = 'dwywsm'
      Origin = 'DB.ypzlzls1.YPZLBH'
      FixedChar = True
    end
    object ypzlzls1CSBH: TStringField
      FieldName = 'CSBH'
      Origin = 'DB.ypzlzls1.CSBH'
      FixedChar = True
      Size = 50
    end
    object ypzlzls1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object ypzlzls1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.ypzlzls1.YN'
      FixedChar = True
      Size = 1
    end
    object ypzlzls1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ypzlzls1.USERID'
      FixedChar = True
    end
    object ypzlzls1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ypzlzls1.USERDATE'
    end
    object ypzlzls1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
  end
  object lbzls: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from lbzls where lb='#39'04'#39)
    Left = 404
    Top = 409
  end
  object DSlbzls: TDataSource
    DataSet = lbzls
    Left = 444
    Top = 409
  end
  object ypzls_po_ds: TDataSource
    DataSet = ypzls_po
    Left = 276
    Top = 409
  end
  object ypzls_po: TQuery
    DatabaseName = 'DB'
    DataSource = ypzlzls_ds
    SQL.Strings = (
      'select * from ypzls'
      'left join clzl on clzl.cldh=ypzls.clbh'
      'where ypzls.ypdh=:ypdh'
      'order by xh')
    Left = 276
    Top = 441
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object ypzls_poYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ypzls.YPDH'
      FixedChar = True
      Size = 15
    end
    object ypzls_poXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.ypzls.XH'
      FixedChar = True
      Size = 3
    end
    object ypzls_poBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.ypzls.BWBH'
      FixedChar = True
      Size = 4
    end
    object ypzls_poBWLB: TStringField
      FieldName = 'BWLB'
      Origin = 'DB.ypzls.BWLB'
      FixedChar = True
      Size = 5
    end
    object ypzls_poCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.ypzls.CLBH'
      FixedChar = True
      Size = 15
    end
    object ypzls_poywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.ypzls.YPDH'
      FixedChar = True
      Size = 200
    end
    object ypzls_poCSBH: TStringField
      FieldName = 'CSBH'
      Origin = 'DB.ypzls.CSBH'
      FixedChar = True
      Size = 6
    end
    object ypzls_poLOSS: TFloatField
      FieldName = 'LOSS'
      Origin = 'DB.ypzls.LOSS'
    end
    object ypzls_poCLSL: TFloatField
      FieldName = 'CLSL'
      Origin = 'DB.ypzls.CLSL'
    end
    object ypzls_poCLDJ: TFloatField
      FieldName = 'CLDJ'
      Origin = 'DB.ypzls.CLDJ'
    end
  end
  object CYP1: TQuery
    DatabaseName = 'dB'
    Left = 740
    Top = 265
  end
  object cyp1cc: TQuery
    DatabaseName = 'dB'
    DataSource = ypzlzl_ds
    SQL.Strings = (
      'select * from ypzlzls2'
      'where ypzlbh=:ypzlbh')
    Left = 780
    Top = 265
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ypzlbh'
        ParamType = ptUnknown
      end>
  end
  object BWBHMM: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bwzl.ywsm+'#39'/'#39'  from YPZLZLS '
      'left join YPZLS on YPZLS.YPDH=YPZLZLS.YPDH '
      'left join bwzl on YPZLS.BWBH = bwzl.bwdh '
      'where YPZLZLS.YPZLBH='#39'201402000002'#39' and YPZLS.CLBH='#39'A020002714'#39' '
      'for XML PATH('#39#39')')
    Left = 780
    Top = 233
  end
  object ypzls1_Det: TQuery
    DatabaseName = 'DB'
    DataSource = ypzlzls1_ds
    SQL.Strings = (
      
        'select kfxxzl.DEVCODE,kfxxzl.FD,kfxxzl.XieMing,kfxxzl.JiJie,YPZL' +
        'ZLS1.BWBHMM,Sum(YPZLZLS2.CLSL) as CLSL'
      'from YPZLZLS2'
      'left join YPZL on YPZLZLS2.YPDH=YPZL.YPDH'
      
        'left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHa' +
        'o = kfxxzl.SheHao'
      
        'left join YPZLZLS1 on ypzlzls1.YPZLBH=YPZLZLS2.YPZLBH and YPZLZL' +
        'S1.CLBH=YPZLZLS2.CLBH'
      
        'where  YPZLZLS2.YPDH in (select YPDH from YPZLZLS where YPZLBH=:' +
        'YPZLBH)  and YPZLZLS2.CLBH=:CLBH'
      
        'group by kfxxzl.DEVCODE,kfxxzl.FD,kfxxzl.XieMing,kfxxzl.JiJie,YP' +
        'ZLZLS1.BWBHMM')
    Left = 404
    Top = 505
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end>
    object ypzls1_DetDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object ypzls1_DetFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object ypzls1_DetXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object ypzls1_DetJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object ypzls1_DetBWBHMM: TStringField
      FieldName = 'BWBHMM'
      FixedChar = True
      Size = 255
    end
    object ypzls1_DetCLSL: TFloatField
      FieldName = 'CLSL'
    end
  end
  object DS_ypzls1_Det: TDataSource
    DataSet = ypzls1_Det
    Left = 404
    Top = 465
  end
end
