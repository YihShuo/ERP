object ShoetestReceive1: TShoetestReceive1
  Left = 227
  Top = 298
  Width = 1209
  Height = 619
  Caption = 'ShoetestReceive1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
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
  TextHeight = 20
  object background: TPanel
    Left = 0
    Top = 0
    Width = 1201
    Height = 588
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1199
      Height = 64
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object BB1: TBitBtn
        Left = 8
        Top = 8
        Width = 53
        Height = 48
        Caption = 'Query'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
      object BB2: TBitBtn
        Left = 61
        Top = 8
        Width = 53
        Height = 48
        Hint = 'Insert one New Record'
        Caption = 'Insert'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
        Left = 114
        Top = 8
        Width = 53
        Height = 48
        Hint = 'Delete one Record'
        Caption = 'Delete'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
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
        Left = 167
        Top = 8
        Width = 53
        Height = 48
        Hint = 'Modify Current'
        Caption = 'Modify'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
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
        Left = 220
        Top = 8
        Width = 53
        Height = 48
        Hint = 'Save Current'
        Caption = 'Save'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
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
        Left = 273
        Top = 8
        Width = 53
        Height = 48
        Hint = 'Cancel'
        Caption = 'Cancel'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
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
        Left = 326
        Top = 8
        Width = 53
        Height = 48
        Hint = 'Exit Current Form'
        Caption = 'Exit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
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
    end
    object ToolPanel: TPanel
      Left = 1
      Top = 65
      Width = 1199
      Height = 45
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label5: TLabel
        Left = 163
        Top = 9
        Width = 55
        Height = 23
        Caption = 'TestNO'
      end
      object Label6: TLabel
        Left = 12
        Top = 9
        Width = 41
        Height = 23
        Caption = 'SCBH'
      end
      object Label1: TLabel
        Left = 480
        Top = 9
        Width = 117
        Height = 23
        Caption = 'ProductionLine'
      end
      object Label3: TLabel
        Left = 326
        Top = 9
        Width = 50
        Height = 23
        Caption = 'Article'
      end
      object Button1: TButton
        Left = 1157
        Top = 6
        Width = 80
        Height = 33
        Caption = 'Query'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 222
        Top = 8
        Width = 96
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit6: TEdit
        Left = 56
        Top = 8
        Width = 97
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object ComboBox2: TComboBox
        Left = 600
        Top = 8
        Width = 153
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 3
      end
      object Edit2: TEdit
        Left = 378
        Top = 8
        Width = 96
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object CheckBox1: TCheckBox
        Left = 774
        Top = 13
        Width = 251
        Height = 17
        Caption = 'UserDate                        '#12288#12288#65374
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object DTP1: TDateTimePicker
        Left = 872
        Top = 8
        Width = 121
        Height = 31
        Date = 44305.639368414360000000
        Format = 'yyyy/MM/dd'
        Time = 44305.639368414360000000
        TabOrder = 6
      end
      object DTP2: TDateTimePicker
        Left = 1024
        Top = 6
        Width = 121
        Height = 31
        Date = 44305.639368414360000000
        Format = 'yyyy/MM/dd'
        Time = 44305.639368414360000000
        TabOrder = 7
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 212
      Width = 1199
      Height = 375
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 2
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1197
        Height = 373
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'TestNO'
            Footer.FieldName = 'TestNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 90
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 56
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 97
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 187
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
            ReadOnly = True
            Width = 41
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 50
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'Applicant1'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Applicant2'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'TestPurpose'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 147
          end
          item
            EditButtons = <>
            FieldName = 'ReportCCTo'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 75
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ProductionLine'
            Footers = <>
            PickList.Strings = (
              'A1_LEAN1-01_C'
              'A1_LEAN1-02_C'
              'A1_LEAN1-03_C'
              'A1_LEAN1-04_C'
              'A1_LEAN2-05_C'
              'A1_LEAN2-06_C'
              'A1_LEAN2-07_C'
              'A1_LEAN2-08_C'
              'A1_LEAN3-09_C'
              'A1_LEAN3-10_C'
              'A1_LEAN3-11_C'
              'A1_LEAN3-12_C'
              'A1_LEAN4-13_C'
              'A1_LEAN4-14_C'
              'A1_LEAN4-15_C'
              'A1_LEAN4-16_C'
              'A1_LEAN4-17_C'
              'A1_LEAN5-17_C'
              'A1_LEAN5-18_C'
              'A1_LEAN5-19_C'
              'A1_LEAN5-20_C'
              'A1_LEAN5-21_C'
              'A1_LEAN5-22_C'
              'A2_LEAN1-01_C'
              'A2_LEAN1-02_C'
              'A2_LEAN1-03_C'
              'A2_LEAN1-04_C'
              'A2_LEAN2-05_C'
              'A2_LEAN2-06_C'
              'A2_LEAN2-07_C'
              'A2_LEAN2-08_C'
              'A2_LEAN2-09_C'
              'A2_LEAN2-10_C'
              'A2_LEAN2-11_C'
              'A2_LEAN3-11_C'
              'A2_LEAN3-12_C'
              'A2_LEAN3-13_C'
              'A2_LEAN3-14_C'
              'A2_LEAN3-15_C'
              'A2_LEAN3-16_C'
              'A2_LEAN3-17_C')
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'CustomerPO'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 147
          end
          item
            EditButtons = <>
            FieldName = 'DateOfManufacturing'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 133
          end
          item
            EditButtons = <>
            FieldName = 'ShipTo'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
            Width = 147
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ReportNO'
            Footers = <>
            ReadOnly = True
            Width = 82
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ReceiveID'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ReceiveDate'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'ReceiveQty'
            Footers = <>
            Width = 90
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DepName ywsm'
            Width = 129
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'vwsm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DepName vwsm'
            Width = 130
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ywsm1'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Parts ywsm'
            Width = 89
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'vwsm1'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Parts vwsm'
            Width = 91
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 110
      Width = 1199
      Height = 102
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      object Label4: TLabel
        Left = 51
        Top = 10
        Width = 19
        Height = 23
        Caption = 'TB'
      end
      object Label7: TLabel
        Left = 179
        Top = 10
        Width = 165
        Height = 23
        Caption = 'ApplicantDepartment'
      end
      object Label8: TLabel
        Left = 273
        Top = 39
        Width = 72
        Height = 23
        Caption = 'Applicant'
      end
      object Label9: TLabel
        Left = 252
        Top = 68
        Width = 94
        Height = 23
        Caption = 'TestPurpose'
      end
      object Label10: TLabel
        Left = 480
        Top = 10
        Width = 89
        Height = 23
        Caption = 'ReportCCTo'
      end
      object Label11: TLabel
        Left = 510
        Top = 39
        Width = 57
        Height = 23
        Caption = 'Factory'
      end
      object Label12: TLabel
        Left = 451
        Top = 68
        Width = 117
        Height = 23
        Caption = 'ProductionLine'
      end
      object Label13: TLabel
        Left = 757
        Top = 10
        Width = 98
        Height = 23
        Caption = 'CustomerPO'
      end
      object Label14: TLabel
        Left = 678
        Top = 39
        Width = 177
        Height = 23
        Caption = 'Date Of Manufacturing'
      end
      object Label15: TLabel
        Left = 205
        Top = -25
        Width = 58
        Height = 23
        Caption = 'Recieve'
      end
      object Label16: TLabel
        Left = 998
        Top = 4
        Width = 50
        Height = 23
        Caption = 'ShipTo'
      end
      object Label17: TLabel
        Left = 782
        Top = 68
        Width = 77
        Height = 23
        Caption = 'ReportNO'
      end
      object Label18: TLabel
        Left = 1014
        Top = 36
        Width = 31
        Height = 23
        Caption = 'QTY'
      end
      object DBEditEh1: TDBEditEh
        Left = 350
        Top = 6
        Width = 97
        Height = 27
        Color = clScrollBar
        DataField = 'Applicant1'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Visible = True
      end
      object DBEditEh2: TDBEditEh
        Left = 350
        Top = 37
        Width = 97
        Height = 27
        Color = clScrollBar
        DataField = 'Applicant2'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Visible = True
      end
      object DBEditEh3: TDBEditEh
        Left = 350
        Top = 68
        Width = 97
        Height = 27
        Color = clScrollBar
        DataField = 'TestPurpose'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Visible = True
      end
      object DBEditEh5: TDBEditEh
        Left = 576
        Top = 37
        Width = 97
        Height = 27
        Color = clScrollBar
        DataField = 'Factory'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Visible = True
      end
      object DBEditEh6: TDBEditEh
        Left = 576
        Top = 68
        Width = 137
        Height = 27
        Color = clScrollBar
        DataField = 'ProductionLine'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Visible = True
      end
      object DBEditEh7: TDBEditEh
        Left = 78
        Top = 6
        Width = 96
        Height = 27
        Color = clScrollBar
        DataField = 'SCBH'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Visible = True
      end
      object DBEditEh8: TDBEditEh
        Left = 866
        Top = 6
        Width = 96
        Height = 27
        Color = clScrollBar
        DataField = 'CustomerPO'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Visible = True
      end
      object DBEditEh9: TDBEditEh
        Left = 866
        Top = 37
        Width = 96
        Height = 27
        Color = clScrollBar
        DataField = 'DateOfManufacturing'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Visible = True
      end
      object DBEditEh10: TDBEditEh
        Left = 78
        Top = 37
        Width = 96
        Height = 27
        Color = clScrollBar
        DataField = 'ReceiveDate'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        Visible = True
      end
      object DateTimePicker1: TDateTimePicker
        Left = 962
        Top = 38
        Width = 20
        Height = 28
        Date = 43473.644277395830000000
        Time = 43473.644277395830000000
        Enabled = False
        TabOrder = 9
        Visible = False
      end
      object DBEditEh11: TDBEditEh
        Left = 1058
        Top = 4
        Width = 96
        Height = 27
        Color = clScrollBar
        DataField = 'ShipTo'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        Visible = True
      end
      object DBEditEh4: TDBEditEh
        Left = 576
        Top = 6
        Width = 97
        Height = 27
        Color = clScrollBar
        DataField = 'ReportCCTo'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        Visible = True
      end
      object Edit3: TEdit
        Left = 78
        Top = 64
        Width = 95
        Height = 31
        Color = clScrollBar
        ReadOnly = True
        TabOrder = 12
        Text = 'Edit3'
      end
      object DBEditEh12: TDBEditEh
        Left = 866
        Top = 68
        Width = 143
        Height = 27
        Color = clScrollBar
        DataField = 'ReportNO'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        Visible = True
      end
      object DBEditEh13: TDBEditEh
        Left = 1058
        Top = 36
        Width = 96
        Height = 27
        Color = clScrollBar
        DataField = 'ShipTo'
        DataSource = DataSource1
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
        Visible = True
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select TestNO,GSBH,SCBH,UserID,UserDate,'#39#39' as Article,'#39#39' as yn ,' +
        'Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.Tes' +
        'tPurpose,'
      
        'Lab_shoetest.ReportCCTo,Lab_shoetest.Factory,Lab_shoetest.Produc' +
        'tionLine,Lab_shoetest.CustomerPO,Lab_shoetest.DateOfManufacturin' +
        'g,'
      
        'Lab_shoetest.ReceiveDate,Lab_shoetest.ShipTo,Lab_shoetest.Report' +
        'NO,Lab_shoetest.QTY,Lab_shoetest.ReceiveID,Lab_shoetest.ReceiveQ' +
        'ty,'
      'Lab_shoetest.DepName,Lab_shoetest.Parts'
      'from Lab_shoetest'
      'where 1=2')
    UpdateObject = UpdateSQL1
    Left = 153
    Top = 329
    object Query1TestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 11
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 1
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1Applicant1: TStringField
      FieldName = 'Applicant1'
      FixedChar = True
      Size = 10
    end
    object Query1Applicant2: TStringField
      FieldName = 'Applicant2'
      FixedChar = True
      Size = 10
    end
    object Query1TestPurpose: TStringField
      FieldName = 'TestPurpose'
      FixedChar = True
    end
    object Query1ReportCCTo: TStringField
      FieldName = 'ReportCCTo'
      FixedChar = True
      Size = 10
    end
    object Query1Factory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object Query1ProductionLine: TStringField
      FieldName = 'ProductionLine'
      FixedChar = True
    end
    object Query1CustomerPO: TStringField
      FieldName = 'CustomerPO'
      FixedChar = True
    end
    object Query1DateOfManufacturing: TDateTimeField
      FieldName = 'DateOfManufacturing'
    end
    object Query1ReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
    end
    object Query1ShipTo: TStringField
      FieldName = 'ShipTo'
      FixedChar = True
    end
    object Query1yn: TStringField
      FieldName = 'yn'
      FixedChar = True
      Size = 1
    end
    object Query1ReportNO: TStringField
      FieldName = 'ReportNO'
      FixedChar = True
    end
    object Query1QTY: TFloatField
      FieldName = 'QTY'
    end
    object Query1ReceiveID: TStringField
      FieldName = 'ReceiveID'
      FixedChar = True
      Size = 10
    end
    object Query1ReceiveQty: TFloatField
      FieldName = 'ReceiveQty'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
    end
    object Query1Parts: TStringField
      FieldName = 'Parts'
      FixedChar = True
      Size = 4
    end
    object Query1ywsm: TStringField
      FieldKind = fkLookup
      FieldName = 'ywsm'
      LookupDataSet = Qshoetestdetail
      LookupKeyFields = 'yybh'
      LookupResultField = 'ywsm'
      KeyFields = 'DepName'
      Size = 200
      Lookup = True
    end
    object Query1ywsm1: TStringField
      FieldKind = fkLookup
      FieldName = 'ywsm1'
      LookupDataSet = Qshoetestdetail
      LookupKeyFields = 'yybh'
      LookupResultField = 'ywsm'
      KeyFields = 'Parts'
      Size = 200
      Lookup = True
    end
    object Query1vwsm: TStringField
      FieldKind = fkLookup
      FieldName = 'vwsm'
      LookupDataSet = Qshoetestdetail
      LookupKeyFields = 'yybh'
      LookupResultField = 'vwsm'
      KeyFields = 'DepName'
      Size = 200
      Lookup = True
    end
    object Query1vwsm1: TStringField
      FieldKind = fkLookup
      FieldName = 'vwsm1'
      LookupDataSet = Qshoetestdetail
      LookupKeyFields = 'yybh'
      LookupResultField = 'vwsm'
      KeyFields = 'Parts'
      Size = 200
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 153
    Top = 281
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      ''
      'update lab_shoetest'
      'set'
      'ReceiveID=:ReceiveID,'
      'ReceiveDate=:ReceiveDate,'
      'ReceiveQTY=:ReceiveQTY'
      'where TestNO=:OLD_TestNO')
    InsertSQL.Strings = (
      'insert into lab_shoetest                                     '
      
        '(TestNO,GSBH,SCBH,UserID,UserDate,QTY,productionLine,ReportNO,De' +
        'pName,Parts)'
      'Values'
      
        '(:TestNO,:GSBH,:SCBH,:UserID,:UserDate,:QTY,:productionLine,:Rep' +
        'ortNO,:DepName,:Parts)')
    DeleteSQL.Strings = (
      'delete from lab_shoetest'
      'where'
      '  TestNo = :OLD_TestNo ')
    Left = 153
    Top = 385
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 41
    Top = 305
  end
  object Qshoetestdetail: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select yybh,ywsm,vwsm from shoetestdetail')
    Left = 297
    Top = 305
  end
end
