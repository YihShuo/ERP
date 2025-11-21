object BOMReceive: TBOMReceive
  Left = 466
  Top = 127
  Width = 1300
  Height = 699
  Caption = 'BOMReceive'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 1284
    Height = 610
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 349
      Width = 1282
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 352
      Width = 1282
      Height = 257
      Align = alClient
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 1280
        Height = 47
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BD2: TBitBtn
          Left = 2
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
          Left = 50
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
          Left = 98
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
          Left = 146
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
          Left = 194
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
        object Button2: TButton
          Left = 245
          Top = 3
          Width = 49
          Height = 43
          Caption = 'Check'
          TabOrder = 5
          OnClick = Button2Click
        end
        object DBEdit1: TDBEdit
          Left = 388
          Top = 13
          Width = 73
          Height = 24
          Color = clMoneyGreen
          DataField = 'ReceiveDate'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit2: TDBEdit
          Left = 462
          Top = 13
          Width = 61
          Height = 24
          Color = clMoneyGreen
          DataField = 'FD'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit3: TDBEdit
          Left = 705
          Top = 13
          Width = 97
          Height = 24
          Color = clMoneyGreen
          DataField = 'MergeNO'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit4: TDBEdit
          Left = 528
          Top = 13
          Width = 81
          Height = 24
          Color = clMoneyGreen
          DataField = 'team'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit5: TDBEdit
          Left = 296
          Top = 13
          Width = 91
          Height = 24
          Color = clMoneyGreen
          DataField = 'ReceiveNO'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit6: TDBEdit
          Left = 612
          Top = 13
          Width = 45
          Height = 24
          Color = clMoneyGreen
          DataField = 'Season'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit7: TDBEdit
          Left = 658
          Top = 13
          Width = 45
          Height = 24
          Color = clMoneyGreen
          DataField = 'Stage'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit8: TDBEdit
          Left = 805
          Top = 13
          Width = 181
          Height = 24
          Color = clMoneyGreen
          DataField = 'Remark'
          DataSource = DS_BOMReceive
          ReadOnly = True
          TabOrder = 13
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 48
        Width = 1280
        Height = 208
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 880
          Top = 1
          Height = 206
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGrid4: TDBGridEh
          Left = 1
          Top = 1
          Width = 879
          Height = 206
          Align = alClient
          DataSource = DS_BOMReceiveS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          OnDrawColumnCell = DBGrid4DrawColumnCell
          OnEditButtonClick = DBGrid4EditButtonClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Width = 121
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
              Width = 186
            end
            item
              EditButtons = <>
              FieldName = 'YSSM'
              Footers = <>
              Title.Caption = 'Color Way'
              Width = 187
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SKU'
              Width = 145
            end
            item
              EditButtons = <>
              FieldName = 'RevArticle'
              Footers = <>
              Title.Caption = 'Revise Article'
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footers = <>
              Width = 48
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Size'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'Remark1'
              Footers = <>
              Width = 256
            end
            item
              EditButtons = <>
              FieldName = 'Remark2'
              Footers = <>
              Width = 119
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'FD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Dev|FD'
              Width = 55
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'JIJIE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Dev|Season'
              Width = 50
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Dev|Sample Order'
              Width = 98
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              ReadOnly = True
              Width = 51
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'USERDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'UserDate'
              Width = 69
            end
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'UserID'
              Width = 45
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 883
          Top = 1
          Width = 396
          Height = 206
          Align = alRight
          DataSource = DS_BOMReceiveSS
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ProductionLocation'
              Footers = <>
              Width = 121
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              Title.Caption = 'SKU'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'ypdh'
              Footers = <>
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1282
      Height = 348
      Align = alTop
      TabOrder = 1
      object DBGrid3: TDBGridEh
        Left = 1
        Top = 1
        Width = 883
        Height = 346
        Align = alClient
        DataSource = DS_BOMReceive
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Master
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        OnGetCellParams = DBGrid3GetCellParams
        Columns = <
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ReceiveNO'
            Footers = <
              item
                FieldName = 'ReceiveNO'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.TitleButton = True
          end
          item
            ButtonStyle = cbsNone
            Color = 8454143
            EditButtons = <>
            FieldName = 'ReceiveDate'
            Footers = <>
            Title.Caption = 'Receive Date'
            Title.TitleButton = True
            Width = 72
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'FileNO'
            Footers = <>
            Title.Caption = 'File NO'
            Title.TitleButton = True
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'team'
            Footers = <>
            PickList.Strings = (
              ''
              'Inline'
              'Great@Good'
              'QuickResponse'
              'Incubate'
              'SMU')
            Title.Caption = 'Team'
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.TitleButton = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'MergeNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 97
            OnEditButtonClick = DBGrid3Columns7EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Art_Cnt'
            Footers = <
              item
                FieldName = 'Art_Cnt'
                ValueType = fvtSum
              end>
            Title.Caption = 'Total Art '
            Title.TitleButton = True
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.TitleButton = True
            Width = 156
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'All_Article'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 234
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/mm/DD hh:mm:ss'
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User Date'
            Title.TitleButton = True
            Width = 127
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User'
            Title.TitleButton = True
            Width = 47
          end>
      end
      object Memo1: TMemo
        Left = 884
        Top = 1
        Width = 397
        Height = 346
        Align = alRight
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = 14822282
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Lines.Strings = (
          '---------------------------------------------------'
          #31243#24335#20027#35201#21151#33021#35498#26126
          ''
          #25505#36092#27171#21697#25509#25910#21934
          #36039#26009#20358#28304#30001'Develop N74 '#38283#30332#21729#30906#35469
          ''
          '---------------------------------------------------'
          #36039#26009#31721#36984#25805#20316#35498#26126
          ''
          'Season:'#23395#21029
          'Stage:'#38542#27573
          'FD:'#38283#30332#21729
          'Merge:'#21512#20341#21934#34399
          'Team:'#32068#21029
          'Rec Date:'#25509#25910#26178#38291
          ''
          '---------------------------------------------------'
          #37325#40670#27396#20301#35498#26126
          ''
          'ReceiveNO:'#25509#25910#21934#34399
          'ReceiveDate:'#25509#25910#26085#26399
          'FileNo:'#27969#27700#32232#34399
          'MergeNo:'#21512#20341#21934#34399
          'TotalArt:'#32317#22871#25976
          'Remark:'#20633#35387
          'SR#:'#26283#26178#38795#39636#21517#31281
          'SKU:'#27491#24335#22411#39636#21517#31281
          ''
          '---------------------------------------------------')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 50
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 359
      Top = 3
      Width = 47
      Height = 16
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 368
      Top = 28
      Width = 36
      Height = 16
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 929
      Top = 6
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 489
      Top = 3
      Width = 18
      Height = 16
      Caption = 'FD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 472
      Top = 28
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 593
      Top = 6
      Width = 39
      Height = 16
      Caption = 'Merge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 594
      Top = 29
      Width = 36
      Height = 16
      Caption = 'Team'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 891
      Top = 30
      Width = 129
      Height = 13
      Caption = 'CR1/CR2/SMS/PDT/CFM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 750
      Top = 28
      Width = 36
      Height = 16
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BB2: TBitBtn
      Left = 2
      Top = 1
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 50
      Top = 1
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 98
      Top = 1
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 146
      Top = 1
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 194
      Top = 1
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 242
      Top = 1
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
    object Edit_Season: TEdit
      Left = 407
      Top = 1
      Width = 55
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit_Stage: TEdit
      Left = 407
      Top = 25
      Width = 56
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 834
      Top = 2
      Width = 91
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 942
      Top = 2
      Width = 92
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object Button1: TButton
      Left = 1040
      Top = 14
      Width = 72
      Height = 32
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 749
      Top = 6
      Width = 81
      Height = 17
      Caption = 'Rec Date'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 11
    end
    object Edit_FD: TEdit
      Left = 511
      Top = 1
      Width = 82
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Edit_Article: TEdit
      Left = 511
      Top = 25
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object Edit_Merge: TEdit
      Left = 634
      Top = 2
      Width = 107
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object Edit_Team: TEdit
      Left = 635
      Top = 25
      Width = 107
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object Button3: TButton
      Left = 290
      Top = 1
      Width = 55
      Height = 49
      Caption = 'Check'
      TabOrder = 16
      OnClick = Button3Click
    end
    object ComboBox14: TComboBox
      Left = 791
      Top = 26
      Width = 73
      Height = 21
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 17
      Visible = False
      Items.Strings = (
        ''
        'SKX'
        'SRL')
    end
    object CheckBox2: TCheckBox
      Left = 1120
      Top = 24
      Width = 129
      Height = 17
      Caption = 'Show the instruction'
      TabOrder = 18
      OnClick = CheckBox2Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 792
    Top = 480
  end
  object Qry_BOMReceive: TQuery
    AfterOpen = Qry_BOMReceiveAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BOMReceive.*'
      'from BOMReceive'
      'where 1=2'
      '')
    UpdateObject = UpMas
    Left = 76
    Top = 156
    object Qry_BOMReceiveReceiveNO: TStringField
      FieldName = 'ReceiveNO'
      Origin = 'DB.BOMReceive.ReceiveNO'
      FixedChar = True
      Size = 11
    end
    object Qry_BOMReceiveGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BOMReceive.GSBH'
      FixedChar = True
      Size = 4
    end
    object Qry_BOMReceiveFileNO: TStringField
      FieldName = 'FileNO'
      Origin = 'DB.BOMReceive.FileNO'
      FixedChar = True
      Size = 10
    end
    object Qry_BOMReceiveFD: TStringField
      FieldName = 'FD'
      Origin = 'DB.BOMReceive.FD'
      FixedChar = True
      Size = 10
    end
    object Qry_BOMReceiveSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.BOMReceive.Season'
      FixedChar = True
      Size = 10
    end
    object Qry_BOMReceiveStage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.BOMReceive.Stage'
      FixedChar = True
      Size = 10
    end
    object Qry_BOMReceiveMergeNO: TStringField
      FieldName = 'MergeNO'
      Origin = 'DB.BOMReceive.MergeNO'
      FixedChar = True
    end
    object Qry_BOMReceiveReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
      Origin = 'DB.BOMReceive.ReceiveDate'
    end
    object Qry_BOMReceiveUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.BOMReceive.USERDate'
    end
    object Qry_BOMReceiveUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.BOMReceive.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_BOMReceiveYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BOMReceive.YN'
      FixedChar = True
      Size = 1
    end
    object Qry_BOMReceiveAll_Article: TStringField
      FieldName = 'All_Article'
      Size = 200
    end
    object Qry_BOMReceiveArt_Cnt: TIntegerField
      FieldName = 'Art_Cnt'
    end
    object Qry_BOMReceiveRemark: TStringField
      DisplayWidth = 500
      FieldName = 'Remark'
      Origin = 'DB.BOMReceive.Remark'
      FixedChar = True
      Size = 500
    end
    object Qry_BOMReceiveteam: TStringField
      FieldName = 'team'
      Origin = 'DB.BOMReceive.team'
      FixedChar = True
      Size = 15
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update BOMReceive'
      'set'
      '  ReceiveNO = :ReceiveNO,'
      '  GSBH=:GSBH,'
      '  FileNO = :FileNO,'
      '  FD = :FD,'
      '  Season = :Season,'
      '  Stage = :Stage,'
      '  MergeNO = :MergeNO,'
      '  Remark = :Remark,'
      '  ReceiveDate = :ReceiveDate,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  team = :team'
      'where'
      '  ReceiveNO = :OLD_ReceiveNO')
    InsertSQL.Strings = (
      'insert into BOMReceive'
      
        '  (ReceiveNO, GSBH, FileNO, FD, Season, Stage, MergeNO, Remark, ' +
        'ReceiveDate,'
      '   USERDate, USERID, YN, team)'
      'values'
      
        '  (:ReceiveNO,:GSBH, :FileNO, :FD, :Season, :Stage, :MergeNO, :R' +
        'emark, :ReceiveDate, '
      '   :USERDate, :USERID, :YN, :team)')
    DeleteSQL.Strings = (
      'delete from BOMReceive'
      'where'
      '  ReceiveNO = :OLD_ReceiveNO')
    Left = 76
    Top = 188
  end
  object DS_BOMReceive: TDataSource
    DataSet = Qry_BOMReceive
    Left = 76
    Top = 124
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 760
    Top = 480
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 824
    Top = 480
  end
  object Pop_Master: TPopupMenu
    Left = 76
    Top = 220
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
  object DS_BOMReceiveS: TDataSource
    DataSet = Qry_BOMReceiveS
    Left = 92
    Top = 468
  end
  object Qry_BOMReceiveS: TQuery
    AfterOpen = Qry_BOMReceiveSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS_BOMReceive
    SQL.Strings = (
      'select BOMReceiveS.*'
      '       ,KFXXZL.Devtype'
      '       ,KFXXZL.Category'
      '       ,KFXXZL.FD'
      '       ,KFXXZL.JIJIE'
      '       ,kfxxzl.devcode'
      '       ,kfxxzl.Article'
      '       ,BOMReceive.Season '
      '       ,YPZL.KFJD'
      
        '       ,BOMReceive.Stage, ypzl.ypcc as Size,YPZL.ProductionLocat' +
        'ion,kfxxzl.YSSM'
      'from BOMReceiveS'
      
        'Left join BOMReceive ON  BOMReceive.ReceiveNO= BOMReceiveS.Recei' +
        'veNO'
      'Left join YPZL on YPZL.YPDH=BOMReceiveS.YPDH'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHa' +
        'o=YPZL.SheHao'
      'where BOMReceiveS.ReceiveNO=:ReceiveNO')
    UpdateObject = UPDet
    Left = 92
    Top = 500
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ReceiveNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object Qry_BOMReceiveSReceiveNO: TStringField
      FieldName = 'ReceiveNO'
      Origin = 'DB.BOMReceiveS.ReceiveNO'
      FixedChar = True
      Size = 11
    end
    object Qry_BOMReceiveSArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.BOMReceiveS.Article'
      FixedChar = True
    end
    object Qry_BOMReceiveSRevArticle: TStringField
      FieldName = 'RevArticle'
      Origin = 'DB.BOMReceiveS.RevArticle'
      FixedChar = True
      Size = 30
    end
    object Qry_BOMReceiveSPairs: TCurrencyField
      FieldName = 'Pairs'
      Origin = 'DB.BOMReceiveS.Pairs'
      currency = False
    end
    object Qry_BOMReceiveSRemark1: TStringField
      FieldName = 'Remark1'
      Origin = 'DB.BOMReceiveS.Remark1'
      FixedChar = True
      Size = 255
    end
    object Qry_BOMReceiveSRemark2: TStringField
      FieldName = 'Remark2'
      Origin = 'DB.BOMReceiveS.Remark2'
      FixedChar = True
      Size = 255
    end
    object Qry_BOMReceiveSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.BOMReceiveS.USERDate'
    end
    object Qry_BOMReceiveSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.BOMReceiveS.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_BOMReceiveSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BOMReceiveS.YN'
      FixedChar = True
      Size = 1
    end
    object Qry_BOMReceiveSDevtype: TStringField
      FieldName = 'Devtype'
      FixedChar = True
      Size = 10
    end
    object Qry_BOMReceiveSCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object Qry_BOMReceiveSFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Qry_BOMReceiveSJIJIE: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JIJIE'
      FixedChar = True
    end
    object Qry_BOMReceiveSYPDH: TStringField
      DisplayLabel = 'Sample Order'
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Qry_BOMReceiveSSeason: TStringField
      FieldName = 'Season'
      Size = 10
    end
    object Qry_BOMReceiveSStage: TStringField
      FieldName = 'Stage'
      Size = 10
    end
    object Qry_BOMReceiveSKFJD: TStringField
      FieldName = 'KFJD'
      Size = 10
    end
    object Qry_BOMReceiveSSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object Qry_BOMReceiveSdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Qry_BOMReceiveSProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object Qry_BOMReceiveSYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update BOMReceiveS'
      'set'
      '  RevArticle = :RevArticle,'
      '  Pairs = :Pairs,'
      '  Remark1 = :Remark1,'
      '  Remark2 = :Remark2,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  ReceiveNO = :OLD_ReceiveNO and'
      '  YPDH = :OLD_YPDH')
    InsertSQL.Strings = (
      'insert into BOMReceiveS'
      
        '  (ReceiveNO, YPDH, RevArticle, Pairs, Remark1, Remark2, USERDat' +
        'e, USERID,'
      '   YN)'
      'values'
      
        '  (:ReceiveNO, :YPDH, :RevArticle, :Pairs, :Remark1, :Remark2, :' +
        'USERDate, '
      '   :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from BOMReceiveS'
      'where'
      '  ReceiveNO = :OLD_ReceiveNO and'
      '  YPDH = :OLD_YPDH')
    Left = 92
    Top = 532
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 651
    Top = 152
  end
  object Qry_BOMReceiveSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_BOMReceiveS
    SQL.Strings = (
      
        'select kfxxzl.devcode,kfxxzl.article,KFJD,ProductionLocation,ypz' +
        'l.ypdh from  YPZL'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      '    where kfxxzl.devcode=:devcode'
      
        'group by kfxxzl.devcode,kfxxzl.article,KFJD,ProductionLocation,y' +
        'pzl.ypdh'
      '')
    Left = 128
    Top = 499
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'devcode'
        ParamType = ptUnknown
        Size = 21
      end>
    object Qry_BOMReceiveSSarticle: TStringField
      DisplayLabel = 'Article'
      FieldName = 'article'
      FixedChar = True
    end
    object Qry_BOMReceiveSSKFJD: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Qry_BOMReceiveSSdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Qry_BOMReceiveSSProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object Qry_BOMReceiveSSypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
  end
  object DS_BOMReceiveSS: TDataSource
    DataSet = Qry_BOMReceiveSS
    Left = 128
    Top = 467
  end
  object fdquery: TQuery
    DatabaseName = 'DB'
    Left = 257
    Top = 121
  end
  object tempqry: TQuery
    DatabaseName = 'dB'
    Left = 537
    Top = 329
  end
end
