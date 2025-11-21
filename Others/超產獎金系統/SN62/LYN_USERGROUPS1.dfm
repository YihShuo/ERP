object LYN_USERGROUPS: TLYN_USERGROUPS
  Left = 0
  Top = 0
  Caption = 'Danh s'#225'ch ng'#432#7901'i d'#249'ng '#273#225'nh gi'#225' '#35413#26680#20027#31649#23565#29031#34920
  ClientHeight = 683
  ClientWidth = 1127
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
  object ProgressBar1: TProgressBar
    Left = 379
    Top = 69
    Width = 150
    Height = 17
    TabOrder = 0
    Visible = False
  end
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1127
    Height = 683
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
      Caption = 'Toa'#768'n B'#244#803
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 1119
        Height = 104
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 20
          Top = 9
          Width = 67
          Height = 16
          Caption = 'S'#7889' th'#7867#24037#34399
        end
        object Label4: TLabel
          Left = 5
          Top = 33
          Width = 80
          Height = 32
          Alignment = taRightJustify
          Caption = 'H'#7885' v'#224' t'#234'n Hoa '#22995#21517
          WordWrap = True
        end
        object Label2: TLabel
          Left = 27
          Top = 66
          Width = 57
          Height = 32
          Alignment = taRightJustify
          Caption = 'Qu'#7889'c t'#7883'ch '#22283#31821
          WordWrap = True
        end
        object Label8: TLabel
          Left = 475
          Top = 32
          Width = 50
          Height = 32
          Alignment = taRightJustify
          Caption = 'Ch'#7913'c v'#7909' '#32887#21209
          WordWrap = True
        end
        object Label7: TLabel
          Left = 462
          Top = 8
          Width = 66
          Height = 16
          Caption = #272#417'n v'#7883#21934#20301
        end
        object Label6: TLabel
          Left = 262
          Top = 9
          Width = 74
          Height = 16
          Caption = 'khu v'#7921'c'#24288#21312
        end
        object Label5: TLabel
          Left = 221
          Top = 31
          Width = 112
          Height = 32
          Alignment = taRightJustify
          Caption = 'H'#7885' v'#224' t'#234'n ti'#7871'ng Anh '#33521#25991#22995#21517
          WordWrap = True
        end
        object Button1: TButton
          Left = 687
          Top = 38
          Width = 115
          Height = 25
          Caption = 'Truy v'#7845'n'#26597#35426
          TabOrder = 0
          OnClick = Button1Click
        end
        object ED_ID1: TEdit
          Left = 91
          Top = 6
          Width = 121
          Height = 24
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 91
          Top = 38
          Width = 121
          Height = 24
          TabOrder = 2
        end
        object GBN: TGroupBox
          Left = 92
          Top = 69
          Width = 560
          Height = 29
          Enabled = False
          TabOrder = 3
          object RBALL: TRadioButton
            Left = 3
            Top = 6
            Width = 97
            Height = 17
            Caption = #25152#26377' T'#7845't c'#7843
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RBTW: TRadioButton
            Left = 106
            Top = 6
            Width = 199
            Height = 17
            Caption = #22806#31665#24178#37096' C'#225'n b'#7897' n'#432#7899'c ngo'#224'i'
            TabOrder = 1
          end
          object RBVN: TRadioButton
            Left = 311
            Top = 6
            Width = 186
            Height = 17
            Caption = #36234#21335#24178#37096' C'#225'n b'#7897' Vi'#7879't Nam'
            TabOrder = 2
          end
        end
        object Edit5: TEdit
          Left = 532
          Top = 38
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object Edit2: TEdit
          Left = 339
          Top = 37
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object Edit4: TEdit
          Left = 531
          Top = 6
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object Edit3: TEdit
          Left = 339
          Top = 6
          Width = 121
          Height = 24
          TabOrder = 7
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 169
        Width = 1119
        Height = 483
        Align = alClient
        DataSource = DSUSERGROUPS
        DynProps = <>
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footer.FieldName = 'UserID'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #24037#34399'|S'#7889' th'#7867
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserNameTW'
            Footers = <>
            Title.Caption = #22995#21517'|H'#7885' v'#224' t'#234'n Hoa'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            Title.Caption = #33521#25991#21517'|H'#7885' v'#224' t'#234'n ti'#7871'ng Anh'
            Width = 200
          end
          item
            CellButtons = <>
            DisplayFormat = 'yyyy/MM/dd'
            DynProps = <>
            EditButtons = <>
            FieldName = 'JoinDate'
            Footers = <>
            Title.Caption = #21040#32887#26085'|Ng'#224'y v'#224'o c'#244'ng ty'
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
            Title.Caption = #37096#38272'| B'#7897' Ph'#7853'n'
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Area'
            Footers = <>
            PickList.Strings = (
              #29694#22580'HT'
              #36774#20844#23460'VP')
            Title.Caption = #24288#21312'|Khu v'#7921'c'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Footers = <>
            Title.Caption = #21934#20301#21029'|'#272#417'n v'#7883
            Width = 250
          end
          item
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'Position'
            Footers = <>
            Title.Caption = #32887#21209'|Ch'#7913'c v'#7909
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PositionCheck'
            Footers = <>
            Title.Caption = #32147#29702#32026#20197#19978'| Gi'#225'm '#273#7889'c tr'#7903' l'#234'n'
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Nation'
            Footers = <>
            PickList.Strings = (
              'CN'
              'IN'
              'PH'
              'TW'
              'VN')
            Title.Caption = #22283#31821'|Qu'#7889'c t'#7883'ch'
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            Title.Caption = #21021#35413#20027#31649' CQ1 | '#24037#34399' S'#7889' th'#7867
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMNAME'
            Footers = <>
            Title.Caption = #21021#35413#20027#31649' CQ1 | '#22995#21517' T'#234'n'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMID1'
            Footers = <>
            Title.Caption = #35079#35413#20027#31649' CQ2 | '#24037#34399' S'#7889' th'#7867
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFMNAME1'
            Footers = <>
            Title.Caption = #35079#35413#20027#31649' CQ2 | '#22995#21517' T'#234'n'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26356#26032#20154'|UserID'
            Width = 60
          end
          item
            CellButtons = <>
            DisplayFormat = 'yyyy/MM/dd'
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26356#26032#26085#26399'|UserDate'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1119
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object BB1: TBitBtn
          Left = 8
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Truy v'#7845'n'
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
          OnClick = BB1Click
        end
        object BB2: TBitBtn
          Left = 57
          Top = 8
          Width = 72
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
          TabOrder = 1
          OnClick = BB2Click
        end
        object BB3: TBitBtn
          Left = 128
          Top = 8
          Width = 63
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
        object BB4: TBitBtn
          Left = 188
          Top = 8
          Width = 64
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
          TabOrder = 3
          OnClick = BB4Click
        end
        object BB6: TBitBtn
          Left = 312
          Top = 8
          Width = 64
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
        object BB5: TBitBtn
          Left = 249
          Top = 8
          Width = 64
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
          TabOrder = 5
          OnClick = BB5Click
        end
        object BB7: TBitBtn
          Left = 379
          Top = 8
          Width = 67
          Height = 49
          Caption = 'Excel'#36664#20986
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
      end
    end
  end
  object DSUSERGROUPS: TDataSource
    DataSet = USERGROUPSQry
    Left = 88
    Top = 320
  end
  object U_USERGROUPS: TMyADOUpdateSQL
    DataSet = USERGROUPSQry
    ZModifyCommandObj.Connection = DM2.ADOConn3
    ZModifyCommandObj.Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'UserNameTW'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'UserName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Factory'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Area'
        Size = -1
        Value = Null
      end
      item
        Name = 'Department'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Position'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PositionCheck'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'JoinDate'
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
        Size = 20
        Value = Null
      end
      item
        Name = 'CFMNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'CFMID1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'CFMNAME1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Nation'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE LYN_USERGROUPS'
      ' SET'
      '  UserID = :UserID,'
      '  UserNameTW = :UserNameTW,'
      '  UserName =:UserName,'
      '  Factory = :Factory,'
      '  Area = :Area,'
      '  Department =:Department,'
      '  Position =:Position,'
      '  PositionCheck = :PositionCheck,'
      '  JoinDate=:JoinDate,'
      '  CFMID =:CFMID,'
      '  CFMNAME = :CFMNAME,'
      '  CFMID1 =:CFMID1,'
      '  CFMNAME1 =:CFMNAME1,'
      '  Nation =:Nation,'
      '  ID = :ID,'
      '  DATE = GETDATE()'
      ' WHERE'
      '  UserID = :OLD_UserID')
    ZDeleteCommandObj.Connection = DM2.ADOConn3
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_UserID'
        Size = -1
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM LYN_USERGROUPS WHERE UserID = :OLD_UserID')
    ZInsertCommandObj.Connection = DM2.ADOConn3
    ZInsertCommandObj.Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'UserNameTW'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'UserName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Factory'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Area'
        Size = -1
        Value = Null
      end
      item
        Name = 'Department'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Position'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PositionCheck'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'JoinDate'
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
        Size = 20
        Value = Null
      end
      item
        Name = 'CFMNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'CFMID1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'CFMNAME1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Nation'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO LYN_USERGROUPS'
      
        '   (UserID, UserNameTW, UserName, Factory, Area, Department, Pos' +
        'ition, PositionCheck, JoinDate, CFMID, CFMNAME, CFMID1, CFMNAME1' +
        ', Nation, ID, DATE, YN)'
      'VALUES'
      
        '   (:UserID, :UserNameTW, :UserName, :Factory, :Area, :Departmen' +
        't, :Position, :PositionCheck, :JoinDate, :CFMID, :CFMNAME, :CFMI' +
        'D1, :CFMNAME1, :Nation, :ID, GETDATE(), '#39'1'#39')')
    SQLDelete = 'DELETE FROM LYN_USERGROUPS WHERE UserID = :OLD_UserID'
    SQLInsert = 
      'INSERT INTO LYN_USERGROUPS'#13#10'   (UserID, UserNameTW, UserName, Fa' +
      'ctory, Area, Department, Position, PositionCheck, JoinDate, CFMI' +
      'D, CFMNAME, CFMID1, CFMNAME1, Nation, ID, DATE, YN)'#13#10'VALUES'#13#10'   ' +
      '(:UserID, :UserNameTW, :UserName, :Factory, :Area, :Department, ' +
      ':Position, :PositionCheck, :JoinDate, :CFMID, :CFMNAME, :CFMID1,' +
      ' :CFMNAME1, :Nation, :ID, GETDATE(), '#39'1'#39')'
    SQLModify = 
      'UPDATE LYN_USERGROUPS'#13#10' SET'#13#10'  UserID = :UserID,'#13#10'  UserNameTW =' +
      ' :UserNameTW,'#13#10'  UserName =:UserName,'#13#10'  Factory = :Factory,'#13#10'  ' +
      'Area = :Area,'#13#10'  Department =:Department,'#13#10'  Position =:Position' +
      ','#13#10'  PositionCheck = :PositionCheck,'#13#10'  JoinDate=:JoinDate,'#13#10'  C' +
      'FMID =:CFMID,'#13#10'  CFMNAME = :CFMNAME,'#13#10'  CFMID1 =:CFMID1,'#13#10'  CFMN' +
      'AME1 =:CFMNAME1,'#13#10'  Nation =:Nation,'#13#10'  ID = :ID,'#13#10'  DATE = GETD' +
      'ATE()'#13#10' WHERE'#13#10'  UserID = :OLD_UserID'
    Left = 88
    Top = 408
  end
  object USERGROUPSQry: TMyADOQuery
    Connection = DM2.ADOConn3
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Certificate.OnBoard, Certificate.Name, Certificate.EngNam' +
        'e, Certificate.ID, Certificate.Gender,Directory.FID,Directory_Fa' +
        'ctory.Name as Factory, '
      
        '       Directory.DID,Directory_Department.Name as Department, Di' +
        'rectory.PID,Directory_Position.Name as Position,'
      
        '       Certificate.BirthDate, Certificate.BirthPlace,Certificate' +
        '.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certifica' +
        'te.PassPortSD,Certificate.PassPortED,'
      
        '       Certificate.Visa, Certificate.VisaDate, Certificate.WorkP' +
        'ermit, Certificate.IssueDate,'
      
        '       Certificate.ExpireDate, Certificate.NID, Directory_Nation' +
        'ality.Name as Nationality,Certificate.DutyDate, Certificate.Arri' +
        'valDate, Certificate.Resigned, Certificate.ResignedDate, '
      
        '       Certificate.Type, Certificate.Memo, Certificate.UserID, C' +
        'ertificate.UserDate, Certificate.YN,Directory.ID as DirectoryID,' +
        'Directory.FactoryS ,'
      #9'     Certificate.ContractDate, Certificate.ContractExpireDate'
      'FROM Certificate'
      'left join Directory on Directory.ID=Certificate.ID'
      
        'Left join Directory_Factory on Directory_Factory.FID=Directory.F' +
        'ID'
      
        'Left join Directory_Department on Directory_Department.DID=Direc' +
        'tory.DID'
      
        'Left join Directory_Position on Directory_Position.PID=Directory' +
        '.PID'
      
        'Left join Directory_Nationality on Directory_Nationality.NID=Cer' +
        'tificate.NID'
      'where 1=1 '
      'ORDER BY ID')
    Left = 88
    Top = 368
    object USERGROUPSQryUserID: TStringField
      FieldName = 'UserID'
    end
    object USERGROUPSQryUserNameTW: TWideStringField
      FieldName = 'UserNameTW'
      Size = 100
    end
    object USERGROUPSQryUserName: TWideStringField
      FieldName = 'UserName'
      Size = 100
    end
    object USERGROUPSQryJoinDate: TDateTimeField
      FieldName = 'JoinDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object USERGROUPSQryFactory: TWideStringField
      FieldName = 'Factory'
      Size = 50
    end
    object USERGROUPSQryArea: TWideStringField
      FieldName = 'Area'
    end
    object USERGROUPSQryDepartment: TWideStringField
      FieldName = 'Department'
      Size = 50
    end
    object USERGROUPSQryPosition: TWideStringField
      FieldName = 'Position'
      Size = 50
    end
    object USERGROUPSQryPositionCheck: TBooleanField
      FieldName = 'PositionCheck'
    end
    object USERGROUPSQryCFMID: TStringField
      FieldName = 'CFMID'
    end
    object USERGROUPSQryCFMNAME: TWideStringField
      FieldName = 'CFMNAME'
      Size = 100
    end
    object USERGROUPSQryCFMID1: TStringField
      FieldName = 'CFMID1'
    end
    object USERGROUPSQryCFMNAME1: TWideStringField
      FieldName = 'CFMNAME1'
      Size = 100
    end
    object USERGROUPSQryNation: TStringField
      FieldName = 'Nation'
      Size = 5
    end
    object USERGROUPSQryID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object USERGROUPSQryUserDate: TDateTimeField
      FieldName = 'DATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object USERGROUPSQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object QUpdate: TMyADOQuery
    Connection = DM2.ADOConn3
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 160
    Top = 368
  end
end
