object BookTicket: TBookTicket
  Left = 0
  Top = 0
  Caption = 'BookTicket'
  ClientHeight = 738
  ClientWidth = 1128
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1128
    Height = 145
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
      Top = 107
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
    object Label16: TLabel
      Left = 581
      Top = 40
      Width = 115
      Height = 16
      Caption = 'S'#244#769' phi'#234#769'u'#30003#35531#21934#34399':'
    end
    object Label23: TLabel
      Left = 10
      Top = 41
      Width = 58
      Height = 16
      Caption = 'Loa'#803'i'#39006#22411':'
    end
    object Button2: TButton
      Left = 702
      Top = 95
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
      Top = 97
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
    object LNOEdit: TEdit
      Left = 702
      Top = 36
      Width = 113
      Height = 24
      TabOrder = 8
    end
    object TypeCombo: TComboBox
      Left = 74
      Top = 37
      Width = 102
      Height = 24
      TabOrder = 9
      Text = #36820#22283#20241#20551
      Items.Strings = (
        #36820#22283#20241#20551
        #20986#24046
        #38626#32887
        #26032#36914)
    end
    object GroupBox5: TGroupBox
      Left = 10
      Top = 68
      Width = 721
      Height = 24
      TabOrder = 10
      object RB1: TRadioButton
        Left = 3
        Top = 3
        Width = 108
        Height = 17
        Caption = #20840#37096' Toa'#768'n bo'#803
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 117
        Top = 3
        Width = 303
        Height = 17
        Caption = #39023#31034#23578#26410#35330#31080'ch'#432#417'ng tr'#236'nh ch'#432'a '#273#432#7907'c '#273#7863't tr'#432#7899'c'
        TabOrder = 1
      end
      object RB3: TRadioButton
        Left = 437
        Top = 4
        Width = 263
        Height = 17
        Caption = #39023#31034#24050#35330#31080'Hi'#7875'n th'#7883' '#273#227' '#273#7863't'
        TabOrder = 2
      end
    end
    object Button6: TButton
      Left = 806
      Top = 95
      Width = 106
      Height = 25
      Caption = #27231#31080#27454#32113#35336
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button6Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 145
    Width = 1128
    Height = 593
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
        Height = 562
        ExplicitLeft = 920
        ExplicitTop = 47
        ExplicitHeight = 329
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 300
        Height = 562
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
            FieldName = 'Factory'
            Footers = <>
            Title.Caption = 'Factory|'#24288#21312
            Width = 62
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
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Email'
            Footers = <>
            Width = 66
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object PC3: TPageControl
        Left = 304
        Top = 0
        Width = 816
        Height = 562
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = #27231#31080#21934#34399
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 808
            Height = 531
            Align = alClient
            TabOrder = 0
            object Panel2: TPanel
              Left = 1
              Top = 1
              Width = 806
              Height = 529
              Align = alClient
              TabOrder = 0
              object Splitter4: TSplitter
                Left = 1
                Top = 337
                Width = 804
                Height = 3
                Cursor = crVSplit
                Align = alTop
                ExplicitTop = 241
                ExplicitWidth = 298
              end
              object Panel3: TPanel
                Left = 1
                Top = 1
                Width = 804
                Height = 336
                Align = alTop
                TabOrder = 0
                object Panel6: TPanel
                  Left = 1
                  Top = 1
                  Width = 802
                  Height = 50
                  Align = alTop
                  TabOrder = 0
                  object BB3: TBitBtn
                    Left = 3
                    Top = -1
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
                    TabOrder = 0
                    OnClick = BB3Click
                  end
                  object BB5: TBitBtn
                    Left = 60
                    Top = -1
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
                    TabOrder = 1
                    OnClick = BB5Click
                  end
                  object BB6: TBitBtn
                    Left = 128
                    Top = -1
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
                    TabOrder = 2
                    OnClick = BB6Click
                  end
                end
                object DBGridEh2: TDBGridEh
                  Left = 1
                  Top = 163
                  Width = 802
                  Height = 172
                  Align = alClient
                  DataSource = DS2
                  DynProps = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FooterRowCount = 1
                  FrozenCols = 7
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  SumList.Active = True
                  TabOrder = 1
                  TitleParams.MultiTitle = True
                  OnDrawColumnCell = DBGridEh2DrawColumnCell
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'LNO'
                      Footer.FieldName = 'LNO'
                      Footer.ValueType = fvtCount
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'LNO|'#30003#35531#21934#34399
                      Width = 105
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'FYear'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Year|'#24180#24230
                      Width = 49
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Company'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Company|'#20844#21496
                      Width = 53
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Department'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Department|'#37096#38272
                      Width = 66
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Position'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Position|'#32887#21209
                      Width = 71
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'ID'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'ID|'#24037#34399
                      Width = 50
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Name'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Name|'#22995#21517
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Type'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Type|'#39006#22411
                      Width = 68
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'RLTimes'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'RLTimes|'#26799#27425
                      Width = 56
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'StartDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'StartDate|'#20241#20551#36215
                      Width = 82
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'EndDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'EndDate|'#20241#20551#36804
                      Width = 72
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Days'
                      Footers = <>
                      ReadOnly = True
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
                      ReadOnly = True
                      Title.Caption = 'Extend|'#26159#21542#35531#20551
                      Width = 65
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'ExtendStartDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'ExtendStartDate|'#35531#20551#36215
                      Width = 79
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'ExtendEndDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'ExtendEndDate|'#35531#20551#36804
                      Width = 85
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'ExtendDays'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'ExtendDays|'#35531#20551#22825#25976
                      Width = 70
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'LastStartDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'LastStartDate|'#19978#19968#27425#20241#20551#36215
                      Width = 108
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'LastEndDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'LastEndDate|'#19978#19968#27425#20241#20551#36804
                      Width = 97
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'LastDays'
                      Footers = <>
                      ReadOnly = True
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
                      ReadOnly = True
                      Title.Caption = 'Ticket|'#27231#31080#20195#35330
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'NTD_Credit'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'NTD_Credit|'#21488#24163#37329#38989
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Route'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'RouteS|'#34892#31243#36215
                      Width = 83
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Route1'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'RouteE|'#34892#31243#36804
                      Width = 76
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'GoDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36215'|'#36215#31243#26085
                      Width = 74
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'GoPlaneNumber'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36215'|'#33322#29677#34399
                      Width = 57
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'GoETD'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36215'|'#20986#30332
                      Width = 48
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'GoETA'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36215'|'#25269#36948
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'BackDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36820'|'#36820#31243#26085
                      Width = 82
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'BackPlaneNumber'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36820'|'#33322#29677#34399
                      Width = 62
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'BackETD'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36820'|'#20986#30332
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'BackETA'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #33322#29677#36820'|'#25269#36948
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'AgentID'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #32887#21209'|'#20195#29702#20154'ID1'
                      Width = 55
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Agent1ID'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #32887#21209'|'#20195#29702#20154'ID2'
                      Width = 54
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Agent'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #32887#21209'|'#20195#29702#20154'1'
                      Width = 59
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Agent1'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #32887#21209'|'#20195#29702#20154'2'
                      Width = 91
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Remark'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Remark|'#20633#35387
                      Width = 75
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Remark1'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Remark|'#20633#35387'1'
                      Width = 79
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'FeedBack'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'FeedBack|'#20854#20182
                      Width = 85
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'flowflag'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'Flag|'#31805#26680
                      Width = 37
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'UserID'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'UserID|'#24037#34399
                      Width = 43
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'UserDate'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = 'UserDate|'#30064#21205#26085#26399
                      Width = 100
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
                object Panel8: TPanel
                  Left = 1
                  Top = 51
                  Width = 802
                  Height = 112
                  Align = alTop
                  TabOrder = 2
                  object GroupBox1: TGroupBox
                    Left = 212
                    Top = 4
                    Width = 237
                    Height = 99
                    Caption = #33322#29677#36215'T'#7915' chuy'#7871'n bay'
                    Color = clYellow
                    ParentBackground = False
                    ParentColor = False
                    TabOrder = 0
                    object Label4: TLabel
                      Left = 19
                      Top = 20
                      Width = 45
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #33322#29677#34399
                    end
                    object Label5: TLabel
                      Left = 22
                      Top = 47
                      Width = 45
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #26085#26399#24448
                    end
                    object Label6: TLabel
                      Left = 4
                      Top = 73
                      Width = 65
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #20986#30332'/'#25269#36948
                    end
                    object GoNumDBEdit: TDBEdit
                      Left = 151
                      Top = 17
                      Width = 78
                      Height = 24
                      DataField = 'GoPlaneNumber'
                      DataSource = DS2
                      TabOrder = 0
                    end
                    object GoETDDBEdit: TDBEdit
                      Left = 148
                      Top = 69
                      Width = 82
                      Height = 24
                      DataField = 'GoETD'
                      DataSource = DS2
                      TabOrder = 1
                    end
                    object GoETADBEdit: TDBEdit
                      Left = 71
                      Top = 69
                      Width = 74
                      Height = 24
                      DataField = 'GoETA'
                      DataSource = DS2
                      TabOrder = 2
                    end
                    object RouteDBEdit: TDBEdit
                      Left = 70
                      Top = 17
                      Width = 75
                      Height = 24
                      DataField = 'Route'
                      DataSource = DS2
                      TabOrder = 3
                    end
                    object GoDateDBEdit: TDBEdit
                      Left = 71
                      Top = 42
                      Width = 159
                      Height = 24
                      DataField = 'GoDate'
                      DataSource = DS2
                      TabOrder = 4
                    end
                  end
                  object GroupBox3: TGroupBox
                    Left = 455
                    Top = 7
                    Width = 218
                    Height = 99
                    Caption = #33322#29677#36804' chuy'#7871'n bay '#273#7871'n'
                    Color = clYellow
                    ParentBackground = False
                    ParentColor = False
                    TabOrder = 1
                    object Label9: TLabel
                      Left = 20
                      Top = 20
                      Width = 45
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #33322#29677#34399
                    end
                    object Label11: TLabel
                      Left = 21
                      Top = 47
                      Width = 45
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #26085#26399#36820
                    end
                    object Label12: TLabel
                      Left = 3
                      Top = 74
                      Width = 65
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #20986#30332'/'#25269#36948
                    end
                    object BackNumDBEdit: TDBEdit
                      Left = 139
                      Top = 17
                      Width = 70
                      Height = 24
                      DataField = 'BackPlaneNumber'
                      DataSource = DS2
                      TabOrder = 0
                    end
                    object BackETADBEdit: TDBEdit
                      Left = 72
                      Top = 69
                      Width = 65
                      Height = 24
                      DataField = 'BackETA'
                      DataSource = DS2
                      TabOrder = 1
                    end
                    object BackETDDBEdit: TDBEdit
                      Left = 140
                      Top = 70
                      Width = 69
                      Height = 24
                      DataField = 'BackETD'
                      DataSource = DS2
                      TabOrder = 2
                    end
                    object Route1DBEdit: TDBEdit
                      Left = 70
                      Top = 17
                      Width = 67
                      Height = 24
                      DataField = 'Route1'
                      DataSource = DS2
                      TabOrder = 3
                    end
                    object BackDateDBEdit: TDBEdit
                      Left = 71
                      Top = 42
                      Width = 138
                      Height = 24
                      DataField = 'BackDate'
                      DataSource = DS2
                      TabOrder = 4
                    end
                  end
                  object GroupBox4: TGroupBox
                    Left = 3
                    Top = 6
                    Width = 203
                    Height = 99
                    Caption = #27231#31080#27454'V'#233' m'#225'y bay'
                    Color = clYellow
                    ParentBackground = False
                    ParentColor = False
                    TabOrder = 2
                    object Label14: TLabel
                      Left = 13
                      Top = 46
                      Width = 54
                      Height = 16
                      Caption = 'NTD'#21488#24163
                    end
                    object Label13: TLabel
                      Left = 13
                      Top = 72
                      Width = 54
                      Height = 16
                      Caption = 'USD'#32654#37329
                    end
                    object Label15: TLabel
                      Left = 8
                      Top = 20
                      Width = 60
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #35330#31080#26085#26399
                    end
                    object DBEdit1: TDBEdit
                      Left = 73
                      Top = 44
                      Width = 121
                      Height = 24
                      DataField = 'NTD_Credit'
                      DataSource = DS2
                      TabOrder = 0
                    end
                    object DBEdit2: TDBEdit
                      Left = 73
                      Top = 70
                      Width = 121
                      Height = 24
                      DataField = 'USD_Credit'
                      DataSource = DS2
                      TabOrder = 1
                    end
                    object BookDateDBDateTime: TDBDateTimeEditEh
                      Left = 71
                      Top = 14
                      Width = 121
                      Height = 24
                      DataField = 'BookDate'
                      DataSource = DS2
                      DynProps = <>
                      EditButtons = <>
                      Kind = dtkDateEh
                      TabOrder = 2
                      Visible = True
                    end
                  end
                end
              end
              object PC2: TPageControl
                Left = 1
                Top = 340
                Width = 804
                Height = 188
                ActivePage = TabSheet2
                Align = alClient
                TabOrder = 1
                object TabSheet2: TTabSheet
                  Caption = 'Mail'#36890#30693#26053#34892#31038#35330#31080
                  object Panel5: TPanel
                    Left = 0
                    Top = 0
                    Width = 796
                    Height = 157
                    Align = alClient
                    TabOrder = 0
                    object Panel7: TPanel
                      Left = 1
                      Top = 1
                      Width = 794
                      Height = 56
                      Align = alTop
                      TabOrder = 0
                      object CC4: TBitBtn
                        Left = 75
                        Top = 1
                        Width = 69
                        Height = 49
                        Hint = 'Save Current'
                        Caption = #23492#20986#20449
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Arial'
                        Font.Style = []
                        Glyph.Data = {
                          360C0000424D360C000000000000360000002800000020000000200000000100
                          180000000000000C000000000000000000000000000000000000F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F3F3F4F4F4F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F4
                          F4F4F3F3F3F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F9F9F9
                          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6F6F6F6F8F8F8FBFB
                          FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7
                          F7F7F5F5F5F4F4F4F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F9F9F9E0E0E0
                          CECECEC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C9C9C9C4C4C4C5C5C5CBCB
                          CBC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C9
                          C9C9CDCDCDE8E8E8F5F5F5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF434343
                          5C5C5CB8B8B8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A9A9A9ABABABABAB
                          ABA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8BF
                          BFBF222222939393F8F8F8F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF9C9C9C
                          AAAAAAACACACFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
                          FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF61
                          6161F6F6F6919191FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFF9D9D9D9F9F9FFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F7F7F7CACA
                          CAFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF545454EC
                          ECECFFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFFFFFFFA3A3A39A9A9AFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F8F8F8E7E7
                          E7808080FFFFFFF8F8F8F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF525252EFEFEFFC
                          FCFCFFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFF5F5F5FFFFFFA7A7A7949494FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6FCFC
                          FCE2E2E22D2D2DFFFFFFFFFFFFF6F6F6F7F7F7FFFFFF505050F3F3F3FBFBFBF6
                          F6F6FFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFF6F6F6F5F5F5FFFFFFACACAC909090FFFFFFF5F5F5F6F6F6F6F6F6F6F6
                          F6FEFEFEF0F0F0000000989898FFFFFFFFFFFF4F4F4FF6F6F6FAFAFAF6F6F6F6
                          F6F6FFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6FFFFFFB1B1B18A8A8AFFFFFFF6F6F6F6F6F6FEFE
                          FEFFFFFFFEFEFEFFFFFF1111110000008F8F8FFFFFFFFFFFFFFFFFFFF8F8F8F6
                          F6F6FFFFFF868686FFFFFFF6F6F6FFFFFFFDFDFDF6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6FFFFFFB7B7B7858585FFFFFFFFFFFFABAB
                          AB3C3C3CF8F8F8FFFFFFFFFFFF5F5F5F0000000000005F5F5FB9B9B9FFFFFFFF
                          FFFFFFFFFFE8E8E8FFFFFFFFFFFF181818D4D4D4FFFFFFF6F6F6FFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFBCBCBC909090AAAAAA9E9E
                          9EFFFFFF515151F8F8F8505050FFFFFFEFEFEF2D2D2D00000000000000000001
                          01012929294141414242423B3B3B000000000000848484FFFFFFFFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF6D6D6DA5A5A5FFFF
                          FFF6F6F6FFFFFF282828F0F0F0FFFFFFFAFAFAFFFFFFD3D3D33C3C3C00000000
                          00000000000000000000000000000000000000000000002A2A2AFFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F5F5F5FFFFFF969696ABABABFFFFFFF5F5
                          F5F6F6F6F6F6F6FFFFFF565656EAEAEAFCFCFCF5F5F5FDFDFDFFFFFFFCFCFC91
                          9191393939000000000000000000000000000000000000C6C6C6FFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6F5F5F5FFFFFF929292ABABABFFFFFFF5F5F5F6F6
                          F6F6F6F6F6F6F6F6F6F6FFFFFF585858E6E6E6FDFDFDF6F6F6F5F5F5F9F9F9FF
                          FFFFFFFFFFFFFFFFF0F0F0D5D5D5000000202020FFFFFFFFFFFFFFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6F6F6F6FFFFFF8D8D8DB0B0B0FFFFFFF6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF5C5C5CE2E2E2FEFEFEF6F6F6F6F6F6F6
                          F6F6FFFFFF848484FFFFFFFFFFFF8D8D8DFFFFFFF9F9F9F6F6F6FFFFFF8B8B8B
                          FFFFFFF6F6F6F6F6F6FFFFFF888888B4B4B4FFFFFFF6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF606060DDDDDDFEFEFEF6F6F6F6
                          F6F6FFFFFF8D8D8DFFFFFFF6F6F6FFFFFFF6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFF5F5F5FFFFFF848484B9B9B9FFFFFFF6F6F6F5F5F5F5F5F5F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF656565D8D8D8FFFFFFF5
                          F5F5FEFEFE8C8C8CFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFFFFFFFF7F7F7FBDBDBDFFFFFFF5F5F5F6F6F6F0F0F0F1F1F1F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF696969D4D4D4FC
                          FCFCF8F8F8919191FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                          FFFFFF7B7B7BC2C2C2FFFFFFF6F6F6F6F6F6F6F6F6F5F5F5EFEFEFF0F0F0F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF6E6E6ECE
                          CECEFFFFFF939393FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFA0A0A0
                          8D8D8DD3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFB
                          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
                          8080DCDCDC939393F8F8F8F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF313131
                          4C4C4C8787877C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7A7A
                          7A7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C91
                          91910D0D0D929292FEFEFEF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF
                          FAFAFAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
                          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
                          F5F5FEFEFEFCFCFCF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
                          F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
                          F7F7F7F7F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6}
                        Layout = blGlyphTop
                        ParentFont = False
                        TabOrder = 0
                        OnClick = CC4Click
                      end
                      object CC5: TBitBtn
                        Left = 7
                        Top = 1
                        Width = 62
                        Height = 49
                        Hint = 'Cancel'
                        Caption = #20839#23481
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Arial'
                        Font.Style = []
                        Glyph.Data = {
                          360C0000424D360C000000000000360000002800000020000000200000000100
                          180000000000000C000000000000000000000000000000000000F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F8F8F8FFFFFF6464645757575858585858
                          58585858585858585858585858585858585858585858585858555555777777FF
                          FFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF2525253B3B3BFAFAFAE9E9E9E9E9
                          E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9333333FF
                          FFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF393939C4C4C44A4A4AFFFFFFFCFCFCFCFC
                          FCFCFCFCFAFAFAFAFAFAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFFF3F3F3FFF
                          FFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6FFFFFF747474939393FFFFFF404040FFFFFFE5E5E5E0E0
                          E0DFDFDFF3F3F3FAFAFAFFFFFFF8F8F8F6F6F6F6F6F6F6F6F6FFFFFF404040FF
                          FFFFFFFFFFFFFFFFFBFBFBF6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FEFEFEBABABA0000005E5E5E494949373737FFFFFF5454544A4A
                          4A424242C8C8C80E0E0E4E4E4EFFFFFFFBFBFBF6F6F6F6F6F6FFFFFF3434344B
                          4B4B484848424242CFCFCFFBFBFBF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF767676C4C4C4E9E9E9E3E3E3FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFA9A9A9767676101010FDFDFDFAFAFAF6F6F6FFFFFF3E3E3EF3
                          F3F3EBEBEBA3A3A38E8E8EFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878D0D0D0FFFFFFFFFFFF1515151F1F1F2121212020
                          20202020131313C1C1C1181818FFFFFF0A0A0AFFFFFFF7F7F7FFFFFF3E3E3EFF
                          FFFFFFFFFFB8B8B8909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFE9E9E91E1E1EF8F8F81C1C1CFFFFFFFFFFFF464646FF
                          FFFFFDFDFDB6B6B6909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFC9696969C9C9C9A9A9A9E9E
                          9E9F9F9F9C9C9C9C9C9CA4A4A4909090444444D1D1D1404040FFFFFF3F3F3FFF
                          FFFFF7F7F7B5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFC8888889090909090909595
                          959494948F8F8F9090908A8A8AD9D9D98E8E8E757575999999848484515151FF
                          FFFFF6F6F6B3B3B3919191FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF6F6F6FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF585858B1B1B16C6C6C0A0A0AFF
                          FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFCFCFCFFFFFF1616162222222222222222
                          22222222222222222222222222222222121212F5F5F52A2A2AE3E3E3383838CE
                          CECEFFFFFFB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B0B0BFFFFFF11
                          1111F6F6F6BBBBBB909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFEFEFE5252525D5D5D5D5D5D5D5D
                          5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D515151DBDBDBFCFCFCFFFFFF050505FF
                          FFFF0E0E0EC2C2C2929292FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFBFBFBCFCFCFD1D1D1D1D1D1D1D1
                          D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1CDCDCDF4F4F4F6F6F6FFFFFF4040401C
                          1C1CFFFFFF000000AAAAAAFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF9F9F9ECECECECECECECECECECEC
                          ECECECECECECECECECECECECECECECECEAEAEAF8F8F8F6F6F6FFFFFF464646DF
                          DFDF2A2A2AECECEC2F2F2FFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFFFFFF3838384545454646464646
                          46464646464646464646464646464646383838D7D7D7FAFAFAFFFFFF3E3E3EFF
                          FFFFA1A1A15B5B5BB8B8B8565656FFFFFFF6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6FFFFFF3E3E3EFF
                          FFFFFFFFFF6A6A6A9F9F9F7C7C7C8A8A8AFFFFFFF6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFFFFFF1818182525252525252525
                          25252525252525252525252525252525151515D5D5D5FAFAFAFFFFFF3E3E3EFF
                          FFFFFDFDFDCBCBCB000000D6D6D6474747BEBEBEFEFEFEF3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF6F6F6FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF6F6F6FFFFFF3E3E3EFF
                          FFFFFDFDFDB6B6B6AEAEAE242424F7F7F7000000FFFFFFF3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFCA2A2A2A9A9A9A9A9A9AAAA
                          AAA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A1A1A1EBEBEBF7F7F7FFFFFF474747FF
                          FFFFFDFDFDB6B6B6929292FFFFFF000000B7B7B7FFFFFEF3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFC7C7C7C8484848888888686
                          868383838585858585858585858585857B7B7BE3E3E3F8F8F8FFFFFF3E3E3EFF
                          FFFFF6F6F6B5B5B5909090FFFFFFFFFFFFFEFEFEF6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF6F6F6FFFFFF3E3E3EFF
                          FFFFF7F7F7B3B3B3909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFFFFFF1515152121212222222222
                          22222222222222222222222222222222111111D5D5D5FAFAFAFFFFFF3E3E3EFF
                          FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF6F6F6FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF6F6F6FFFFFF3E3E3EFF
                          FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF787878D0D0D0FEFEFEF9F9F9F9F9F9F9F9F9F9F9F9F9F9
                          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFFF3F3F3FFF
                          FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FFFFFF747474BABABAE9E9E9E4E4E4ECECECE4E4E4E4E4E4E4E4
                          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4F4F4F4323232FF
                          FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6FCFCFCC1C1C14242424848485050500000005050504848484848
                          48484848484848484848484848484848484848484848484848454545696969FF
                          FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6FCFCFCFFFFFFFFFFFFFFFFFF464646FFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
                          F6F6FDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF404040FFFFFFF9F9F9F9F9
                          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
                          F9F9FFFFFFB8B8B8909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF333333FAFAFAE9E9E9E9E9
                          E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
                          E9E9F0F0F0A7A7A78D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF6666665454545656565656
                          5656565656565656565656565656565656565656565656565656565656565656
                          5656565656505050D4D4D4FBFBFBF6F6F6F6F6F6F6F6F6F3F2F0}
                        Layout = blGlyphTop
                        ParentFont = False
                        TabOrder = 1
                        OnClick = CC5Click
                      end
                      object TravelAgentRB1: TRadioButton
                        Left = 160
                        Top = 7
                        Width = 113
                        Height = 17
                        Caption = #38918#25463#26053#34892#31038
                        Checked = True
                        TabOrder = 2
                        TabStop = True
                      end
                      object TravelAgentRB2: TRadioButton
                        Left = 160
                        Top = 33
                        Width = 113
                        Height = 17
                        Caption = #30343#33590#26053#34892#31038
                        TabOrder = 3
                      end
                    end
                    object RichEditContext1: TRichEdit
                      Left = 1
                      Top = 185
                      Width = 794
                      Height = 14
                      Align = alClient
                      Font.Charset = CHINESEBIG5_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ScrollBars = ssVertical
                      TabOrder = 1
                    end
                    object Panel10: TPanel
                      Left = 1
                      Top = 57
                      Width = 794
                      Height = 128
                      Align = alTop
                      TabOrder = 2
                      object Label17: TLabel
                        Left = 19
                        Top = 6
                        Width = 65
                        Height = 16
                        Alignment = taRightJustify
                        Caption = #37109#20214#27161#38988':'
                      end
                      object Label18: TLabel
                        Left = 4
                        Top = 28
                        Width = 80
                        Height = 16
                        Alignment = taRightJustify
                        Caption = #37109#20214#25910#20449#20154':'
                      end
                      object Label19: TLabel
                        Left = 19
                        Top = 52
                        Width = 65
                        Height = 16
                        Alignment = taRightJustify
                        Caption = #37109#20214#21103#26412':'
                      end
                      object EditMailTitle1: TEdit
                        Left = 90
                        Top = 3
                        Width = 487
                        Height = 24
                        TabOrder = 0
                      end
                      object EditMailTo1: TEdit
                        Left = 90
                        Top = 28
                        Width = 487
                        Height = 24
                        TabOrder = 1
                      end
                      object EditMailCC1: TRichEdit
                        Left = 90
                        Top = 54
                        Width = 631
                        Height = 68
                        Font.Charset = CHINESEBIG5_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        ScrollBars = ssVertical
                        TabOrder = 2
                      end
                    end
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'Mail '#36890#30693#30456#38364#20154#21729
                  ImageIndex = 1
                  object Panel9: TPanel
                    Left = 0
                    Top = 0
                    Width = 796
                    Height = 56
                    Align = alTop
                    TabOrder = 0
                    ExplicitLeft = -4
                    ExplicitTop = -2
                    object DD5: TBitBtn
                      Left = 7
                      Top = 1
                      Width = 62
                      Height = 49
                      Hint = 'Cancel'
                      Caption = #20839#23481
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Arial'
                      Font.Style = []
                      Glyph.Data = {
                        360C0000424D360C000000000000360000002800000020000000200000000100
                        180000000000000C000000000000000000000000000000000000F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F8F8F8FFFFFF6464645757575858585858
                        58585858585858585858585858585858585858585858585858555555777777FF
                        FFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF2525253B3B3BFAFAFAE9E9E9E9E9
                        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F9F9F9333333FF
                        FFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF393939C4C4C44A4A4AFFFFFFFCFCFCFCFC
                        FCFCFCFCFAFAFAFAFAFAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFFF3F3F3FFF
                        FFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6FFFFFF747474939393FFFFFF404040FFFFFFE5E5E5E0E0
                        E0DFDFDFF3F3F3FAFAFAFFFFFFF8F8F8F6F6F6F6F6F6F6F6F6FFFFFF404040FF
                        FFFFFFFFFFFFFFFFFBFBFBF6F6F6F6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FEFEFEBABABA0000005E5E5E494949373737FFFFFF5454544A4A
                        4A424242C8C8C80E0E0E4E4E4EFFFFFFFBFBFBF6F6F6F6F6F6FFFFFF3434344B
                        4B4B484848424242CFCFCFFBFBFBF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF767676C4C4C4E9E9E9E3E3E3FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFA9A9A9767676101010FDFDFDFAFAFAF6F6F6FFFFFF3E3E3EF3
                        F3F3EBEBEBA3A3A38E8E8EFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878D0D0D0FFFFFFFFFFFF1515151F1F1F2121212020
                        20202020131313C1C1C1181818FFFFFF0A0A0AFFFFFFF7F7F7FFFFFF3E3E3EFF
                        FFFFFFFFFFB8B8B8909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFE9E9E91E1E1EF8F8F81C1C1CFFFFFFFFFFFF464646FF
                        FFFFFDFDFDB6B6B6909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFC9696969C9C9C9A9A9A9E9E
                        9E9F9F9F9C9C9C9C9C9CA4A4A4909090444444D1D1D1404040FFFFFF3F3F3FFF
                        FFFFF7F7F7B5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFC8888889090909090909595
                        959494948F8F8F9090908A8A8AD9D9D98E8E8E757575999999848484515151FF
                        FFFFF6F6F6B3B3B3919191FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF6F6F6FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF585858B1B1B16C6C6C0A0A0AFF
                        FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFCFCFCFFFFFF1616162222222222222222
                        22222222222222222222222222222222121212F5F5F52A2A2AE3E3E3383838CE
                        CECEFFFFFFB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B0B0BFFFFFF11
                        1111F6F6F6BBBBBB909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFEFEFE5252525D5D5D5D5D5D5D5D
                        5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D515151DBDBDBFCFCFCFFFFFF050505FF
                        FFFF0E0E0EC2C2C2929292FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFBFBFBCFCFCFD1D1D1D1D1D1D1D1
                        D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1CDCDCDF4F4F4F6F6F6FFFFFF4040401C
                        1C1CFFFFFF000000AAAAAAFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF9F9F9ECECECECECECECECECECEC
                        ECECECECECECECECECECECECECECECECEAEAEAF8F8F8F6F6F6FFFFFF464646DF
                        DFDF2A2A2AECECEC2F2F2FFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFFFFFF3838384545454646464646
                        46464646464646464646464646464646383838D7D7D7FAFAFAFFFFFF3E3E3EFF
                        FFFFA1A1A15B5B5BB8B8B8565656FFFFFFF6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6FFFFFF3E3E3EFF
                        FFFFFFFFFF6A6A6A9F9F9F7C7C7C8A8A8AFFFFFFF6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFFFFFF1818182525252525252525
                        25252525252525252525252525252525151515D5D5D5FAFAFAFFFFFF3E3E3EFF
                        FFFFFDFDFDCBCBCB000000D6D6D6474747BEBEBEFEFEFEF3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF6F6F6FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF6F6F6FFFFFF3E3E3EFF
                        FFFFFDFDFDB6B6B6AEAEAE242424F7F7F7000000FFFFFFF3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFCA2A2A2A9A9A9A9A9A9AAAA
                        AAA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A1A1A1EBEBEBF7F7F7FFFFFF474747FF
                        FFFFFDFDFDB6B6B6929292FFFFFF000000B7B7B7FFFFFEF3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFCFCFC7C7C7C8484848888888686
                        868383838585858585858585858585857B7B7BE3E3E3F8F8F8FFFFFF3E3E3EFF
                        FFFFF6F6F6B5B5B5909090FFFFFFFFFFFFFEFEFEF6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF6F6F6FFFFFF3E3E3EFF
                        FFFFF7F7F7B3B3B3909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBFFFFFF1515152121212222222222
                        22222222222222222222222222222222111111D5D5D5FAFAFAFFFFFF3E3E3EFF
                        FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878CDCDCDFBFBFBF6F6F6FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF6F6F6FFFFFF3E3E3EFF
                        FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF787878D0D0D0FEFEFEF9F9F9F9F9F9F9F9F9F9F9F9F9F9
                        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFFF3F3F3FFF
                        FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FFFFFF747474BABABAE9E9E9E4E4E4ECECECE4E4E4E4E4E4E4E4
                        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4F4F4F4323232FF
                        FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6FCFCFCC1C1C14242424848485050500000005050504848484848
                        48484848484848484848484848484848484848484848484848454545696969FF
                        FFFFFDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6FCFCFCFFFFFFFFFFFFFFFFFF464646FFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
                        F6F6FDFDFDB5B5B5909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF404040FFFFFFF9F9F9F9F9
                        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
                        F9F9FFFFFFB8B8B8909090FFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF333333FAFAFAE9E9E9E9E9
                        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
                        E9E9F0F0F0A7A7A78D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F3F2F0F4F3F1F3F2F0
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF6666665454545656565656
                        5656565656565656565656565656565656565656565656565656565656565656
                        5656565656505050D4D4D4FBFBFBF6F6F6F6F6F6F6F6F6F3F2F0}
                      Layout = blGlyphTop
                      ParentFont = False
                      TabOrder = 0
                      OnClick = DD5Click
                    end
                    object DD6: TBitBtn
                      Left = 75
                      Top = 1
                      Width = 69
                      Height = 49
                      Hint = 'Save Current'
                      Caption = #23492#20986#20449
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Arial'
                      Font.Style = []
                      Glyph.Data = {
                        360C0000424D360C000000000000360000002800000020000000200000000100
                        180000000000000C000000000000000000000000000000000000F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F3F3F4F4F4F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F4
                        F4F4F3F3F3F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F9F9F9
                        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6F6F6F6F8F8F8FBFB
                        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7
                        F7F7F5F5F5F4F4F4F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F9F9F9E0E0E0
                        CECECEC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C9C9C9C4C4C4C5C5C5CBCB
                        CBC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C9
                        C9C9CDCDCDE8E8E8F5F5F5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF434343
                        5C5C5CB8B8B8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A9A9A9ABABABABAB
                        ABA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8BF
                        BFBF222222939393F8F8F8F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF9C9C9C
                        AAAAAAACACACFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
                        FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFF61
                        6161F6F6F6919191FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFF9D9D9D9F9F9FFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F7F7F7CACA
                        CAFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF545454EC
                        ECECFFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFFFFFFFA3A3A39A9A9AFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F8F8F8E7E7
                        E7808080FFFFFFF8F8F8F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF525252EFEFEFFC
                        FCFCFFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFF5F5F5FFFFFFA7A7A7949494FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6FCFC
                        FCE2E2E22D2D2DFFFFFFFFFFFFF6F6F6F7F7F7FFFFFF505050F3F3F3FBFBFBF6
                        F6F6FFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFF6F6F6F5F5F5FFFFFFACACAC909090FFFFFFF5F5F5F6F6F6F6F6F6F6F6
                        F6FEFEFEF0F0F0000000989898FFFFFFFFFFFF4F4F4FF6F6F6FAFAFAF6F6F6F6
                        F6F6FFFFFF8D8D8DFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6FFFFFFB1B1B18A8A8AFFFFFFF6F6F6F6F6F6FEFE
                        FEFFFFFFFEFEFEFFFFFF1111110000008F8F8FFFFFFFFFFFFFFFFFFFF8F8F8F6
                        F6F6FFFFFF868686FFFFFFF6F6F6FFFFFFFDFDFDF6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6FFFFFFB7B7B7858585FFFFFFFFFFFFABAB
                        AB3C3C3CF8F8F8FFFFFFFFFFFF5F5F5F0000000000005F5F5FB9B9B9FFFFFFFF
                        FFFFFFFFFFE8E8E8FFFFFFFFFFFF181818D4D4D4FFFFFFF6F6F6FFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFBCBCBC909090AAAAAA9E9E
                        9EFFFFFF515151F8F8F8505050FFFFFFEFEFEF2D2D2D00000000000000000001
                        01012929294141414242423B3B3B000000000000848484FFFFFFFFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF6D6D6DA5A5A5FFFF
                        FFF6F6F6FFFFFF282828F0F0F0FFFFFFFAFAFAFFFFFFD3D3D33C3C3C00000000
                        00000000000000000000000000000000000000000000002A2A2AFFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F5F5F5FFFFFF969696ABABABFFFFFFF5F5
                        F5F6F6F6F6F6F6FFFFFF565656EAEAEAFCFCFCF5F5F5FDFDFDFFFFFFFCFCFC91
                        9191393939000000000000000000000000000000000000C6C6C6FFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6F5F5F5FFFFFF929292ABABABFFFFFFF5F5F5F6F6
                        F6F6F6F6F6F6F6F6F6F6FFFFFF585858E6E6E6FDFDFDF6F6F6F5F5F5F9F9F9FF
                        FFFFFFFFFFFFFFFFF0F0F0D5D5D5000000202020FFFFFFFFFFFFFFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6F6F6F6FFFFFF8D8D8DB0B0B0FFFFFFF6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF5C5C5CE2E2E2FEFEFEF6F6F6F6F6F6F6
                        F6F6FFFFFF848484FFFFFFFFFFFF8D8D8DFFFFFFF9F9F9F6F6F6FFFFFF8B8B8B
                        FFFFFFF6F6F6F6F6F6FFFFFF888888B4B4B4FFFFFFF6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF606060DDDDDDFEFEFEF6F6F6F6
                        F6F6FFFFFF8D8D8DFFFFFFF6F6F6FFFFFFF6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFF5F5F5FFFFFF848484B9B9B9FFFFFFF6F6F6F5F5F5F5F5F5F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF656565D8D8D8FFFFFFF5
                        F5F5FEFEFE8C8C8CFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFFFFFFFF7F7F7FBDBDBDFFFFFFF5F5F5F6F6F6F0F0F0F1F1F1F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF696969D4D4D4FC
                        FCFCF8F8F8919191FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF8B8B8B
                        FFFFFF7B7B7BC2C2C2FFFFFFF6F6F6F6F6F6F6F6F6F5F5F5EFEFEFF0F0F0F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF6E6E6ECE
                        CECEFFFFFF939393FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFA0A0A0
                        8D8D8DD3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFB
                        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
                        8080DCDCDC939393F8F8F8F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF313131
                        4C4C4C8787877C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7A7A
                        7A7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C91
                        91910D0D0D929292FEFEFEF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF
                        FAFAFAF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
                        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
                        F5F5FEFEFEFCFCFCF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
                        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
                        F7F7F7F7F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6}
                      Layout = blGlyphTop
                      ParentFont = False
                      TabOrder = 1
                      OnClick = DD6Click
                    end
                    object MailRB1: TRadioButton
                      Left = 157
                      Top = 2
                      Width = 241
                      Height = 17
                      Caption = 'A'#24288#21312'-'#20241#20551'+'#38626#32887#30332#36865#36890#30693#23565#35937
                      TabOrder = 2
                    end
                    object MailRB2: TRadioButton
                      Left = 158
                      Top = 21
                      Width = 241
                      Height = 17
                      Caption = 'B'#24288#21312'-'#20241#20551'+'#38626#32887#30332#36865#36890#30693#23565#35937
                      TabOrder = 3
                    end
                    object MailRB3: TRadioButton
                      Left = 157
                      Top = 39
                      Width = 253
                      Height = 17
                      Caption = #34892#25919#20013#24515'-'#20241#20551'+'#38626#32887#30332#36865#36890#30693#23565#35937
                      Checked = True
                      TabOrder = 4
                      TabStop = True
                    end
                    object MailRB4: TRadioButton
                      Left = 452
                      Top = 0
                      Width = 253
                      Height = 17
                      Caption = #20986#24046'-'#25562#24030#23542#20740
                      TabOrder = 5
                      Visible = False
                    end
                    object MailRB5: TRadioButton
                      Left = 452
                      Top = 18
                      Width = 253
                      Height = 17
                      Caption = #20986#24046'-'#32236#30008#26124#20740
                      TabOrder = 6
                      Visible = False
                    end
                    object MailRB6: TRadioButton
                      Left = 452
                      Top = 37
                      Width = 253
                      Height = 17
                      Caption = #20986#24046'-'#21360#23612#20740#27849'B'
                      TabOrder = 7
                      Visible = False
                    end
                  end
                  object RichEditContext2: TRichEdit
                    Left = 0
                    Top = 185
                    Width = 796
                    Height = 15
                    Align = alClient
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object Panel11: TPanel
                    Left = 0
                    Top = 56
                    Width = 796
                    Height = 129
                    Align = alTop
                    TabOrder = 2
                    object Label20: TLabel
                      Left = 19
                      Top = 4
                      Width = 65
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #37109#20214#27161#38988':'
                    end
                    object Label21: TLabel
                      Left = 4
                      Top = 28
                      Width = 80
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #37109#20214#25910#20449#20154':'
                    end
                    object Label22: TLabel
                      Left = 19
                      Top = 52
                      Width = 65
                      Height = 16
                      Alignment = taRightJustify
                      Caption = #37109#20214#21103#26412':'
                    end
                    object EditMailTitle2: TEdit
                      Left = 90
                      Top = 0
                      Width = 487
                      Height = 24
                      TabOrder = 0
                    end
                    object EditMailTo2: TEdit
                      Left = 90
                      Top = 26
                      Width = 487
                      Height = 24
                      TabOrder = 1
                    end
                    object EditMailCC2: TRichEdit
                      Left = 90
                      Top = 54
                      Width = 631
                      Height = 69
                      Font.Charset = CHINESEBIG5_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ScrollBars = ssVertical
                      TabOrder = 2
                    end
                  end
                end
              end
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #27231#31080#27454#26126#32048
          ImageIndex = 1
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 808
            Height = 56
            Align = alTop
            TabOrder = 0
            object BC2: TBitBtn
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
              OnClick = BC2Click
            end
            object BC4: TBitBtn
              Left = 128
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
              OnClick = BC4Click
            end
            object BC3: TBitBtn
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
              OnClick = BC3Click
            end
            object BC5: TBitBtn
              Left = 195
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
              OnClick = BC5Click
            end
            object BC6: TBitBtn
              Left = 264
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
              OnClick = BC6Click
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 56
            Width = 808
            Height = 65
            Align = alTop
            TabOrder = 1
            Visible = False
          end
          object DBGridEh3: TDBGridEh
            Left = 0
            Top = 121
            Width = 808
            Height = 410
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
            TabOrder = 2
            TitleParams.MultiTitle = True
            OnGetCellParams = DBGridEh3GetCellParams
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LNO'
                Footers = <>
                Title.Caption = 'LNO|'#21934#34399
                Width = 92
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BookDate'
                Footers = <>
                Title.Caption = 'BookDate|'#35330#31080#26085#26399
                Width = 73
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoDate'
                Footers = <>
                Title.Caption = #34892#31243'('#21435#31243')|'#26085#26399'GoDate'
                Width = 73
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Route'
                Footers = <>
                Title.Caption = #34892#31243'('#21435#31243')|'#21435#31243'('#22283#38555#27573')Route'
                Width = 114
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoPlaneNumber'
                Footers = <>
                Title.Caption = #34892#31243'('#21435#31243')|'#33322#29677'AirNumber'
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoDate_Sub'
                Footers = <>
                Title.Caption = #34892#31243'('#21435#31243')|'#26085#26399'GoDate'
                Width = 66
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Route_Sub'
                Footers = <>
                Title.Caption = #34892#31243'('#21435#31243')|'#21435#31243'('#20839#38520#27573')Route'
                Width = 97
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoPlaneNumber_Sub'
                Footers = <>
                Title.Caption = #34892#31243'('#21435#31243')|'#33322#29677'AirNumber'
                Width = 77
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackDate_Sub'
                Footers = <>
                Title.Caption = #34892#31243'('#22238#31243')|'#26085#26399'GoDate'
                Width = 63
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Route1_Sub'
                Footers = <>
                Title.Caption = #34892#31243'('#22238#31243')|'#22238#31243'('#20839#38520#27573')Route'
                Width = 96
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackPlaneNumber_Sub'
                Footers = <>
                Title.Caption = #34892#31243'('#22238#31243')|'#33322#29677'AirNumber'
                Width = 84
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackDate'
                Footers = <>
                Title.Caption = #34892#31243'('#22238#31243')|'#26085#26399'GoDate'
                Width = 72
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Route1'
                Footers = <>
                Title.Caption = #34892#31243'('#22238#31243')|'#22238#31243'('#22283#38555#27573')Route'
                Width = 95
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BackPlaneNumber'
                Footers = <>
                Title.Caption = #34892#31243'('#22238#31243')|'#33322#29677'AirNumber'
                Width = 74
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Tickets'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#31080#25976'Tickets'
                Width = 64
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USD_Fee'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#31080#20729'USD'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Exchange'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#21295#29575'Exchange'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VND_Fee'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#25240#31639#36234#30462'VND'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NTD_Fee'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#25240#31639#21488#24163'NTD'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Tickets_Credit'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#31080#25976'Tickets'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USD_Credit'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#31080#20729'USD'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VND_Credit'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#36234#30462'VND'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NTD_Credit'
                Footers = <>
                Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#21488#24163'NTD'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Reason'
                Footers = <>
                Title.Caption = 'Reason|'#36092#31080#21407#22240
                Width = 94
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Payment'
                Footers = <>
                Title.Caption = 'Payment|'#20184#27454#20154
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Remark'
                Footers = <>
                Title.Caption = 'Remark|'#20633#35387
                Width = 115
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
        'epartment,Directory_Factory.Name as Factory,Directory.Email,'
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
      ' and Certificate.NID='#39'TW'#39)
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
    object Query1Factory: TStringField
      FieldName = 'Factory'
      Size = 30
    end
    object Query1Email: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object Query1Sequence: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sequence'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 112
    Top = 168
  end
  object Query2: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query2AfterOpen
    BeforeClose = Query2BeforeClose
    AfterScroll = Query2AfterScroll
    DataSource = DS1
    Parameters = <>
    SQL.Strings = (
      'Select WF_RegularLeave.*'
      
        '       ,WF_BookTicket.BookDate,WF_BookTicket.NTD_Fee,WF_BookTick' +
        'et.USD_Fee,WF_BookTicket.LNO as LNO_Book,WF_BookTicket.BookMailC' +
        'ount,WF_BookTicket.HolidayMailCount'
      'from [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave'
      
        'Left join [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket on ' +
        'WF_BookTicket.LNO=WF_RegularLeave.LNO'
      
        'where WF_RegularLeave.UserID='#39'21191'#39' and WF_RegularLeave.FYear='#39 +
        '2023'#39' '
      'order by WF_RegularLeave.RLTimes')
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
    end
    object Query2EndDate: TDateTimeField
      FieldName = 'EndDate'
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
    end
    object Query2ExtendEndDate: TDateTimeField
      FieldName = 'ExtendEndDate'
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
    object Query2AirPlanFee: TFloatField
      FieldName = 'AirPlanFee'
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
    object Query2BookDate: TDateTimeField
      FieldName = 'BookDate'
    end
    object Query2NTD_Credit: TIntegerField
      FieldName = 'NTD_Credit'
    end
    object Query2USD_Credit: TFloatField
      FieldName = 'USD_Credit'
    end
    object Query2LNO_Book: TStringField
      FieldName = 'LNO_Book'
      Size = 12
    end
    object Query2BookMailCount: TSmallintField
      FieldName = 'BookMailCount'
    end
    object Query2HolidayMailCount: TSmallintField
      FieldName = 'HolidayMailCount'
    end
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
  object TempQry: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    Left = 16
    Top = 216
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 256
    Top = 168
  end
  object IdMessage3: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CharSet = 'uft-8'
    CCList = <>
    ContentType = 'text/html'
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 256
    Top = 216
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 256
    Top = 272
  end
  object Query3: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query3AfterOpen
    BeforeClose = Query3BeforeClose
    DataSource = DS1
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket')
    Left = 168
    Top = 216
    object Query3LNO: TStringField
      FieldName = 'LNO'
      Size = 12
    end
    object Query3ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query3BookDate: TDateTimeField
      FieldName = 'BookDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3Route: TWideStringField
      FieldName = 'Route'
      Size = 30
    end
    object Query3Route_Sub: TWideStringField
      FieldName = 'Route_Sub'
      Size = 30
    end
    object Query3GoDate: TDateTimeField
      FieldName = 'GoDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3GoDate_Sub: TDateTimeField
      FieldName = 'GoDate_Sub'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3GoPlaneNumber: TStringField
      FieldName = 'GoPlaneNumber'
      Size = 15
    end
    object Query3GoPlaneNumber_Sub: TStringField
      FieldName = 'GoPlaneNumber_Sub'
      Size = 15
    end
    object Query3Route1: TWideStringField
      FieldName = 'Route1'
      Size = 30
    end
    object Query3Route1_Sub: TWideStringField
      FieldName = 'Route1_Sub'
      Size = 30
    end
    object Query3BackDate: TDateTimeField
      FieldName = 'BackDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3BackDate_Sub: TDateTimeField
      FieldName = 'BackDate_Sub'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3BackPlaneNumber: TStringField
      FieldName = 'BackPlaneNumber'
      Size = 15
    end
    object Query3BackPlaneNumber_Sub: TStringField
      FieldName = 'BackPlaneNumber_Sub'
      Size = 15
    end
    object Query3Tickets: TSmallintField
      FieldName = 'Tickets'
    end
    object Query3USD_Fee: TFloatField
      FieldName = 'USD_Fee'
    end
    object Query3Exchange: TFloatField
      FieldName = 'Exchange'
    end
    object Query3VND_Fee: TIntegerField
      FieldName = 'VND_Fee'
    end
    object Query3NTD_Fee: TIntegerField
      FieldName = 'NTD_Fee'
    end
    object Query3Tickets_Credit: TSmallintField
      FieldName = 'Tickets_Credit'
    end
    object Query3USD_Credit: TFloatField
      FieldName = 'USD_Credit'
    end
    object Query3VND_Credit: TIntegerField
      FieldName = 'VND_Credit'
    end
    object Query3NTD_Credit: TIntegerField
      FieldName = 'NTD_Credit'
    end
    object Query3Reason: TWideStringField
      FieldName = 'Reason'
      Size = 100
    end
    object Query3Payment: TWideStringField
      FieldName = 'Payment'
      Size = 50
    end
    object Query3Remark: TWideStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query3LNO_Fee: TStringField
      FieldName = 'LNO_Fee'
      Size = 12
    end
    object Query3BookMailCount: TSmallintField
      FieldName = 'BookMailCount'
    end
    object Query3HolidayMailCount: TSmallintField
      FieldName = 'HolidayMailCount'
    end
    object Query3UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 168
    Top = 168
  end
  object U_Query3: TMyADOUpdateSQL
    DataSet = Query3
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'BookDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
        Name = 'Route_Sub'
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
        Name = 'GoDate_Sub'
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
        Name = 'GoPlaneNumber_Sub'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
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
        Name = 'Route1_Sub'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
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
        Name = 'BackDate_Sub'
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
        Name = 'BackPlaneNumber_Sub'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'Tickets'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'USD_Fee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Exchange'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VND_Fee'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NTD_Fee'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Tickets_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'USD_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VND_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NTD_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Reason'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Payment'
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
        Name = 'LNO_Fee'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'BookMailCount'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'HolidayMailCount'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE  [EEP].[LingYi].[dbo].[WF_BookTicket]'
      'SET'
      '  BookDate= :BookDate,'
      '  Route =:Route,'
      '  Route_Sub =:Route_Sub ,'
      '  GoDate=:GoDate,'
      '  GoDate_Sub =:GoDate_Sub,'
      '  GoPlaneNumber =:GoPlaneNumber,'
      '  GoPlaneNumber_Sub =:GoPlaneNumber_Sub,'
      '  Route1 =:Route1 ,'
      '  Route1_Sub =:Route1_Sub,'
      '  BackDate =:BackDate,'
      '  BackDate_Sub =:BackDate_Sub,'
      '  BackPlaneNumber =:BackPlaneNumber,'
      '  BackPlaneNumber_Sub =:BackPlaneNumber_Sub,'
      '  Tickets =:Tickets,'
      '  USD_Fee =:USD_Fee,'
      '  Exchange =:Exchange,'
      '  VND_Fee =:VND_Fee,'
      '  NTD_Fee =:NTD_Fee,'
      '  Tickets_Credit =:Tickets_Credit,'
      '  USD_Credit =:USD_Credit,'
      '  VND_Credit =:VND_Credit,'
      '  NTD_Credit =:NTD_Credit,'
      '  Reason =:Reason,'
      '  Payment =:Payment,'
      '  Remark =:Remark,'
      '  LNO_Fee =:LNO_Fee,'
      '  BookMailCount =:BookMailCount,'
      '  HolidayMailCount =:HolidayMailCount,'
      '  UserID =:UserID,'
      '  UserDate =:UserDate'
      'WHERE '
      '  LNO =:OLD_LNO '
      '  And ID=:OLD_ID')
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
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_BookTicket]'
      'WHERE '
      '  LNO =:OLD_LNO'
      '  And ID=:OLD_ID')
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
        Name = 'ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'BookDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
        Name = 'Route_Sub'
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
        Name = 'GoDate_Sub'
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
        Name = 'GoPlaneNumber_Sub'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
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
        Name = 'Route1_Sub'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
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
        Name = 'BackDate_Sub'
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
        Name = 'BackPlaneNumber_Sub'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'Tickets'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'USD_Fee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Exchange'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VND_Fee'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NTD_Fee'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Tickets_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'USD_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VND_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NTD_Credit'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Reason'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Payment'
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
        Name = 'LNO_Fee'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'BookMailCount'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'HolidayMailCount'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_BookTicket]'
      
        '   (LNO, ID , BookDate,  Route,  Route_Sub,  GoDate, GoDate_Sub,' +
        '  GoPlaneNumber, GoPlaneNumber_Sub,  Route1,  Route1_Sub, BackDa' +
        'te,  BackDate_Sub, BackPlaneNumber, BackPlaneNumber_Sub, '
      
        '    Tickets, USD_Fee, Exchange, VND_Fee, NTD_Fee, Tickets_Credit' +
        ', USD_Credit, VND_Credit, NTD_Credit, Reason, Payment, Remark, L' +
        'NO_Fee, BookMailCount, HolidayMailCount ,UserID, UserDate, YN) '
      'VALUES '
      
        '   (:LNO, :ID , :BookDate,  :Route,  :Route_Sub,  :GoDate, :GoDa' +
        'te_Sub,  :GoPlaneNumber, :GoPlaneNumber_Sub,  :Route1,  :Route1_' +
        'Sub, :BackDate,  :BackDate_Sub, :BackPlaneNumber, :BackPlaneNumb' +
        'er_Sub, '
      
        '    :Tickets, :USD_Fee, :Exchange, :VND_Fee, :NTD_Fee, :Tickets_' +
        'Credit, :USD_Credit, :VND_Credit, :NTD_Credit, :Reason, :Payment' +
        ', :Remark,  :LNO_Fee, :BookMailCount, :HolidayMailCount , :UserI' +
        'D, :UserDate, :YN) ')
    SQLDelete = 
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_BookTicket]'#13#10'WHERE '#13#10'  LNO' +
      ' =:OLD_LNO'#13#10'  And ID=:OLD_ID'
    SQLInsert = 
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_BookTicket]'#13#10'   (LNO, ID , ' +
      'BookDate,  Route,  Route_Sub,  GoDate, GoDate_Sub,  GoPlaneNumbe' +
      'r, GoPlaneNumber_Sub,  Route1,  Route1_Sub, BackDate,  BackDate_' +
      'Sub, BackPlaneNumber, BackPlaneNumber_Sub, '#13#10'    Tickets, USD_Fe' +
      'e, Exchange, VND_Fee, NTD_Fee, Tickets_Credit, USD_Credit, VND_C' +
      'redit, NTD_Credit, Reason, Payment, Remark, LNO_Fee, BookMailCou' +
      'nt, HolidayMailCount ,UserID, UserDate, YN) '#13#10'VALUES '#13#10'   (:LNO,' +
      ' :ID , :BookDate,  :Route,  :Route_Sub,  :GoDate, :GoDate_Sub,  ' +
      ':GoPlaneNumber, :GoPlaneNumber_Sub,  :Route1,  :Route1_Sub, :Bac' +
      'kDate,  :BackDate_Sub, :BackPlaneNumber, :BackPlaneNumber_Sub, '#13 +
      #10'    :Tickets, :USD_Fee, :Exchange, :VND_Fee, :NTD_Fee, :Tickets' +
      '_Credit, :USD_Credit, :VND_Credit, :NTD_Credit, :Reason, :Paymen' +
      't, :Remark,  :LNO_Fee, :BookMailCount, :HolidayMailCount , :User' +
      'ID, :UserDate, :YN) '#13#10
    SQLModify = 
      'UPDATE  [EEP].[LingYi].[dbo].[WF_BookTicket]'#13#10'SET'#13#10'  BookDate= :' +
      'BookDate,'#13#10'  Route =:Route,'#13#10'  Route_Sub =:Route_Sub ,'#13#10'  GoDate' +
      '=:GoDate,'#13#10'  GoDate_Sub =:GoDate_Sub,'#13#10'  GoPlaneNumber =:GoPlane' +
      'Number,'#13#10'  GoPlaneNumber_Sub =:GoPlaneNumber_Sub,'#13#10'  Route1 =:Ro' +
      'ute1 ,'#13#10'  Route1_Sub =:Route1_Sub,'#13#10'  BackDate =:BackDate,'#13#10'  Ba' +
      'ckDate_Sub =:BackDate_Sub,'#13#10'  BackPlaneNumber =:BackPlaneNumber,' +
      #13#10'  BackPlaneNumber_Sub =:BackPlaneNumber_Sub,'#13#10'  Tickets =:Tick' +
      'ets,'#13#10'  USD_Fee =:USD_Fee,'#13#10'  Exchange =:Exchange,'#13#10'  VND_Fee =:' +
      'VND_Fee,'#13#10'  NTD_Fee =:NTD_Fee,'#13#10'  Tickets_Credit =:Tickets_Credi' +
      't,'#13#10'  USD_Credit =:USD_Credit,'#13#10'  VND_Credit =:VND_Credit,'#13#10'  NT' +
      'D_Credit =:NTD_Credit,'#13#10'  Reason =:Reason,'#13#10'  Payment =:Payment,' +
      #13#10'  Remark =:Remark,'#13#10'  LNO_Fee =:LNO_Fee,'#13#10'  BookMailCount =:Bo' +
      'okMailCount,'#13#10'  HolidayMailCount =:HolidayMailCount,'#13#10'  UserID =' +
      ':UserID,'#13#10'  UserDate =:UserDate'#13#10'WHERE '#13#10'  LNO =:OLD_LNO '#13#10'  And' +
      ' ID=:OLD_ID'
    Left = 168
    Top = 267
  end
end
