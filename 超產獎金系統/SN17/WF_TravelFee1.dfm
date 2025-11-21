object WF_TravelFee: TWF_TravelFee
  Left = 0
  Top = 0
  Caption = 'WF_TravelFee'
  ClientHeight = 610
  ClientWidth = 1095
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
    Width = 1095
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
      Top = 68
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
    Width = 1095
    Height = 505
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
        Height = 474
        ExplicitLeft = 920
        ExplicitTop = 47
        ExplicitHeight = 329
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 300
        Height = 474
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
        Left = 448
        Top = 0
        Width = 639
        Height = 474
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 1
          Width = 637
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 2
          ExplicitTop = 225
          ExplicitWidth = 334
        end
        object Panel2: TPanel
          Left = 1
          Top = 4
          Width = 637
          Height = 469
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 0
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 635
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
            Width = 635
            Height = 411
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
                FieldName = 'XH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'NO|'#24207#34399
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'StartDT'
                Footers = <>
                Title.Caption = 'StartDT|'#36215#26085
                Width = 76
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'EndDT'
                Footers = <>
                Title.Caption = 'EndDT|'#36804#26085
                Width = 77
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'GoBackDest'
                Footers = <>
                Title.Caption = 'GoBackDest|'#36215#35350#22320#40670'/'#38917#30446#35498#26126
                Width = 201
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Currency'
                Footers = <>
                PickList.Strings = (
                  'NTD'
                  'USD')
                Title.Caption = 'Currency|'#24163#21029
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'AirPlanFee'
                Footers = <>
                Title.Caption = 'AirPlanFee|'#27231#31080#27454
                Width = 53
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VisaFee'
                Footers = <>
                Title.Caption = 'VisaFee|'#31805#35657#36027
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TransportFee'
                Footers = <>
                Title.Caption = 'TransportFee|'#20132#36890#36027
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'HotelFee'
                Footers = <>
                Title.Caption = 'HotelFee|'#20303#23487#36027
                Width = 53
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FoodFee'
                Footers = <>
                Title.Caption = 'FoodFee|'#33203#38620#36027
                Width = 54
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OtherFee'
                Footers = <>
                Title.Caption = 'OtherFee|'#20854#20182
                Width = 44
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 304
        Top = 0
        Width = 144
        Height = 474
        Align = alLeft
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
        TabOrder = 2
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LNO'
            Footers = <>
            Title.Caption = #22577#25903#34920#21934#34399'|LNO'
            Width = 98
          end>
        object RowDetailData: TRowDetailPanelControlEh
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
  object DS3: TDataSource
    DataSet = Query3
    Left = 168
    Top = 168
  end
  object Query3: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = Query3AfterOpen
    DataSource = DS2
    Parameters = <
      item
        Name = 'LNO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = 'R20230704001'
      end>
    SQL.Strings = (
      'Select WF_TravelFees.*'
      'from   [EEP].[LingYi].[dbo].[WF_TravelFees] WF_TravelFees'
      
        'Left join [EEP].[LingYi].[dbo].[WF_TravelFee] WF_TravelFee on WF' +
        '_TravelFee.LNO=WF_TravelFees.LNO'
      'where WF_TravelFee.LNO=:LNO')
    Left = 168
    Top = 216
    object Query3LNO: TStringField
      FieldName = 'LNO'
      Size = 12
    end
    object Query3XH: TSmallintField
      FieldName = 'XH'
    end
    object Query3StartDT: TDateTimeField
      FieldName = 'StartDT'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3EndDT: TDateTimeField
      FieldName = 'EndDT'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3GoBackDest: TWideStringField
      FieldName = 'GoBackDest'
      Size = 50
    end
    object Query3Currency: TStringField
      FieldName = 'Currency'
      Size = 12
    end
    object Query3AirPlanFee: TFloatField
      FieldName = 'AirPlanFee'
    end
    object Query3VisaFee: TFloatField
      FieldName = 'VisaFee'
    end
    object Query3TransportFee: TFloatField
      FieldName = 'TransportFee'
    end
    object Query3HotelFee: TFloatField
      FieldName = 'HotelFee'
    end
    object Query3FoodFee: TFloatField
      FieldName = 'FoodFee'
    end
    object Query3OtherFee: TFloatField
      FieldName = 'OtherFee'
    end
    object Query3UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
  object U_Query3: TMyADOUpdateSQL
    DataSet = Query3
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'StartDT'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDT'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'GoBackDest'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Currency'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'AirPlanFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VisaFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'TransportFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'HotelFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'FoodFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'OtherFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
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
        Name = 'OLD_XH'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      '  UPDATE  [EEP].[LingYi].[dbo].[WF_TravelFees]'
      'SET'
      '  StartDT =:StartDT,'
      '  EndDT =:EndDT,'
      '  GoBackDest =:GoBackDest,'
      '  Currency =:Currency,'
      '  AirPlanFee =:AirPlanFee,'
      '  VisaFee =:VisaFee,'
      '  TransportFee =:TransportFee,'
      '  HotelFee =:HotelFee,'
      '  FoodFee =:FoodFee,'
      '  OtherFee =:OtherFee,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'WHERE '
      '  LNO =:OLD_LNO'
      '  and XH=:OLD_XH')
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
        Name = 'OLD_XH'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_TravelFees]'
      'WHERE '
      '  LNO =:OLD_LNO'
      '  and XH=:OLD_XH')
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
        Name = 'XH'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StartDT'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDT'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'GoBackDest'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Currency'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'AirPlanFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VisaFee'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_TravelFees]'
      
        '   (LNO, XH, StartDT,  EndDT,  GoBackDest,  Currency, AirPlanFee' +
        ',  VisaFee, TransportFee,  HotelFee,  FoodFee, OtherFee, UserID,' +
        ' UserDate) '
      'VALUES '
      
        '   (:LNO, :XH, :StartDT, :EndDT,  :GoBackDest, :Currency, :AirPl' +
        'anFee, :VisaFee, TransportFee,  HotelFee,  FoodFee, OtherFee, Us' +
        'erID, UserDate) ')
    SQLDelete = 
      'DELETE FROM  [EEP].[LingYi].[dbo].[WF_TravelFees]'#13#10'WHERE '#13#10'  LNO' +
      ' =:OLD_LNO'#13#10'  and XH=:OLD_XH'
    SQLInsert = 
      'INSERT INTO [EEP].[LingYi].[dbo].[WF_TravelFees]'#13#10'   (LNO, XH, S' +
      'tartDT,  EndDT,  GoBackDest,  Currency, AirPlanFee,  VisaFee, Tr' +
      'ansportFee,  HotelFee,  FoodFee, OtherFee, UserID, UserDate) '#13#10'V' +
      'ALUES '#13#10'   (:LNO, :XH, :StartDT, :EndDT,  :GoBackDest, :Currency' +
      ', :AirPlanFee, :VisaFee, TransportFee,  HotelFee,  FoodFee, Othe' +
      'rFee, UserID, UserDate) '
    SQLModify = 
      '  UPDATE  [EEP].[LingYi].[dbo].[WF_TravelFees]'#13#10'SET'#13#10'  StartDT =' +
      ':StartDT,'#13#10'  EndDT =:EndDT,'#13#10'  GoBackDest =:GoBackDest,'#13#10'  Curre' +
      'ncy =:Currency,'#13#10'  AirPlanFee =:AirPlanFee,'#13#10'  VisaFee =:VisaFee' +
      ','#13#10'  TransportFee =:TransportFee,'#13#10'  HotelFee =:HotelFee,'#13#10'  Foo' +
      'dFee =:FoodFee,'#13#10'  OtherFee =:OtherFee,'#13#10'  UserID = :UserID,'#13#10'  ' +
      'UserDate = GETDATE()'#13#10'WHERE '#13#10'  LNO =:OLD_LNO'#13#10'  and XH=:OLD_XH'
    Left = 168
    Top = 267
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
    DataSource = DS1
    Parameters = <
      item
        Name = '=ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select WF_TravelFee.*'
      'from   [EEP].[LingYi].[dbo].[WF_TravelFee] WF_TravelFee'
      'where WF_TravelFee.ApplicantID:=ID')
    Left = 112
    Top = 216
  end
end
