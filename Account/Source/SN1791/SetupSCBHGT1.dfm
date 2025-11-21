object SetupSCBHGT: TSetupSCBHGT
  Left = 317
  Top = 359
  Width = 1580
  Height = 675
  Caption = 'Setup_SCBH_GT'
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
    Width = 1564
    Height = 636
    ActivePage = TS2
    Align = alClient
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Planning Announcement'
      object Splitter2: TSplitter
        Left = 901
        Top = 60
        Height = 548
        Align = alRight
        Color = clActiveCaption
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1556
        Height = 60
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 164
          Top = 4
          Width = 32
          Height = 16
          Caption = 'Type'
        end
        object Label3: TLabel
          Left = 380
          Top = 4
          Width = 42
          Height = 16
          Caption = 'Ref No'
        end
        object Label4: TLabel
          Left = 310
          Top = 37
          Width = 19
          Height = 16
          Caption = 'RY'
        end
        object Label1: TLabel
          Left = 195
          Top = 40
          Width = 11
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 681
          Top = 22
          Width = 45
          Height = 16
          Caption = 'Note:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 772
          Top = 21
          Width = 104
          Height = 16
          Caption = 'Have Revision No.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 16713471
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object btn_Search: TButton
          Left = 557
          Top = 14
          Width = 70
          Height = 30
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn_SearchClick
        end
        object edt_RefNo: TEdit
          Left = 423
          Top = 0
          Width = 119
          Height = 24
          TabOrder = 1
        end
        object edt_RY: TEdit
          Left = 333
          Top = 33
          Width = 136
          Height = 24
          TabOrder = 2
        end
        object CHK_Date: TCheckBox
          Left = 8
          Top = 37
          Width = 97
          Height = 17
          Caption = 'Isused Date'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object Date1: TDateTimePicker
          Left = 104
          Top = 33
          Width = 89
          Height = 24
          Date = 41946.393879479170000000
          Format = 'yyyy/MM/dd'
          Time = 41946.393879479170000000
          TabOrder = 4
        end
        object Date2: TDateTimePicker
          Left = 207
          Top = 33
          Width = 89
          Height = 24
          Date = 41946.393922696760000000
          Format = 'yyyy/MM/dd'
          Time = 41946.393922696760000000
          TabOrder = 5
        end
        object chk_Year: TCheckBox
          Left = 8
          Top = 3
          Width = 49
          Height = 17
          Caption = 'Year'
          TabOrder = 6
        end
        object cbYear: TComboBox
          Left = 60
          Top = 0
          Width = 89
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 7
        end
        object cbType: TComboBox
          Left = 200
          Top = 0
          Width = 169
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 8
          Items.Strings = (
            ''
            'Order Revision'
            'Shipment'
            'Label-Packing')
        end
        object Panel12: TPanel
          Left = 732
          Top = 24
          Width = 33
          Height = 13
          Color = clFuchsia
          TabOrder = 9
        end
      end
      object Panel4: TPanel
        Left = 904
        Top = 60
        Width = 652
        Height = 548
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 1
        object DB_RY: TDBGridEh
          Left = 0
          Top = 0
          Width = 652
          Height = 548
          Align = alClient
          DataSource = DS_AnnounceS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'RY'
              Footers = <>
              Title.TitleButton = True
              Width = 143
            end
            item
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              ButtonStyle = cbsNone
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 65
            end
            item
              ButtonStyle = cbsNone
              Color = cl3DLight
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 65
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 60
        Width = 901
        Height = 548
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 2
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 901
          Height = 548
          Align = alClient
          DataSource = DS_Announce
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
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          ParentFont = False
          PopupMenu = pop_Announce
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnGetCellParams = DBGridEh3GetCellParams
          OnTitleBtnClick = DBGridEh3TitleBtnClick
          Columns = <
            item
              ButtonStyle = cbsNone
              Color = cl3DLight
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'AnnounceDate'
              Footer.Color = cl3DLight
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Isused Date'
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'RefNo'
              Footers = <>
              Title.Caption = 'Ref No'
              Title.TitleButton = True
              Width = 107
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'Type_s'
              Footers = <>
              PickList.Strings = (
                'Order Revision'
                'Shipment'
                'Label-Packing')
              Title.Caption = 'Type'
              Title.TitleButton = True
              Width = 117
            end
            item
              EditButtons = <>
              FieldName = 'RevisionNo'
              Footers = <>
              Title.Caption = 'Revision|No.'
              Title.TitleButton = True
              Width = 34
            end
            item
              ButtonStyle = cbsNone
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'RevisionDate'
              Footers = <>
              Title.Caption = 'Revision|Date'
              Title.TitleButton = True
              Width = 80
            end
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'File_NameS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'File Name'
              Title.TitleButton = True
              Width = 279
            end
            item
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              Title.TitleButton = True
              Width = 120
            end
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              Title.Caption = 'User ID'
              Title.TitleButton = True
              Width = 65
            end
            item
              ButtonStyle = cbsNone
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              Title.Caption = 'User Date'
              Title.TitleButton = True
              Width = 70
            end>
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'Deliver'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 205
        Width = 1556
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1556
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 351
          Top = 14
          Width = 43
          Height = 16
          Caption = 'MatNo:'
        end
        object Label11: TLabel
          Left = 492
          Top = 14
          Width = 62
          Height = 16
          Caption = 'MatName:'
        end
        object Label12: TLabel
          Left = 338
          Top = 43
          Width = 54
          Height = 16
          Caption = 'Location:'
        end
        object Label13: TLabel
          Left = 14
          Top = 43
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label14: TLabel
          Left = 123
          Top = 43
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Label15: TLabel
          Left = 757
          Top = 14
          Width = 44
          Height = 16
          Caption = 'CWBH:'
        end
        object Label16: TLabel
          Left = 488
          Top = 44
          Width = 31
          Height = 16
          Caption = 'KHO:'
        end
        object Label18: TLabel
          Left = 216
          Top = 43
          Width = 48
          Height = 16
          Caption = 'Factory:'
        end
        object Label19: TLabel
          Left = 834
          Top = 43
          Width = 43
          Height = 16
          Caption = 'CostID:'
        end
        object Label6: TLabel
          Left = 9
          Top = 14
          Width = 40
          Height = 16
          Caption = 'SCBH:'
        end
        object Label17: TLabel
          Left = 189
          Top = 14
          Width = 37
          Height = 16
          Caption = 'LLNO:'
        end
        object Edit3: TEdit
          Left = 557
          Top = 12
          Width = 97
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 397
          Top = 12
          Width = 90
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object Button12: TButton
          Left = 876
          Top = 4
          Width = 85
          Height = 33
          Caption = 'Query'
          TabOrder = 4
          OnClick = Button12Click
        end
        object CBX1: TComboBox
          Left = 398
          Top = 41
          Width = 73
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL')
        end
        object Edit5: TEdit
          Left = 661
          Top = 12
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 2
        end
        object CBX2: TComboBox
          Left = 51
          Top = 41
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 5
          Text = '2017'
        end
        object CBX3: TComboBox
          Left = 164
          Top = 41
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 6
          Text = '01'
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
        object CBX6: TComboBox
          Left = 526
          Top = 41
          Width = 303
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          ItemIndex = 11
          TabOrder = 7
          Text = 'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
          Items.Strings = (
            ''
            'NK'
            'TC'
            'HD'
            'KD'
            'NK1'
            'TC1'
            'HD1'
            'KD1'
            'NQ'
            'NKNQ'
            'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ')
        end
        object CBX5: TComboBox
          Left = 267
          Top = 41
          Width = 62
          Height = 24
          ItemHeight = 16
          TabOrder = 8
          Text = 'ALL'
          OnChange = CBX5Change
        end
        object Edit6: TEdit
          Left = 879
          Top = 40
          Width = 43
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 9
        end
        object Edit7: TEdit
          Left = 51
          Top = 11
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object Edit8: TEdit
          Left = 229
          Top = 9
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 11
        end
        object Edit1: TEdit
          Left = 806
          Top = 11
          Width = 60
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 12
          Text = '152'
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 208
        Width = 1556
        Height = 400
        Align = alBottom
        Caption = 'Panel1'
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 1554
          Height = 41
          Align = alTop
          TabOrder = 0
          object BD6: TBitBtn
            Left = 192
            Top = 1
            Width = 45
            Height = 40
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
          object BD5: TBitBtn
            Left = 147
            Top = 1
            Width = 45
            Height = 40
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
          object BD4: TBitBtn
            Left = 102
            Top = 1
            Width = 45
            Height = 40
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
          object BD3: TBitBtn
            Left = 5
            Top = 1
            Width = 45
            Height = 40
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
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
          object CopyD_Temp1: TBitBtn
            Left = 310
            Top = 3
            Width = 40
            Height = 35
            TabOrder = 4
            Visible = False
            OnClick = CopyD_Temp1Click
            Glyph.Data = {
              32100000424D3210000000000000360000002800000029000000210000000100
              180000000000FC0F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFEFCFCFCFDFDFDFBFBFBF9F9F9F9F9F9F7F8F8F8F8F8F8F8F8FB
              FBFBFDFDFDFFFEFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFEFEF9F9F9F9F8F7FBFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFCF9
              FBF6F9F8FDFCFCFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF6F6F6FA
              FAFAFFFFFDFFFFFFDDF6F173D6BA65D5BA6FD4BCD5F2EDFFFFFFF2FDFFF8F9FB
              F5F4F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF6F6F6FCFBFCFFFFFFFFFF
              FF78DBBC09BA7D02C48C00C78E00C5880ABC8150C9A3FFFFFFFFFFFFFEFDFDF2
              F2F2F9F8F8FFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFDFDFFFFFFEEF7F41ABF9400B879
              13CA970FC69518C59523C5951ACA9400C48400B782D4F0E7FFFFFFFFFFFFF0F4
              F4F6F7F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFDF6F7F6F7F8F7FFFEFFFFFFFFB6E7D814C18B00C08516C99812C79314
              C69312C69310C79310C79318C8960CC28C00BC8393DDC8FFFAFDFFFFFFF6F5F5
              F5F6F6FDFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF5F5F5
              F6F6F6FFFDFEFFFFFF82D6BC13BE8308C78B1CC5971BC4951CC69517C69516C6
              9516C69519C5951BC4941AC59614C59209C0824BCAA4FFFFFFFFFFFFF7F7F7F7
              F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3FAFAFAFFFFFFFF
              FFFF41C9A900B87715C48D18C48E17C28F17C28F16C38F16C38F17C38F17C38F
              18C38F17C38F18C28E1AC39116C48E01BD8224BF8BFFFEFFFFFFFFF5FCF5F3F5
              F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F4F5F4FCFBFCFFFDFEDBEFE91FBD8E01BD
              7A20C6921DC38F1DC3901DC48C1DC48D1DC48D1DC48D1DC48D1DC48D1DC48D1D
              C48D1DC48D1DC48D1EC48D17C89006BE8107BA80BBE9D8FFFBFFFEFCFEF3F4F3
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFEFEFEF7F6F7F4F5F3FCFAFBFFFEFF9DDFCC11BA810EBD7D19C68F1EC28D
              1DC28D1DC28D1DC48B1DC48A1DC48A1DC48A1DC48A1DC48A1DC48A1DC48A1DC4
              8A1DC48A1DC48A1DC48A1AC78B0EC08600B57C7FD4B8FFFEFFFFFDFEF4F4F4F3
              F3F2FEFEFEFEFEFEFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF3F3
              F3F3F3F3FBFCF9FFFFFF7AD2B700B66F17C18122C48B21C2871EC5891FC4891F
              C4891FC4891FC4891FC4891FC4891FC4891FC4891FC4891FC4891FC4891FC489
              1EC4891EC48921C48924C18C13C48800B6715FC9A4FFFFFFFFFAFFF6F5F4F1F0
              F0FFFFFFFDFDFDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF8F8F8EEEEEEFAF8FA
              FFFFFF5CCAA500BB6D23BE8420C08822C18822C1881EC0871FC1871DC1871FC1
              871EC1871EC1871EC1871EC1871EC1871EC1871EC1871EC1871FC0881DC08820
              C1861FC08820C28520C3871DC18600B86D4AC696FAFBFFF8F6FAF4F4F4F2F2F2
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFE7E7E7FBFBFBFFFCFF78D1B200
              B56E20C1851DC08A22C08320BF8220C0831EC1871FBE8524BE8520BE8522BE85
              22BE8522BE8522BE8522BE8522BE8522BE8522BE8522C08424C2821CBF8B1EC2
              8420C18221C08224C2822ABD9200BA6F66C7A4FFFEFFF7F6F6EAEAEAFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFE0E0E0FBFBFBFFFBFE99DDC116B67913B7
              700DB9770AB87709B9780DB87827BE7F25BF8122BE8023BE8023BE8023BE8023
              BE8023BE8023BE8023BE8023BE8023BE801FBE821DBE8530BD8411B9730AB979
              0AB9790BB77903BE6F10B3658ACFB0FFF9FFFEFDFDDCDCDCFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFF4F4F4D8D8D8FFFFFFFFFCFFB8E4D98CD9BF89D3B9
              8CD6B88CD6B88DD8BA26BD7B27BF7E23C07F25BF7F25BF7F25BF7F25BF7F25BF
              7F25BF7F25BF7F25BF7F24BF7F29C07E23BF7D12B67385D5BC8DD6B88AD5B68A
              D6B78CD5B8A7E2CCFFF7FDFEFCFEEAEAEAE3E3E3FFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFDFDFDFCBCBCBF9F7F9FFFFFFFFFFFFFFFEFFFFFAFFFF
              F5FEFDFCFF22B77B1DBC7B27BE7D28BD7D29BD7D29BD7D29BD7D29BD7D29BD7D
              29BD7D29BD7D28BD7D28BD7D26BB7C03AD65FDFCFBFFF7FFFFFAFFFFFBFFFFFF
              FFFFFFFFFFFFFFDBDADBD0D0D0FFFFFFFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF1F1F1BDBDBDB5B6B5CFD0D0E2E2E2EDEEEEF4F1F2F7FA
              FA20B0751DBA7728B97924B67925B77925B77925B77925B77925B77925B77925
              B77925B67825B87B2BB97D00A860F4FBF8F6F1F3EEEFEFE1E1E1D9DADAC1C1C1
              B3B3B3DFDFDFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD2D2D2DEDEDEF6F3F4F7F9FA1FAC72
              20B87627B67728B57928B57928B57928B57928B57928B57928B57928B57928B5
              7926B67829B67900A65EF3FAF8F5F2F4E1E1E1D4D4D4E5E5E5FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDFDFDFDFFFFFFFAFAFAEDEDEDF3F0F1F8FBFA21AA701EB27226
              B37326B07326B07326B07326B07326B07326B07326B07326B07326B07326B174
              2AB17600A05CF3FAF8F2F0F1ECECECF9F9F9FFFFFFFEFEFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEFFFFFFF4F4F5E8E7E9EFEEEEF8F8FA20A56C1FB06F25B16E28AC
              7227AE7227AD7227AD7227AD7227AD7227AD7227AD7227AD7227AE722AAF7200
              9D57F3F7F8F2EFF0E9E9E9F4F4F4FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF6F7F4E8EAE6EFEFECF9F8F925A26A1DAA6C27A77326AB6D25AB6D
              25AB6D25AB6D25AB6D25AB6D25AB6D25AB6D25AB6D24AC6C2AAB72009659F3F9
              F8F2EEF0E8E8E7F3F3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF5F5F5E6E7E5EEEDECF8F9F825A0691DA66626A46D25A56D24A56D24A56D24
              A56D24A56D24A56D24A56D24A56D24A56D23A46C29A66E009253F3FBF7EEEAED
              E6E6E6F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5
              E7E8E5EDEDEBF8F8F9229B651FA26627A16C23A26C24A06C24A06C24A06C24A0
              6C24A06C24A06C24A06C24A06C25A26C2BA56E008F51F3F9F7ECEBEBE6E6E6F4
              F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F5F4E7E8E6EA
              EAE8F7FAF9209765249E66279E6C27A069279F6A279F6A279F6A279F6A279F6A
              279F6A279F6A279F6A289F68289F6B00874EF4F9F7EDEDECE7E7E7F5F5F5FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F6F5E6E7E4EAEAEAF9F8
              F821935F219962289A6A239B65259B65259B65259B65259B65259B65259B6525
              9B65249B65279B63289C6800874BF4F6F7EDEBEDE6E6E6F5F5F5FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4E4E5E2EBEBE9F8F6F7208F5D
              2097602596662696642695632696632696632696632696632696632696632695
              6327956528996400804BF4F8F4EAE7EBE4E4E4F4F4F4FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E4E5E3EAEAE9F8F5F6208D5A21955D26
              9462269362259363259463259363259363259363259363259463259263259363
              299561007C46F4F9F4E9E7E9E3E3E3F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF4F4F4E4E5E4EBEAE9F7F6F6178451248F5C228E61268E
              5C258E5C258E5C258E5C258E5C258E5C258E5C258E5C258E5C278E5D28926100
              723DF4F7F4EBE8EAE3E3E3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF2F2F2E2E3E2E8E6E7F6F1F41B804E07864A30955C288E66279062
              27906427906427906427906427906427906427906229916514905200652EE2F8
              F4F0E9EAE1E1E1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE3E3E3E4E6E4F0EBEDDDEEE82E794D1F612E21692E22682E22682E22
              682E22682E22682E22682E22682E22682E20652D24693FCEE8DDFFE8F0E2E5E6
              E1E1E1F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EBEBEBD4D4D4E5E4E3F5F1F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FADBE5E4D8D7D6E4E4E4FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFEC
              ECECD0D0D0CBCBCACACACAD1D0D1CFD0CDCFD0CECFD0CFCFD0CFCFD0CFCFD0CF
              CFD0CFCFD0CED0D2D0D0D1CFCCCDCCCACCCBD1D0D0EAE9E9FFFFFFFDFDFDFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFBFB
              FBF3F3F3EEEEEEECECEDEDEEECECEDEBEBECEAEBECEAEBECEAEBECEAEBECEAEB
              ECEAECEDEBECECEBEDEDEEF2F2F2FAFAFAFFFFFFFEFEFEFEFEFEFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          end
          object BD7: TBitBtn
            Left = 237
            Top = 1
            Width = 45
            Height = 40
            Hint = 'Modify Current'
            Caption = 'Excel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BD7Click
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
          object BDAll: TBitBtn
            Left = 49
            Top = 1
            Width = 55
            Height = 40
            Hint = 'Delete one Record'
            Caption = 'Del All'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BDAllClick
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
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 42
          Width = 1554
          Height = 357
          Align = alClient
          DataSource = DS_SCBHGT
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBGridEh2GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CKBH'
              Footers = <>
              Title.Caption = #20489#24235'|CKBH'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'HGLB'
              Footers = <>
              Title.Caption = #39006#21029'|KHO'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'CNO'
              Footers = <>
              Title.Caption = #28023#38364'|HaiQuan'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26009#34399'|CLBH'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = #26448#26009#21517#31281'|YWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'dwbh'
              Footers = <>
              Title.Caption = #21934#20301'|DWBH'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'LLNO'
              Footers = <>
              Title.Caption = #38936#26009#21934'|LLNO'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = #26085#26399'|CFMDATE'
              Width = 80
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'SCBH_Cost'
              Footers = <>
              Title.Caption = #25104#26412#35330#21934'|SCBH_GT'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'CWBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'CostID'
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.DisplayFormat = '##,#0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#24235#25976#37327'|Qty'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice'
              Footers = <>
              Title.Caption = #36234#30462#21934#20729#20986'|VNPrice'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'VNACC'
              Footer.DisplayFormat = '##,#0'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #36234#30462#37329#38989#20986'|VNACC'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'SCBH'
              Footers = <>
              Title.Caption = #35330#21934'|SCBH'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'MEMO'
              Footers = <>
              Title.Caption = #20633#35387'|MEMO'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Width = 60
            end>
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 81
        Width = 1556
        Height = 124
        Align = alClient
        DataSource = DS_Deliver
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|KHO'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364'|HaiQuan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = #26085#26399'|CFMDATE'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.DisplayFormat = '##,#0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #20986#24235#25976#37327'|Qty'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'VNPRICE'
            Footers = <>
            Title.Caption = #36234#30462#21934#20729#20986'|VNPrice'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #36234#30462#37329#38989#20986'|VNACC'
            Width = 90
          end>
      end
    end
  end
  object Qry_Deliver: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH'
      '      ,CLZL.YWPM,CLZL.DWBH'
      '      ,KCLL.LLNO,KCLL.CFMDate'
      '      ,KCLLS.SCBH'
      '      ,KCZLS.CWBH,KCLLS.CostID'
      '      ,KCLLS.Qty'
      '      ,isnull(KCLLS.VNPrice_HG,0) VNPRICE,KCLLS.VNACC_HG VNACC'
      '      ,KCLLS_CB.LLNO LLCB'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH'
      
        'left join (select LLNO,CLBH,SCBH from KCLLS_CB)KCLLS_CB on KCLLS' +
        '_CB.LLNO=KCLLS.LLNO and KCLLS_CB.CLBH=KCLLS.CLBH and KCLLS_CB.SC' +
        'BH=KCLLS.SCBH'
      'where year(KCLL.CFMDate)='#39'2022'#39' and month(KCLL.CFMDate)='#39'05'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCCK.CKBH ='#39'VB7'#39
      '      and KCZLS.CWBH = '#39'152'#39
      
        '      and (KCLLS.HGLB='#39'NK'#39' or KCLLS.HGLB='#39'TC'#39' or KCLLS.HGLB='#39'HD'#39 +
        ' or KCLLS.HGLB='#39'KD'#39')'
      '      and KCCK.GSBH='#39'VB7'#39
      'order by KCLLS.CLBH,KCLLS.HGLB')
    Left = 219
    Top = 390
    object Qry_DeliverGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Qry_DeliverCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Qry_DeliverHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Qry_DeliverCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object Qry_DeliverCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_DeliverYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_DeliverDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_DeliverLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 12
    end
    object Qry_DeliverCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Qry_DeliverSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Qry_DeliverCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Qry_DeliverCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Qry_DeliverQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Qry_DeliverVNPRICE: TCurrencyField
      FieldName = 'VNPRICE'
      DisplayFormat = '#,##0'
    end
    object Qry_DeliverVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Qry_DeliverLLCB: TStringField
      FieldName = 'LLCB'
      FixedChar = True
      Size = 12
    end
  end
  object DS_Deliver: TDataSource
    DataSet = Qry_Deliver
    Left = 219
    Top = 420
  end
  object Qry_SCBHGT: TQuery
    AfterOpen = Qry_SCBHGTAfterOpen
    BeforeClose = Qry_SCBHGTBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLLS_CB.*,clzl.ywpm,clzl.dwbh '
      'from KCLLS_CB'
      'left join CLZL on CLZL.CLDH=KCLLS_CB.CLBH'
      'where SCBH=:SCBH'
      ''
      '')
    UpdateObject = Up_SCBHGT
    Left = 252
    Top = 389
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
    object Qry_SCBHGTGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Qry_SCBHGTCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 5
    end
    object Qry_SCBHGTHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Qry_SCBHGTCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object Qry_SCBHGTCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_SCBHGTLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 12
    end
    object Qry_SCBHGTCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Qry_SCBHGTSCBH_Cost: TStringField
      FieldName = 'SCBH_Cost'
      FixedChar = True
      Size = 50
    end
    object Qry_SCBHGTCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Qry_SCBHGTCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Qry_SCBHGTQty: TCurrencyField
      FieldName = 'Qty'
      OnChange = Qry_SCBHGTQtyChange
      DisplayFormat = '##,#0.00'
    end
    object Qry_SCBHGTVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object Qry_SCBHGTVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Qry_SCBHGTUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Qry_SCBHGTSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Qry_SCBHGTMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Qry_SCBHGTUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Qry_SCBHGTYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Qry_SCBHGTywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Qry_SCBHGTdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
  end
  object DS_SCBHGT: TDataSource
    DataSet = Qry_SCBHGT
    Left = 252
    Top = 420
  end
  object Up_SCBHGT: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS_CB'
      'set'
      '  SCBH_Cost = :SCBH_Cost,'
      '  CostID = :CostID,'
      '  Qty= :Qty,'
      '  VNACC= :VNACC,'
      '  MEMO= :MEMO,'
      '  USERID = :USERID,'
      '  USERDATE = getdate()'
      ' where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH=:OLD_CLBH and'
      '  SCBH_Cost= :OLD_SCBH_Cost and'
      '  HGLB =:OLD_HGLB '
      ''
      '')
    InsertSQL.Strings = (
      'insert into KCLLS_CB'
      
        '  (GSBH,CKBH,HGLB,CNO,CLBH,LLNO,CFMDate,SCBH_Cost,CWBH,CostID,Qt' +
        'y,VNPrice,VNACC,SCBH,MEMO,USERID,USERDATE,YN)'
      'values'
      
        '  (:GSBH, :CKBH, :HGLB, :CNO, :CLBH, :LLNO, :CFMDate, :SCBH_Cost' +
        ', :CWBH, :CostID, :Qty, :VNPrice, :VNACC, :SCBH, :MEMO, :USERID,' +
        ' getdate(), :YN)')
    DeleteSQL.Strings = (
      'delete from KCLLS_CB'
      ' where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH=:OLD_CLBH and'
      '  SCBH_Cost= :OLD_SCBH_Cost and'
      '  HGLB=:OLD_HGLB')
    Left = 251
    Top = 451
  end
  object PopupMenu2: TPopupMenu
    Left = 250
    Top = 483
    object Excel1: TMenuItem
      Caption = 'Excel'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 185
    Top = 389
  end
  object pop_Announce: TPopupMenu
    OnPopup = pop_AnnouncePopup
    Left = 31
    Top = 457
    object mn_DownLoad: TMenuItem
      Caption = 'Download File'
      OnClick = mn_DownLoadClick
    end
    object Excel: TMenuItem
      Caption = 'Excel'
      OnClick = ExcelClick
    end
  end
  object DS_Announce: TDataSource
    DataSet = Qry_Announce
    Left = 32
    Top = 422
  end
  object Qry_Announce: TQuery
    AfterOpen = Qry_AnnounceAfterOpen
    BeforeClose = Qry_AnnounceBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT AnnounceDate, RefNo, Type_s, File_NameS, Remark, UserDate' +
        ', UserID, YN'
      '     ,RevisionNo, RevisionDate'
      'FROM Announcement'
      'WHERE 1=2')
    Left = 32
    Top = 389
    object Qry_AnnounceAnnounceDate: TDateTimeField
      FieldName = 'AnnounceDate'
      Origin = 'DB.Announcement.AnnounceDate'
    end
    object Qry_AnnounceRefNo: TStringField
      FieldName = 'RefNo'
      Origin = 'DB.Announcement.RefNo'
      FixedChar = True
      Size = 50
    end
    object Qry_AnnounceTypes: TStringField
      FieldName = 'Type_s'
      Origin = 'DB.Announcement.Types'
      FixedChar = True
      Size = 50
    end
    object Qry_AnnounceFile_Name: TStringField
      FieldName = 'File_NameS'
      Origin = 'DB.Announcement.File_Name'
      FixedChar = True
      Size = 50
    end
    object Qry_AnnounceRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.Announcement.Remark'
      FixedChar = True
      Size = 150
    end
    object Qry_AnnounceUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.Announcement.UserDate'
    end
    object Qry_AnnounceUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.Announcement.UserID'
      FixedChar = True
      Size = 15
    end
    object Qry_AnnounceYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.Announcement.YN'
      FixedChar = True
      Size = 1
    end
    object Qry_AnnounceRevisionNo: TStringField
      FieldName = 'RevisionNo'
      Origin = 'DB.Announcement.RevisionNo'
      FixedChar = True
      Size = 50
    end
    object Qry_AnnounceRevisionDate: TDateTimeField
      FieldName = 'RevisionDate'
      Origin = 'DB.Announcement.RevisionDate'
    end
  end
  object Qry_AnnounceS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Announce
    SQL.Strings = (
      
        'SELECT AnnounceDate, RefNo, Type_s, RY, Remark, UserID, UserDate' +
        ', YN'
      'FROM AnnouncementS'
      
        'WHERE AnnounceDate=:AnnounceDate and RefNo=:RefNo and Type_s=:Ty' +
        'pe_s'
      'ORDER BY RY')
    Left = 72
    Top = 389
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'AnnounceDate'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFixedChar
        Name = 'RefNo'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftFixedChar
        Name = 'Type_s'
        ParamType = ptUnknown
        Size = 51
      end>
    object Qry_AnnounceSAnnounceDate: TDateTimeField
      FieldName = 'AnnounceDate'
      Origin = 'DB.AnnouncementS.AnnounceDate'
    end
    object Qry_AnnounceSRefNo: TStringField
      FieldName = 'RefNo'
      Origin = 'DB.AnnouncementS.RefNo'
      FixedChar = True
      Size = 50
    end
    object Qry_AnnounceSType_s: TStringField
      FieldName = 'Type_s'
      Origin = 'DB.AnnouncementS.Type_s'
      FixedChar = True
      Size = 50
    end
    object Qry_AnnounceSRY: TStringField
      FieldName = 'RY'
      Origin = 'DB.AnnouncementS.RY'
      FixedChar = True
    end
    object Qry_AnnounceSRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.AnnouncementS.Remark'
      FixedChar = True
      Size = 150
    end
    object Qry_AnnounceSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.AnnouncementS.UserID'
      FixedChar = True
      Size = 15
    end
    object Qry_AnnounceSUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.AnnouncementS.UserDate'
    end
    object Qry_AnnounceSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.AnnouncementS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_AnnounceS: TDataSource
    DataSet = Qry_AnnounceS
    Left = 72
    Top = 422
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'PDF Files(*.pdf)|*.pdf|Text File(*.txt)|*.txt|RTF Format(*.rtf)|' +
      '*.rtf|Web Page(*.htm)|*.htm|CSV(comma split)(*.csv)|*.csv|All Fi' +
      'les(*.*)|*.*'
    Left = 110
    Top = 389
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt|PDF F' +
      'iles(*.pdf)|*.pdf|All Files(*.*)|*.*'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 149
    Top = 389
  end
end
