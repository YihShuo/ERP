object WF_RegularLeaves: TWF_RegularLeaves
  Left = 0
  Top = 0
  Caption = 'WF_RegularLeaves'
  ClientHeight = 738
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 192
      Top = 10
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = 'S'#7889' th'#7867#24037#34399':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 383
      Top = 12
      Width = 89
      Height = 16
      Alignment = taRightJustify
      Caption = 'H'#7885' v'#224' t'#234'n'#22995#21517':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 61
      Height = 16
      Alignment = taRightJustify
      Caption = 'N'#259'm'#24180#24230':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 73
      Width = 88
      Height = 16
      Caption = 'Qu'#7889'c t'#7883'ch'#22283#31821':'
    end
    object Label8: TLabel
      Left = 182
      Top = 41
      Width = 81
      Height = 16
      Caption = 'Ch'#7913'c v'#7909#32887#21209':'
    end
    object Label10: TLabel
      Left = 401
      Top = 41
      Width = 71
      Height = 16
      Caption = #272#417'n v'#7883#21934#20301':'
    end
    object Button2: TButton
      Left = 687
      Top = 65
      Width = 98
      Height = 25
      Caption = 'Truy v'#7845'n'#26597#35426
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object ED_ID: TEdit
      Left = 267
      Top = 7
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ED_Name: TEdit
      Left = 475
      Top = 7
      Width = 93
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button3: TButton
      Left = 359
      Top = 7
      Width = 18
      Height = 23
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 99
      Top = 63
      Width = 582
      Height = 29
      TabOrder = 4
      object RB11: TRadioButton
        Left = 3
        Top = 9
        Width = 94
        Height = 17
        Caption = 'Toa'#768'n B'#244#803#20840#37096
        TabOrder = 0
      end
      object RB12: TRadioButton
        Left = 105
        Top = 8
        Width = 100
        Height = 17
        Hint = 'TW'
        Caption = #272'a'#768'i Loan'#21488#28771
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RB13: TRadioButton
        Left = 210
        Top = 8
        Width = 119
        Height = 17
        Hint = 'CN'
        Caption = 'Trung Qu'#7889'c'#20013#22283
        TabOrder = 2
      end
      object RB14: TRadioButton
        Left = 334
        Top = 7
        Width = 124
        Height = 17
        Hint = 'PH'
        Caption = 'Philippines'#33778#24459#36051
        TabOrder = 3
      end
      object RB16: TRadioButton
        Left = 462
        Top = 7
        Width = 107
        Height = 17
        Hint = 'IN'
        Caption = 'Indonesia'#21360#23612
        TabOrder = 4
      end
    end
    object Edit5: TEdit
      Left = 264
      Top = 37
      Width = 113
      Height = 24
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 475
      Top = 37
      Width = 93
      Height = 24
      TabOrder = 6
    end
    object FYearCombo: TComboBox
      Left = 75
      Top = 6
      Width = 98
      Height = 24
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = '2023'
      Items.Strings = (
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 105
    Width = 1075
    Height = 633
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #22806#31821#20027#31649
      object Splitter1: TSplitter
        Left = 300
        Top = 0
        Width = 4
        Height = 602
        ExplicitLeft = 920
        ExplicitTop = 47
        ExplicitHeight = 329
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 300
        Height = 602
        Align = alLeft
        DataSource = DS1
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = 'ID|'#24037#34399
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Nation'
            Footers = <>
            Title.Caption = 'Nation|'#22283#31821
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DutyDate'
            Footers = <>
            Title.Caption = 'DutyDate|'#21040#32887#26085
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Title.Caption = 'Name|'#22995#21517
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EngName'
            Footers = <>
            Title.Caption = 'EngName|'#33521#25991#22995#21517
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Gender'
            Footers = <>
            Title.Caption = 'Gender|'#24615#21029
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Footers = <>
            Title.Caption = 'Department|'#37096#38272
            Width = 128
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Position'
            Footers = <>
            Title.Caption = 'Position|'#32887#21209
            Width = 48
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel1: TPanel
        Left = 304
        Top = 0
        Width = 763
        Height = 602
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 1
          Width = 761
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 2
          ExplicitTop = 225
          ExplicitWidth = 334
        end
        object Splitter3: TSplitter
          Left = 1
          Top = 321
          Width = 761
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 241
          ExplicitWidth = 298
        end
        object Panel2: TPanel
          Left = 1
          Top = 4
          Width = 761
          Height = 317
          Align = alTop
          Caption = 'Panel2'
          TabOrder = 0
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 759
            Height = 56
            Align = alTop
            TabOrder = 0
            object BB2: TBitBtn
              Left = 4
              Top = 5
              Width = 68
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Th'#234'm'#26032#22686
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
            end
            object BB4: TBitBtn
              Left = 125
              Top = 5
              Width = 68
              Height = 49
              Hint = 'Delete one Record'
              Caption = 'Xo'#769'a'#21034#38500
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
            end
            object BB3: TBitBtn
              Left = 71
              Top = 5
              Width = 58
              Height = 49
              Hint = 'Modify Current'
              Caption = 'S'#7917'a'#20462#25913
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
              OnClick = BB3Click
            end
            object BB5: TBitBtn
              Left = 191
              Top = 5
              Width = 69
              Height = 49
              Hint = 'Save Current'
              Caption = 'L'#432'u'#20786#23384
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
              Left = 259
              Top = 5
              Width = 62
              Height = 49
              Hint = 'Cancel'
              Caption = 'Hu'#777'y'#21462#28040
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
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 57
            Width = 759
            Height = 259
            Align = alClient
            DataSource = DS2
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            SumList.Active = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LNO'
                Footers = <>
                Title.Caption = 'LNO|'#35531#20551#21934#34399
                Width = 105
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FYear'
                Footers = <>
                Title.Caption = 'Year|'#24180#24230
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Company'
                Footers = <>
                Title.Caption = 'Company|'#20844#21496
                Width = 53
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Department'
                Footers = <>
                Title.Caption = 'Department|'#37096#38272
                Width = 66
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Position'
                Footers = <>
                Title.Caption = 'Position|'#32887#21209
                Width = 71
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ID'
                Footers = <>
                Title.Caption = 'ID|'#24037#34399
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Name'
                Footers = <>
                Title.Caption = 'Name|'#22995#21517
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Type'
                Footers = <>
                Title.Caption = 'Type|'#39006#22411
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RLTimes'
                Footers = <>
                Title.Caption = 'RLTimes|'#26799#27425
                Width = 56
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'StartDate'
                Footers = <>
                Title.Caption = 'StartDate|'#20241#20551#36215
                Width = 82
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'EndDate'
                Footers = <>
                Title.Caption = 'EndDate|'#20241#20551#36804
                Width = 72
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Days'
                Footers = <>
                Title.Caption = 'Days|'#22825#25976
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Extend'
                Footers = <>
                PickList.Strings = (
                  'Y'
                  'N')
                Title.Caption = 'Extend|'#26159#21542#35531#20551
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ExtendStartDate'
                Footers = <>
                Title.Caption = 'ExtendStartDate|'#35531#20551#36215
                Width = 79
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ExtendEndDate'
                Footers = <>
                Title.Caption = 'ExtendEndDate|'#35531#20551#36804
                Width = 85
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ExtendDays'
                Footers = <>
                Title.Caption = 'ExtendDays|'#35531#20551#22825#25976
                Width = 70
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LastStartDate'
                Footers = <>
                Title.Caption = 'LastStartDate|'#19978#19968#27425#20241#20551#36215
                Width = 108
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LastEndDate'
                Footers = <>
                Title.Caption = 'LastEndDate|'#19978#19968#27425#20241#20551#36804
                Width = 97
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LastDays'
                Footers = <>
                Title.Caption = 'LastDays|'#19978#19968#27425#22825#25976
                Width = 82
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Ticket'
                Footers = <>
                KeyList.Strings = (
                  'A'
                  'B'
                  'C')
                PickList.Strings = (
                  #33258#29702
                  #20844#21496#20195#35330
                  #22312#22320#20241#20551)
                Title.Caption = 'Ticket|'#27231#31080#20195#35330
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Route'
                Footers = <>
                Title.Caption = 'RouteS|'#34892#31243#36215
                Width = 83
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Route1'
                Footers = <>
                Title.Caption = 'RouteE|'#34892#31243#36804
                Width = 76
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoDate'
                Footers = <>
                Title.Caption = #33322#29677#36215'|'#36215#31243#26085
                Width = 74
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoPlaneNumber'
                Footers = <>
                Title.Caption = #33322#29677#36215'|'#33322#29677#34399
                Width = 57
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoETD'
                Footers = <>
                Title.Caption = #33322#29677#36215'|'#20986#30332
                Width = 48
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoETA'
                Footers = <>
                Title.Caption = #33322#29677#36215'|'#25269#36948
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackDate'
                Footers = <>
                Title.Caption = #33322#29677#36820'|'#36820#31243#26085
                Width = 82
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackPlaneNumber'
                Footers = <>
                Title.Caption = #33322#29677#36820'|'#33322#29677#34399
                Width = 62
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackETD'
                Footers = <>
                Title.Caption = #33322#29677#36820'|'#20986#30332
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackETA'
                Footers = <>
                Title.Caption = #33322#29677#36820'|'#25269#36948
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'AgentID'
                Footers = <>
                Title.Caption = #32887#21209'|'#20195#29702#20154'ID1'
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Agent1ID'
                Footers = <>
                Title.Caption = #32887#21209'|'#20195#29702#20154'ID2'
                Width = 54
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Agent'
                Footers = <>
                Title.Caption = #32887#21209'|'#20195#29702#20154'1'
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Agent1'
                Footers = <>
                Title.Caption = #32887#21209'|'#20195#29702#20154'2'
                Width = 91
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Remark'
                Footers = <>
                Title.Caption = 'Remark|'#20633#35387
                Width = 75
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Remark1'
                Footers = <>
                Title.Caption = 'Remark|'#20633#35387'1'
                Width = 79
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FeedBack'
                Footers = <>
                Title.Caption = 'FeedBack|'#20854#20182
                Width = 85
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'flowflag'
                Footers = <>
                Title.Caption = 'Flag|'#31805#26680
                Width = 37
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                Title.Caption = 'UserID|'#24037#34399
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                Title.Caption = 'UserDate|'#30064#21205#26085#26399
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 324
          Width = 761
          Height = 277
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 1
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 759
            Height = 56
            Align = alTop
            TabOrder = 0
            object CC1: TBitBtn
              Left = 4
              Top = 5
              Width = 68
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Th'#234'm'#26032#22686
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
              OnClick = CC1Click
            end
            object CC3: TBitBtn
              Left = 125
              Top = 5
              Width = 68
              Height = 49
              Hint = 'Delete one Record'
              Caption = 'Xo'#769'a'#21034#38500
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
              OnClick = CC3Click
            end
            object CC2: TBitBtn
              Left = 71
              Top = 5
              Width = 58
              Height = 49
              Hint = 'Modify Current'
              Caption = 'S'#7917'a'#20462#25913
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
              OnClick = CC2Click
            end
            object CC4: TBitBtn
              Left = 191
              Top = 5
              Width = 69
              Height = 49
              Hint = 'Save Current'
              Caption = 'L'#432'u'#20786#23384
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
              OnClick = CC4Click
            end
            object CC5: TBitBtn
              Left = 259
              Top = 5
              Width = 62
              Height = 49
              Hint = 'Cancel'
              Caption = 'Hu'#777'y'#21462#28040
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
              OnClick = CC5Click
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 57
            Width = 759
            Height = 219
            Align = alClient
            DataSource = DS3
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            SumList.Active = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LB_Name'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Loai| '#35498#26126
                Width = 121
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'XH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'XH|'#27969#27700#34399
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RLTimes'
                Footers = <>
                Title.Caption = 'NO|'#26799#27425
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Type'
                Footers = <>
                Title.Caption = 'Type|'#39006#22411
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Days'
                Footers = <>
                Title.Caption = 'Days|'#22825#25976
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'StartDate'
                Footers = <>
                Title.Caption = 'StartDate|'#20241#20551#36215
                Width = 83
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'EndDate'
                Footers = <>
                Title.Caption = 'EndDate|'#20241#20551#36804
                Width = 86
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 169
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'Select Certificate.ID,Directory_Nationality.Name as Nation, Cert' +
        'ificate.DutyDate, Certificate.Name, Certificate.EngName, Certifi' +
        'cate.Gender,'
      
        '       Directory_Factory.Name+'#39'-'#39'+Directory_Department.Name as D' +
        'epartment,'
      '       Directory_Position.Name as Position,Directory.Sequence'
      'from Certificate '
      ' left join Directory on Directory.ID=Certificate.ID '
      
        ' Left join Directory_Factory on Directory_Factory.FID=Directory.' +
        'FID'
      
        ' Left join Directory_Department on Directory_Department.DID=Dire' +
        'ctory.DID'
      
        ' left join Directory_Position on Certificate.NID = Directory_Pos' +
        'ition.NID and Directory.PID = Directory_Position.PID'
      
        ' left join Directory_Nationality on Directory_Nationality.NID=Ce' +
        'rtificate.NID'
      'Where Certificate.NID<>'#39'VN'#39' and IsNull(Certificate.Resigned,0)=0'
      ' and Directory.ID = '#39'21191'#39' '
      ' and Certificate.NID='#39'TW'#39' '
      'order by Directory.Sequence')
    Left = 56
    Top = 216
    object Query1ID: TStringField
      DisplayWidth = 6
      FieldName = 'ID'
      Size = 10
    end
    object Query1Nation: TWideStringField
      DisplayWidth = 6
      FieldName = 'Nation'
      Size = 15
    end
    object Query1DutyDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DutyDate'
    end
    object Query1Name: TWideStringField
      DisplayWidth = 5
      FieldName = 'Name'
      Size = 5
    end
    object Query1EngName: TWideStringField
      DisplayWidth = 30
      FieldName = 'EngName'
      Size = 30
    end
    object Query1Gender: TStringField
      DisplayWidth = 3
      FieldName = 'Gender'
      Size = 3
    end
    object Query1Department: TStringField
      DisplayWidth = 61
      FieldName = 'Department'
      ReadOnly = True
      Size = 61
    end
    object Query1Position: TWideStringField
      DisplayWidth = 20
      FieldName = 'Position'
    end
    object Query1Sequence: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sequence'
    end
  end
  object Query2: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query2AfterOpen
    DataSource = DS1
    Parameters = <>
    SQL.Strings = (
      'Select  WF_RegularLeave.*'
      'from [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave'
      
        'where WF_RegularLeave.UserID='#39'21191'#39' and WF_RegularLeave.FYear='#39 +
        '2023'#39)
    Left = 112
    Top = 216
    object Query2LNO: TStringField
      FieldName = 'LNO'
      Size = 12
    end
    object Query2FYear: TStringField
      FieldName = 'FYear'
      Size = 4
    end
    object Query2Company: TWideStringField
      FieldName = 'Company'
      Size = 10
    end
    object Query2Department: TWideStringField
      FieldName = 'Department'
    end
    object Query2Position: TWideStringField
      FieldName = 'Position'
    end
    object Query2ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query2Name: TWideStringField
      FieldName = 'Name'
      Size = 10
    end
    object Query2Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query2RLTimes: TIntegerField
      FieldName = 'RLTimes'
    end
    object Query2StartDate: TDateTimeField
      FieldName = 'StartDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2EndDate: TDateTimeField
      FieldName = 'EndDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2Days: TIntegerField
      FieldName = 'Days'
    end
    object Query2Extend: TStringField
      FieldName = 'Extend'
      Size = 1
    end
    object Query2ExtendStartDate: TDateTimeField
      FieldName = 'ExtendStartDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2ExtendEndDate: TDateTimeField
      FieldName = 'ExtendEndDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2ExtendDays: TIntegerField
      FieldName = 'ExtendDays'
    end
    object Query2LastStartDate: TDateTimeField
      FieldName = 'LastStartDate'
    end
    object Query2LastEndDate: TDateTimeField
      FieldName = 'LastEndDate'
    end
    object Query2LastDays: TIntegerField
      FieldName = 'LastDays'
    end
    object Query2Ticket: TWideStringField
      FieldName = 'Ticket'
      Size = 10
    end
    object Query2Route: TWideStringField
      FieldName = 'Route'
      Size = 30
    end
    object Query2Route1: TWideStringField
      FieldName = 'Route1'
      Size = 30
    end
    object Query2GoDate: TDateTimeField
      FieldName = 'GoDate'
    end
    object Query2GoPlaneNumber: TStringField
      FieldName = 'GoPlaneNumber'
      Size = 15
    end
    object Query2GoETD: TStringField
      FieldName = 'GoETD'
      Size = 5
    end
    object Query2GoETA: TStringField
      FieldName = 'GoETA'
      Size = 5
    end
    object Query2BackDate: TDateTimeField
      FieldName = 'BackDate'
    end
    object Query2BackPlaneNumber: TStringField
      FieldName = 'BackPlaneNumber'
      Size = 15
    end
    object Query2BackETD: TStringField
      FieldName = 'BackETD'
      Size = 5
    end
    object Query2BackETA: TStringField
      FieldName = 'BackETA'
      Size = 5
    end
    object Query2AgentID: TStringField
      FieldName = 'AgentID'
      Size = 10
    end
    object Query2Agent1ID: TStringField
      FieldName = 'Agent1ID'
      Size = 10
    end
    object Query2Agent: TWideStringField
      FieldName = 'Agent'
      Size = 50
    end
    object Query2Agent1: TWideStringField
      FieldName = 'Agent1'
      Size = 50
    end
    object Query2Remark: TWideStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query2Remark1: TWideStringField
      FieldName = 'Remark1'
      Size = 100
    end
    object Query2FeedBack: TWideStringField
      FieldName = 'FeedBack'
      Size = 100
    end
    object Query2flowflag: TStringField
      FieldName = 'flowflag'
      Size = 1
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 112
    Top = 168
  end
  object U_Query2: TMyADOUpdateSQL
    DataSet = Query2
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'FYear'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'Company'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Department'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Position'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'RLTimes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Extend'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ExtendStartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ExtendEndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ExtendDays'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LastStartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LastEndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LastDays'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Ticket'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Route'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Route1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'GoDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'GoPlaneNumber'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'GoETD'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'GoETA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'BackDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'BackPlaneNumber'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'BackETD'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'BackETA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'AgentID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'AgentID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Agent'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Agent1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Remark'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Remark1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'FeedBack'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'flowflag'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      '  UPDATE  [EEP].[LingYi].[dbo].[WF_RegularLeave]'
      'SET'
      '  FYear= :FYear,'
      '  Company =:Company,'
      '  Department =:Department ,'
      '  Position=:Position,'
      '  ID =:ID,'
      '  Name =:Name,'
      '  Type =:Type,'
      '  RLTimes =:RLTimes ,'
      '  StartDate =:StartDate,'
      '  EndDate =:EndDate,'
      '  Days =:Days,'
      '  Extend =:Extend,'
      '  ExtendStartDate =:ExtendStartDate,'
      '  ExtendEndDate =:ExtendEndDate,'
      '  ExtendDays =:ExtendDays,'
      '  LastStartDate =:LastStartDate,'
      '  LastEndDate =:LastEndDate,'
      '  LastDays =:LastDays,'
      '  Ticket =:Ticket,'
      '  Route =:Route,'
      '  Route1 =:Route1,'
      '  GoDate =:GoDate,'
      '  GoPlaneNumber =:GoPlaneNumber,'
      '  GoETD =:GoETD,'
      '  GoETA =:GoETA,'
      '  BackDate =:BackDate,'
      '  BackPlaneNumber =:BackPlaneNumber,'
      '  BackETD =:BackETD,'
      '  BackETA =:BackETA,'
      '  AgentID =:AgentID,'
      '  Agent1ID =:AgentID,'
      '  Agent =:Agent,'
      '  Agent1 =:Agent1,'
      '  Remark =:Remark,'
      '  Remark1 =:Remark1,'
      '  FeedBack =:FeedBack,'
      '  flowflag =:flowflag,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'WHERE '
      '  LNO =:OLD_LNO')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_RegularLeave]'
      'WHERE '
      '  LNO =:OLD_LNO')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'FYear'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'Company'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Department'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Position'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'RLTimes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Extend'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ExtendStartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ExtendEndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ExtendDays'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LastStartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LastEndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LastDays'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Ticket'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Route'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Route1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'GoDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'GoPlaneNumber'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'GoETD'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'GoETA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'BackDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'BackPlaneNumber'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'BackETD'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'BackETA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'AgentID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Agent1ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Agent'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Agent1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Remark'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Remark1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'FeedBack'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'flowflag'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_RegularLeave]'
      
        '   (LNO, FYear, Company,  Department,  Position,  ID, Name,  Typ' +
        'e, RLTimes,  StartDate,  EndDate, Days,  Extend, ExtendStartDate' +
        ', ExtendEndDate, ExtendDays, '
      
        '    LastStartDate, LastEndDate, LastDays, Ticket, Route, Route1,' +
        ' GoDate, GoPlaneNumber, GoETD, GoETA, BackDate, BackPlaneNumber,' +
        ' BackETD, BackETA, AgentID, '
      
        #9'Agent1ID, Agent , Agent1, Remark , Remark1 , FeedBack ,flowflag' +
        ' ,UserID, UserDate) '
      'VALUES '
      
        '   (:LNO, :FYear, :Company, :Department, :Position, :ID, :Name, ' +
        ':Type, :RLTimes, :StartDate, :EndDate, :Days, :Extend, :ExtendSt' +
        'artDate, :ExtendEndDate, :ExtendDays, '
      
        '    :LastStartDate, :LastEndDate, :LastDays, :Ticket, :Route, :R' +
        'oute1, :GoDate, :GoPlaneNumber, :GoETD, :GoETA, :BackDate, :Back' +
        'PlaneNumber, :BackETD, :BackETA, :AgentID, '
      
        #9':Agent1ID, :Agent , :Agent1, :Remark , :Remark1 , :FeedBack ,:f' +
        'lowflag ,:UserID, GetDate()) ')
    SQLDelete = 
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_RegularLeave]'#13#10'WHERE '#13#10'  L' +
      'NO =:OLD_LNO'
    SQLInsert = 
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_RegularLeave]'#13#10'   (LNO, FYe' +
      'ar, Company,  Department,  Position,  ID, Name,  Type, RLTimes, ' +
      ' StartDate,  EndDate, Days,  Extend, ExtendStartDate, ExtendEndD' +
      'ate, ExtendDays, '#13#10'    LastStartDate, LastEndDate, LastDays, Tic' +
      'ket, Route, Route1, GoDate, GoPlaneNumber, GoETD, GoETA, BackDat' +
      'e, BackPlaneNumber, BackETD, BackETA, AgentID, '#13#10#9'Agent1ID, Agen' +
      't , Agent1, Remark , Remark1 , FeedBack ,flowflag ,UserID, UserD' +
      'ate) '#13#10'VALUES '#13#10'   (:LNO, :FYear, :Company, :Department, :Positi' +
      'on, :ID, :Name, :Type, :RLTimes, :StartDate, :EndDate, :Days, :E' +
      'xtend, :ExtendStartDate, :ExtendEndDate, :ExtendDays, '#13#10'    :Las' +
      'tStartDate, :LastEndDate, :LastDays, :Ticket, :Route, :Route1, :' +
      'GoDate, :GoPlaneNumber, :GoETD, :GoETA, :BackDate, :BackPlaneNum' +
      'ber, :BackETD, :BackETA, :AgentID, '#13#10#9':Agent1ID, :Agent , :Agent' +
      '1, :Remark , :Remark1 , :FeedBack ,:flowflag ,:UserID, GetDate()' +
      ') '
    SQLModify = 
      '  UPDATE  [EEP].[LingYi].[dbo].[WF_RegularLeave]'#13#10'SET'#13#10'  FYear= ' +
      ':FYear,'#13#10'  Company =:Company,'#13#10'  Department =:Department ,'#13#10'  Po' +
      'sition=:Position,'#13#10'  ID =:ID,'#13#10'  Name =:Name,'#13#10'  Type =:Type,'#13#10' ' +
      ' RLTimes =:RLTimes ,'#13#10'  StartDate =:StartDate,'#13#10'  EndDate =:EndD' +
      'ate,'#13#10'  Days =:Days,'#13#10'  Extend =:Extend,'#13#10'  ExtendStartDate =:Ex' +
      'tendStartDate,'#13#10'  ExtendEndDate =:ExtendEndDate,'#13#10'  ExtendDays =' +
      ':ExtendDays,'#13#10'  LastStartDate =:LastStartDate,'#13#10'  LastEndDate =:' +
      'LastEndDate,'#13#10'  LastDays =:LastDays,'#13#10'  Ticket =:Ticket,'#13#10'  Rout' +
      'e =:Route,'#13#10'  Route1 =:Route1,'#13#10'  GoDate =:GoDate,'#13#10'  GoPlaneNum' +
      'ber =:GoPlaneNumber,'#13#10'  GoETD =:GoETD,'#13#10'  GoETA =:GoETA,'#13#10'  Back' +
      'Date =:BackDate,'#13#10'  BackPlaneNumber =:BackPlaneNumber,'#13#10'  BackET' +
      'D =:BackETD,'#13#10'  BackETA =:BackETA,'#13#10'  AgentID =:AgentID,'#13#10'  Agen' +
      't1ID =:AgentID,'#13#10'  Agent =:Agent,'#13#10'  Agent1 =:Agent1,'#13#10'  Remark ' +
      '=:Remark,'#13#10'  Remark1 =:Remark1,'#13#10'  FeedBack =:FeedBack,'#13#10'  flowf' +
      'lag =:flowflag,'#13#10'  UserID = :UserID,'#13#10'  UserDate = GETDATE()'#13#10'WH' +
      'ERE '#13#10'  LNO =:OLD_LNO'
    Left = 112
    Top = 267
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 184
    Top = 168
  end
  object Query3: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query3AfterOpen
    AfterInsert = Query3AfterInsert
    OnCalcFields = Query3CalcFields
    DataSource = DS2
    Parameters = <
      item
        Name = 'LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = 'R20230527008'
      end>
    SQL.Strings = (
      
        'Select  WF_RegularLeaves.LNO,WF_RegularLeaves.LB,WF_RegularLeave' +
        's.XH,WF_RegularLeaves.RLTimes,'
      
        'WF_RegularLeaves.Type,WF_RegularLeaves.Days,WF_RegularLeaves.Sta' +
        'rtDate,WF_RegularLeaves.EndDate,WF_RegularLeaves.YN,'
      'WF_RegularLeaves.UserID,WF_RegularLeaves.UserDate'
      'from [EEP].[LingYi].[dbo].[WF_RegularLeaves] WF_RegularLeaves'
      'where WF_RegularLeaves.LNO=:LNO')
    Left = 184
    Top = 216
    object Query3LNO: TStringField
      FieldName = 'LNO'
      Size = 12
    end
    object Query3LB: TSmallintField
      FieldName = 'LB'
    end
    object Query3XH: TIntegerField
      FieldName = 'XH'
    end
    object Query3RLTimes: TIntegerField
      FieldName = 'RLTimes'
    end
    object Query3Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query3Days: TIntegerField
      FieldName = 'Days'
    end
    object Query3StartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object Query3EndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query3LB_Name: TStringField
      FieldKind = fkCalculated
      FieldName = 'LB_Name'
      Size = 30
      Calculated = True
    end
    object Query3UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
  object TempQry: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    Left = 16
    Top = 216
  end
  object U_Query3: TMyADOUpdateSQL
    DataSet = Query3
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'RLTimes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'OLD_LB'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'OLD_XH'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      '  UPDATE  [EEP].[LingYi].[dbo].[WF_RegularLeaves]'
      'SET'
      '  RLTimes = :RLTimes , '
      '  Type = :Type, '
      '  Days = :Days, '
      '  StartDate = :StartDate, '
      '  EndDate = :EndDate,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'WHERE '
      '  LNO =:OLD_LNO'
      'and LB =:OLD_LB'
      'and XH =:OLD_XH')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'OLD_LB'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'OLD_XH'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_RegularLeaves]'
      'WHERE '
      '  LNO =:OLD_LNO'
      '  and  LB =:OLD_LB'
      '  and XH =:OLD_XH')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'LNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'LB'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'XH'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'RLTimes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Days'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UserDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_RegularLeaves]'
      
        '   (LNO, LB, XH, RLTimes, Type, Days, StartDate, EndDate, UserID' +
        ', UserDate, YN) '
      'VALUES '
      
        '   (:LNO, :LB, :XH, :RLTimes, :Type, :Days, :StartDate, :EndDate' +
        ', :UserID, :UserDate, :YN) ')
    SQLDelete = 
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_RegularLeaves]'#13#10'WHERE '#13#10'  ' +
      'LNO =:OLD_LNO'#13#10'  and  LB =:OLD_LB'#13#10'  and XH =:OLD_XH'#13#10
    SQLInsert = 
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_RegularLeaves]'#13#10'   (LNO, LB' +
      ', XH, RLTimes, Type, Days, StartDate, EndDate, UserID, UserDate,' +
      ' YN) '#13#10'VALUES '#13#10'   (:LNO, :LB, :XH, :RLTimes, :Type, :Days, :Sta' +
      'rtDate, :EndDate, :UserID, :UserDate, :YN) '
    SQLModify = 
      '  UPDATE  [EEP].[LingYi].[dbo].[WF_RegularLeaves]'#13#10'SET'#13#10'  RLTime' +
      's = :RLTimes , '#13#10'  Type = :Type, '#13#10'  Days = :Days, '#13#10'  StartDate' +
      ' = :StartDate, '#13#10'  EndDate = :EndDate,'#13#10'  UserID = :UserID,'#13#10'  U' +
      'serDate = GETDATE()'#13#10'WHERE '#13#10'  LNO =:OLD_LNO'#13#10'and LB =:OLD_LB'#13#10'a' +
      'nd XH =:OLD_XH'
    Left = 184
    Top = 267
  end
end
