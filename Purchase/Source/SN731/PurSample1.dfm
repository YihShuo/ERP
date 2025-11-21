object PurSample: TPurSample
  Left = 371
  Top = 122
  Width = 1717
  Height = 697
  Caption = 'PurSample'
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
  object Label11: TLabel
    Left = 671
    Top = 4
    Width = 40
    Height = 16
    Caption = 'PO No'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 264
    Width = 1701
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1701
    Height = 264
    Align = alTop
    TabOrder = 0
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 73
      Width = 1699
      Height = 190
      Align = alClient
      DataSource = DS3
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
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = Pop_Master
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 2
      OnDrawColumnCell = DBGrid3DrawColumnCell
      OnEditButtonClick = DBGrid3EditButtonClick
      OnKeyPress = DBGrid3KeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CGNO'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'PO No'
          Title.TitleButton = True
          Width = 93
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'ZSBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Su ID'
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'zsdhflex'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Supplier Name'
          Title.TitleButton = True
          Width = 172
        end
        item
          EditButtons = <>
          FieldName = 'CGDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Pur Date'
          Title.TitleButton = True
          Width = 72
        end
        item
          ButtonStyle = cbsNone
          Color = 11927551
          DropDownRows = 20
          EditButtons = <>
          FieldName = 'SEASON'
          Footers = <>
          PickList.Strings = (
            '14S'
            '14F'
            '15S'
            '15F'
            '16S'
            '16F'
            '17S'
            '17F'
            '18S'
            '18F'
            '19S'
            '19F'
            '20S'
            '20F'
            '21S'
            '21F'
            '22S'
            '22F')
          Title.Caption = 'Season'
          Title.TitleButton = True
          Width = 56
          OnNotInList = DBGrid3Columns4NotInList
        end
        item
          Color = 11927551
          DropDownRows = 12
          EditButtons = <>
          FieldName = 'PURPOSE'
          Footers = <>
          PickList.Strings = (
            'CR1'
            'CR2'
            'SMS'
            'CFM'
            'SU1'
            'SU2'
            'SU3'
            'SU4'
            'AD1'
            'AD2'
            'FIT'
            'PDT'
            'PHT'
            'PMO'
            'POS'
            'PRO'
            'SM1'
            'SM2'
            'SM3'
            'SM4'
            'SM5'
            'SM6'
            'SM7'
            'TST'
            'WEA')
          Title.Caption = 'Stage'
          Title.TitleButton = True
          Width = 51
        end
        item
          Color = 11927551
          EditButtons = <>
          FieldName = 'DevType'
          Footers = <>
          PickList.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'MEMO'
          Footers = <>
          PickList.Strings = (
            'BuyLast'
            'BuyR2'
            'BuyR3'
            'Water printing'
            'Copper mold'
            'CNC cutting die'
            'PK cutting die'
            'Cutting die'
            'Wooden cutting die'
            'Roller'
            'Mold'
            'Inspection ruler'
            'Inspection wooden jig'
            'Aluminum Mold'
            'Pressing Mold')
          Title.Caption = 'Memo'
          Title.TitleButton = True
          Width = 168
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Title.Caption = 'User ID'
          Title.TitleButton = True
          Width = 50
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Title.Caption = 'UserDate'
          Title.TitleButton = True
          Width = 74
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Title.Caption = 'Department'
          Title.TitleButton = True
          Width = 72
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'YN'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          EditButtons = <>
          FieldName = 'HGLB'
          Footers = <>
          PickList.Strings = (
            ''
            'NK'
            'KD'
            'HD'
            'GC'
            'XT'
            'KDSXXK')
          Width = 47
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'ProductionLocation'
          Footers = <>
          ReadOnly = True
          Width = 122
        end
        item
          EditButtons = <>
          FieldName = 'Brand'
          Footers = <>
          PickList.Strings = (
            'SKX'
            'CDC'
            'CAR'
            'UQC')
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'acceptno'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'AcceptNo'
        end
        item
          EditButtons = <>
          FieldName = 'ACCEPTUSERID'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'A_USERID'
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'ACCEPTUSERDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'A_DATE'
          Width = 101
        end
        item
          EditButtons = <>
          FieldName = 'ACCEPTMEMO'
          Footers = <>
          ReadOnly = True
          Width = 246
        end
        item
          EditButtons = <>
          FieldName = 'ManagerID'
          Footers = <>
          ReadOnly = True
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'ManagerDate'
          Footers = <>
          ReadOnly = True
          Width = 116
        end
        item
          EditButtons = <>
          FieldName = 'ReturnDate'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'Reason'
          Footers = <>
          PickList.Strings = (
            ''
            'Back Up Plan'
            'BOM Mistake'
            'Customer Request'
            'DEV Mistake'
            'Gender alignment'
            'MTRL Info Update'
            'Processing Change'
            'Substitute Material'
            'Trial Suggestion')
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'Flowflag_TK'
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'TimeRevise'
          Footers = <>
        end>
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1699
      Height = 72
      Align = alTop
      TabOrder = 0
      object Lbl_Warnning: TLabel
        Left = 1256
        Top = 24
        Width = 193
        Height = 20
        Caption = 'Warning:Problem Article'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label1: TLabel
        Left = 295
        Top = 4
        Width = 40
        Height = 16
        Caption = 'PO No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 566
        Top = 4
        Width = 44
        Height = 16
        Caption = 'Vendor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 423
        Top = 31
        Width = 7
        Height = 13
        Caption = '~'
      end
      object Label6: TLabel
        Left = 530
        Top = 28
        Width = 153
        Height = 16
        Caption = 'CR1/CR2/SMS/PDT/CFM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 727
        Top = 4
        Width = 22
        Height = 16
        Caption = 'SR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 695
        Top = 27
        Width = 51
        Height = 16
        Caption = 'Material:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 425
        Top = 4
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
      object Label17: TLabel
        Left = 679
        Top = 52
        Width = 63
        Height = 16
        Caption = 'ColorWay:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 294
        Top = 51
        Width = 45
        Height = 16
        Caption = 'Testno:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 301
        Top = 29
        Width = 31
        Height = 16
        Caption = 'From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
        Left = 98
        Top = 1
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
        Left = 146
        Top = 1
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
        Left = 194
        Top = 1
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
      object BB7: TBitBtn
        Left = 242
        Top = 1
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
        TabOrder = 6
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
      object Edit1: TEdit
        Left = 339
        Top = 1
        Width = 80
        Height = 21
        AutoSelect = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        ParentFont = False
        TabOrder = 7
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 614
        Top = 2
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        TabOrder = 8
        OnKeyPress = Edit3KeyPress
      end
      object DTP1: TDateTimePicker
        Left = 339
        Top = 27
        Width = 83
        Height = 21
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        TabOrder = 12
      end
      object DTP2: TDateTimePicker
        Left = 433
        Top = 27
        Width = 83
        Height = 21
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        TabOrder = 13
      end
      object Button1: TButton
        Left = 889
        Top = 26
        Width = 60
        Height = 25
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = Button1Click
      end
      object Check: TCheckBox
        Left = 900
        Top = 4
        Width = 51
        Height = 17
        Caption = 'Mine'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 9
      end
      object BDT6: TBitBtn
        Left = 950
        Top = 0
        Width = 55
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Print-S'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BDT6Click
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
      object CheckBox1: TCheckBox
        Left = 1255
        Top = 4
        Width = 172
        Height = 17
        Caption = 'Print out the Shoe Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object BDT7: TBitBtn
        Left = 1004
        Top = 0
        Width = 49
        Height = 49
        Caption = 'Excel'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = BitBtn1Click
      end
      object BrandCombo: TComboBox
        Left = 466
        Top = 1
        Width = 89
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 16
        Visible = False
      end
      object ColorwayEdit: TEdit
        Left = 752
        Top = 49
        Width = 137
        Height = 21
        AutoSelect = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeMode = imAlpha
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        ParentFont = False
        TabOrder = 17
        OnKeyPress = Edit1KeyPress
      end
      object Print_A: TBitBtn
        Left = 1630
        Top = 0
        Width = 55
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Print-A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        Visible = False
        OnClick = Print_AClick
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
      object BDT9: TButton
        Left = 1052
        Top = 0
        Width = 49
        Height = 49
        Caption = 'CBY Excel'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        WordWrap = True
        OnClick = BDT9Click
      end
      object BDT8: TBitBtn
        Left = 1160
        Top = 0
        Width = 81
        Height = 49
        Caption = 'Print-Tw Size'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = BDT8Click
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
      object Button8: TButton
        Left = 1256
        Top = 48
        Width = 81
        Height = 25
        Caption = 'Manager Check'
        Enabled = False
        TabOrder = 20
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 1352
        Top = 47
        Width = 81
        Height = 25
        Caption = 'Revise'
        TabOrder = 21
        OnClick = Button9Click
      end
      object Edit5: TEdit
        Left = 339
        Top = 49
        Width = 80
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object BDT10: TBitBtn
        Left = 1101
        Top = 0
        Width = 60
        Height = 49
        Caption = 'Print-Tw'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnClick = BDT10Click
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
    end
    object BBTT1: TBitBtn
      Left = 707
      Top = 2
      Width = 19
      Height = 22
      Caption = '...'
      TabOrder = 1
      Visible = False
      OnClick = BBTT1Click
    end
    object Panel2: TPanel
      Left = 560
      Top = 104
      Width = 337
      Height = 145
      TabOrder = 3
      Visible = False
      object Label18: TLabel
        Left = 40
        Top = 8
        Width = 75
        Height = 13
        Caption = 'ACCEPTMEMO'
      end
      object Button3: TButton
        Left = 40
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Save'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 208
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = Button4Click
      end
      object Memo2: TMemo
        Left = 40
        Top = 24
        Width = 257
        Height = 81
        TabOrder = 2
      end
    end
    object Panel4: TPanel
      Left = 848
      Top = 128
      Width = 137
      Height = 97
      TabOrder = 4
      Visible = False
      object Label19: TLabel
        Left = 16
        Top = 16
        Width = 29
        Height = 13
        Caption = 'HGLB'
      end
      object ComboBox1: TComboBox
        Left = 52
        Top = 13
        Width = 57
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          ''
          'NK'
          'KD'
          'HD'
          'GC'
          'XT')
      end
      object Button5: TButton
        Left = 0
        Top = 48
        Width = 57
        Height = 25
        Caption = 'Save'
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 80
        Top = 48
        Width = 57
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = Button6Click
      end
    end
  end
  object ArticleEdit: TEdit
    Left = 752
    Top = 1
    Width = 137
    Height = 21
    AutoSelect = False
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeMode = imAlpha
    ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object MatNoEdit: TEdit
    Left = 752
    Top = 25
    Width = 137
    Height = 21
    AutoSelect = False
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
    ParentFont = False
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object PC1: TPageControl
    Left = 0
    Top = 269
    Width = 1701
    Height = 389
    ActivePage = TS4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object TS4: TTabSheet
      Caption = 'Detail'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1693
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BBTT2: TBitBtn
          Left = 293
          Top = 22
          Width = 82
          Height = 25
          Caption = '1.Import Mat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = BBTT2Click
        end
        object Panel5: TPanel
          Left = 1325
          Top = 1
          Width = 367
          Height = 48
          Align = alRight
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 6
          object Label7: TLabel
            Left = 311
            Top = 7
            Width = 32
            Height = 39
            Caption = 'No Article =ALL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object btn2: TButton
            Left = 5
            Top = 2
            Width = 44
            Height = 46
            Caption = 'Check'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = btn2Click
          end
          object btn1: TButton
            Left = 48
            Top = 2
            Width = 44
            Height = 46
            Caption = 'SKU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btn1Click
          end
          object BO5: TBitBtn
            Left = 91
            Top = 2
            Width = 44
            Height = 46
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BO5Click
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
          object BO3: TBitBtn
            Left = 134
            Top = 2
            Width = 44
            Height = 46
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BO3Click
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
          object BO4: TBitBtn
            Left = 177
            Top = 2
            Width = 45
            Height = 46
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BO4Click
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
          object BO2: TBitBtn
            Left = 221
            Top = 2
            Width = 44
            Height = 46
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = BO2Click
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
          object BO7: TBitBtn
            Left = 264
            Top = 2
            Width = 44
            Height = 46
            Hint = 'Delete one Record'
            Caption = 'Del-all'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BO7Click
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
        object BBTT3: TBitBtn
          Left = 378
          Top = 22
          Width = 125
          Height = 25
          Caption = '2.Import .Merge Mat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Visible = False
          OnClick = BBTT3Click
        end
        object BD2: TBitBtn
          Left = 2
          Top = 1
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
          Top = 1
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
          Top = 1
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
          Top = 1
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
          Top = 1
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
        object BD7: TBitBtn
          Left = 242
          Top = 1
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
          TabOrder = 5
          OnClick = BD7Click
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
        object BBTT4: TBitBtn
          Left = 505
          Top = 22
          Width = 96
          Height = 25
          Caption = '3.Import Spec.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnClick = BBTT4Click
        end
        object Button7: TButton
          Left = 727
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Reload SR'
          TabOrder = 10
          OnClick = Button7Click
        end
        object BBTT5: TBitBtn
          Left = 604
          Top = 22
          Width = 112
          Height = 25
          Caption = '4.Import CBY Mat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = False
          OnClick = BBTT5Click
        end
        object Button10: TButton
          Left = 805
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Article_all'
          TabOrder = 12
          OnClick = Button10Click
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 50
        Width = 1693
        Height = 308
        Align = alClient
        TabOrder = 1
        object spl1: TSplitter
          Left = 1333
          Top = 1
          Width = 4
          Height = 306
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGrid4: TDBGridEh
          Left = 1
          Top = 1
          Width = 1332
          Height = 306
          Align = alClient
          DataSource = DS4
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          ParentFont = False
          PopupMenu = Pop1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid4DblClick
          OnDrawColumnCell = DBGrid4DrawColumnCell
          OnEditButtonClick = DBGrid4EditButtonClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CTS'
              Footers = <>
              Visible = False
              Width = 27
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material No'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'cldhflex'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Flex MatNO'
              Width = 139
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Mat. Name'
              Width = 312
            end
            item
              EditButtons = <>
              FieldName = 'MatRemark'
              Footers = <>
              Title.Caption = 'Mat.Remark'
              Width = 120
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Qty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Width = 39
            end
            item
              DisplayFormat = '#.##'
              EditButtons = <>
              FieldName = 'onthewayqty'
              Footers = <>
              Title.Caption = 'On the way qty'
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Unit'
              Width = 26
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'YQDate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Req. Date'
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'A4Comfirm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'ColorWindow'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 147
            end
            item
              EditButtons = <>
              FieldName = 'QuotFile'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              Footers = <>
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'Memo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 133
            end
            item
              EditButtons = <>
              FieldName = 'JGNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Merge NO'
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'USPrice'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'ACCUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'USAmount'
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'ACCVN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'VNAmount'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'XqQty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Req. Qty'
              Width = 46
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'USERID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Width = 51
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'USERDate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Width = 57
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Article_All'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Width = 276
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Type'
              Width = 52
            end>
        end
        object DBGrid1: TDBGridEh
          Left = 1337
          Top = 1
          Width = 355
          Height = 306
          Align = alRight
          DataSource = DS5
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          PopupMenu = Pop_CGS
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnEditButtonClick = DBGrid1EditButtonClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'productionLocation'
              Footers = <>
              Title.Caption = 'ProductionLocation'
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              PickList.Strings = (
                'ALL')
              Title.Caption = 'Sample No.'
              Width = 165
            end
            item
              ButtonStyle = cbsNone
              Color = 11927551
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SR#'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'yssm'
              Footers = <>
              Title.Caption = 'Color Way'
              Width = 100
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 32
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = 'Pur. Qty'
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Req. Qty'
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              ReadOnly = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'Memo'
              Footers = <>
              Title.Caption = 'TestNo'
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = 'Type'
              Width = 117
            end
            item
              AutoDropDown = True
              DropDownRows = 20
              EditButtons = <>
              FieldName = 'XXCC'
              Footers = <>
              PickList.Strings = (
                'ZZZZZZ'
                '01.0'
                '01.5'
                '02.0'
                '02.5'
                '03.0'
                '03.5'
                '04.0'
                '04.5'
                '05.0'
                '05.5'
                '06.0'
                '06.5'
                '07.0'
                '07.5'
                '08.0'
                '08.5'
                '09.0'
                '09.5'
                '10.0'
                '10.5'
                '11.0'
                '11.5'
                '12.0'
                '12.5'
                '13.0'
                '13.5'
                '14.0'
                '15.0'
                '16.0'
                '17.0'
                '18.0')
              Title.Caption = 'OS Size'
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'XIEMING'
              Footers = <>
              Title.Caption = 'Shoe Name'
              Width = 122
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = 'P.O.'
              Width = 93
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat. No'
              Width = 126
            end
            item
              EditButtons = <>
              FieldName = 'category'
              Footers = <>
              Title.Caption = 'Category'
              Width = 66
            end>
        end
        object ScrollBar1: TScrollBar
          Left = 952
          Top = 112
          Width = 121
          Height = 17
          PageSize = 0
          TabOrder = 2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Problem Article '
      ImageIndex = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 369
        Height = 358
        Align = alLeft
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 367
          Height = 34
          Align = alTop
          TabOrder = 0
          object Label25: TLabel
            Left = 114
            Top = 12
            Width = 107
            Height = 16
            Caption = 'Problem Article'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBGrid2: TDBGridEh
          Left = 1
          Top = 35
          Width = 367
          Height = 322
          Align = alClient
          DataSource = DS_Check
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid1EditButtonClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = 'Purchase NO'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Title.Caption = 'UserID'
              Width = 125
            end>
        end
      end
      object Panel9: TPanel
        Left = 369
        Top = 0
        Width = 987
        Height = 358
        Align = alClient
        TabOrder = 1
        object Label2: TLabel
          Left = 24
          Top = 211
          Width = 67
          Height = 16
          Caption = '[Article#] '
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 118
          Top = 83
          Width = 108
          Height = 16
          Caption = '1.Can be empty'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 118
          Top = 190
          Width = 338
          Height = 16
          Caption = '2.[CR1][CR2][PSE][SMS][FES][MCS][PDT][SMU]'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 118
          Top = 234
          Width = 137
          Height = 16
          Caption = '3. [SM1][SM2][SEE]'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 39
          Top = 82
          Width = 29
          Height = 16
          Caption = '[All]'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label16: TLabel
          Left = 30
          Top = 53
          Width = 57
          Height = 20
          Caption = 'Article '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 278
          Top = 54
          Width = 49
          Height = 20
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 11
          Top = 75
          Width = 524
          Height = 2
          Brush.Color = clBlack
        end
        object Shape2: TShape
          Left = 12
          Top = 136
          Width = 523
          Height = 2
          Brush.Color = clBlack
        end
        object Shape3: TShape
          Left = 11
          Top = 50
          Width = 524
          Height = 2
          Brush.Color = clBlack
        end
        object Shape4: TShape
          Left = 11
          Top = 290
          Width = 524
          Height = 2
          Brush.Color = clBlack
        end
        object Shape5: TShape
          Left = 11
          Top = 51
          Width = 2
          Height = 241
          Brush.Color = clBlack
        end
        object Shape6: TShape
          Left = 100
          Top = 50
          Width = 2
          Height = 241
          Brush.Color = clBlack
        end
        object Label22: TLabel
          Left = 118
          Top = 155
          Width = 116
          Height = 16
          Caption = '1.Can'#39't be empty'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Shape7: TShape
          Left = 533
          Top = 50
          Width = 2
          Height = 242
          Brush.Color = clBlack
        end
        object Label23: TLabel
          Left = 132
          Top = 206
          Width = 158
          Height = 16
          Caption = 'Must exist in ERP-BOM'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label24: TLabel
          Left = 135
          Top = 250
          Width = 185
          Height = 16
          Caption = 'No need exist in ERP-BOM'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label26: TLabel
          Left = 33
          Top = 115
          Width = 47
          Height = 16
          Caption = '[Total]'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Shape8: TShape
          Left = 12
          Top = 104
          Width = 523
          Height = 2
          Brush.Color = clBlack
        end
        object Label29: TLabel
          Left = 118
          Top = 115
          Width = 108
          Height = 16
          Caption = '1.Can be empty'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 985
          Height = 35
          Align = alTop
          Color = clBlack
          TabOrder = 0
          object Label27: TLabel
            Left = 8
            Top = 7
            Width = 127
            Height = 20
            Caption = 'Problem Article:'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label28: TLabel
            Left = 296
            Top = 7
            Width = 36
            Height = 20
            Caption = '===>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit2: TEdit
            Left = 137
            Top = 5
            Width = 152
            Height = 25
            AutoSelect = False
            CharCase = ecUpperCase
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'VNI-Times'
            Font.Style = []
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 337
            Top = 5
            Width = 168
            Height = 25
            AutoSelect = False
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'VNI-Times'
            Font.Style = []
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            ParentFont = False
            TabOrder = 1
            OnKeyPress = Edit1KeyPress
          end
          object Button2: TButton
            Left = 514
            Top = 6
            Width = 114
            Height = 24
            Caption = 'Batch Update'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = Button2Click
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'MeMO'
      ImageIndex = 2
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1693
        Height = 358
        Align = alClient
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = 14822282
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Lines.Strings = (
          
            '----------------------------------------------------------------' +
            '-'
          #31243#24335#20027#35201#21151#33021#35498#26126
          ''
          #20027#35201#29992#26044#25505#36092#27171#21697#21934#19979#21934
          #36039#26009#20358#28304#20998#21029#26044
          'Purchase N764  '#30906#35469#25505#36092#21069#32622#26178#38291#33287#26368#20302#36092#36023#37327
          'Purchase N72  '#30906#35469#21512#20341#27171#21697#21934
          ''
          
            '----------------------------------------------------------------' +
            '-'
          #36039#26009#31721#36984#25805#20316#35498#26126
          ''
          'PoNo:'#25505#36092#21934#34399
          'SuppName:'#20379#25033#21830#21517#31281
          'SR:'#38795#39636#37559#27171
          'Material:'#26448#26009
          ''
          
            '----------------------------------------------------------------' +
            '-'
          #37325#40670#27396#20301#35498#26126
          ''
          'Su ID:'#24288#21830#32232#34399
          'Zsdhflex:'#23458#20154#23565#24288#21830#30340#20195#34399
          'Supplier Name:'#20379#25033#21830#21517#31281
          'Pur Date:'#25505#36092#26178#38291
          'Department:'#37096#38272
          'HGLB:'#36914#21475#39006#21029
          '->NK'#36914#21475',HD'#32005#30332#31080',KD'#36914#21475#32371#31237',GC'#24288#20839#21152#24037',XT'#35351#24118
          'FlexMatNo:Flex'#26448#26009#21934#34399
          'MegreNo:'#21512#20341#21934#34399
          'Req Date:'#35201#27714#26085#26399
          'Ywsm:'#33521#25991#35498#26126
          'Production Location:'#29983#29986#22320#40670
          'Os size:'#38795#22411#23610#23544
          'CGNO:'#25505#36092#21934#34399
          'ZLBH:'#21046#20196#32232#34399
          'CLBH:'#26448#26009#32232#34399
          ''
          
            '----------------------------------------------------------------' +
            '-')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 724
    Top = 452
  end
  object CGMas: TQuery
    AfterOpen = CGMasAfterOpen
    AfterScroll = CGMasAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  ypzlzl.ProductionLocation,cgzl.CGNO,cgzl.cgno+'#39' '#39'+cgzl.h' +
        'glb as CGNO1,cgzl.GSBH,cgzl.ZSBH,cgzl.CGDATE,cgzl.USERDATE,cgzl.' +
        'USERID,cgzl.CGLX,cgzl.YN,'
      '       cgzl.SEASON,cgzl.PURPOSE,cgzl.DEVTYPE,cgzl.MEMO,'
      '       ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,busers.USERNAME,ZSZL.fzr,'
      '       case when CGZL.HGLB='#39'XT'#39' then '#39' '#39' else CGZL.HGLB end HGLB'
      
        '       ,zszl_flex.zsdhflex,CGZL_ACCEPT.acceptno,CGZL_ACCEPT.USER' +
        'ID as ACCEPTUSERID,CGZL_ACCEPT.USERDATE as ACCEPTUSERDATE,CGZL_A' +
        'CCEPT.MEMO as ACCEPTMEMO,CGZL.Printtime'
      
        #9'   ,CGZL.ManagerID,CGZL.ManagerDate,CGZL.PrintTW,CGZL.PrintS,CG' +
        'ZL.Brand,CGZLS.ReturnDate,IsNull(ZSZLTW.zsywjc,ZSZL.zsywjc) as z' +
        'sywjctw,GamePlan.Material_ETA'
      'from CGZL'
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH=' +
        #39'CDC'#39
      'Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW '
      'left join busers on CGZL.USERID = busers.USERID'
      'left join cgzlss on cgzl.cgno=cgzlss.cgno'
      'left join ypzl on cgzlss.zlbh=ypzl.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join zszl_flex on zszl_flex.ZSdH=cgzl.ZSBH'
      'left join cgzls on cgzls.cgno=cgzl.cgno'
      'left join ypzlzl on ypzlzl.ypzlbh=CGZLs.bjno'
      'left join shoetest on ypzl.ypdh=shoetest.ypdh'
      'left join CGZL_ACCEPT on CGZL.CGNO = CGZL_ACCEPT.CGNO'
      
        'left join (select Season, Stage, MAX(Material_ETA) AS Material_E' +
        'TA from GamePlan'
      '           GROUP BY Season,Stage'
      
        '           ) AS GamePlan on CGZL.Season=GamePlan.Season and CGZL' +
        '.PURPOSE=GamePlan.Stage'
      'where CGZL.CGNO like '#39'%'#39' '
      '  and ZSZL.ZSYWJC like '#39'%%'#39' '
      
        ' and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  ' +
        'between '
      #39'2022/06/01'#39' and  '#39'2022/06/30'#39
      'and CGZL.CGLX='#39'6'#39
      'and CGZL.GSBH='#39'CDC'#39
      
        'Group by ypzlzl.ProductionLocation,cgzl.CGNO,cgzl.GSBH,cgzl.ZSBH' +
        ',cgzl.CGDATE,cgzl.USERDATE,cgzl.USERID,cgzl.CGLX,cgzl.YN,'
      '         cgzl.SEASON,cgzl.PURPOSE,cgzl.DEVTYPE,cgzl.MEMO,'
      
        '         ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,busers.USERNAME,ZSZL.fzr,CG' +
        'ZL.hglb,zszl_flex.zsdhflex, '
      
        '         CGZL_ACCEPT.acceptno,CGZL_ACCEPT.USERID,CGZL_ACCEPT.USE' +
        'RDATE,CGZL_ACCEPT.MEMO,CGZL.Printtime,CGZL.ManagerID,CGZL.Manage' +
        'rDate'
      
        #9#9' ,CGZL.PrintTW,CGZL.PrintS,CGZL.Brand,CGZLS.ReturnDate,ZSZLTW.' +
        'zsywjc,GamePlan.Material_ETA '
      'order by cgzl.CGNO DESC')
    UpdateObject = UpMas
    Left = 20
    Top = 148
    object CGMasCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CGMasCGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGMasCGLX: TStringField
      FieldName = 'CGLX'
      FixedChar = True
      Size = 1
    end
    object CGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CGMasCZ: TStringField
      FieldName = 'CZ'
      FixedChar = True
    end
    object CGMasDH: TStringField
      FieldName = 'DH'
      FixedChar = True
    end
    object CGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object CGMasSEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object CGMasPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object CGMasMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object CGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
      Size = 200
    end
    object CGMasUSERNAME: TStringField
      FieldName = 'USERNAME'
      FixedChar = True
      Size = 30
    end
    object CGMasfzr: TStringField
      FieldName = 'fzr'
      FixedChar = True
    end
    object CGMasHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 6
    end
    object CGMasDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
    object CGMaszsdhflex: TStringField
      FieldName = 'zsdhflex'
      FixedChar = True
      Size = 15
    end
    object CGMasProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object CGMasCGNO1: TStringField
      FieldName = 'CGNO1'
      FixedChar = True
      Size = 16
    end
    object CGMasacceptno: TStringField
      FieldName = 'acceptno'
      FixedChar = True
      Size = 11
    end
    object CGMasACCEPTUSERID: TStringField
      FieldName = 'ACCEPTUSERID'
      FixedChar = True
      Size = 15
    end
    object CGMasACCEPTUSERDATE: TDateTimeField
      FieldName = 'ACCEPTUSERDATE'
    end
    object CGMasACCEPTMEMO: TStringField
      FieldName = 'ACCEPTMEMO'
      FixedChar = True
      Size = 255
    end
    object CGMasPrinttime: TIntegerField
      FieldName = 'Printtime'
    end
    object CGMasManagerID: TStringField
      FieldName = 'ManagerID'
      FixedChar = True
      Size = 15
    end
    object CGMasManagerDate: TDateTimeField
      FieldName = 'ManagerDate'
    end
    object CGMasPrintTW: TIntegerField
      FieldName = 'PrintTW'
    end
    object CGMasPrintS: TIntegerField
      FieldName = 'PrintS'
    end
    object CGMasBrand: TStringField
      FieldName = 'Brand'
      FixedChar = True
    end
    object CGMasReturnDate: TDateTimeField
      FieldName = 'ReturnDate'
    end
    object CGMaszsywjctw: TStringField
      FieldName = 'zsywjctw'
      FixedChar = True
    end
    object CGMasPosition: TStringField
      FieldName = 'Position'
      Size = 50
    end
    object CGMasReason: TStringField
      FieldName = 'Reason'
      Size = 100
    end
    object CGMasFlowflag_TK: TStringField
      FieldName = 'Flowflag_TK'
      Size = 2
    end
    object CGMasTimeRevise: TStringField
      FieldName = 'TimeRevise'
      Size = 10
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL'
      'set'
      '  CGNO = :CGNO,'
      '  GSBH = :GSBH,'
      '  ZSBH = :ZSBH,'
      '  CGDate = :CGDate,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  CGLX = :CGLX,'
      '  YN = :YN,'
      '  HGLB = :HGLB,'
      '  SEASON=:SEASON,'
      '  PURPOSE=:PURPOSE,'
      '  DevType=:DevType,'
      '  MEMO=:MEMO,'
      '  ManagerID=:ManagerID,'
      '  ManagerDate=:ManagerDate,'
      '  Printtime=:Printtime,'
      '  PrintTw=:PrintTw,'
      '  PrintS=:PrintS,'
      '  Brand=:Brand,'
      '  Reason=:Reason'
      ''
      'where'
      '  CGNO = :OLD_CGNO')
    InsertSQL.Strings = (
      'insert into CGZL'
      
        '  (CGNO, GSBH, ZSBH, CGDate, USERDate, USERID, CGLX, YN,SEASON,P' +
        'URPOSE,DevType,HGLB,MEMO,Brand,Reason)'
      'values'
      
        '  (:CGNO, :GSBH, :ZSBH, :CGDate, :USERDate, :USERID, :CGLX, :YN,' +
        ':SEASON,:PURPOSE,:DevType,:HGLB,:MEMO,:Brand, :Reason)')
    DeleteSQL.Strings = (
      'delete from CGZL'
      'where'
      '  CGNO = :OLD_CGNO')
    Left = 20
    Top = 180
  end
  object DS3: TDataSource
    DataSet = CGMas
    Left = 20
    Top = 116
  end
  object CGDet: TQuery
    AfterOpen = CGDetAfterOpen
    OnCalcFields = CGDetCalcFields
    OnNewRecord = CGDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select CGZLS.*,CGZL_color2.A4Comfirm,CGZL_color2.ColorWindow'
      '       ,CLZL.lycc,'
      '       CLZL.YWPM,clbzzl.bz as MatRemark,'
      '       CLZL.DWBH,clzl_flex.cldhflex,'
      
        '       CAST(CASE WHEN CBY_MaterialCTS.CLBH IS NOT NULL THEN 1 EL' +
        'SE 0 END AS BIT) AS CTS'
      
        #9'   , CGZL_color2.DateA4Comfirm, DATEADD(year, 2, CGZL_color2.Da' +
        'teA4Comfirm) as DateA4Comfirmexpired'
      
        #9'   , CGZL_color2.DateColorWindow, DATEADD(year, 2, CGZL_color2.' +
        'DateColorWindow) as DateColorWindowexpired'
      '     ,'
      '     case when substring(CGZLS.CLBH,1,1) <> '#39'W'#39' then'
      
        '(select isnull(sum(isnull(xqqty,0))-sum(isnull(qty,0)),0) from C' +
        'GZLInvoiceS where CLBH = CGZLS.CLBH) +'
      
        'isnull((select sum(qty) from cgzls a left join CGZL b on b.CGNO ' +
        '= a.CGNO  where clbh = CGZLS.CLBH and b.GSBH = '#39'CDC'#39' '
      
        'and a.cgno not in (select distinct cgno from CGZLInvoiceS where ' +
        'CLBH = CGZLS.CLBH)),0) else 0 end as onthewayqty'
      
        ',max(case when ((left(CGZLS.Article_All,1)='#39'S'#39' or left(CGZLS.Art' +
        'icle_All,1)='#39'G'#39') and KFXXZL.Devtype = '#39'CTM'#39' and (R1Sample.RSD is' +
        ' not null and convert(datetime,R1Sample.RSD,111)-14 > getdate())' +
        ') then convert(datetime,R1Sample.RSD,111)-14'
      
        #9#9'  when (left(CGZLS.Article_All,1)='#39'C'#39' and KFXXZL.Devtype = '#39'CT' +
        'M'#39' and (R3Sample.RSD is not null and convert(datetime,R3Sample.R' +
        'SD,111)-14 > getdate())) then convert(datetime,R3Sample.RSD,111)' +
        '-14'
      
        #9#9'  when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype = '#39'In' +
        'cubate'#39' and CGZL.PURPOSE='#39'CR1'#39' and (R1Sample.RSD is not null and' +
        ' convert(datetime,R1Sample.RSD,111)-14 > getdate())) then conver' +
        't(datetime,R1Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR2'#39' and (R2Sample.RSD is not nu' +
        'll and convert(datetime,R2Sample.RSD,111)-14 > getdate())) then ' +
        'convert(datetime,R2Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'SMS'#39' and (R3Sample.RSD is not nu' +
        'll and convert(datetime,R3Sample.RSD,111)-14 > getdate())) then ' +
        'convert(datetime,R3Sample.RSD,111)-14'
      
        '          when (GamePlan.Material_ETA is not null and convert(da' +
        'tetime,GamePlan.Material_ETA ,111) > getdate()) then GamePlan.Ma' +
        'terial_ETA'
      
        '          else null end ) as Material_ETA ,CLZL_FLEX_Quot.QuotFi' +
        'le'
      'from CGZLS'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb='#39'E'#39
      'left join clzl_flex on clzl_flex.CLdH=CGZLS.CLBH'
      
        'left join(select CLZL.cldh,Max(case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '         when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEMP.CL' +
        'BH  IS NOT NULL and CLZL_LS.JHDH <>'#39#39') THEN CLZL_LS.JHDH'
      
        '         when (cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JH' +
        'DH <>'#39#39') THEN CLZL_LS.JHDH'
      '         else CLZL.cldh  end) ColorCLDH  '
      '     From CLZL '
      
        '     left join(select CLDH,JHDH from  CLZL_LS UNION ALL select J' +
        'HDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=C' +
        'LZL.cldh '
      '     left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '     left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.' +
        'CLBH=CLZL_LS.JHDH'
      '     group by CLZL.cldh'
      '     )ColorCLDH on ColorCLDH.CLDH=cgzls.clbh'
      '  left join cgzl_color2 on cgzl_color2.clbh=ColorCLDH.ColorCLDH'
      '--left join CGZL_color2 on CGZL_color2.clbh=cgzls.clbh'
      'left join CBY_MaterialCTS ON CBY_MaterialCTS.CLBH = CGZLS.CLBH'
      'left join CGZL  on CGZl.CGNO=CGZLS.CGNO '
      
        'left join cgzlss on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss' +
        '.clbh'
      'left join YPZL on  YPZL.YPDH=cgzlss.ZLBH '
      
        'left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.She' +
        'Hao = YPZL.SheHao '
      'left join ('
      
        '  select Season, Stage, MAX(Material_ETA) AS Material_ETA from G' +
        'amePlan'
      '  GROUP BY Season,Stage'
      
        ') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=Ga' +
        'mePlan.Stage'
      
        'left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2S' +
        'ample.Shehao = KFXXZL.Shehao'
      
        'left join CLZL_FLEX_Quot on CLZL_FLEX_Quot.cldhflex=CLZL_FLEX.cl' +
        'dhflex and CLZL_FLEX_Quot.GSBH= case when CGZL.PURPOSE='#39'CBY'#39' the' +
        'n '#39'CBY'#39' else CGZL.GSBH end'
      'where CGZLS.CGNO=:CGNO '
      
        'group by cgzls.cgno,cgzls.clbh,cgzls.xqQty,cgzls.qty,cgzls.uspri' +
        'ce,cgzls.VNPrice,cgzls.Memo,cgzls.BJNO,cgzls.YQDate,cgzls.CFMDat' +
        'e,cgzls.UserDate,cgzls.userid,cgzls.yn,'
      
        'cgzls.jgno,cgzls.billno,cgzls.way,cgzls.remark,cgzls.memo1,cgzls' +
        '.dgdate,cgzls.eta,cgzls.article_all,cgzls.qusprice,cgzls.qvnpric' +
        'e,cgzls.ReturnDate,cgzls.ReturnQuantity,cgzls.SerialNumber,'
      'CGZL_color2.A4Comfirm,CGZL_color2.ColorWindow,'
      
        'CLZL.lycc,CLZL.YWPM,CLZL.DWBH,clzl_flex.cldhflex,CGZLS.DelayReas' +
        'on,'
      'CASE WHEN CBY_MaterialCTS.CLBH IS NOT NULL THEN 1 ELSE 0 END'
      
        ',CGZL_color2.DateA4Comfirm, CGZL_color2.DateColorWindow,cgzls.Co' +
        'mmitedETD,clbzzl.bz ,CLZL_FLEX_Quot.QuotFile'
      'order by  CGZLS.CGNO, CGZLS.CLBH')
    UpdateObject = UPDet
    Left = 20
    Top = 420
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetMatRemark: TStringField
      FieldName = 'MatRemark'
      FixedChar = True
      Size = 80
    end
    object CGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CGDetXqQty: TCurrencyField
      FieldName = 'XqQty'
      DisplayFormat = '#,##0.0000'
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0000'
    end
    object CGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object CGDetACCUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object CGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object CGDetACCVN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      DisplayFormat = '#,##0'
      Calculated = True
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'YYYY/MM/dd'
    end
    object CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'MM/dd'
    end
    object CGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'MM/dd'
    end
    object CGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CGDetREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object CGDetMEMO1: TStringField
      FieldName = 'MEMO1'
      FixedChar = True
      Size = 30
    end
    object CGDetJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetArticle_All: TStringField
      FieldName = 'Article_All'
      FixedChar = True
      Size = 250
    end
    object CGDetlycc: TStringField
      FieldName = 'lycc'
      FixedChar = True
      Size = 1
    end
    object CGDetcldhflex: TStringField
      FieldName = 'cldhflex'
      FixedChar = True
      Size = 15
    end
    object CGDetA4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 50
    end
    object CGDetColorWindow: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object CGDetCTS: TBooleanField
      FieldName = 'CTS'
    end
    object CGDetDateA4Comfirmexpired: TDateTimeField
      FieldName = 'DateA4Comfirmexpired'
    end
    object CGDetDateColorWindowexpired: TDateTimeField
      FieldName = 'DateColorWindowexpired'
    end
    object CGDetonthewayqty: TCurrencyField
      FieldName = 'onthewayqty'
    end
    object CGDetMaterial_ETA: TDateTimeField
      FieldName = 'Material_ETA'
    end
    object CGDetQuotFile: TStringField
      FieldName = 'QuotFile'
      Size = 100
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZLS'
      'set'
      '  CGNO = :CGNO,'
      '  CLBH = :CLBH,'
      '  XqQty = :XqQty,'
      '  Qty = :Qty,'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice,'
      '  Memo = :Memo,'
      '  BJNO = :BJNO,'
      '  YQDate = :YQDate,'
      '  CFMDate = :CFMDate,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  REMARK =:REMARK,'
      '  JGNO=:JGNO'
      'where'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CGZLS'
      
        '  (CGNO, CLBH, XqQty, Qty, USPrice, VNPrice, Memo, BJNO, YQDate,' +
        ' CFMDate, '
      '   USERDate, USERID, YN,JGNO)'
      'values'
      
        '  (:CGNO, :CLBH, :XqQty, :Qty, :USPrice, :VNPrice, :Memo, :BJNO,' +
        ' :YQDate, '
      '   :CFMDate, :USERDate, :USERID, :YN,:JGNO)')
    DeleteSQL.Strings = (
      'delete from CGZLS'
      'where'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH')
    Left = 20
    Top = 452
  end
  object DS4: TDataSource
    DataSet = CGDet
    Left = 20
    Top = 388
  end
  object CGS: TQuery
    OnNewRecord = CGSNewRecord
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'select CGZLSS.*,IsNull(KFXXZL.devcode,'#39'ALL'#39') as Article,KFXXZL.X' +
        'IEMING ,KFXXZL.FD,ypzl.ypcc,kfxxzl.XTMH,kfxxzl.daomh,'
      
        '-- (SELECT memo   FROM  CGZLS WHERE  CGZLS.CGNO = CGZLSS.CGNO AN' +
        'D CGZLS.CLBH = CGZLSS.CLBH) AS memo ,'
      
        ' lbzls.ywsm,YPZL.productionLocation,kfxxzl.MDMH,ypzl.ypcco,kfxxz' +
        'l.DDMH,kfxxzl.yssm,xxzlkf.category'
      'from CGZLSS'
      'Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH'
      
        'Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      
        'left join XXZLKF on XXZLKF.SheHao = YPZL.SheHao and XXZLKF.XieXi' +
        'ng = YPZL.XieXing'
      'left join lbzls on lbzls.lbdh=kfxxzl.xiegn and lbzls.lb='#39'03'#39
      'where CGZLSS.CGNO=:CGNO'
      'and CGZLSS.CLBH=:CLBH'
      'order by CGZLSS.ZLBH,CGZLSS.XXCC')
    UpdateObject = UpOrdMat
    Left = 1012
    Top = 420
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CGSCGNO: TStringField
      FieldName = 'CGNO'
      Origin = 'DB.CGZLSS.CGNO'
      FixedChar = True
      Size = 11
    end
    object CGSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CGZLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object CGSZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.CGZLSS.ZLBH'
      FixedChar = True
    end
    object CGSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.CGZLSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object CGSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.CGZLSS.Qty'
      DisplayFormat = '#,##0.0000'
    end
    object CGSCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.CGZLSS.CLSL'
      DisplayFormat = '#,##0.0000'
    end
    object CGSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.CGZLSS.USERDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZLSS.USERID'
      FixedChar = True
      Size = 15
    end
    object CGSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZLSS.YN'
      FixedChar = True
      Size = 1
    end
    object CGSYQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.CGZLSS.YQDate'
    end
    object CGSCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.CGZLSS.CFMDate'
    end
    object strngfldCGSXIEMING: TStringField
      FieldName = 'XIEMING'
      FixedChar = True
      Size = 50
    end
    object strngfldCGSStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object CGSFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object CGSArticle: TStringField
      FieldName = 'Article'
      OnSetText = CGSArticleSetText
      FixedChar = True
    end
    object CGSywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object CGSypcc: TStringField
      FieldName = 'ypcc'
      FixedChar = True
      Size = 6
    end
    object CGSXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object CGSdaomh: TStringField
      FieldName = 'daomh'
      FixedChar = True
      Size = 30
    end
    object CGSproductionLocation: TStringField
      FieldName = 'productionLocation'
      FixedChar = True
      Size = 4
    end
    object CGSMDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 30
    end
    object CGSDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object CGSypcco: TStringField
      FieldName = 'ypcco'
      FixedChar = True
      Size = 6
    end
    object CGSyssm: TStringField
      FieldName = 'yssm'
      FixedChar = True
      Size = 50
    end
    object CGSMemo: TStringField
      FieldName = 'Memo'
      OnChange = CGSMemoChange
      FixedChar = True
      Size = 11
    end
    object CGScategory: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
  end
  object UpOrdMat: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZLSS'
      'set'
      '  CGNO = :CGNO,'
      '  CLBH = :CLBH,'
      '  ZLBH = :ZLBH,'
      '  XXCC = :XXCC,'
      '  Stage = :Stage,'
      '  Qty = :Qty,'
      '  CLSL = :CLSL,'
      '  YQDate = :YQDate,'
      '  CFMDate = :CFMDate,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  Memo = :Memo'
      'where'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZLBH = :OLD_ZLBH and'
      '  XXCC = :OLD_XXCC and'
      '  Stage = :OLD_Stage')
    InsertSQL.Strings = (
      'insert into CGZLSS'
      
        '  (CGNO, CLBH, ZLBH, XXCC, Stage, Qty, CLSL, YQDate, CFMDate, US' +
        'ERDate, USERID, '
      '   YN, Memo)'
      'values'
      
        '  (:CGNO, :CLBH, :ZLBH, :XXCC , :Stage, :Qty, :CLSL, :YQDate, :C' +
        'FMDate, :USERDate, '
      '   :USERID, :YN, :Memo)')
    DeleteSQL.Strings = (
      'delete from CGZLSS'
      'where'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZLBH = :OLD_ZLBH and'
      '  XXCC = :OLD_XXCC and'
      '  Stage = :OLD_Stage')
    Left = 1012
    Top = 452
  end
  object DS5: TDataSource
    DataSet = CGS
    Left = 1012
    Top = 388
  end
  object Pop1: TPopupMenu
    Left = 20
    Top = 484
    object N2: TMenuItem
      Caption = 'Check Location'
      OnClick = N2Click
    end
    object excel1: TMenuItem
      Caption = 'Excel'
      OnClick = excel1Click
    end
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 724
    Top = 421
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 724
    Top = 485
  end
  object Qry_Check: TQuery
    AfterScroll = Qry_CheckAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.Stage,CGZLSS.USERID from C' +
        'GZLSS '
      'Inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      'WHERE CGZL.CGDATE>GetDate()-360'
      '      AND CGZLSS.ZLBH<>'#39'ALL'#39
      '      AND CGZLSS.ZLBH<>'#39'total'#39
      '      AND CGZLSS.Stage<>'#39'MASS'#39
      '      AND CGZL.CGLX='#39'6'#39
      '      AND CGZL.GSBH=:GSDH'
      '      AND CGZLSS.ZLBH is not null'
      
        '      and NOT EXISTS( select YPDH from YPZL  where YPDH=CGZLSS.Z' +
        'LBH and GSDH=:GSDH )'
      ''
      ''
      ''
      '')
    Left = 52
    Top = 420
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSDH'
        ParamType = ptUnknown
      end>
    object Qry_CheckCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_CheckZLBH: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_CheckStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Qry_CheckUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DS_Check: TDataSource
    DataSet = Qry_Check
    Left = 52
    Top = 388
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 784
    Top = 128
  end
  object Pop_Master: TPopupMenu
    Left = 20
    Top = 212
    object EditHGLB1: TMenuItem
      Caption = 'Edit HGLB'
      OnClick = EditHGLB1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AccepttanceOK1: TMenuItem
      Caption = 'Accepttance OK'
      OnClick = AccepttanceOK1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AcceptanceNote1: TMenuItem
      Caption = 'Print Acceptance Note'
      OnClick = AcceptanceNote1Click
    end
  end
  object Pop_CGS: TPopupMenu
    Left = 1012
    Top = 484
    object Excel3: TMenuItem
      Caption = 'Excel'
      OnClick = Excel3Click
    end
    object btbCopy: TMenuItem
      Caption = 'Copy'
      OnClick = btbCopyClick
    end
    object btbPaste: TMenuItem
      Caption = 'Paste'
      OnClick = btbPasteClick
    end
  end
  object BWQY: TQuery
    DatabaseName = 'dB'
    DataSource = DS4
    SQL.Strings = (
      'select * from ('
      'select bwzl.ywsm from YPZLS'
      'inner join clzl on ypzls.clbh=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where YPZLS.CLBH=:CLBH and'
      'YPDH in (select ypzl.YPDH from ypzl '
      'left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      'where CGZLSS.CGNO=:CGNO)'
      'Group by bwzl.ywsm'
      'union all'
      'select bwzl.ywsm from YPZLS'
      'inner join clzhzl on clzhzl.cldh=YPZLS.clbh and clzhzl.syl>0'
      'inner join clzl on clzhzl.cldh1=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where clzhzl.cldh1=:CLBH  and'
      'YPDH in (select ypzl.YPDH from ypzl'
      'left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      'where CGZLSS.CGNO=:CGNO)'
      'Group by bwzl.ywsm'
      'union all'
      'select distinct clzhzl2.ywsm'
      'from ( select bwzl.ywsm as ywsm,clzhzl.CLDH1 as CLBH '
      
        '  from ypzls ypzls inner join clzhzl ON  ypzls.CLBH = CLZHZL.cld' +
        'h'
      '  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      '  left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      '  WHERE YPDH  in (select ypzl.YPDH from ypzl'
      '  left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      
        '  where CGZLSS.CGNO=:CGNO)  and CLZHZL.SYL>0   and clzl.clzmlb='#39 +
        'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'where clzhzl.cldh1=:CLBH    and CLZHZL.SYL>0   and clzl.clzmlb='#39 +
        'N'#39
      ') as YPZLS'
      '')
    Left = 692
    Top = 421
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object BWQYywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object CGSS: TQuery
    OnNewRecord = CGSNewRecord
    DatabaseName = 'DB'
    DataSource = DS5
    SQL.Strings = (
      'select Max(BWBH) as BWBH'
      'from YPZLS'
      'where YPZLS.YPDH=:ZLBH'
      'and YPZLS.CLBH=:CLBH')
    Left = 692
    Top = 452
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CGSSBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.YPZLS.BWBH'
      FixedChar = True
      Size = 4
    end
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DS5
    SQL.Strings = (
      
        'select ypdh,bwzl.ywsm,clzl.Ywpm,allmat.Relation,allmat.cldh  fro' +
        'm('
      
        'SELECT clzhzl.cldh,ypzls.YPDH,YPZLS.BWBH as Relation,clzhzl.CLDH' +
        '1 as CLBH'
      ' ,ypzls.Remark ,clzl.Ywpm'
      'FROM ypzls ypzls'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'WHERE YPDH =:zlbh  and CLZHZL.SYL>0  and clzhzl.CLDH1=:clbh'
      'group by clzhzl.cldh,ypzls.YPDH,YPZLS.BWBH,clzhzl.CLDH1'
      ' ,ypzls.Remark,clzl.Ywpm'
      'union'
      
        'Select clzhzl.cldh,clzhzl2.YPDH,clzhzl2.Relation as Relation ,cl' +
        'zhzl.CLDH1 as CLBH'
      ',clzhzl2.Remark ,clzl.Ywpm'
      ' from ('
      
        'SELECT clzhzl.cldh,ypzls.YPDH ,YPZLS.BWBH as Relation,clzhzl.CLD' +
        'H1 as CLBH'
      ',ypzls.Remark ,clzl.Ywpm'
      'FROM ypzls ypzls'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE YPDH =:zlbh and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE clzhzl.CLDH1=:clbh'
      'group by clzhzl.cldh,clzhzl2.YPDH,clzhzl2.Relation ,clzhzl.CLDH1'
      ',clzhzl2.Remark ,clzl.Ywpm)allmat'
      'LEFT JOIN bwzl bwzl ON allmat.Relation = bwzl.bwdh'
      'left JOIN clzl clzl ON allmat.cldh = clzl.cldh')
    Left = 692
    Top = 485
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zlbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end>
  end
  object QCBY: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 756
    Top = 421
  end
  object XXCC: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 68
    Top = 117
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 448
    Top = 152
  end
end
