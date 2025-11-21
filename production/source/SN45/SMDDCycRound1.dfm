object SMDDCycRound: TSMDDCycRound
  Left = 261
  Top = 270
  Width = 1590
  Height = 941
  Caption = 'SMDDCycRound'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1582
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label8: TLabel
      Left = 531
      Top = 44
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label1: TLabel
      Left = 4
      Top = 40
      Width = 55
      Height = 18
      AutoSize = False
      Caption = 'Factory:'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 144
      Top = 40
      Width = 55
      Height = 18
      AutoSize = False
      Caption = 'DepNM:'
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 10
      Top = 10
      Width = 55
      Height = 18
      AutoSize = False
      Caption = 'DDBH:'
      Layout = tlCenter
    end
    object CheckBox1: TCheckBox
      Left = 357
      Top = 36
      Width = 77
      Height = 17
      Caption = 'PlanDate'
      TabOrder = 0
      OnMouseUp = CheckBox1MouseUp
    end
    object DTP1: TDateTimePicker
      Left = 439
      Top = 41
      Width = 92
      Height = 24
      Date = 43101.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 43101.568310717590000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 549
      Top = 41
      Width = 106
      Height = 24
      Date = 43112.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 43112.569282222220000000
      TabOrder = 2
    end
    object XuongCB: TComboBox
      Left = 55
      Top = 38
      Width = 82
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      OnChange = XuongCBChange
    end
    object DepNameCB: TComboBox
      Left = 196
      Top = 38
      Width = 153
      Height = 24
      ItemHeight = 16
      TabOrder = 4
    end
    object DDBHEdit: TEdit
      Left = 55
      Top = 8
      Width = 598
      Height = 24
      TabOrder = 5
    end
    object Button4: TButton
      Left = 667
      Top = 39
      Width = 68
      Height = 25
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button4Click
    end
    object CheckBox2: TCheckBox
      Left = 357
      Top = 52
      Width = 77
      Height = 17
      Caption = 'RPlanDate'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnMouseUp = CheckBox2MouseUp
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 73
    Width = 1582
    Height = 837
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'NGAY KE HOACH'
      ImageIndex = 1
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1574
        Height = 56
        Align = alTop
        TabOrder = 0
        object BB5: TBitBtn
          Left = 153
          Top = 4
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
        object BB3: TBitBtn
          Left = 54
          Top = 4
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Clear'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
        object BB2: TBitBtn
          Left = 6
          Top = 4
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
          TabOrder = 2
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
        object BB6: TBitBtn
          Left = 204
          Top = 4
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
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
        object BBT7: TBitBtn
          Left = 260
          Top = 5
          Width = 41
          Height = 26
          TabOrder = 4
          OnClick = BBT7Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E0000000000000000000069B53E389C00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003C9F003C9F003C9F003C9F
            003C9F003C9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00389C006A
            B53E389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003C9F00369B00
            279300279300279300279300389C003C9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F00369B006CB542FFFFFFFFFFFFFFFFFFFFFFFF57AB27389C003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F00369B0068B33CFFFFFFFFFFFFFFFFFFFFFFFF54AA2338
            9C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F00369B0068B33CFFFFFFFFFFFFFFFF
            FFFFFFFF54AA23389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00369B0068B33C
            FFFFFFFFFFFFFFFFFFFFFFFF54AA23389C003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F00369B0068B33CFFFFFFFFFFFFFFFFFFFFFFFF54AA23389C003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003C9E
            003D9F003D9F003D9F00369B0068B33CFFFFFFFFFFFFFFFFFFFFFFFF54AA2338
            9C003D9F003D9F003C9E003C9E003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003C9E00399D00349A003D9F003D9F00369B0068B33CFFFFFFFFFFFFFFFF
            FFFFFFFF54AA23389C003D9F003D9F00339A003A9D003C9E003D9F003D9F003D
            9F003D9F003D9F003D9F00389C0062B1358AC56D2B96003D9F00369B0068B33C
            FFFFFFFFFFFFFFFFFFFFFFFF54AA23389C003D9F0028940095CA755AAD2A399D
            003D9F003D9F003D9F003D9F003D9F003D9F00389C0052AA20FFFFFF77BC542A
            9500369B0068B33CFFFFFFFFFFFFFFFFFFFFFFFF54AA23389C002794008BC56C
            FFFFFF4AA515399D003D9F003D9F003D9F003D9F003D9F003D9F00389C0051A9
            1FFFFFFFFFFFFF7EBE5823920068B33CFFFFFFFFFFFFFFFFFFFFFFFF54AA2322
            91008CC670FFFFFFFFFFFF4AA514399D003D9F003D9F003D9F003D9F003D9F00
            3D9F00389C0051A91FFFFFFFFFFFFFFFFFFF79BC4F55AA23FFFFFFFFFFFFFFFF
            FFFFFFFF3D9F068BC56AFFFFFFFFFFFFFFFFFF4AA514399D003D9F003D9F003D
            9F003D9F003D9F003D9F00389C0052AA20FFFFFFFFFFFFFFFFFFFFFFFFAED597
            FFFFFFFFFFFFFFFFFFFFFFFFAFD698FFFFFFFFFFFFFFFFFFFFFFFF4AA515399D
            003D9F003D9F003D9F003D9F003D9F003D9F00399D004EA71BFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF46A30E399D003D9F003D9F003D9F003D9F003D9F003D9F003D9F002E97
            008BC56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF81C05B3098003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F002794008BC56EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF81C05A2995003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F002794008BC56EFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81C05A2995003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F0027
            94008BC66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81C05B2995003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F002794008BC66FFFFFFFFFFFFFFFFFFFFFFFFF81C05B29
            95003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F002794008BC66FFFFFFFFFFF
            FF81C05B2995003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9E00
            27940099CD808EC76B2995003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9E00329900339A003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F00389C0069B43E389C003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F00389C006AB53E}
        end
        object BB4: TBitBtn
          Left = 103
          Top = 5
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'ClearAll'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BB4Click
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
        object BBT8: TBitBtn
          Left = 260
          Top = 30
          Width = 41
          Height = 25
          TabOrder = 6
          OnClick = BBT8Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E000000000000000000006AB53E389C00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00389C0069
            B43E389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F00339A003299003D9E003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F002995008EC76B99CD802794003D9E003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F0029950081C05BFFFFFFFFFFFF8BC66F2794003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F0029950081C05BFFFFFFFFFFFFFFFF
            FFFFFFFF8BC66F2794003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F0029950081C05BFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC66F2794003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F0029950081
            C05AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC56E279400
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            0029950081C05AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF8BC56E2794003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F0030980081C05BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC56F2E97003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F00399D0046A30EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EA71B399D
            003D9F003D9F003D9F003D9F003D9F003D9F00399D004AA515FFFFFFFFFFFFFF
            FFFFFFFFFFAFD698FFFFFFFFFFFFFFFFFFFFFFFFAED597FFFFFFFFFFFFFFFFFF
            FFFFFF52AA20389C003D9F003D9F003D9F003D9F003D9F003D9F00399D004AA5
            14FFFFFFFFFFFFFFFFFF8BC56A3D9F06FFFFFFFFFFFFFFFFFFFFFFFF55AA2379
            BC4FFFFFFFFFFFFFFFFFFF51A91F389C003D9F003D9F003D9F003D9F003D9F00
            3D9F00399D004AA514FFFFFFFFFFFF8CC67022910054AA23FFFFFFFFFFFFFFFF
            FFFFFFFF68B33C2392007EBE58FFFFFFFFFFFF51A91F389C003D9F003D9F003D
            9F003D9F003D9F003D9F00399D004AA515FFFFFF8BC56C279400389C0054AA23
            FFFFFFFFFFFFFFFFFFFFFFFF68B33C369B002A950077BC54FFFFFF52AA20389C
            003D9F003D9F003D9F003D9F003D9F003D9F00399D005AAD2A95CA752894003D
            9F00389C0054AA23FFFFFFFFFFFFFFFFFFFFFFFF68B33C369B003D9F002B9600
            8AC56D62B135389C003D9F003D9F003D9F003D9F003D9F003D9F003C9E003A9D
            00339A003D9F003D9F00389C0054AA23FFFFFFFFFFFFFFFFFFFFFFFF68B33C36
            9B003D9F003D9F00349A00399D003C9E003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003C9E003C9E003D9F003D9F00389C0054AA23FFFFFFFFFFFFFFFF
            FFFFFFFF68B33C369B003D9F003D9F003D9F003C9E003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00389C0054AA23
            FFFFFFFFFFFFFFFFFFFFFFFF68B33C369B003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F00389C0054AA23FFFFFFFFFFFFFFFFFFFFFFFF68B33C369B003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F00389C0054AA23FFFFFFFFFFFFFFFFFFFFFFFF68B33C36
            9B003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F00389C0054AA23FFFFFFFFFFFFFFFF
            FFFFFFFF68B33C369B003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00389C0057AB27
            FFFFFFFFFFFFFFFFFFFFFFFF6CB542369B003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003C9F00389C00279300279300279300279300369B003C9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F00389C006AB53E389C003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003C9F003C9F003C9F003C9F003C9F003C9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F00389C0069B53E}
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 56
        Width = 576
        Height = 750
        Align = alLeft
        DataSource = RYDS
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
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh7GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            Title.Caption = #19978#32218#26085'|PlanDate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'DepNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LeanID|DepNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean'#32218'|DepName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                FieldName = 'DDBH'
                ValueType = fvtCount
              end>
            Title.Caption = #35330#21934'|Order'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'T1'
            Footers = <>
            Title.Caption = #36852#36681'|T1'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'T2'
            Footers = <>
            Title.Caption = #36852#36681'|T2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 48
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TUA BAO BIEU'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1574
        Height = 369
        Align = alTop
        TabOrder = 0
        object DBGridEh: TDBGridEh
          Left = 1
          Top = 1
          Width = 1572
          Height = 367
          Align = alClient
          DataSource = SMDDDS
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = #27161#26999#39636
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #26032#32048#26126#39636
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Xuong'
              Footers = <>
              Title.Caption = #26847#21029'|Xuong'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'DepName'
              Footers = <>
              Title.Caption = 'Lean'#32218'|DepName'
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'DDBH'
              Footer.FieldName = 'DDBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #36852#36681'|DDBH'
              Width = 112
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38617#25976'|Qty'
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'PlanDate'
              Footers = <>
              Title.Caption = #19978#32218#26085'|PlanDate'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'ROrder'
              Footers = <>
              Title.Caption = #38918#24207'|ROrder'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'DepNo'
              Footers = <>
              Title.Caption = 'LeanID|DepNo'
            end>
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 369
        Width = 1574
        Height = 208
        Align = alTop
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 763
          Top = 1
          Width = 4
          Height = 206
        end
        object Splitter2: TSplitter
          Left = 251
          Top = 1
          Width = 4
          Height = 206
        end
        object Splitter3: TSplitter
          Left = 505
          Top = 1
          Width = 4
          Height = 206
        end
        object Splitter4: TSplitter
          Left = 759
          Top = 1
          Width = 4
          Height = 206
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 250
          Height = 206
          Align = alLeft
          Caption = 'Panel4'
          TabOrder = 0
          object DepLabel1: TLabel
            Left = 1
            Top = 1
            Width = 248
            Height = 20
            Align = alTop
            Caption = 'DepLabel1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 21
            Width = 248
            Height = 184
            Align = alClient
            DataSource = DS1
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #27161#26999#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #26032#32048#26126#39636
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Title.Caption = #26085#26399'|Date'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #36852#36681'|DDBH'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'T1'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'T2'
                Footers = <>
                Width = 26
              end>
          end
        end
        object Panel5: TPanel
          Left = 255
          Top = 1
          Width = 250
          Height = 206
          Align = alLeft
          Caption = 'Panel4'
          TabOrder = 1
          object DepLabel2: TLabel
            Left = 1
            Top = 1
            Width = 248
            Height = 20
            Align = alTop
            Caption = 'DepLabel2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 21
            Width = 248
            Height = 184
            Align = alClient
            DataSource = DS2
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #27161#26999#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #26032#32048#26126#39636
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Title.Caption = #26085#26399'|Date'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #36852#36681'|DDBH'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'T1'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'T2'
                Footers = <>
                Width = 26
              end>
          end
        end
        object Panel6: TPanel
          Left = 509
          Top = 1
          Width = 250
          Height = 206
          Align = alLeft
          Caption = 'Panel4'
          TabOrder = 2
          object DepLabel3: TLabel
            Left = 1
            Top = 1
            Width = 248
            Height = 20
            Align = alTop
            Caption = 'DepLabel3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 21
            Width = 248
            Height = 184
            Align = alClient
            DataSource = DS3
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #27161#26999#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #26032#32048#26126#39636
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Title.Caption = #26085#26399'|Date'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #36852#36681'|DDBH'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'T1'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'T2'
                Footers = <>
                Width = 26
              end>
          end
        end
        object Panel9: TPanel
          Left = 767
          Top = 1
          Width = 250
          Height = 206
          Align = alLeft
          Caption = 'Panel4'
          TabOrder = 3
          object DepLabel6: TLabel
            Left = 1
            Top = 1
            Width = 248
            Height = 20
            Align = alTop
            Caption = 'DepLabel6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridEh6: TDBGridEh
            Left = 1
            Top = 21
            Width = 248
            Height = 184
            Align = alClient
            DataSource = DS6
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #27161#26999#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #26032#32048#26126#39636
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Title.Caption = #26085#26399'|Date'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #36852#36681'|DDBH'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'T1'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'T2'
                Footers = <>
                Width = 26
              end>
          end
        end
        object BtnNextDep: TBitBtn
          Left = 1019
          Top = 3
          Width = 41
          Height = 49
          TabOrder = 4
          OnClick = BtnNextDepClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E000000000000000000006AB53E389C00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00389C006A
            B53E389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003C9E00399D00399D00399D00399D00399D00399D003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003C9E003A9D005AAD2A4AA5154AA5144AA5
            144AA51546A30E3098003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003C9E00339A0095CA75
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81C05B2995003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F002894008BC56CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81C05A299500
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F002794008CC670FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF81C05A2995003D9F003D9F003D9F003D9F003D9F003D9F003C9F00
            389C00389C00389C00389C00389C00389C00389C00389C00389C002291008BC5
            6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81C05B2995003D9F003D9F003D9F003D
            9F003C9F00389C0057AB2754AA2354AA2354AA2354AA2354AA2354AA2354AA23
            54AA2354AA233D9F06AFD698FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81C05B2995
            003D9F003D9F003D9F003C9F00279300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF81C05B2995003D9F003D9F003C9F00279300FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EC76B339A003D9F003C9F00279300
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CD803299003D
            9F003C9F00279300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC6
            6F2794003D9E003D9F003C9F00369B006CB54268B33C68B33C68B33C68B33C68
            B33C68B33C68B33C68B33C68B33C55AA23AED597FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF8BC66F2794003D9E003D9F003D9F003D9F003C9F00369B00369B00369B
            00369B00369B00369B00369B00369B00369B0023920079BC4FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF8BC66F2794003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F002A95007EBE58FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF8BC56E2794003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F002B9600
            77BC54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC56E2794003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F00349A008AC56DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC56F2794003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003C9E00399D0062B13552AA2051A91F51A91F52AA204EA71B2E
            97003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003C9E00389C00389C00389C00389C
            00389C00399D003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F00389C0069B53E389C003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F00389C0069B43E}
        end
        object BtnPriorDep: TBitBtn
          Left = 1019
          Top = 59
          Width = 41
          Height = 49
          TabOrder = 5
          OnClick = BtnPriorDepClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E000000000000000000006AB53E389C00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00389C006A
            B53E389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F00399D00399D00399D00399D00399D00399D003C
            9E003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F0030980046A30E4AA5154AA5144AA5
            144AA5155AAD2A3A9D003C9E003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F0029950081C05BFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF95CA75339A003C9E003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F0029950081
            C05AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC56C2894003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            0029950081C05AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CC6702794003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F0029950081C05BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC56A2291
            00389C00389C00389C00389C00389C00389C00389C00389C00389C003C9F003D
            9F003D9F003D9F003D9F0029950081C05BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            AFD6983D9F0654AA2354AA2354AA2354AA2354AA2354AA2354AA2354AA2354AA
            2357AB27389C003C9F003D9F003D9F0029950081C05BFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF2793003C9F003D9F00339A008EC76BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2793003C9F003D9F00329900
            99CD80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2793003C
            9F003D9F003D9E002794008BC66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF2793003C9F003D9F003D9F003D9E002794008BC66FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFAED59755AA2368B33C68B33C68B33C68B33C68B33C68B33C
            68B33C68B33C68B33C6CB542369B003C9F003D9F003D9F003D9F003D9F002794
            008BC66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79BC4F239200369B00369B0036
            9B00369B00369B00369B00369B00369B00369B003C9F003D9F003D9F003D9F00
            3D9F003D9F003D9F002794008BC56EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EBE
            582A95003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F002794008BC56EFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF77BC542B96003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F0027
            94008BC56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AC56D349A003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F002E97004EA71B52AA2051A91F51A91F52AA2062B13539
            9D003C9E003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F00399D00389C00389C00389C
            00389C00389C003C9E003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F
            003D9F003D9F003D9F00389C003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F00
            3D9F003D9F003D9F003D9F003D9F00389C0069B43E389C003D9F003D9F003D9F
            003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D9F003D
            9F003D9F003D9F003D9F003D9F003D9F003D9F00389C0069B53E}
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 577
        Width = 1574
        Height = 229
        Align = alClient
        TabOrder = 2
        object Splitter5: TSplitter
          Left = 501
          Top = 1
          Width = 4
          Height = 227
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 250
          Height = 227
          Align = alLeft
          Caption = 'Panel4'
          TabOrder = 0
          object DepLabel4: TLabel
            Left = 1
            Top = 1
            Width = 248
            Height = 20
            Align = alTop
            Caption = 'DepLabel4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 21
            Width = 248
            Height = 205
            Align = alClient
            DataSource = DS4
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #27161#26999#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #26032#32048#26126#39636
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Title.Caption = #26085#26399'|Date'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #36852#36681'|DDBH'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'T1'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'T2'
                Footers = <>
                Width = 26
              end>
          end
        end
        object Panel8: TPanel
          Left = 251
          Top = 1
          Width = 250
          Height = 227
          Align = alLeft
          Caption = 'Panel4'
          TabOrder = 1
          object DepLabel5: TLabel
            Left = 1
            Top = 1
            Width = 248
            Height = 20
            Align = alTop
            Caption = 'DepLabel5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 21
            Width = 248
            Height = 205
            Align = alClient
            DataSource = DS5
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #27161#26999#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #26032#32048#26126#39636
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                DisplayFormat = 'MM/DD'
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                Title.Caption = #26085#26399'|Date'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #36852#36681'|DDBH'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'T1'
                Footers = <>
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'T2'
                Footers = <>
                Width = 26
              end>
          end
        end
      end
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 188
    Top = 160
  end
  object SMDDS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select BDepartment.Xuong,BDepartment.DepName,SMDD.DDBH,SMDD.Qty,' +
        'IsNull(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,ROrder,IsNull(S' +
        'MDD.RDepNo,SMDD.DepNo) as DepNo  from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNo)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,IsNull(SMDD.RPlanDa' +
        'te,SMDD.PlanDate),111)) between '#39'2018/01/12'#39' and '#39'2018/01/12'#39
      '  and  BDepartment.DepName like '#39'A2_LEAN%'#39
      '     ')
    Left = 222
    Top = 160
    object SMDDSXuong: TStringField
      FieldName = 'Xuong'
      FixedChar = True
      Size = 3
    end
    object SMDDSDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMDDSPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object SMDDSROrder: TIntegerField
      FieldName = 'ROrder'
    end
    object SMDDSDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
  end
  object SMDDDS: TDataSource
    DataSet = SMDDS
    Left = 222
    Top = 193
  end
  object DepQuery1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as ' +
        'T2,DepNo,DepName from ('
      'select  SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMD' +
        'D.ROrder '
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,SMDD.RPlanDate,111)' +
        ') between '
      '       '#39'2018/01/06'#39' and  '#39'2018/01/12'#39' '
      ') SMDD Group by PlanDate,DepNo,DepName,DDBH '
      'order by  PlanDate,DepNo,DepName,Min(ROrder)')
    Left = 28
    Top = 560
    object DepQuery1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object DepQuery1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DepQuery1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object DepQuery1T1: TIntegerField
      FieldName = 'T1'
    end
    object DepQuery1T2: TIntegerField
      FieldName = 'T2'
    end
    object DepQuery1DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object DepQuery1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = DepQuery1
    Left = 28
    Top = 593
  end
  object DepQuery2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as ' +
        'T2,DepNo,DepName from ('
      'select  SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMD' +
        'D.ROrder '
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,SMDD.RPlanDate,111)' +
        ') between '
      '       '#39'2018/01/06'#39' and  '#39'2018/01/12'#39' '
      ') SMDD Group by PlanDate,DepNo,DepName,DDBH '
      'order by  PlanDate,DepNo,DepName,Min(ROrder)')
    Left = 60
    Top = 560
    object DepQuery2PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object DepQuery2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DepQuery2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object DepQuery2T1: TIntegerField
      FieldName = 'T1'
    end
    object DepQuery2T2: TIntegerField
      FieldName = 'T2'
    end
    object DepQuery2DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object DepQuery2DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = DepQuery2
    Left = 60
    Top = 593
  end
  object DepQuery3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as ' +
        'T2,DepNo,DepName from ('
      'select  SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMD' +
        'D.ROrder '
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,SMDD.RPlanDate,111)' +
        ') between '
      '       '#39'2018/01/06'#39' and  '#39'2018/01/12'#39' '
      ') SMDD Group by PlanDate,DepNo,DepName,DDBH '
      'order by  PlanDate,DepNo,DepName,Min(ROrder)'
      '')
    Left = 92
    Top = 560
  end
  object DS3: TDataSource
    DataSet = DepQuery3
    Left = 92
    Top = 593
  end
  object DepQuery4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as ' +
        'T2,DepNo,DepName from ('
      'select  SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMD' +
        'D.ROrder '
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,SMDD.RPlanDate,111)' +
        ') between '
      '       '#39'2018/01/06'#39' and  '#39'2018/01/12'#39' '
      ') SMDD Group by PlanDate,DepNo,DepName,DDBH '
      'order by  PlanDate,DepNo,DepName,Min(ROrder)'
      '')
    Left = 126
    Top = 560
    object DepQuery4PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object DepQuery4DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DepQuery4Qty: TIntegerField
      FieldName = 'Qty'
    end
    object DepQuery4T1: TIntegerField
      FieldName = 'T1'
    end
    object DepQuery4T2: TIntegerField
      FieldName = 'T2'
    end
    object DepQuery4DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object DepQuery4DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS4: TDataSource
    DataSet = DepQuery4
    Left = 124
    Top = 593
  end
  object DepQuery5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as ' +
        'T2,DepNo,DepName from ('
      'select  SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMD' +
        'D.ROrder '
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,SMDD.RPlanDate,111)' +
        ') between '
      '       '#39'2018/01/06'#39' and  '#39'2018/01/12'#39' '
      ') SMDD Group by PlanDate,DepNo,DepName,DDBH '
      'order by  PlanDate,DepNo,DepName,Min(ROrder)'
      ''
      '     ')
    Left = 158
    Top = 560
    object DepQuery5PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object DepQuery5DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DepQuery5Qty: TIntegerField
      FieldName = 'Qty'
    end
    object DepQuery5T1: TIntegerField
      FieldName = 'T1'
    end
    object DepQuery5T2: TIntegerField
      FieldName = 'T2'
    end
    object DepQuery5DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object DepQuery5DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS5: TDataSource
    DataSet = DepQuery5
    Left = 156
    Top = 593
  end
  object DepQuery6: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select PlanDate,DDBH,SUM(Qty) as Qty,Min(TUA) as T1,MAX(TUA) as ' +
        'T2,DepNo,DepName from ('
      'select  SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.Qty,SMD' +
        'D.ROrder '
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' '
      
        '  and  convert(smalldatetime,convert(varchar,SMDD.RPlanDate,111)' +
        ') between '
      '       '#39'2018/01/06'#39' and  '#39'2018/01/12'#39' '
      ') SMDD Group by PlanDate,DepNo,DepName,DDBH '
      'order by  PlanDate,DepNo,DepName,Min(ROrder)')
    Left = 190
    Top = 560
    object DepQuery6PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object DepQuery6DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DepQuery6Qty: TIntegerField
      FieldName = 'Qty'
    end
    object DepQuery6T1: TIntegerField
      FieldName = 'T1'
    end
    object DepQuery6T2: TIntegerField
      FieldName = 'T2'
    end
    object DepQuery6DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object DepQuery6DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS6: TDataSource
    DataSet = DepQuery6
    Left = 188
    Top = 593
  end
  object RYDS: TDataSource
    DataSet = RYQuery
    Left = 264
    Top = 192
  end
  object RYQuery: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select PlanDate,DDBH,Min(TUA) as T1,MAX(TUA) as T2,DepNo,DepName' +
        ',MIN(TUADDBH) as TUADDBH,min(YN) as YN from ('
      'select top 1000 SMDD.YSBH as DDBH,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then convert(int,right(' +
        'SMDD.DDBH,3)) else 1 end) as TUA,'
      
        '       (case when SMDD.YSBH <> SMDD.DDBH then left(SMDD.DDBH,len' +
        '(SMDD.DDBH)-3) else SMDD.DDBH end) as TUADDBH,'
      
        '       ISNULL(SMDD.RPlanDate,SMDD.PlanDate) as PlanDate,BDepartm' +
        'ent.DepName,IsNull(SMDD.RDepNo,SMDD.DepNO) as DepNo,SMDD.YN'
      'from SMDD'
      
        'left join BDepartment on BDepartment.ID=IsNull(SMDD.RDepNo,SMDD.' +
        'DepNO)'
      'where SMDD.GXLB='#39'C'#39' ) SMDD'
      'Group by PlanDate,DDBH,DepNo,DepName')
    UpdateObject = UpdateSQL4
    Left = 264
    Top = 160
    object RYQueryPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object RYQueryDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object RYQueryDepName: TStringField
      FieldName = 'DepName'
      OnSetText = RYQueryDepNameSetText
      FixedChar = True
      Size = 50
    end
    object RYQueryDDBH: TStringField
      FieldName = 'DDBH'
      OnSetText = RYQueryDDBHSetText
      FixedChar = True
      Size = 15
    end
    object RYQueryT1: TIntegerField
      FieldName = 'T1'
    end
    object RYQueryT2: TIntegerField
      FieldName = 'T2'
    end
    object RYQueryTUADDBH: TStringField
      FieldName = 'TUADDBH'
      FixedChar = True
      Size = 15
    end
    object RYQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL4: TUpdateSQL
    Left = 264
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 223
    Top = 228
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
