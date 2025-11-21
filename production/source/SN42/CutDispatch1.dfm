object CutDispatch: TCutDispatch
  Left = 279
  Top = 236
  Width = 1425
  Height = 526
  Caption = 'Cutting Dispatch'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 25
  object PC1: TPageControl
    Left = 0
    Top = 163
    Width = 1407
    Height = 316
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PC1Change
    object TS1: TTabSheet
      Caption = 'CutMas'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 51
        Width = 1399
        Height = 228
        Align = alClient
        DataSource = DCDMaster
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -17
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DLNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #27966#24037#21934#34399'|DLNO'
            Width = 121
          end
          item
            DropDownShowTitles = True
            DropDownSizing = True
            EditButtons = <>
            FieldName = 'DLLB'
            Footers = <>
            Title.Caption = #35009#26039#39006#21029'|DLLB'
            Width = 77
            OnEditButtonClick = DBGridEh1Columns1EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Title.Caption = #37096#38272#32232#34399'|DepID'
            Width = 92
            OnEditButtonClick = DBGridEh1Columns2EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = #37096#38272#21517#31281'|DepName'
            Width = 133
            OnEditButtonClick = DBGridEh1Columns3EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 196
          end
          item
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            Title.Caption = #27966#24037#26085#26399'|PlanDate'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'Machine'
            Footers = <>
            Title.Caption = #35009#26039#27231#21488#32232#34399'|Machine'
            Width = 105
            OnEditButtonClick = DBGridEh1Columns6EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'MachineName'
            Footers = <>
            Title.Caption = #35009#26039#27231#21488#21517#31281'|MachineName'
            Width = 165
            OnEditButtonClick = DBGridEh1Columns7EditButtonClick
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'CutNum'
            Footers = <>
            ReadOnly = True
            Title.Caption = #32317#20992#25976'|SL Dao'
            Width = 70
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'ZLBHList'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26009#34399#28165#21934'|CLBHList'
            Width = 137
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'SIZEList'
            Footers = <>
            Title.Caption = #23610#30908'|SIZEList'
            Width = 188
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'BWBHList'
            Footers = <>
            Title.Caption = #37096#20301'|BWBHList'
            Width = 299
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#32773'|USERID'
            Width = 70
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26085#26399'|USERDATE'
            Width = 96
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1399
        Height = 51
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label2: TLabel
          Left = 364
          Top = 15
          Width = 104
          Height = 23
          AutoSize = False
          Caption = 'Department:'
          Layout = tlCenter
        end
        object Label1: TLabel
          Left = 201
          Top = 15
          Width = 69
          Height = 23
          AutoSize = False
          Caption = 'Factory:'
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 1180
          Top = 15
          Width = 46
          Height = 22
          Caption = 'From:'
        end
        object Label4: TLabel
          Left = 1375
          Top = 15
          Width = 25
          Height = 22
          Caption = 'To:'
        end
        object Label5: TLabel
          Left = 6
          Top = 15
          Width = 55
          Height = 23
          AutoSize = False
          Caption = 'DLNO:'
          Layout = tlCenter
        end
        object Label7: TLabel
          Left = 839
          Top = 15
          Width = 67
          Height = 22
          Caption = 'ListType'
        end
        object Label8: TLabel
          Left = 660
          Top = 15
          Width = 40
          Height = 22
          Caption = 'Type'
        end
        object DepNameCB: TComboBox
          Left = 469
          Top = 11
          Width = 182
          Height = 30
          ItemHeight = 22
          TabOrder = 0
        end
        object XuongCB: TComboBox
          Left = 266
          Top = 11
          Width = 92
          Height = 30
          Style = csDropDownList
          ItemHeight = 22
          TabOrder = 1
          OnChange = XuongCBChange
        end
        object Button1: TButton
          Left = 1628
          Top = 10
          Width = 111
          Height = 31
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 1230
          Top = 11
          Width = 141
          Height = 30
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 1405
          Top = 11
          Width = 141
          Height = 30
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 4
        end
        object Check: TCheckBox
          Left = 1554
          Top = 16
          Width = 71
          Height = 22
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object DLNOEdit: TEdit
          Left = 61
          Top = 11
          Width = 130
          Height = 25
          TabOrder = 6
        end
        object CB_LISTTYPE: TComboBox
          Left = 910
          Top = 11
          Width = 261
          Height = 30
          Style = csDropDownList
          ItemHeight = 22
          ItemIndex = 0
          TabOrder = 7
          Text = 'ALL'
          OnChange = CB_LISTTYPEChange
          Items.Strings = (
            'ALL'
            'May Chat ('#35009#26039#27231')'
            'May chat Tu dong ('#33258#21205#35009#26039#27231')'
            'Lectra')
        end
        object CB_TYPE: TComboBox
          Left = 703
          Top = 11
          Width = 121
          Height = 30
          Style = csDropDownList
          ItemHeight = 22
          ItemIndex = 0
          TabOrder = 8
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'ERP'
            'DataCenter')
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'CutDet'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 1191
        Top = 0
        Width = 4
        Height = 406
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1191
        Height = 406
        Align = alLeft
        DataSource = DCDDetail
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -17
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh2EditButtonClick
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934'|ZLBH'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37096#20301'ID|BWBH'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37096#20301#25551#36848'|ZWSM'
            Visible = False
            Width = 380
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37096#20301'|YWSM'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #23610#30908'|SIZE'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #38617#25976'|Qty'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'XXCC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26028#20992#23610#30908'|XXCC'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#20013#25991'|ZWPM'
            Visible = False
            Width = 380
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#33521#25991'|YWPM'
            Width = 340
          end
          item
            EditButtons = <>
            FieldName = 'CutNum'
            Footer.FieldName = 'CutNum'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #35009#26039#20992#25976'|CutNum'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'okCutNum'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22577#24037#20992#25976'|okCutNum'
            Visible = False
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#32773'|USERID'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26085#26399'|USERDATE'
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'ScanUser'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22577#24037#20351#29992#32773'|ScanUser'
            Visible = False
            Width = 87
          end
          item
            DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22577#24037#26085#26399'|ScanDate'
            Visible = False
            Width = 107
          end>
      end
      object Panel4: TPanel
        Left = 1195
        Top = 0
        Width = 550
        Height = 406
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 1
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 548
          Height = 404
          Align = alClient
          TabOrder = 0
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 66
            Width = 545
            Height = 337
            Align = alClient
            DataSource = DCDDetailS
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -17
            FooterFont.Name = #24494#36575#27491#40657#39636
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -17
            TitleFont.Name = #24494#36575#27491#40657#39636
            TitleFont.Style = []
            UseMultiTitle = True
            OnEditButtonClick = DBGridEh3EditButtonClick
            OnGetCellParams = DBGridEh3GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #36852#36681#25976'|DDBH'
                Width = 151
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                ReadOnly = True
                Title.Caption = #25976#37327'|Qty'
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'RPlanDate'
                Footers = <>
                Title.Caption = #36650#36681#25490#31243'|RPlanDate'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'ROrder'
                Footers = <>
                Title.Caption = #36650#36681#38918#24207'|ROrder'
                Width = 75
              end>
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 545
            Height = 65
            Align = alTop
            TabOrder = 1
            object BD2: TBitBtn
              Left = 0
              Top = 0
              Width = 61
              Height = 61
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
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
              Left = 60
              Top = 0
              Width = 61
              Height = 61
              Hint = 'Delete one Record'
              Caption = 'Delete'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
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
              Left = 120
              Top = 0
              Width = 61
              Height = 61
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
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
              Left = 180
              Top = 0
              Width = 61
              Height = 61
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
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
              Left = 240
              Top = 0
              Width = 61
              Height = 61
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
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
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 1407
    Height = 82
    Align = alTop
    TabOrder = 1
    Visible = False
    object BC2: TBitBtn
      Left = 70
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 130
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 190
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 250
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 310
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
    object BC7: TBitBtn
      Left = 370
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BC7Click
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
    object BCT6: TBitBtn
      Left = 534
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BCT6Click
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
    object btnCutPrint: TBitBtn
      Left = 613
      Top = 10
      Width = 71
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Cut Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = btnCutPrintClick
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
    object pnCutPrint: TPanel
      Left = 725
      Top = 0
      Width = 309
      Height = 81
      TabOrder = 8
      Visible = False
      object Label6: TLabel
        Left = 19
        Top = 10
        Width = 154
        Height = 23
        Caption = 'Enter the quantity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
      end
      object btnOK: TButton
        Left = 111
        Top = 40
        Width = 72
        Height = 33
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnOKClick
      end
      object edtCutPrint: TEdit
        Left = 20
        Top = 40
        Width = 79
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -18
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '72'
      end
      object btnCancel: TButton
        Left = 194
        Top = 40
        Width = 74
        Height = 33
        Caption = 'Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1407
    Height = 81
    Align = alTop
    TabOrder = 2
    object BB2: TBitBtn
      Left = 70
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 130
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 190
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 250
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 310
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
    object BB7: TBitBtn
      Left = 370
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
    object BB1: TBitBtn
      Left = 10
      Top = 10
      Width = 61
      Height = 61
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object BB8: TBitBtn
      Left = 460
      Top = 10
      Width = 61
      Height = 61
      Caption = 'TUA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BB8Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000F7F7F7F7F7F7
        F7F7F7F6F6F6F7F7F7FFFFFFFFFFFFA1A1A25757592626281C1D1E1D1D1E2222
        233D3D3E7C7B7DE1E1E2FFFFFFFAFAFBF7F7F6F6F6F5F7F7F6F7F7F6F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F9F9F9FFFFFF84838B04040A06060C0D111811141C
        0F121A10111913121B13121B0D0C150000013E3E44E6E6EBFFFFFFF6F7F4F7F7
        F5F7F7F6F7F7F7F7F7F7F7F7F7F5F5F5FCFCFCFAFAF92C2C2D04050916171B0E
        0F130000040A0C1031323737383D1F20250000010B0C1016161A0F1115000000
        ADADADFFFFFFF5F5F5F6F6F6F7F7F7F7F7F7F7F7F7F8F8F8FCFCFC1616151111
        1214141B000005515158D7D5D8FFFFFFFFFFFFFFFFFFFFFFFFF7F9FA8E8F930F
        0F160A0A1116161D0000009D9C9EFFFFFFF6F6F7F7F7F7F7F7F7F7F7F7FFFFFF
        27272D1010161212170D0D0DD5D5D5FFFFFFFEFDFDF8F8F8F7F7F7F7F7F7F7F7
        F7F9FAFAFFFFFFFFFFFF5B5B5C040403161420000002C6C9C9FFFFFFF7F7F7F7
        F7F7FFFFFF898A8C05050A121217121317F5F5F5FFFFFEF4F4F4F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F8F8F8FFFFFF70707005050C1212171213
        17FFFFFFF8F8F8F7F7F7FFFFFF01010515161B000006D7D7DBFFFFFFF7F7F7F7
        F7F7F7F7F7F5F5F5FBFBFBFDFDFCF4F4F4F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF
        383A3B11121606050F8D8B8EFFFFFFF7F7F79F9FA008090E0C0E1367676BFFFF
        FFF7F7F7F7F7F7F7F7F7F5F6F5FFFFFF383739212325FFFFFFF7F7F7F7F7F7F7
        F7F7F5F5F5FCFCFCE2E3E200000212131B16161CFFFFFFF8F7F74B4C51101219
        000408E1E2E3FAFAFAF7F7F7F7F7F7F7F7F7FFFFFF93959702020701040A9396
        9AFFFFFFF6F6F6F7F7F7F7F7F7F7F7F7FFFFFF47494B0E1115000005D3D3D7FD
        FCFC2424281012191D2024FFFFFFF7F6F6F7F7F7F5F5F5FCFBFBE3E4E6000003
        14131C11121B010408E6E6E7FCFCFCF6F6F6F7F7F7F7F7F7FFFFFF959798060A
        0F06090F99999DFFFFFF11111512141A43474BFFFFFFF7F7F7F7F7F7F7F7F7FF
        FFFF2424280E0C151A18222A2C340C0F13151517FFFFFFFBFBFBF7F7F7F7F7F7
        FDFDFCC6C7C90105090A0C12737378FFFFFF1215190B101555585BFFFFFFF7F7
        F7F3F6F5FFFFFF6C6C7202020B08080FEDEFF0F8FAFB13131704030B201F27FF
        FFFFF8FBFAF4F7F4FCFDFCD6D8DA000409060B10666A6DFFFFFF1012170D1218
        45484CFFFFFFF6F6F5FDFFFFC4C6C900000009090FE6E6EAFCFEFFF8FAF9FFFF
        FF313135000004212226F9FAFCFBFEFCFDFDFDC8C9CA01040A090D126F7175FF
        FFFF1E22260E1218202427FFFFFFF8F8F8F3F6F502030708080FE7E8EAFBFDFD
        F5F7F5F4F7F4F7FAF7FFFFFF696A6F0000000B0C11DFE0E2FFFFFF9192940308
        0D03080E929599FFFFFF4A4A4D121219010208E5E5E8FAFCFCECEDED2D2D2EE2
        E2E3FFFFFFF5F6F6F6F7F6F6F7F5F6F7F6F6F7F7FFFFFFC1C1C3070709000000
        AFAFB1BFC1C2000002000000D3D3D4FDFDFD9A999A09080F0C0B126F6F73FFFF
        FFF6F6F6FFFFFFF9F9F9F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6FF
        FFFFFDFDFD5C5C5B000000555659F6F7F94B4C4CFFFFFFF8F8F8FBFAFB000004
        15151C020307DFE0E2FEFEFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F9F9F8FFFFFFD6D7D9222325000000BDBEBFFFFFFFFA
        FAFAFFFFFF7C7B8106060C11121718191CFDFEFEFEFEFFF6F6F6F7F7F7FFFFFF
        F6F6F6F6F6F6F7F7F7F7F7F7F5F6F6F8F8F8FFFFFF7B7B7D141619D4D6D7B0B1
        B2030404202020DEDEDEF7F7F7FFFFFF1E20220F0F17111119151618DEDEE1FF
        FFFFF6F7F7A2A2A2FFFFFFF6F6F6F7F7F7F9F9F9FFFFFFFFFFFF66666B020109
        0E1319000000C7C7C8FFFFFFBABABA404040F6F6F6F9FAF9F4F5F50F10131010
        1615161B00000566666CE6E8EB000000B2B5B7FFFFFFF8F8F8FEFEFEA0A0A019
        1A1D0A0A1018171F0000008B8D90FFFFFFF7F7F7FDFDFDFFFFFFF7F7F7F4F6F4
        F8FCF9F0F1F21E1F2305050D16151D0E0E1600040911151A000000B7B9BBFFFF
        FF101010060606151719101016000004969BA0FFFFFFF8F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F6F7F6F7F7F7FAFAFAFFFFFF73737900000608070E0F131A151820
        0E121A000000FFFFFFC7C6C80000010000012A2C2EDDDEE1FFFFFFF6F6F6F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F7F7F7FFFFFFF3F4F68B
        8C8E36383D0D0F1403050BE6E5E9B6B4B7060507636365C8C9CAFFFFFFF6F9F9
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F4F7F7F8FAFAFFFFFFFFFFFF0B0A0DE2E1E3FFFFFFF1F0F2FFFFFFFFFFFFFC
        FEFDF5F7F6F5F7F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7}
      Layout = blGlyphTop
    end
    object BB10: TBitBtn
      Left = 610
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BB10Click
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
    object BB9: TBitBtn
      Left = 534
      Top = 10
      Width = 61
      Height = 61
      Caption = 'Merge'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 9
      OnClick = BB9Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F5F5F5F5F5F5F7F7F7FBFBFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECD6D6D6C9C9C9BDBDBDB3
        B3B3B3B3B3BDBDBDC9C9C9D5D6D6ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA9A9A9D1D1D1D5D5D5D7D7D7DADADADCDCDCDADADADADBDCDCE0E0AAAA
        AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1F1F1F1D1D1D1D6D6D6D8
        D8D8D9D9D9F4F7F7FCFFFF984F3CBDC8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC2C2C2EEEEEED1D1D1D6D6D6D9D9D9DEE0E0D4D6D39A372AB53529A84D
        3DAE5040A64435A36153FFFFFFFFFFFFFFFFFFC5C5C5EDEDEDD1D1D1D5D5D5D9
        D9D9DCE1E0821B0E8F0200A0221BAF3129B1352EA8251FA45148FFFFFFFFFFFF
        FFFFFFC8C8C8EEEEEDD0D0D0D5D5D5D7D7D7DCDEDECACCC89B4840A541419848
        3F9641388E3129975448FFFFFFFFFFFFFFFFFFCDCDCBE0E0E4D8D8D3D3D3D3D5
        D5D5D7D7D7DBDDDECFD5D4975849BAC1C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6F6D33131B8B0B0BDE1E1D7D4D4D4D4D4D4E2E2E2F9FAFAF5F8F8BFBF
        BFFFFFFFFFFFFFFFFFFF6D6DC00000A10505B60C0CC70E0ED70202C19090B3DF
        DFD6D3D3D3D3D3D3CFCFCFE9E9E9C2C2C2FFFFFFFFFFFFFFFFFF7A7ACA0000AB
        1313BE1212CB0C0CC50000B30E0EADB7B7C5D4D4D2D1D1D1CFCFCFE6E6E6C2C2
        C2FFFFFFFFFFFFFFFFFF8C8CCD4545B75555BB5858B94A4AC04040B6BDBDC5CD
        CDC7C7C7C7C7C7C7C4C4C4E1E1E1C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4F4DE4E4EAFD3D3D3DADAD5D6D6D6D7D7D7D8D8D8D7D7D7E6E6E6C4C4
        C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDE0E0D9D9D9D7D3D3D3D0
        D0D0CECECECACACAC7C7C7C4C4C4B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
    end
    object BB11: TBitBtn
      Left = 670
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'PrintH'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnClick = BB11Click
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
    object BB12: TBitBtn
      Left = 814
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BB12Click
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
    object BT13: TBitBtn
      Left = 894
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Scan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BT13Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFF52494952FF5208F75208A4FFFFFFFF9B49525249A40008A400089B
        FFFFFFFF5B49525252524908F700089BFFFFFFFFFF00525252520008A400089B
        FFFFFFFFFFF75252499BA4F607A4F607FFFFFFF65249084949F7FFFFFFFFFFFF
        FFFFFFFF0049F74900FFFFFFFFFFFFFFFFFFFFFF9B49524949FFFFFFFFFFFFFF
        F79B490049525249A4FFFFFFFFA4000049A4074952525249A4FFFFFF9B49F7FF
        FFFFFF0052525249A4FFFFFF52F7FFFFFFFF0749525252499BFFFFFF0007F79B
        52004952525252520008FFFF0000494952525252525252524907FFFFF6F75B00
        004949525249494900F7FFFFFFFFFFFFF6F7A452525BA4A4F7FF}
      Layout = blGlyphTop
    end
    object BB14: TBitBtn
      Left = 970
      Top = 10
      Width = 61
      Height = 61
      Caption = 'TUA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BB14Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000000000000000000000000000000000001E67DA0071EE
        0062D00061D20061D20061D30061D30060D2005FD20060D3005FD20060D20064
        D70068DB0068DB0069DD006ADE0068DB046ADC0B6BDB0C6CDA0C6DD90E5CDCD0
        D6E8009DFF7DB7BDB2A275ABA178AAA078AAA176AA9E73A99F72A99E70AA9D72
        A19870918B6E68562C402C01493507634C0F755B127D6511876E108F77139983
        1D8C7B29178BDB77A0F0009BFFEEE0AFF2C955EEC759EEC751EAC243E7BB34E5
        B727E3B525E1B220E1AF19DCAF1AE8C350EDD89CBA9F656C4A0C684100996A05
        B68206C69104D7A305D6A1070073DC7DA9EF009DFFE8DFB7EAC968E7C968E7C7
        68E7C763E3C254E2BD49E2BC43DFB63BDBB32FDAB12BD5A91AD4A30DDABD5BF8
        ECB9C8AC69624710623E00996D07B98709BF8B000071D976A3EF009EFFE5DFBB
        EBCE71E9C96CE6C967E6C763E3C259E5C051E4C259E2BE4BE2B940DFB638DCB1
        29DAAF26D5A816D0A71DE4D092FEE79DC5A8566047126A46009F6B000075DB77
        A3F0009FFFE5E0BAEECD74F1E3B2EDD99CF0D999EDD895F2E3B1E6C35AE7C45F
        E2C257E1BD4DDEB73CDDB638DCB12BDCAF28D5A613D6BD64F0DCA3FBDD7CBDA3
        5B7D55060071D577A4F000A0FFE7E0C0EFD07CEFE0ABF2E1AEFCFFFFE9CA6CEE
        DC9EE7C664EBD58AF0DFA6F2DEA3EFD999EFDA96E9CF78DEB432DCB230D8A818
        D8B64BDEC783CAA332DCC38A0067CA77A5F000A1FFE7E2C0F0D588F7F0D6F3E3
        B6F4E1B0FCFFFFF4E8C1E8C967EDD48BEFDDA0F0DA9CEBD994EDD893ECD58CED
        D890EAD48AE8D182E9CD79D6A715D9A90EDAC2830066CB77A5F100A1FFE8E3C3
        F0D68EF3E7BFF1E1B0F0E0ADF1E1B2FCF9F1F2E7BAEEDB9DF3E1AEF1E0AAF0DE
        A4EFDEA2EFDB9CEEDC9FEFDA99EBD68FEED68FDCB431DEB120DAC1850067CC77
        A5F100A3FFE8E3C2F2D892EBD58BEDD48EECD38AEBCE7EE8CC74ECD184EBD691
        E9CB75E9CC74E7C86AE7C967E6C55DE7C561E6C35CE2BF4CE1BB44DFB93DE2B8
        2FDBC4860066CB77A5F100A4FFE6E2C2F1D58CF3E6BEF4E5BAF2E3B5F3E5B9F4
        E9C7EAD386ECD58BEED48EECD287EBD07FEACF7CE8CD73E6CA6EE9C86BE4C55F
        E5C35BE4BF51E2BC40DDC68D0067C878A5F100A6FFE7E2C3F1D68BF3E4BBF1DF
        A9FDFCF8EBD187F5E4BBEBD68DEFDEABF3E7BEF3E7BCF2E3B6F3E5B9F0DEA5EB
        D07CEBCF7BE9CC70E8CA6DE7C560EAC555DFC9920066C878A6F000ABFFE6E2C1
        F0D68FF8F3E2F5EBCCF5EBCBFDFDFDF3E7BFEDD48CF1DFAAF2E5B9F4E3B8F0E1
        B2F2E2B1F1E1AEF4E3B1F0E2ADF1E0ABF0DFA8E7C969EAC961DFC8950067C678
        A5F100AFFFE8E3C2F0D58DF5EAC2F4E4B6F4E4B5F5ECC8FDFDFEF4E7C0EFDEA8
        F6E7BDF4E7BBF3E5BAF3E4B8F3E3B4F4E3B5F1E3B3F1E0AEF2E2ACE7CB72EACE
        6CDEC9960067C778A5F106B4FFEBE4C5F0D690EDD48FEDD794EED894ECD38EEB
        D285F0DA9DF0DFA9ECD48CEDD693ECD48CEED68FEBD389EED48FE9D388EAD081
        EAD07DE8CE7AECCF76DFCB990068C878A5F20DB7FFEEE8CAF1D68CF3E4B8F3E3
        B1F2E0AEF4E1B2F4E9C4EED690F0DA99F2DCA2F0DCA0EEDB9DF1DCA0F2DA9CEC
        D695F0D792EAD48CECD389ECD183EED27FE0CA9E0068C578A5F215BAFFEEE9CF
        F1DA9AF2E4B9EFDBA1FAF8EDE9D184F3E5BAEBD692F2E2AFF5E8C1F5E9C2F3E6
        C1F5E9C3F3E5B6F1DB9EF0DDA2EFDBA0F0DA9CEDD48EEFD589E0CC9F0069C578
        A6F21CBCFFECE9CDF2DFA6FBF5E5F8EFD7F8F0D7FCFCF5F4E5BAEDD58EF1DCA9
        F3E5BBF4E5B9F3E3B6F4E4B9F3E2B7F6E7BEF4E5BDF4E5BCF4E6BEECD790F1D8
        90E0CCA00069C579A6F421BFFFECEBD1F6DEA5F6EED3F4E4B6F1DFAAF5EBC9FF
        FFFFF0E2B1F2DDA5F5E5B9F4E5B7F2E4B6F3E5B8F4E5B6F3E5B8F4E6B8F2E3B7
        F5E5B9EED691F1DA93DECDA3006CC57CAAF327C2FFEEEAD1F4DFADF2E0ADF0E0
        B0F2E3B1F9E4A6F6E097FDE9B1FDE9B3FAE096F7E09BF7E096F9E296F7E096F8
        E29FF9E29DEDD994EED996EEDA9AF2DD9DE4D1AC007AC97EABF215AFFFF0EED0
        F4E0A9F3E0ADF5E2AFE8D6A648463D5151465351455250455150465350495351
        48525047525047524F47494741E8D89FF3DDA3EFDB9CF4DC9EE3D7AE007DDCA5
        C2F6BBDDFDD7E7EDFCF8EBFAF7EAFBF7ECF9F6E9A6A89EADAEA2ADAFA2B0B0A5
        B8B9ADADADA3B8B7AEB1B1A6ADADA3ADADA3ADADA3FBF7EAF9F6E7F8F5E6FEF7
        E7CEE1EFACD2FFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEBEBEB979B90FFFFFF999D91EEEFEDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A8A09FA298A8ACA2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
    end
    object BB15: TBitBtn
      Left = 730
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'PrintH2'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = BB15Click
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
    object Edit1: TEdit
      Left = 1040
      Top = 10
      Width = 151
      Height = 28
      TabOrder = 15
      Text = 'DataCenter'
      Visible = False
    end
    object Edit2: TEdit
      Left = 1040
      Top = 40
      Width = 185
      Height = 33
      TabOrder = 16
      Text = 'DLNO'
      OnClick = Edit2Click
    end
    object Button2: TButton
      Left = 1232
      Top = 40
      Width = 105
      Height = 33
      Caption = 'CONFIRM'
      TabOrder = 17
      OnClick = Button2Click
    end
  end
  object QCDMaster: TQuery
    AfterOpen = QCDMasterAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CutDispatch.*, BDepartment.DepName,CutDispatchS.CutNum,Is' +
        'Null(CutDispatchS.okCutNum,0) as okCutNum,CutDispatchS.ScanDate ' +
        ' '
      
        ',Convert(varchar(100),(select Min(CutDispatchSS.DDBH)+'#39'...'#39'+MAX(' +
        'CutDispatchSS.DDBH)  from CutDispatchSS where CutDispatchSS.DLNO' +
        '=CutDispatch.DLNO),100) as ZLBHList '
      
        ',Convert(varchar(100),(select CutDispatchS.SIZE+'#39','#39' from CutDisp' +
        'atchS where CutDispatchS.DLNO=CutDispatch.DLNO Group by CutDispa' +
        'tchS.SIZE for XML Path ('#39#39')),100) as SIZEList '
      
        ',Convert(varchar(100),(select BWZL.YWSM+'#39','#39' from CutDispatchS,BW' +
        'ZL where BWZL.bwdh=CutDispatchS.BWBH and CutDispatchS.DLNO=CutDi' +
        'spatch.DLNO Group by BWZL.YWSM for XML Path ('#39#39')),100) as BWBHLi' +
        'st '
      'FROM CutDispatch '
      'Left join  ( '
      
        '  select CutDispatchS.DLNO,Sum(CutNum) as CutNum,SUM(okCutNum) a' +
        's okCutNum,Max(ScanDate) as ScanDate from CutDispatchS  '
      '  INNER JOIN CutDispatch on CutDispatchS.DLNO=CutDispatch.DLNO  '
      '  LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID  '
      
        '  where  convert(smalldatetime,convert(varchar,CutDispatch.USERD' +
        'ATE,111)) between '
      '     '#39'2019/05/11'#39' and '#39'2019/05/28'#39' '
      '     and CutDispatch.GSBH='#39'VA12'#39' '
      
        'Group by CutDispatchS.DLNO ) CutDispatchS on CutDispatchS.DLNO=C' +
        'utDispatch.DLNO '
      'LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID  '
      'WHERE 1=1 '
      
        'and convert(smalldatetime,convert(varchar,CutDispatch.USERDATE,1' +
        '11)) between '
      #39'2019/05/11'#39' and '#39'2019/05/28'#39' '
      'and CutDispatch.GSBH='#39'VA12'#39)
    UpdateObject = UCDMaster
    Left = 56
    Top = 312
    object QCDMasterDLNO: TStringField
      FieldName = 'DLNO'
    end
    object QCDMasterDLLB: TStringField
      FieldName = 'DLLB'
      Size = 6
    end
    object QCDMasterGSBH: TStringField
      FieldName = 'GSBH'
    end
    object QCDMasterDepID: TStringField
      FieldName = 'DepID'
    end
    object QCDMasterDepName: TStringField
      FieldName = 'DepName'
    end
    object QCDMasterPlanDate: TDateTimeField
      FieldName = 'PlanDate'
      Origin = 'DB.CutDispatch.PlanDate'
    end
    object QCDMasterMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CutDispatch.Memo'
      FixedChar = True
      Size = 40
    end
    object QCDMasterCutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object QCDMasterokCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
    object QCDMasterScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object QCDMasterUSERID: TStringField
      FieldName = 'USERID'
    end
    object QCDMasterUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QCDMasterYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 1
    end
    object QCDMasterZLBHList: TStringField
      FieldName = 'ZLBHList'
      FixedChar = True
      Size = 30
    end
    object QCDMasterSIZEList: TStringField
      FieldName = 'SIZEList'
      FixedChar = True
      Size = 30
    end
    object QCDMasterBWBHList: TStringField
      FieldName = 'BWBHList'
      FixedChar = True
      Size = 30
    end
    object QCDMasterMachine: TStringField
      FieldName = 'Machine'
      Size = 10
    end
    object QCDMasterMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
  end
  object DCDMaster: TDataSource
    DataSet = QCDMaster
    Left = 56
    Top = 280
  end
  object UCDMaster: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CutDispatch'
      'SET'
      '  DLNO = :DLNO,'
      '  DLLB = :DLLB,'
      '  GSBH = :GSBH,'
      '  DepID = :DepID,'
      '  PlanDate =:PlanDate,'
      '  Memo =:Memo,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'WHERE'
      '  DLNO = :OLD_DLNO')
    InsertSQL.Strings = (
      'INSERT INTO CutDispatch'
      '(DLNO, DLLB, GSBH, DepID, PlanDate, Memo, USERID, USERDATE, YN)'
      'VALUES'
      
        '(:DLNO, :DLLB, :GSBH, :DepID, :PlanDate, :Memo, :USERID, :USERDA' +
        'TE, :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM CutDispatch'
      'WHERE'
      'DLNO = :OLD_DLNO')
    Left = 56
    Top = 344
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 23
    Top = 312
  end
  object QCDDetail: TQuery
    AfterOpen = QCDDetailAfterOpen
    DatabaseName = 'DB'
    DataSource = DCDMaster
    SQL.Strings = (
      
        'SELECT CutDispatchS.*, BWZL.ZWSM, BWZL.YWSM, CLZL.ZWPM, CLZL.YWP' +
        'M, 1 AS Flag FROM CutDispatchS'
      'LEFT JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH'
      'WHERE '
      'CutDispatchS.DLNO = :DLNO'
      'ORDER BY CutDispatchS.BWBH')
    UpdateObject = UCDDetail
    Left = 92
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 21
      end>
    object QCDDetailDLNO: TStringField
      FieldName = 'DLNO'
    end
    object QCDDetailZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object QCDDetailBWBH: TStringField
      FieldName = 'BWBH'
    end
    object QCDDetailZWSM: TStringField
      FieldName = 'ZWSM'
    end
    object QCDDetailYWSM: TStringField
      FieldName = 'YWSM'
    end
    object QCDDetailSIZE: TStringField
      FieldName = 'SIZE'
    end
    object QCDDetailQty: TIntegerField
      FieldName = 'Qty'
    end
    object QCDDetailXXCC: TStringField
      FieldName = 'XXCC'
    end
    object QCDDetailCLBH: TStringField
      FieldName = 'CLBH'
    end
    object QCDDetailZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object QCDDetailYWPM: TStringField
      FieldName = 'YWPM'
    end
    object QCDDetailCutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object QCDDetailokCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
    object QCDDetailUSERID: TStringField
      FieldName = 'USERID'
    end
    object QCDDetailUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QCDDetailScanUser: TStringField
      FieldName = 'ScanUser'
      Size = 0
    end
    object QCDDetailScanDate: TDateTimeField
      FieldName = 'ScanDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QCDDetailYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DCDDetail: TDataSource
    DataSet = QCDDetail
    Left = 91
    Top = 281
  end
  object UCDDetail: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CutDispatchS'
      'SET'
      'DLNO = :DLNO,'
      'ZLBH = :ZLBH,'
      'BWBH = :BWBH,'
      'SIZE = :SIZE,'
      'CLBH = :CLBH,'
      'Qty = :Qty,'
      'XXCC = :XXCC,'
      'CutNum = :CutNum,'
      'okCutNum = :okCutNum,'
      'USERID = :USERID,'
      'USERDATE = :USERDATE,'
      'ScanUser = :ScanUser,'
      'ScanDate = :ScanDate'
      'WHERE'
      'DLNO = :OLD_DLNO AND'
      'ZLBH = :OLD_ZLBH AND'
      'BWBH = :OLD_BWBH AND'
      'CLBH = :OLD_CLBH AND'
      'SIZE = :OLD_SIZE')
    InsertSQL.Strings = (
      'INSERT INTO CutDispatchS'
      
        '(DLNO, ZLBH, BWBH, SIZE, CLBH, Qty, XXCC, CutNum, okCutNum, USER' +
        'ID, USERDATE, ScanUser, ScanDate, YN)'
      'VALUES'
      
        '(:DLNO, :ZLBH, :BWBH, :SIZE, :CLBH, :Qty, :XXCC, :CutNum, :okCut' +
        'Num, :USERID, :USERDATE, :ScanUser, :ScanDate, :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM CutDispatchS'
      'WHERE'
      'DLNO = :OLD_DLNO AND'
      'ZLBH = :OLD_ZLBH AND'
      'BWBH = :OLD_BWBH AND'
      'CLBH = :OLD_CLBH AND'
      'SIZE = :OLD_SIZE')
    Left = 92
    Top = 344
  end
  object QExcel: TQuery
    DatabaseName = 'DB'
    Left = 388
    Top = 89
  end
  object QXXCC: TQuery
    DatabaseName = 'DB'
    Left = 356
    Top = 89
  end
  object QCDDetailS: TQuery
    DatabaseName = 'DB'
    DataSource = DCDDetail
    SQL.Strings = (
      
        'SELECT CutDispatchSS.*, SMDD.RPlanDate, SMDD.ROrder FROM CutDisp' +
        'atchSS'
      
        'LEFT JOIN SMDD ON SMDD.DDBH = CutDispatchSS.DDBH AND SMDD.GXLB =' +
        ' '#39'C'#39'WHERE '
      '  DLNO = :DLNO AND'
      '  ZLBH = :ZLBH AND'
      '  BWBH = :BWBH AND'
      '  SIZE = :SIZE AND'
      '  CLBH = :CLBH'
      'ORDER BY CutDispatchSS.DDBH'
      '')
    UpdateObject = UCDDetailS
    Left = 129
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftString
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftString
        Name = 'BWBH'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftString
        Name = 'SIZE'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftString
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object QCDDetailSDLNO: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object QCDDetailSZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object QCDDetailSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QCDDetailSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object QCDDetailSSIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object QCDDetailSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object QCDDetailSQty: TIntegerField
      FieldName = 'Qty'
    end
    object QCDDetailSScanQty: TIntegerField
      FieldName = 'ScanQty'
    end
    object QCDDetailSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object QCDDetailSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object QCDDetailSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QCDDetailSMachine: TStringField
      FieldName = 'Machine'
      Size = 10
    end
    object QCDDetailSMachineDate: TDateTimeField
      FieldName = 'MachineDate'
    end
    object QCDDetailSRPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
    end
    object QCDDetailSROrder: TIntegerField
      FieldName = 'ROrder'
    end
  end
  object DCDDetailS: TDataSource
    DataSet = QCDDetailS
    Left = 129
    Top = 281
  end
  object UCDDetailS: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CutDispatchSS'
      'SET'
      '  Qty=:Qty,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'WHERE'
      '  DLNO = :OLD_DLNO AND'
      '  ZLBH = :OLD_ZLBH AND'
      '  DDBH = :OLD_DDBH AND'
      '  BWBH = :OLD_BWBH AND'
      '  SIZE = :OLD_SIZE AND'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'INSERT INTO CutDispatchSS'
      
        '  (DLNO, ZLBH,  DDBH, BWBH, SIZE , CLBH,  Qty, ScanQty,  USERID,' +
        ' USERDATE, YN)'
      'VALUES'
      
        '  (:DLNO, :ZLBH,  :DDBH, :BWBH, :SIZE, :CLBH, :Qty, :ScanQty,   ' +
        ':USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM CutDispatchSS'
      'WHERE'
      '  DLNO = :OLD_DLNO AND'
      '  ZLBH = :OLD_ZLBH AND'
      '  DDBH = :OLD_DDBH AND'
      '  BWBH = :OLD_BWBH AND'
      '  SIZE = :OLD_SIZE AND'
      '  CLBH = :OLD_CLBH')
    Left = 129
    Top = 344
  end
  object CutPrint: TQuery
    DatabaseName = 'DB'
    DataSource = DCDDetail
    SQL.Strings = (
      
        'SELECT CutDispatchS.ZLBH,BWZL.YWSM,CutDispatchS.SIZE,Qty, XXZL.D' +
        'aoMH,CutDispatchS.BWBH,CutDispatchS.DLNO,CutDispatchSS.SDDBH,Cut' +
        'DispatchSS.EDDBH from CutDispatchS'
      'left JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH'
      'left join ddzl on ddzl.ddbh = CutDispatchS.ZLBH'
      
        'left join xxzl on xxzl.xiexing = ddzl.xiexing and xxzl.shehao = ' +
        'ddzl.shehao'
      
        'left join (Select ZLBH,CLBH,BWBH,SIZE,Min(DDBH) as SDDBH,MAX(DDB' +
        'H) as EDDBH from CutDispatchSS where DLNO=:DLNO Group by ZLBH,CL' +
        'BH,BWBH,SIZE ) CutDispatchSS'
      
        '          on CutDispatchSS.ZLBH=CutDispatchS.ZLBH and CutDispatc' +
        'hSS.CLBH=CutDispatchS.CLBH and CutDispatchSS.BWBH=CutDispatchS.B' +
        'WBH and CutDispatchSS.SIZE=CutDispatchS.SIZE'
      'WHERE CutDispatchS.DLNO=:DLNO'
      'ORDER BY CutDispatchS.CLBH'
      '')
    Left = 556
    Top = 94
    ParamData = <
      item
        DataType = ftString
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftString
        Name = 'DLNO'
        ParamType = ptUnknown
      end>
    object CutPrintZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutPrintYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object CutPrintSIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CutPrintQty: TIntegerField
      FieldName = 'Qty'
    end
    object CutPrintDaoMH: TStringField
      FieldName = 'DaoMH'
      FixedChar = True
      Size = 30
    end
    object CutPrintBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object CutPrintDLNO: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object CutPrintSDDBH: TStringField
      FieldName = 'SDDBH'
      FixedChar = True
      Size = 15
    end
    object CutPrintEDDBH: TStringField
      FieldName = 'EDDBH'
      FixedChar = True
      Size = 15
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 23
    Top = 344
    object CLSl1: TMenuItem
      Caption = 'Mat CLSL=>Excel '
      OnClick = CLSl1Click
    end
    object PDFMatCLSL1: TMenuItem
      Caption = 'Mat CLSL=>PDF '
      OnClick = PDFMatCLSL1Click
    end
  end
end
