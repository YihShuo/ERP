object DelAsset_TSCD: TDelAsset_TSCD
  Left = 0
  Top = 0
  Caption = 'DelAsset_TSCD'
  ClientHeight = 509
  ClientWidth = 1041
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
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 29
      Height = 16
      Caption = 'LLNO'
    end
    object LLNOEdit: TEdit
      Left = 49
      Top = 17
      Width = 296
      Height = 24
      TabOrder = 0
    end
    object LLNOQueryBtn: TButton
      Left = 351
      Top = 11
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = LLNOQueryBtnClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1041
    Height = 452
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = 'Barcode'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 393
        Top = 0
        Height = 421
        ExplicitHeight = 535
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 393
        Height = 421
        Align = alLeft
        TabOrder = 0
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 47
          Width = 391
          Height = 373
          Align = alClient
          DataSource = DS4
          DynProps = <>
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          PopupMenu = PopupMenu
          TabOrder = 0
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26009#34399'|CLBH'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25976#37327'|Qty'
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26448#26009#21697#21517'|ywpm'
              Width = 121
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              ReadOnly = True
              Title.Caption = #20013#25991#21697#21517'|zwpm'
              Width = 91
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TSCD_LL'
              Footers = <>
              Title.Caption = #35373#20633#25976#37327'|LLQty'
              Width = 66
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 391
          Height = 46
          Align = alTop
          TabOrder = 1
          object ITAssetIDBtn: TBitBtn
            Left = 9
            Top = 2
            Width = 49
            Height = 41
            Hint = 'IT'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000BBCBC9F7F8F8
              FCFCFCFEFEFEFFFEFEFFFFFFFFFFFFC3F0EB7CE1D253D8C448D6C146D7C147D7
              C14AD6C162DBC995E7DBE4F9F7FFFFFFFFFEFFFEFEFEFEFEFEF9F8F8949B9AE8
              FAF8B3B4B4FFFFFFFDFDFDFFFFFFFFFFFFC2F1EA47D6C137D4BD40D7C046D8C1
              47D8C248D9C347D8C247D8C244D8C13DD6BF35D3BB71DECEF4FCFCFFFFFFFCFC
              FCFFFFFFFFFFFFB3BDBBFFFFFFFEFDFDFFFEFFFFFFFF81E3D334D3BA42D7C147
              D9C348D8C248D8C248D8C248D9C348D9C348D8C248D9C347D9C347D7C13CD6BF
              3DD3BCCAF3EEFFFFFFFDFEFEFFFFFFECECECFEFDFDFFFEFFFFFFFF70DECE39D4
              BD46D8C247D9C348D9C348D9C348D9C348D9C348D9C348D9C348D9C348D9C347
              D9C347D8C247D8C344D8C133D3BBC3F2ECFFFFFFFEFEFEFFFFFFFFFEFEFFFFFF
              8CE5D838D4BC46D9C347DAC447DAC447DAC447DAC447DAC447DAC447DAC447DA
              C447DAC447DBC446DAC447DBC446DAC447DAC445D8C136D3BBE2F9F7FFFFFFFE
              FEFEFFFFFFD6F5F233D3BA46DAC34CE1C94DD6C04DD8C24DD8C24ED8C24DD8C2
              4ED8C24DD8C24DD8C24DD8C14BD6C14AD1BB4CD0BD49D0BC4CDCC547DEC741D6
              BF56D8C5FFFFFFFFFEFEFFFFFF57DAC640D7C14DDCC72233301F1D1E1F202020
              20202020201F2323222F2D22302D2025251E201F1C1C1C28585128564F2B5B55
              1A121344B6A546DCC636D4BBB9EEE7FFFFFFE0F8F535D4BA46DAC346C5B23C90
              8450EDD650E8D150E8D150EBD44ED5C136575136575249BFAD50EBD350E7D04E
              E3CC4EE3CC4EE5CE50D1BE34877B47DEC742D7C058DAC7FFFFFFA0E9DF3BD5BD
              47D8C24AE1CA357B7241AD9C3D998A3E9B8C3E9C8C429E8F33504C314D483D93
              8541AF9D3DA1913E9A8B3F9B8C3C988A37887B49CEBA47DAC445D8C135D2BAF0
              FCFB6FDFCF42D7C047D8C248DEC7399D8F386C652923232C28292D28292C2829
              2D302F2C302F2C23253D72692729292D27282B25262E3C3A397F7449E3CC46D8
              C247D8C239D5BDC5F0EA57D9C545D7C147D8C247DAC34AD8C231766B36847836
              85783685783685783685783685783683763A9E8D3282753685783584783A8277
              3EA79747DDC648D9C348D8C23DD5BFA8ECE152D8C346D8C248D9C348D9C347E1
              CA40998B385C5637635C38635C37635C37635C38635C38635C37605A38635C37
              635C3A5F593C766C4BE8D046D8C248D9C348D9C33DD6BF9EE9DD54D8C444D8C1
              48D9C348D9C349E2CB37746B3A877C3A867B3A867B3A867B3A867B3A867B3A86
              7B3A867B3A867B3A867B39887C3068604BE0CA46D8C147D9C348D9C33CD7BFA2
              EADE62DCCA43D7C048D9C348D9C349E1CA39887D4BEAD24AE2CB4AE2CB4AE2CB
              4AE2CB4AE2CB4AE2CB4AE2CB4AE2CB4AE2CB4AE7CF379B8C4CDCC647D9C346D9
              C346D8C23BD5BEB6EEE78CE5D840D6BF47D9C348D9C349E1CA38867B49E1CA47
              D9C347D9C347D9C347D9C347D9C347D9C347D9C347D9C346D8C347DEC7389588
              4BDCC647D9C347D9C346D7C135D3BBDCF7F4C5F0EB36D4BC47D8C248D8C249E1
              CA39867B49E1CA47D9C348D9C348D9C348D9C348D9C348D9C348D9C348D9C347
              D9C348DEC73896884CDCC647D9C347D9C344D7C143D4BFFFFFFFFFFFFF3ED4BD
              46D7C147D7C149E1CA38867C48E2CB47DAC447DAC447DAC447DAC447DAC447DA
              C447DAC447DAC447DAC447DFC83896894CDCC647D9C346D9C33BD6BE8DE6D8FF
              FFFFFFFFFF9EE9DE38D5BE46D8C249E1C93B877C54E4CF52DDC752DDC752DDC7
              52DCC74ED7C253DCC752DDC752DDC752DDC752E1CC3E988A49DCC546D8C245D8
              C239D3BCF3FDFBFFFEFFFFFFFFFFFFFF52D6C240D7C049E5CD2E61591A13141C
              1A1B1C1B1B1B1B1B1B15162A58501818181B1A1B1C1B1B1B1B1B1C17181F312E
              4EE4CE46D8C235D3BBACECE4FFFFFFFEFEFEFEFEFEFFFEFFEDFAF93DD3BC42D8
              C14BDAC44CD5C14CD6C14CD6C14CD6C14BD6C14AD1BD4BD6C14CD6C14CD6C14C
              D6C14CD6C14ED9C446DAC338D4BD7BE0D1FFFFFFFFFEFEFCFCFCFFFFFFFDFDFD
              FFFFFFE0F7F541D4BE3ED7C045D9C246DAC447DAC446DAC447DAC446DAC447DA
              C446DAC447DAC446DAC447DAC443D9C235D3BB79E0D0FFFFFFFEFEFEFEFEFEFF
              FEFEEEEEEEFFFFFFFEFEFEFFFFFFF1FCFC68DBCB35D3BB41D7C046D8C247D8C2
              48D9C348D9C347D9C347D8C246D8C245D8C23CD7C039D3BBA6EAE1FFFFFFFEFE
              FDFEFEFEFFFFFFDEE1E0CDD9D7EFEDEEFEFEFEFEFEFEFFFFFFFFFFFFC5F2EB5F
              DBC936D2BB39D4BC3DD6BF3ED7C03DD6C03AD5BE36D3BC40D2BC86E5D6EFFCFA
              FFFFFFFFFEFEFEFEFFFFFFFFC5C5C6B8C6C3E2F5F29AA5A3FFFFFFFCFCFCFEFE
              FDFEFEFEFFFFFFFFFFFFF4FCFCC3F0EAA6EBE198E7DB9DE8DDB1ECE3D4F5F1FF
              FFFFFFFFFFFFFEFFFEFEFEFEFFFFFFFFFFB0B3B3E5F7F3E0F3F0}
            TabOrder = 0
            OnClick = ITAssetIDBtnClick
          end
          object TVAssetIDBtn: TBitBtn
            Left = 75
            Top = 3
            Width = 49
            Height = 41
            Hint = 'TV'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000F7F7F7F7F7F7
              F8F8F8FFFFFFDCDCDCFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFDEDEDEFFFF
              FFF9F9F9F7F7F7F7F7F7F7F7F7FDFDFDF5F5F5EAEAEAFFFFFFF7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7FFFFFF0E0E0E0000007C7C7CFFFFFFF7F7F7F7F7F7FFFFFF
              7E7E7E0000000B0B0BFFFFFFF7F7F7F7F7F7FAFAFAEBEBEB000000000000C5C5
              C5FDFDFDF7F7F7F7F7F7F7F7F7F7F7F7FFFFFF3A3A3A000000A1A1A1FFFFFFF7
              F7F7F7F7F7FFFFFFA5A5A50000003C3C3CFFFFFFF7F7F7F7F7F7F9F9F9F5F5F5
              0B0B0B000000DADADAFCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFD4D4
              D4FFFFFFFFFFFFFFFFFFFBFBFBFAFAFAFBFBFBB6B6B6E1E1E1FDFDFDF9F9F9FE
              FEFEFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              FEFEFEBDBDBD0000000C0C0C717171B7B7B7EAEAEAFFFFFFECECEC0000006B6B
              6BFFFFFFF9F9F9CDCDCD8F8F8F373737000000404040FFFFFFF7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7FFFFFFEBEBEB7F7F7F262626000000000000000000
              0000001010100909090000000000000000000808085A5A5AC0C0C0FFFFFFF7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFFFFFFFFFFF
              FFFFE7E7E7C4C4C4A1A1A1000000515151C2C2C2D8D8D8FFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFFFE5E5E5000000686868FFFFFFFDFDFDF9
              F9F9F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E99E9E9EC4C4
              C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7FEFEFEFFFFFFC4C4C47070703636360D0D0E000000
              0000000404040000000000000404042323235757579F9F9FFEFEFEFFFFFFF7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FDFDFDCBCBCB0101010000000505050B
              0B0B0F0F0F1111111212121212121212121111111010100D0D0D070707000000
              0000006E6E6EFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFA5A5A50000
              000F0F0F11111112121212121212121212121212121212121212121212121212
              12121212120F0F0F090909333333FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              FFFFFFA9A9A9000000FFFFFFF2F2F2EBEBEBECECECECECECECECECECECECECEC
              ECECECECECECECECECECE7E7E7FFFFFF444444323232FFFFFFF7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7FFFFFFA9A9A9000000FFFFFF282828000000000000000000
              000000000000000000000000000000000000000000F4F4F4424242323232FFFF
              FFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFA3A3A3000000FFFFFF4343430C
              0C0C141414141414141414141414141414141414141414141414000000FFFFFF
              323232222222FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8E9E9E9CBCB
              CBFFFFFF5555550A0A0A14141414141414141414141414141414141414141413
              1313000000FFFFFFD9DAD9D8D8D8F7F8F7F9F9F9F7F7F7F7F7F7F7F7F7FFFFFF
              A3A3A30000000000006868687474740909091414141414141414141414141414
              14141414141414131313050505ECECEC0000000000001F1F1FFFFFFFF7F7F7F7
              F7F7F7F7F7F8F8F8F1F1F1DDDDDDDEDEDEFAFAFA747474070707141414141414
              141414141414141414141414141414121212040404FFFFFFDCDCDCDEDEDEE4E4
              E4FAFAFAF7F7F7F7F7F7F7F7F7F7F7F7F8F8F8FCFCFCFCFCFCFFFFFF80808006
              0606141414141414141414141414141414141414141414111111101010FFFFFF
              FCFCFCFCFCFCFAFAFAF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7FFFFFF9090900404041414141414141414141414141414141414141414140F
              0F0F202020FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7FFFFFF9F9F9F0303031414141414141414141414141414
              141414141414140E0E0E2F2F2FFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFACACAC000000141414141414
              1414141414141414141414141414140D0D0D3B3B3BFFFFFFF7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFBCBCBC00
              0000070707070707070707070707070707070707070707000000464646FFFFFF
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7FBFBFBE2E2E27676768282828282828282828282828282828282828282827D
              7D7DA7A7A7FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7}
            TabOrder = 1
            OnClick = TVAssetIDBtnClick
          end
        end
      end
      object Panel9: TPanel
        Left = 396
        Top = 0
        Width = 637
        Height = 421
        Align = alClient
        Caption = 'Panel9'
        TabOrder = 1
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 635
          Height = 65
          Align = alTop
          TabOrder = 0
          object BB2: TBitBtn
            Left = 56
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
          object BB3: TBitBtn
            Left = 105
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
          object BB4: TBitBtn
            Left = 154
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
            OnClick = BB4Click
          end
          object BB5: TBitBtn
            Left = 203
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
            Left = 252
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
          object BB7: TBitBtn
            Left = 301
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Exit Current Form'
            Caption = 'Exit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
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
            ParentFont = False
            TabOrder = 5
            OnClick = BB7Click
          end
          object bbt6: TBitBtn
            Left = 368
            Top = 8
            Width = 50
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Excel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
            OnClick = bbt6Click
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 66
          Width = 635
          Height = 55
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label2: TLabel
            Left = 13
            Top = 18
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SBBH:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object QueryBtn: TButton
            Left = 182
            Top = 10
            Width = 80
            Height = 32
            Caption = 'QUERY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = QueryBtnClick
          end
          object SBBHEdit: TEdit
            Left = 82
            Top = 16
            Width = 89
            Height = 24
            AutoSelect = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 121
          Width = 635
          Height = 299
          Align = alClient
          DataSource = DS3
          DynProps = <>
          FooterParams.Color = clWindow
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 2
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'SBBH'
              Footers = <>
              Title.Caption = #35373#20633#26009#34399'|SBBH'
              Width = 78
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = #26448#26009#21697#21517'|ywpm'
              Width = 77
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'zwpm'
              Footers = <>
              Title.Caption = #26448#26009#20013#25991'|zwpm'
              Width = 118
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25976#37327'|Qty'
              Width = 33
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'LABEL_Tag'
              Footers = <>
              Title.Caption = #27161#31844'|Label'
              Width = 99
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'RFID_Tag'
              Footers = <>
              Title.Caption = #27161#31844'|RFID'
              Width = 113
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'XSBH'
              Footers = <>
              Title.Caption = #20986#24288#32232#34399'|XSBH'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NSX'
              Footers = <>
              Title.Caption = #20986#24288#24180#26376'|NSX'
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'Status'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29376#24907'|Status'
              Width = 33
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'DepName'
              Footers = <>
              ReadOnly = True
              Title.Caption = #37096#38272'|DepName'
              Width = 95
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'USERID_Tag'
              Footers = <>
              Title.Caption = #20351#29992#32773'ID|USERID'
              Width = 63
            end
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'USERDATE_Tag'
              Footers = <>
              Title.Caption = #20351#29992#26085#26399'|USERDATE'
              Width = 62
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object PopupMenu: TPopupMenu
    AutoHotkeys = maManual
    Left = 112
    Top = 251
    object N1: TMenuItem
      Caption = 'IT -> Asset ID'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'TV -> Asset ID'
      OnClick = N2Click
    end
  end
  object DS4: TDataSource
    DataSet = KCLLAllQry
    Left = 616
    Top = 257
  end
  object KCLLAllQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CLBH,YWPM,ZWPM,SUM(Qty) as Qty,Sum(TSCD_LL) as TSCD_LL fr' +
        'om ('
      
        'Select KCLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMID,KCLL.' +
        'CFMDate,KCLLS.CLBH,KCLLS.Qty,CLZL.ywpm,CLZL.zwpm,KCLLS.USERID,Is' +
        'Null(TSCD.Qty,0) as TSCD_LL'
      'from KCLLS '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.cldh=KCLLS.CLBH'
      'Left join BDepartment on BDepartment.ID=KCLL.DepID'
      'Left join ('
      '  Select LLNO,SBBH,SUM(Qty) as Qty from TSCD '
      '  where LLNO in ('#39'20201200004'#39','#39'20201200002'#39') '
      
        '  Group by LLNO,SBBH ) TSCD on TSCD.SBBH=KCLLS.CLBH and TSCD.LLN' +
        'O=KCLLS.LLNO'
      'where  KCLLS.LLNO in ('#39'20201200004'#39','#39'20201200002'#39')'
      ') KCLLS'
      'Group by CLBH,YWPM,ZWPM'
      ''
      '')
    Left = 616
    Top = 289
    object KCLLAllQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCLLAllQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLAllQryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLAllQryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
    end
    object KCLLAllQryTSCD_LL: TFloatField
      FieldName = 'TSCD_LL'
    end
  end
  object DS3: TDataSource
    DataSet = TSCDQry
    Left = 672
    Top = 257
  end
  object TSCDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select  TSCD.TSID,TSCD.TSBH, TSCD.SBBH , TSCD.Qty, TSCD.XSBH, TS' +
        'CD.NSX, TSCD.Status,TSCD.Label_Tag,TSCD.RFID_Tag,'
      '        TSCD.USERID_Tag, TSCD.USERDATE_Tag,TSCD.RKNO, TSCD.LLNO,'
      '        TSCD_SB.ywpm,TSCD_SB.zwpm,BDepartment.DepName'
      'from TSCD'
      'Left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH'
      
        'Left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.De' +
        'pID'
      'where TSCD.LLNO in ('#39'20211100001'#39') and LB=1'
      'and TSCD_SB.SBBH like '#39'%'#39
      'Order by TSCD.Label_Tag,TSCD_SB.YWPM')
    UpdateObject = TSCDUPDet
    Left = 672
    Top = 289
    object TSCDQryTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object TSCDQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQrySBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQryQty: TFloatField
      FieldName = 'Qty'
    end
    object TSCDQryXSBH: TStringField
      FieldName = 'XSBH'
      FixedChar = True
      Size = 10
    end
    object TSCDQryNSX: TStringField
      FieldName = 'NSX'
      FixedChar = True
      Size = 10
    end
    object TSCDQryStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object TSCDQryywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZL.ywpm'
      FixedChar = True
      Size = 200
    end
    object TSCDQryzwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.CLZL.zwpm'
      FixedChar = True
      Size = 200
    end
    object TSCDQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object TSCDQryRFID_Tag: TStringField
      FieldName = 'RFID_Tag'
      FixedChar = True
      Size = 15
    end
    object TSCDQryLABEL_Tag: TStringField
      FieldName = 'LABEL_Tag'
      FixedChar = True
      Size = 15
    end
    object TSCDQryUSERID_Tag: TStringField
      FieldName = 'USERID_Tag'
      FixedChar = True
      Size = 10
    end
    object TSCDQryUSERDATE_Tag: TDateTimeField
      FieldName = 'USERDATE_Tag'
    end
    object TSCDQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object TSCDQryLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
  end
  object TSCDUPDet: TUpdateSQL
    ModifySQL.Strings = (
      'Update TSCD'
      'Set'
      '  RFID_Tag =:RFID_Tag,'
      '  Label_Tag =:Label_Tag,'
      '  XSBH =:XSBH,'
      '  NSX =:NSX,'
      '  USERID_Tag=:USERID_Tag,'
      '  USERDATE_Tag=:USERDATE_Tag'
      'where'
      '  TSID =:OLD_TSID')
    InsertSQL.Strings = (
      'insert into TSCD'
      
        '  (TSID , TSBH  , SBBH, Qty, XSBH, NSX, InDate, DepID, DepID_Mem' +
        'o, Status,'
      
        '   USERID ,USERDATE ,CFMID, CFMDATE, YN, CFMID_LL, CFMDATE_LL, L' +
        'LNO, CFMID_RK, CFMDATE_RK, RKNO, LB)'
      'values'
      
        '  (:TSID , :TSBH  , :SBBH, :Qty, :XSBH, :NSX, :InDate, :DepID, :' +
        'DepID_Memo,  :Status,'
      
        '    :USERID , :USERDATE ,:CFMID, :CFMDATE, :YN, :CFMID_LL, :CFMD' +
        'ATE_LL, :LLNO, :CFMID_RK, :CFMDATE_RK, :RKNO, :LB)')
    DeleteSQL.Strings = (
      'delete TSCD'
      'where'
      '  TSID =:OLD_TSID  and CMFID_RK='#39'NO'#39)
    Left = 673
    Top = 336
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 56
    Top = 249
  end
end
