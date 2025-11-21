object ColorSwatchCardTracking: TColorSwatchCardTracking
  Left = 355
  Top = 154
  Width = 1662
  Height = 674
  Caption = 'ColorSwatchCardTracking'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel
    Left = 171
    Top = 68
    Width = 7
    Height = 13
    Caption = '~'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1646
    Height = 635
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1638
        Height = 607
        Align = alClient
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1636
          Height = 64
          Align = alTop
          TabOrder = 0
          object BB7: TBitBtn
            Left = 296
            Top = 8
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
            TabOrder = 0
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
          object BB6: TBitBtn
            Left = 248
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Cancel'
            Caption = 'Cancel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
          object BB5: TBitBtn
            Left = 200
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Save Current'
            Caption = 'Save'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
          object BB4: TBitBtn
            Left = 152
            Top = 8
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
          object BB3: TBitBtn
            Left = 104
            Top = 8
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
            TabOrder = 4
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
            Left = 56
            Top = 8
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
            TabOrder = 5
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
          object BB1: TBitBtn
            Left = 8
            Top = 8
            Width = 49
            Height = 49
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
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
          object Button2: TButton
            Left = 344
            Top = 8
            Width = 49
            Height = 49
            Caption = 'EXCEL'
            TabOrder = 7
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 392
            Top = 8
            Width = 57
            Height = 49
            Caption = 'Update'
            TabOrder = 8
            OnClick = Button3Click
          end
          object Button8: TButton
            Left = 448
            Top = 8
            Width = 57
            Height = 49
            Caption = 'Excel All'
            TabOrder = 9
            OnClick = Button8Click
          end
          object CheckBox9: TCheckBox
            Left = 1064
            Top = 17
            Width = 145
            Height = 17
            Caption = 'showSQL'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object DBMemo1: TDBMemo
            Left = 515
            Top = 3
            Width = 537
            Height = 62
            DataField = 'remark'
            DataSource = DataSource1
            TabOrder = 11
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 172
          Width = 1636
          Height = 224
          Align = alTop
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1634
            Height = 222
            Align = alClient
            DataSource = DataSource1
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 7
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh1CellClick
            OnEditButtonClick = DBGridEh1EditButtonClick
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'devtype'
                Footers = <>
                Title.Caption = 'Dev'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'devcode'
                Footers = <>
                Title.Caption = 'SR#'
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'fd'
                Footers = <>
                Title.Caption = 'Developer'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Title.Caption = 'Supplier'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'MaterialCode|ERP '
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'TempCLBH'
                Footers = <>
                Title.Caption = 'MaterialCode|Temp'
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'FormalCLBH'
                Footers = <>
                Title.Caption = 'MaterialCode|Formal'
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'ywpm'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Material Name'
                Width = 246
              end
              item
                EditButtons = <>
                FieldName = 'SEASON'
                Footers = <>
                Title.Caption = 'Season'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'MatRemark'
                Footers = <>
                Width = 98
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'CGNO'
                Footers = <>
                Title.Caption = 'Material PO#'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'maincgno'
                Footers = <>
                Visible = False
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'PURPOSE'
                Footers = <>
                Title.Caption = 'Stage'
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'ScanDate'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ArriveDate'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Visually'
                Footers = <>
                PickList.Strings = (
                  ''
                  'PASS'
                  'FAIL')
                Title.Caption = 'Visually Approved?'
                Title.Color = clYellow
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'Spectro'
                Footers = <>
                PickList.Strings = (
                  ''
                  'PASS'
                  'FAIL')
                Title.Caption = 'Spectro Approved?'
                Title.Color = clYellow
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'Spectro_file'
                Footers = <>
                Title.Caption = 'Spectro Report#'
                Title.Color = clYellow
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'Result'
                Footers = <>
                PickList.Strings = (
                  ''
                  'PASS'
                  'FAIL')
                Title.Caption = 'Final Result'
                Title.Color = clYellow
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'remark'
                Footers = <>
                Title.Color = clYellow
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'ColorMatching'
                Footers = <>
                PickList.Strings = (
                  ''
                  'YES'
                  'NO')
                Title.Color = clYellow
              end
              item
                EditButtons = <>
                FieldName = 'ColorRFT'
                Footers = <>
                PickList.Strings = (
                  ''
                  'YES'
                  'NO')
                Title.Color = clYellow
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'NG_Reason'
                Footers = <>
                Title.Caption = 'Confirm_Status'
                Title.Color = clSkyBlue
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'USERDate'
                Footers = <>
                Title.Caption = 'Date of Approval'
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                Title.Caption = 'Approved by?'
                Width = 109
              end
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'A4Comfirm'
                Footers = <>
                PickList.Strings = (
                  ' ')
                Width = 106
              end
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'TrackingA4Comfirm'
                Footers = <>
                Width = 95
              end
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'DateA4Comfirm'
                Footers = <>
                Width = 79
              end
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'ColorWindow'
                Footers = <>
                KeyList.Strings = (
                  '111'
                  '222')
                PickList.Strings = (
                  '111'
                  '222')
                Width = 96
              end
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'DateColorWindow'
                Footers = <>
                Width = 95
              end
              item
                Color = clActiveCaption
                EditButtons = <>
                FieldName = 'PC_Confirm'
                Footers = <>
                Width = 143
              end
              item
                EditButtons = <>
                FieldName = 'VendorID'
                Footers = <>
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'MaterialID'
                Footers = <>
                Width = 109
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'BuyConsolidation'
                Footers = <>
                Width = 104
              end
              item
                EditButtons = <>
                FieldName = 'DCName'
                Footers = <>
                PickList.Strings = (
                  'HF'
                  'FT'
                  'LYN')
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|DCName'
                Title.Color = clYellow
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Signer'
                Footers = <>
                PickList.Strings = (
                  'Tracy')
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Who Signed'
                Title.Color = clYellow
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'ShippedDate'
                Footers = <>
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|When DC Shipped'
                Title.Color = clMenuBar
                Width = 91
              end
              item
                EditButtons = <>
                FieldName = 'SignedDate'
                Footers = <>
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Signed Date'
                Title.Color = clYellow
                Width = 91
              end
              item
                Color = clCream
                EditButtons = <>
                FieldName = 'ReceivedDate'
                Footers = <>
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Received Date'
                Title.Color = clYellow
                Width = 91
              end
              item
                EditButtons = <>
                FieldName = 'PRO'
                Footers = <>
                PickList.Strings = (
                  'LYN PRO'
                  'BY PRO'
                  'LYN PRO & BY PRO')
                Title.Caption = 'PRODUCTION SOURCE|LYN PRO/BY PRO '
                Title.Color = clYellow
                Width = 108
              end
              item
                EditButtons = <>
                FieldName = 'Senter'
                Footers = <>
                PickList.Strings = (
                  'DEV MTRL TEAM'
                  'PRO MTRL TEAM'
                  'BY MTRL TEAM')
                Title.Caption = 'WHO SENT CFM SWATCH TO VENDOR'
                Title.Color = clYellow
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'Readable'
                Footers = <>
                PickList.Strings = (
                  'Readable'
                  'Non-readable')
                Title.Color = clYellow
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'SharedDC'
                Footers = <>
                PickList.Strings = (
                  'HF'
                  'FT'
                  'LYN')
                Title.Caption = 'DC RECORD FOR CFM SWATCH|SharedDCs'
                Title.Color = clYellow
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'ExpireDate'
                Footers = <>
                Title.Caption = 'DC RECORD FOR CFM SWATCH|When to expire?'
                Title.Color = clYellow
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'Updater'
                Footers = <>
                PickList.Strings = (
                  'Tracy')
                Title.Caption = 'DC RECORD FOR CFM SWATCH|Who Updated Excel File'
                Title.Color = clYellow
                Width = 92
              end
              item
                EditButtons = <>
                FieldName = 'color2Remark'
                Footers = <>
                Title.Caption = 'DC RECORD FOR CFM SWATCH|Remark'
                Title.Color = clYellow
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'AWB'
                Footers = <>
                Title.Caption = 'DC RECORD FOR CFM SWATCH|AWB#'
                Title.Color = clMenuBar
                Width = 101
              end>
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 65
          Width = 1636
          Height = 107
          Align = alTop
          TabOrder = 2
          object Label4: TLabel
            Left = 16
            Top = 9
            Width = 36
            Height = 13
            Caption = 'Season'
          end
          object Label6: TLabel
            Left = 24
            Top = 32
            Width = 28
            Height = 13
            Caption = 'Stage'
          end
          object lbl1: TLabel
            Left = 199
            Top = 8
            Width = 38
            Height = 13
            Caption = 'Supplier'
          end
          object Label5: TLabel
            Left = 17
            Top = 56
            Width = 35
            Height = 13
            Caption = 'Pur NO'
          end
          object Label10: TLabel
            Left = 186
            Top = 32
            Width = 52
            Height = 13
            Caption = 'Mat. Name'
          end
          object Label1: TLabel
            Left = 383
            Top = 32
            Width = 37
            Height = 13
            Caption = 'Mat NO'
          end
          object Label2: TLabel
            Left = 213
            Top = 55
            Width = 22
            Height = 13
            Caption = 'SR#'
          end
          object Label3: TLabel
            Left = 377
            Top = 9
            Width = 44
            Height = 13
            Caption = 'DevType'
          end
          object Label8: TLabel
            Left = 139
            Top = 83
            Width = 7
            Height = 13
            Caption = '~'
          end
          object Label9: TLabel
            Left = 22
            Top = 80
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
          object Label12: TLabel
            Left = 240
            Top = 82
            Width = 32
            Height = 13
            Caption = 'Forzen'
          end
          object Label13: TLabel
            Left = 475
            Top = 82
            Width = 7
            Height = 13
            Caption = '~'
          end
          object Label22: TLabel
            Left = 552
            Top = 7
            Width = 52
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'BuyNo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label18: TLabel
            Left = 531
            Top = 58
            Width = 7
            Height = 13
            Caption = '~'
          end
          object Edit1: TEdit
            Left = 56
            Top = 5
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 56
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 240
            Top = 5
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object Edit4: TEdit
            Left = 240
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 3
          end
          object Edit5: TEdit
            Left = 56
            Top = 52
            Width = 121
            Height = 21
            TabOrder = 4
          end
          object Button1: TButton
            Left = 656
            Top = 37
            Width = 62
            Height = 32
            Caption = 'QUERY'
            TabOrder = 5
            OnClick = Button1Click
          end
          object Edit6: TEdit
            Left = 425
            Top = 29
            Width = 118
            Height = 21
            TabOrder = 6
          end
          object Edit7: TEdit
            Left = 240
            Top = 52
            Width = 121
            Height = 21
            TabOrder = 7
          end
          object cb8: TComboBox
            Left = 425
            Top = 6
            Width = 119
            Height = 21
            ItemHeight = 13
            TabOrder = 8
            Items.Strings = (
              ''
              'Inline'
              'Great@Good'
              'QuickResponse'
              'Incubate'
              'SMU')
          end
          object DTP2: TDateTimePicker
            Left = 148
            Top = 79
            Width = 83
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 9
          end
          object DTP1: TDateTimePicker
            Left = 56
            Top = 79
            Width = 84
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 10
          end
          object datecheckbox: TCheckBox
            Left = 4
            Top = 81
            Width = 17
            Height = 17
            TabOrder = 11
          end
          object Edit8: TEdit
            Left = 277
            Top = 79
            Width = 33
            Height = 21
            TabOrder = 12
            Text = '9'
          end
          object CheckBox1: TCheckBox
            Left = 314
            Top = 80
            Width = 78
            Height = 17
            Caption = 'Signed Date'
            TabOrder = 13
          end
          object DTP3: TDateTimePicker
            Left = 394
            Top = 78
            Width = 84
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 14
          end
          object DTP4: TDateTimePicker
            Left = 484
            Top = 77
            Width = 86
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 15
          end
          object Edit9: TEdit
            Left = 609
            Top = 5
            Width = 118
            Height = 21
            TabOrder = 16
            Visible = False
          end
          object CheckBox6: TCheckBox
            Left = 586
            Top = 80
            Width = 63
            Height = 17
            Caption = 'CoverAll'
            TabOrder = 17
          end
          object CheckBox7: TCheckBox
            Left = 370
            Top = 56
            Width = 78
            Height = 17
            Caption = 'Scan Date'
            TabOrder = 18
          end
          object DTP9: TDateTimePicker
            Left = 450
            Top = 54
            Width = 84
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 19
          end
          object DTP10: TDateTimePicker
            Left = 540
            Top = 53
            Width = 86
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 20
          end
          object Button16: TButton
            Left = 656
            Top = 69
            Width = 62
            Height = 32
            Caption = 'CoverAll'
            TabOrder = 21
            OnClick = Button16Click
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 396
          Width = 1636
          Height = 210
          Align = alClient
          Caption = 'Panel5'
          TabOrder = 3
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 1634
            Height = 40
            Align = alTop
            TabOrder = 0
            object Label11: TLabel
              Left = 924
              Top = 20
              Width = 116
              Height = 16
              Caption = 'NG Remark History'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label7: TLabel
              Left = 4
              Top = 17
              Width = 108
              Height = 16
              Caption = 'MaterialNG Status'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Button4: TButton
              Left = 178
              Top = 9
              Width = 57
              Height = 28
              Caption = 'NG Modify'
              Enabled = False
              TabOrder = 0
              OnClick = Button4Click
            end
            object Button5: TButton
              Left = 234
              Top = 9
              Width = 65
              Height = 28
              Caption = 'NG Save'
              Enabled = False
              TabOrder = 1
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 298
              Top = 9
              Width = 65
              Height = 28
              Caption = 'NG Cancel'
              Enabled = False
              TabOrder = 2
              OnClick = Button6Click
            end
            object Button7: TButton
              Left = 122
              Top = 9
              Width = 57
              Height = 28
              Caption = 'NG Insert'
              Enabled = False
              TabOrder = 3
              OnClick = Button7Click
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 41
            Width = 912
            Height = 168
            Align = alLeft
            Caption = 'Panel7'
            TabOrder = 1
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 1
              Width = 910
              Height = 166
              Align = alClient
              DataSource = DataSource2
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ng_date'
                  Footers = <>
                  Title.Caption = 'NG_Date'
                  Width = 130
                end
                item
                  EditButtons = <>
                  FieldName = 'NG_ETD'
                  Footers = <>
                  Width = 130
                end
                item
                  EditButtons = <>
                  FieldName = 'NG_ETA'
                  Footers = <>
                  Width = 130
                end
                item
                  EditButtons = <>
                  FieldName = 'Result'
                  Footers = <>
                  Width = 144
                end
                item
                  Color = clYellow
                  EditButtons = <>
                  FieldName = 'Remark'
                  Footers = <>
                  Width = 448
                end>
            end
          end
          object Panel8: TPanel
            Left = 913
            Top = 41
            Width = 722
            Height = 168
            Align = alClient
            Caption = 'Panel8'
            TabOrder = 2
            object DBGridEh3: TDBGridEh
              Left = 1
              Top = 1
              Width = 720
              Height = 166
              Align = alClient
              Color = clScrollBar
              DataSource = DataSource3
              EvenRowColor = clScrollBar
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Remark'
                  Footers = <>
                  Width = 340
                end
                item
                  EditButtons = <>
                  FieldName = 'userdate'
                  Footers = <>
                  Title.Caption = 'UserDate'
                  Width = 139
                end
                item
                  EditButtons = <>
                  FieldName = 'userid'
                  Footers = <>
                  Title.Caption = 'UserID'
                  Width = 87
                end>
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1638
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label28: TLabel
          Left = 10
          Top = 8
          Width = 52
          Height = 13
          Caption = 'Mat. Name'
        end
        object Label30: TLabel
          Left = 23
          Top = 32
          Width = 37
          Height = 13
          Caption = 'Mat NO'
        end
        object Label31: TLabel
          Left = 373
          Top = 7
          Width = 38
          Height = 13
          Caption = 'Supplier'
        end
        object Label33: TLabel
          Left = 360
          Top = 31
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 536
          Top = 7
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Forecase:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 696
          Top = 15
          Width = 185
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 696
          Top = 39
          Width = 185
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 213
          Top = 7
          Width = 22
          Height = 13
          Caption = 'SR#'
        end
        object Label20: TLabel
          Left = 205
          Top = 31
          Width = 29
          Height = 13
          Caption = 'SKU#'
        end
        object Label15: TLabel
          Left = 709
          Top = 15
          Width = 3
          Height = 13
        end
        object Edit21: TEdit
          Left = 64
          Top = 5
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button11: TButton
          Left = 624
          Top = 5
          Width = 62
          Height = 32
          Caption = 'QUERY'
          TabOrder = 1
          OnClick = Button11Click
        end
        object Edit23: TEdit
          Left = 417
          Top = 5
          Width = 118
          Height = 21
          TabOrder = 2
        end
        object Edit24: TEdit
          Left = 64
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object Edit25: TEdit
          Left = 417
          Top = 29
          Width = 118
          Height = 21
          Color = clYellow
          TabOrder = 4
          Text = '202404'
        end
        object CheckBox2: TCheckBox
          Left = 604
          Top = 8
          Width = 17
          Height = 17
          TabOrder = 5
        end
        object Edit10: TEdit
          Left = 240
          Top = 4
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object Edit11: TEdit
          Left = 240
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 7
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 65
        Width = 737
        Height = 542
        Align = alLeft
        DataSource = DataSource4
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
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'A4Comfirm'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'DateA4Comfirm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
          end>
      end
      object Panel12: TPanel
        Left = 737
        Top = 65
        Width = 65
        Height = 542
        Align = alLeft
        TabOrder = 2
        object Button9: TButton
          Left = 2
          Top = 29
          Width = 62
          Height = 32
          Caption = 'ReQuery'
          TabOrder = 0
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 2
          Top = 197
          Width = 62
          Height = 32
          Caption = 'RunAll'
          TabOrder = 1
          OnClick = Button10Click
        end
        object Button12: TButton
          Left = 2
          Top = 109
          Width = 62
          Height = 32
          Caption = 'RunFullSize'
          TabOrder = 2
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 3
          Top = 149
          Width = 62
          Height = 32
          Caption = 'Save'
          TabOrder = 3
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 3
          Top = 549
          Width = 62
          Height = 32
          Caption = 'RemoveDup.'
          TabOrder = 4
          OnClick = Button14Click
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 802
        Top = 65
        Width = 836
        Height = 542
        Align = alClient
        DataSource = DataSource5
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'xh'
            Footers = <
              item
                ValueType = fvtCount
              end>
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Width = 70
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CCQQ'
            Footers = <>
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'CCQZ'
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'A4Comfirm'
            Footers = <>
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'DateA4Comfirm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH_CFM'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sending List'
      ImageIndex = 2
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1638
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label27: TLabel
          Left = 696
          Top = 15
          Width = 185
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 709
          Top = 15
          Width = 3
          Height = 13
        end
        object Label23: TLabel
          Left = 195
          Top = 20
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label24: TLabel
          Left = 195
          Top = 44
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label25: TLabel
          Left = 298
          Top = 40
          Width = 52
          Height = 13
          Caption = 'Mat. Name'
        end
        object Label26: TLabel
          Left = 479
          Top = 40
          Width = 38
          Height = 13
          Caption = 'Supplier'
        end
        object Label29: TLabel
          Left = 480
          Top = 17
          Width = 36
          Height = 13
          Caption = 'Season'
        end
        object Label32: TLabel
          Left = 290
          Top = 16
          Width = 61
          Height = 13
          Caption = 'CFM Swatch'
        end
        object Label34: TLabel
          Left = 647
          Top = 40
          Width = 37
          Height = 13
          Caption = 'Mat NO'
        end
        object DTP5: TDateTimePicker
          Left = 112
          Top = 12
          Width = 84
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 0
        end
        object DTP6: TDateTimePicker
          Left = 204
          Top = 12
          Width = 83
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 10
          Top = 16
          Width = 103
          Height = 17
          Caption = 'Signed Date'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 10
          Top = 40
          Width = 103
          Height = 17
          Caption = 'Received Date'
          TabOrder = 3
        end
        object DTP7: TDateTimePicker
          Left = 112
          Top = 36
          Width = 84
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 4
        end
        object DTP8: TDateTimePicker
          Left = 204
          Top = 36
          Width = 83
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 5
        end
        object BitBtn1: TBitBtn
          Left = 832
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn1Click
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
        object bbt6: TBitBtn
          Left = 930
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = bbt6Click
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
        object Edit12: TEdit
          Left = 352
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 8
        end
        object Edit13: TEdit
          Left = 520
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 9
        end
        object Edit14: TEdit
          Left = 520
          Top = 13
          Width = 121
          Height = 21
          TabOrder = 10
        end
        object Edit15: TEdit
          Left = 352
          Top = 12
          Width = 121
          Height = 21
          TabOrder = 11
        end
        object BitBtn2: TBitBtn
          Left = 880
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = BitBtn2Click
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
        object Edit16: TEdit
          Left = 689
          Top = 37
          Width = 118
          Height = 21
          TabOrder = 13
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 65
        Width = 1638
        Height = 542
        Align = alClient
        DataSource = DataSource6
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
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'A4Comfirm'
            Footers = <>
            ReadOnly = True
            Width = 194
          end
          item
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Material Name'
            Width = 203
          end
          item
            EditButtons = <>
            FieldName = 'Vendor'
            Footers = <>
            PickList.Strings = (
              '1 SET'
              '2 SETS'
              '3 SETS'
              '4 SETS'
              '2 PAIRS')
            Title.Color = clYellow
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'PRO_MTL_TEAM'
            Footers = <>
            PickList.Strings = (
              '1 SET'
              '2 SETS'
              '3 SETS'
              '4 SETS'
              '1 PAIR')
            Title.Color = clYellow
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'PRO_QC_TEAM'
            Footers = <>
            PickList.Strings = (
              '1 SET'
              '2 SETS'
              '3 SETS'
              '4 SETS'
              '1 PAIR')
            Title.Color = clYellow
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Color = clYellow
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'SignedDate'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ReceivedDate'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Receiver'
            Footers = <>
            Title.Color = clYellow
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1638
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label36: TLabel
          Left = 696
          Top = 15
          Width = 185
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 709
          Top = 15
          Width = 3
          Height = 13
        end
        object Label38: TLabel
          Left = 195
          Top = 20
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label40: TLabel
          Left = 330
          Top = 40
          Width = 52
          Height = 13
          Caption = 'Mat. Name'
        end
        object Label41: TLabel
          Left = 511
          Top = 40
          Width = 38
          Height = 13
          Caption = 'Supplier'
        end
        object Label43: TLabel
          Left = 112
          Top = 40
          Width = 77
          Height = 13
          Caption = 'A4 CFM Swatch'
        end
        object Label44: TLabel
          Left = 679
          Top = 40
          Width = 37
          Height = 13
          Caption = 'Mat NO'
        end
        object Label39: TLabel
          Left = 1168
          Top = 41
          Width = 205
          Height = 13
          Caption = 'Only Search and Save for A4 Confirm is null'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 112
          Top = 12
          Width = 84
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 204
          Top = 12
          Width = 83
          Height = 21
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 1
        end
        object CheckBox5: TCheckBox
          Left = 10
          Top = 16
          Width = 103
          Height = 17
          Caption = 'Signed Date'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object BitBtn3: TBitBtn
          Left = 856
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn3Click
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
        object Edit17: TEdit
          Left = 384
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object Edit18: TEdit
          Left = 552
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object Edit20: TEdit
          Left = 192
          Top = 36
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object BitBtn5: TBitBtn
          Left = 904
          Top = 8
          Width = 73
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = BitBtn5Click
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
        object Edit22: TEdit
          Left = 721
          Top = 37
          Width = 118
          Height = 21
          TabOrder = 8
        end
        object BitBtn4: TBitBtn
          Left = 976
          Top = 8
          Width = 73
          Height = 49
          Hint = 'Save Current'
          Caption = 'Run&Save'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnClick = BitBtn4Click
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
        object Button15: TButton
          Left = 1200
          Top = 5
          Width = 62
          Height = 32
          Caption = 'QUERY'
          TabOrder = 10
          Visible = False
          OnClick = Button15Click
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 65
        Width = 873
        Height = 542
        Align = alLeft
        DataSource = DataSource7
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ywpm4'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'A4Comfirm'
            Footers = <>
            Width = 148
          end
          item
            EditButtons = <>
            FieldName = 'TrackingA4Comfirm'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'DateA4Comfirm'
            Footers = <>
          end>
      end
      object DBGridEh8: TDBGridEh
        Left = 873
        Top = 65
        Width = 765
        Height = 542
        Align = alClient
        DataSource = DataSource8
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Width = 206
          end
          item
            EditButtons = <>
            FieldName = 'A4Comfirm'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'TrackingA4Comfirm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DateA4Comfirm'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Signer'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'cgzl_color2clbh'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      '---------------------------'
      
        '      SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,' +
        'color.ywpm,color.season,color.cgno,purpose,'
      '          color.CLBH,'
      
        '          cgzl_color_C.cgno as maincgno,cgzl_color.visually,cgzl' +
        '_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgzl_co' +
        'lor.userid,'
      '          cgzl_color.userdate,cgzl_color.remark, '
      
        '          color.NG_Reason,cgzl_color.ColorMatching,cgzl_color.Co' +
        'lorRFT,Max(kcrks.userdate) as ArriveDate,cgzl_color2_C.clbh as c' +
        'gzl_color2clbh, '
      
        '          cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cg' +
        'zl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,'
      
        '          cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgz' +
        'l_color2.ShippedDate,cgzl_color2.SignedDate,'
      
        '          cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,' +
        'cgzl_color2.Senter,'
      
        '          cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color' +
        '2.Updater,CGZL_Color.BuyConsolidation,color.ypdh,'
      
        '          cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.R' +
        'eadable,'
      
        '          color.cldhflex as MaterialID,color.zsdhflex as VendorI' +
        'D,FormalCLBH,TempCLBH,Article,Max(SavingCLDH) as SavingCLDH,cgzl' +
        '_color2.ReceivedDate'
      
        '          ,Max(CGZLInvoiceS.ScanDate) as ScanDate,color.MatRemar' +
        'k,color.Qty'
      '  from ('
      
        '  SELECT kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZ' +
        'L.ywpm,CGZL.SEASON,CGZLSs.CGNO,CGZL.PURPOSE,'
      '        CGZLSS.CLBH,'
      
        '     Max(case when (left(CLZL.cldh,1)<>'#39'V'#39' and cgzl_color.CLBH  ' +
        'IS NOT NULL) THEN CLZL.cldh '
      
        '         when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color_TEMP.CLB' +
        'H  IS NOT NULL and CLZL_LS.JHDH <>'#39#39') THEN CLZL_LS.JHDH'
      
        '         when (cgzl_color_TEMP.CLBH  IS NOT  NULL and cgzl_color' +
        '_TEMP.CLBH<>'#39#39') THEN CLZL_LS.JHDH'
      '         else CLZL.cldh  end) as ColorCLDH,'
      
        '     Max(case when (left(CLZL.cldh,1)<>'#39'V'#39' and cgzl_color2.CLBH ' +
        ' IS NOT NULL) THEN CLZL.cldh '
      
        '         when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEMP.CL' +
        'BH  IS NOT NULL and CLZL_LS.JHDH <>'#39#39') THEN CLZL_LS.JHDH'
      
        '         when (cgzl_color2_TEMP.CLBH  IS NOT  NULL and cgzl_colo' +
        'r2_TEMP.CLBH<>'#39#39') THEN CLZL_LS.JHDH'
      '         else CLZL.cldh  end) as Color2CLDH,'
      '     Max(case when (left(CLZL.cldh,1)<>'#39'V'#39') THEN CLZL.cldh '
      
        '         when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and CLZL_LS.JHDH  IS NO' +
        'T NULL and CLZL_LS.JHDH <>'#39#39') THEN CLZL_LS.JHDH'
      '         else CLZL.cldh  end) as SavingCLDH,'
      '        ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,'
      
        '        ZSZL_FLEX.zsdhflex,FormalCLBH.JHDH FormalCLBH,TempCLBH.C' +
        'LDH TempCLBH,'
      '        kfxxzl.Article,clbzzl.bz as MatRemark,CGZLS.Qty'
      '   FROM ypzl'
      
        '    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.s' +
        'hehao=ypzl.shehao '
      '    left join CGZLSS on ypzl.ypdh=CGZLSs.zlbh'
      '    left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX='#39'6'#39' '
      '                 and CGZL.GSBH= '#39'CDC'#39' '
      
        '    left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JH' +
        'DH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CG' +
        'ZLSS.CLBH'
      
        '    left join cgzl_color on cgzl_color.CLBH=CGZLSS.CLBH and CGZL' +
        'SS.cgno=cgzl_color.CGNO'
      
        '    left join cgzl_color cgzl_color_TEMP on cgzl_color_TEMP.CLBH' +
        '=CLZL_LS.JHDH and CGZLSS.cgno=cgzl_color_TEMP.CGNO'
      '    left join cgzl_color2 on cgzl_color2.CLBH=CGZLSS.CLBH'
      
        '    left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.C' +
        'LBH=CLZL_LS.JHDH'
      
        '    left join CLZL_LS FormalCLBH on (FormalCLBH.CLDH=CGZLSS.CLBH' +
        ' or FormalCLBH.CLDH=CLZL_LS.JHDH) '
      
        '    left join CLZL_LS TempCLBH on (TempCLBH.CLDH=CGZLSS.CLBH or ' +
        'TempCLBH.CLDH=CLZL_LS.JHDH) '
      '    left join CLZL  on CLZl.CLDH=CGZLSS.CLBH'
      #9'left join clbzzl on CGZLSS.CLBH=clbzzl.cldh and clbzzl.zybb='#39'E'#39
      
        '    left join CGZLS  on CGZl.CGNO=CGZLS.CGNO and CGZLS.CLBH=CGZL' +
        'SS.CLBH'
      '    left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH'
      
        '    left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.' +
        'GSBH='#39'CDC'#39
      '    left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser'
      
        '    left join materialNG on cgzlss.cgno=materialNG.cgno and CGZL' +
        'SS.CLBH=materialNG.clbh'
      '    left join CLZL_FLEX on CGZLSS.CLBH=CLZL_FLEX.cldh '
      '    left join ZSZL_FLEX on ZSZL_FLEX.zsdh = cgzl.zsbh'
      '  where 1=1 and CGZLSS.CLBH<>'#39#39' '
      
        ' and (CLZL_LS.JHDH like '#39'%P900000702%'#39'  or CGZLSS.CLBH like '#39'%P9' +
        '00000702%'#39' ) '
      
        '  group by kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,C' +
        'LZL.ywpm,CGZL.SEASON,CGZLsS.CGNO,CGZL.PURPOSE,'
      
        '      CGZLSS.CLBH,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhf' +
        'lex,ZSZL_FLEX.zsdhflex,'
      
        '      FormalCLBH.JHDH,TempCLBH.CLDH,kfxxzl.Article,clbzzl.bz,CGZ' +
        'LS.Qty'
      '  )color'
      
        'left join CGZLInvoiceS on (CGZLInvoiceS.CLBH=color.ColorCLDH or ' +
        'CGZLInvoiceS.CLBH=color.CLBH ) and CGZLInvoiceS.CGNO=color.CGNO'
      
        'left join kcrks on kcrks.clbh=color.CLBH and kcrks.cgbh=color.yp' +
        'dh and kcrks.docno=color.cgno'
      
        'left join cgzl_color on color.cgno=cgzl_color.cgno and (cgzl_col' +
        'or.clbh=color.ColorCLDH ) '
      'left join cgzl_color2 on (cgzl_color2.clbh=color.Color2CLDH )'
      
        'left join cgzl_color cgzl_color_C on color.cgno=cgzl_color_C.cgn' +
        'o and cgzl_color_C.clbh=color.SavingCLDH  '
      
        'left join cgzl_color2 cgzl_color2_C on cgzl_color2_C.clbh=color.' +
        'SavingCLDH '
      'where 1=2'
      
        '  and convert(smalldatetime,convert(varchar,cgzl_color.userdate,' +
        '111))  between '
      '    '#39'2022/01/20'#39' and  '#39'2024/11/19'#39
      'group by'
      
        '      color.devtype,color.fd,color.devcode,color.ypdh,color.zsyw' +
        'jc,color.ywpm,color.season,color.cgno,purpose,color.CLBH,FormalC' +
        'LBH,TempCLBH,'
      
        '      cgzl_color.cgno,cgzl_color.visually,cgzl_color.spectro,cgz' +
        'l_color.spectro_file,cgzl_color.result,cgzl_color.userid,cgzl_co' +
        'lor.userdate,cgzl_color.remark,'
      
        '      cgzl_color.ColorMatching,cgzl_color.ColorRFT,color.NG_Reas' +
        'on,cgzl_color.clbh,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4C' +
        'omfirm,'
      
        '      cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,cgzl_col' +
        'or2.DateColorWindow,cgzl_color2.PC_Confirm,cldhflex,zsdhflex,'
      
        '      cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2' +
        '.Signer,'
      '      cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,'
      
        '      cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Up' +
        'dater,CGZL_Color.BuyConsolidation,'
      
        '      cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Reada' +
        'ble,Article,cgzl_color2_C.clbh,cgzl_color_C.CGNO,cgzl_color2.Rec' +
        'eivedDate'
      #9'  ,color.MatRemark,color.Qty'
      '      Order by color.cgno,cgzl_color.CLBH,maincgno')
    UpdateObject = UpdQry1
    Left = 89
    Top = 273
    object Query1SEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Query1PURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1devtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 10
    end
    object Query1fd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1maincgno: TStringField
      FieldName = 'maincgno'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1FormalCLBH: TStringField
      FieldName = 'FormalCLBH'
      FixedChar = True
      Size = 10
    end
    object Query1TempCLBH: TStringField
      FieldName = 'TempCLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1Visually: TStringField
      FieldName = 'Visually'
      FixedChar = True
      Size = 10
    end
    object Query1Spectro: TStringField
      FieldName = 'Spectro'
      FixedChar = True
      Size = 10
    end
    object Query1Spectro_file: TStringField
      FieldName = 'Spectro_file'
      FixedChar = True
      Size = 30
    end
    object Query1Result: TStringField
      FieldName = 'Result'
      FixedChar = True
      Size = 10
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object Query1remark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object Query1ColorMatching: TStringField
      FieldName = 'ColorMatching'
    end
    object Query1ColorRFT: TStringField
      FieldName = 'ColorRFT'
    end
    object Query1ArriveDate: TDateTimeField
      FieldName = 'ArriveDate'
    end
    object Query1NG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object Query1cgzl_color2clbh: TStringField
      FieldName = 'cgzl_color2clbh'
      FixedChar = True
      Size = 15
    end
    object Query1A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 100
    end
    object Query1TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object Query1DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object Query1ColorWindow2: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object Query1DateColorWindow: TDateTimeField
      FieldName = 'DateColorWindow'
    end
    object Query1PC_Confirm: TStringField
      FieldName = 'PC_Confirm'
      FixedChar = True
    end
    object Query1MaterialID: TStringField
      FieldName = 'MaterialID'
      Size = 15
    end
    object Query1VendorID: TStringField
      FieldName = 'VendorID'
      Size = 15
    end
    object Query1ShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object Query1SignedDate: TDateTimeField
      FieldName = 'SignedDate'
      OnChange = Query1SignedDateChange
    end
    object Query1ReceivedDate: TDateTimeField
      FieldName = 'ReceivedDate'
    end
    object Query1Signer: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object Query1DCName: TStringField
      FieldName = 'DCName'
      FixedChar = True
      Size = 10
    end
    object Query1ExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
    object Query1SharedDC: TStringField
      FieldName = 'SharedDC'
      FixedChar = True
      Size = 10
    end
    object Query1Updater: TStringField
      FieldName = 'Updater'
      FixedChar = True
      Size = 10
    end
    object Query1color2Remark: TStringField
      FieldName = 'color2Remark'
      FixedChar = True
      Size = 60
    end
    object Query1AWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
    end
    object Query1PRO: TStringField
      FieldName = 'PRO'
      FixedChar = True
      Size = 30
    end
    object Query1Senter: TStringField
      FieldName = 'Senter'
      FixedChar = True
      Size = 30
    end
    object Query1Readable: TStringField
      FieldName = 'Readable'
      FixedChar = True
      Size = 30
    end
    object Query1BuyConsolidation: TDateTimeField
      FieldName = 'BuyConsolidation'
    end
    object Query1ypdh: TStringField
      FieldName = 'ypdh'
    end
    object Query1SavingCLDH: TStringField
      FieldName = 'SavingCLDH'
      FixedChar = True
      Size = 10
    end
    object Query1ScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object Query1MatRemark: TStringField
      FieldName = 'MatRemark'
      FixedChar = True
      Size = 80
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 89
    Top = 217
  end
  object UpdQry1: TUpdateSQL
    ModifySQL.Strings = (
      'update cgzl_color'
      'set'
      '  visually = :visually ,'
      '  spectro = :spectro ,'
      '  spectro_file = :spectro_file ,'
      '  result = :result ,'
      '  userid = :userid ,'
      '  userdate = :userdate ,'
      '  remark = :remark,'
      '  BuyConsolidation=:BuyConsolidation,'
      '  ColorMatching=:ColorMatching,'
      '  ColorRFT=:ColorRFT '
      'where'
      '  CGNO = :OLD_CGNO and'
      '  clbh = :OLD_SavingCLDH'
      '  '
      ''
      ''
      'update cgzl_color2'
      'set'
      '  A4Comfirm= :A4Comfirm,'
      '  TrackingA4Comfirm= :TrackingA4Comfirm,'
      '  DateA4Comfirm = :DateA4Comfirm ,'
      '  ColorWindow= :ColorWindow,'
      '  DateColorWindow= :DateColorWindow,'
      '  PC_Confirm= :PC_Confirm,'
      '  DCName=:DCName,'
      '  Signer=:Signer,'
      '  SignedDate=:SignedDate,'
      '  ShippedDate=:ShippedDate,'
      '  PRO=:PRO,'
      '  Senter=:Senter,'
      '  SharedDC=:SharedDC,'
      '  ExpireDate=:ExpireDate,'
      '  Updater=:Updater,'
      '  color2Remark=:color2Remark ,'
      '  Readable=:Readable,'
      '  ReceivedDate=:ReceivedDate'
      ''
      'where'
      '  clbh = :OLD_SavingCLDH')
    Left = 89
    Top = 313
  end
  object TIMEQRY: TQuery
    DatabaseName = 'DB'
    Left = 129
    Top = 273
  end
  object checkclbh: TQuery
    DatabaseName = 'dB'
    Left = 33
    Top = 273
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select CGNO,CLBH,ng_date,NG_ETD, NG_ETA ,Result,MaterialNG.Remar' +
        'k from MaterialNG'
      'where cgno=:cgno and clbh=:clbh')
    UpdateObject = Updqry2
    Left = 255
    Top = 491
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
    object Query2CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2ng_date: TDateTimeField
      FieldName = 'ng_date'
    end
    object Query2NG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
      Origin = 'DB.MaterialNG.NG_ETD'
    end
    object Query2NG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
      Origin = 'DB.MaterialNG.NG_ETA'
    end
    object Query2Result: TStringField
      FieldName = 'Result'
      Origin = 'DB.MaterialNG.Result'
      FixedChar = True
    end
    object Query2Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 250
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 257
    Top = 457
  end
  object Updqry2: TUpdateSQL
    ModifySQL.Strings = (
      'update materialNG'
      'set'
      '  remark = :remark'
      'where'
      '  CGNO = :OLD_CGNO and'
      '  clbh = :OLD_clbh and'
      '  NG_Date =:OLD_NG_Date'
      ''
      '   ')
    Left = 297
    Top = 492
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource2
    SQL.Strings = (
      'select userdate,userid,Remark from cgzl_colors'
      'where cgno=:cgno and clbh=:clbh')
    Left = 938
    Top = 522
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
    object Query3userdate: TStringField
      FieldName = 'userdate'
      FixedChar = True
      Size = 25
    end
    object Query3userid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object Query3Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 255
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 938
    Top = 490
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 833
    Top = 233
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource4
    SQL.Strings = (
      'select xh,XXZLS.CLBH,BWZL.ywsm,CLZL.ywpm,ZSZL.ZSYWJC,CCQQ,CCQZ,'#9
      
        'case when cgzl_color2.clbh is not null then cgzl_color2.A4Comfir' +
        'm'#9
      
        #9'when cgzl_color2grading.CLBH is not null then cgzl_color2gradin' +
        'g.A4Comfirm'
      #9'else Tempcgzl_color2.A4Comfirm end as A4Comfirm,'
      
        'case when cgzl_color2.clbh is not null then cgzl_color2.DateA4Co' +
        'mfirm'#9
      
        #9'when cgzl_color2grading.CLBH is not null then cgzl_color2gradin' +
        'g.DateA4Comfirm'
      #9'else Tempcgzl_color2.DateA4Comfirm end as DateA4Comfirm,'
      'case when cgzl_color2.clbh is not null then cgzl_color2.clbh'
      
        '    when cgzl_color2_grading.CLBH is not null then cgzl_color2_g' +
        'rading.clbh'#9
      #9'else TempCLBH.CLDH end as CLBH_CFM'
      
        #9',cgzl_color2_Grading.CLBH_CFM as CLBH_CFM_O'#9',XXZLS.CSBH,XXZLS.B' +
        'WLB'
      #9',cgzl_color2.clbh as cgzl_color2_clbh'
      #9',cgzl_color2_grading.CLBH as cgzl_color2_grading_clbh'
      #9',Tempcgzl_color2.CLBH as Tempcgzl_color2_CLBH'
      'FROM ('
      
        ' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.B' +
        'WLB,XXZLS.USERDATE,CCQQ,CCQZ,XH,BWBH   '
      ' from XXZLS '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,BWBH    '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,BWBH    from' +
        ' ( '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BW' +
        'LB,CCQQ,CCQZ,XH,BWBH  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao ) XXZLS '
      'inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH'
      ') XXZLS'
      'inner JOIN CLZL ON XXZLS.CLBH = CLZL.cldh'#9
      'inner JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'#9
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'#9
      'left join cgzl_color2 on cgzl_color2.clbh=XXZLS.CLBH'#9
      'left join CLZL_LS TempCLBH on TempCLBH.JHDH=XXZLS.CLBH '#9
      
        'left join cgzl_color2 Tempcgzl_color2 on Tempcgzl_color2.clbh=Te' +
        'mpCLBH.CLDH'#9
      
        'left join cgzl_color2_Grading on cgzl_color2_Grading.CLBH=XXZLS.' +
        'CLBH'#9
      
        'left join cgzl_color2 cgzl_color2grading on cgzl_color2grading.c' +
        'lbh=cgzl_color2_Grading.CLBH_CFM'#9
      'where XXZLS.CSBH not like '#39'JNG%'#39'--'#24288#20839#35069#9
      'ORDER BY XH,CCQQ'#9
      '')
    Left = 841
    Top = 273
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object Query5xh: TStringField
      DisplayWidth = 3
      FieldName = 'xh'
      FixedChar = True
      Size = 3
    end
    object Query5CLBH: TStringField
      DisplayWidth = 14
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query5ywsm: TStringField
      DisplayWidth = 18
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object Query5ywpm: TStringField
      DisplayWidth = 200
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query5ZSYWJC: TStringField
      DisplayWidth = 20
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query5CCQQ: TStringField
      DisplayWidth = 6
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object Query5CCQZ: TStringField
      DisplayWidth = 6
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object Query5A4Comfirm: TStringField
      DisplayWidth = 70
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 70
    end
    object Query5DateA4Comfirm: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DateA4Comfirm'
    end
    object Query5CLBH_CFM: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH_CFM'
      FixedChar = True
      Size = 15
    end
    object Query5CLBH_CFM_O: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH_CFM_O'
      FixedChar = True
      Size = 15
    end
    object Query5CSBH: TStringField
      DisplayWidth = 6
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query5BWLB: TStringField
      DisplayWidth = 1
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
  end
  object QueryCostingSize: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Segment from xxzlkf'
      'where 1=1')
    Left = 888
    Top = 276
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Max(DDZl.BUYNO) as BUYNO,Max(DDZl.DDBH) as DDBh,KFXXZL.DE' +
        'VCODE,DDZl.ARTICLE,XXZLS.CLBH,'
      
        '       cgzl_color2.A4Comfirm ,cgzl_color2.DateA4Comfirm,XXZLS.Xi' +
        'eXing,XXZLS.SheHao,CLZL.ywpm  '
      #9'   ,ZSZL.ZSYWJC'
      'From DDZl'
      
        'left join XXZLS on DDZl.XieXing=XXZLS.XieXing and DDZl.SheHao=XX' +
        'ZLS.SheHao'
      
        'left join KFXXZL on DDZl.XieXing=KFXXZL.XieXing and DDZl.SheHao=' +
        'KFXXZL.SheHao '
      'left join CLZL  on CLZl.CLDH=XXZLS.CLBH '
      'left join cgzl_color2 on cgzl_color2.clbh=XXZLS.CLBH'
      'left JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'where  DDZL.BUYNO like '#39'202404%'#39' and DDZL.DDLB='#39'N'#39
      
        'group by DEVCODE,DDZl.ARTICLE,XXZLS.CLBH,cgzl_color2.A4Comfirm ,' +
        'cgzl_color2.DateA4Comfirm,'
      '    XXZLS.XieXing,XXZLS.SheHao,CLZL.ywpm,ZSZL.ZSYWJC')
    Left = 201
    Top = 273
    object Query4BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query4DDBh: TStringField
      FieldName = 'DDBh'
      FixedChar = True
      Size = 15
    end
    object Query4DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query4ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query4CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query4A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 70
    end
    object Query4DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object Query4XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query4SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query4ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query4ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 193
    Top = 217
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update cgzl_color2_grading'
      'set'
      '  CLBH_CFM= :CLBH_CFM'
      'where'
      '  CLBH = :OLD_CLBH')
    Left = 841
    Top = 313
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 281
    Top = 217
  end
  object Query6: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select cgzl_color2.CLBH,A4Comfirm,cgzl_color2.clbh,A4Comfirm,CGZ' +
        'L.SEASON,ZSZL.ZSYWJC,CLZL.ywpm,'
      
        'case when cgzl_color2.Vendor is null then '#39'4 SETS'#39' else cgzl_col' +
        'or2.Vendor end as Vendor,'
      
        'case when cgzl_color2.PRO_MTL_TEAM is null then '#39'1 SET '#39' else cg' +
        'zl_color2.PRO_MTL_TEAM end as PRO_MTL_TEAM,'
      
        'case when cgzl_color2.PRO_QC_TEAM is null then '#39'1 SET '#39' else cgz' +
        'l_color2.PRO_QC_TEAM end as PRO_QC_TEAM,'
      'cgzl_color2.color2remark  as Remark,'
      'SignedDate,ReceivedDate,'#9
      
        'case when cgzl_color2.Receiver_SendingList is null then '#39'XXXXXXX' +
        'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
        'XXXXXXXXX'#39' else cgzl_color2.Receiver_SendingList end as Receiver'
      'From CGZLSS'
      '    left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX='#39'6'#39' '
      '                 and CGZL.GSBH= '#39'CDC'#39' '
      '    left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH'
      '    left join CLZL  on CLZl.CLDH=CGZLSS.CLBH'
      #9'left join cgzl_color2 on cgzl_color2.CLBH=CGZLSS.CLBH'
      'where 1=1'
      
        '  and convert(smalldatetime,convert(varchar,cgzl_color2.SignedDa' +
        'te,111))  between '
      #39'2024/05/10'#39' and  '#39'2024/05/17'#39)
    UpdateObject = UpdateSQL2
    Left = 281
    Top = 273
    object Query6CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query6A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 70
    end
    object Query6SEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Query6ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query6ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query6Vendor: TStringField
      FieldName = 'Vendor'
      FixedChar = True
      Size = 10
    end
    object Query6PRO_MTL_TEAM: TStringField
      FieldName = 'PRO_MTL_TEAM'
      FixedChar = True
      Size = 10
    end
    object Query6PRO_QC_TEAM: TStringField
      FieldName = 'PRO_QC_TEAM'
      FixedChar = True
      Size = 10
    end
    object Query6Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 80
    end
    object Query6SignedDate: TDateTimeField
      FieldName = 'SignedDate'
    end
    object Query6ReceivedDate: TDateTimeField
      FieldName = 'ReceivedDate'
    end
    object Query6Receiver: TStringField
      FieldName = 'Receiver'
      FixedChar = True
      Size = 53
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update cgzl_color2'
      'set'
      '  Vendor = :Vendor,'
      '  PRO_MTL_TEAM = :PRO_MTL_TEAM,'
      '  PRO_QC_TEAM = :PRO_QC_TEAM,'
      '  color2remark= :Remark,'
      '  ReceivedDate= :ReceivedDate,'
      '  Receiver_SendingList= :Receiver'
      'where'
      '  clbh = :OLD_clbh')
    InsertSQL.Strings = (
      'insert into cgzl_color2'
      '  (Vendor, PRO_MTL_TEAM, PRO_QC_TEAM, Remark, Receiver)'
      'values'
      '  (:Vendor, :PRO_MTL_TEAM, :PRO_QC_TEAM, :Remark, :Receiver)')
    DeleteSQL.Strings = (
      'delete from cgzl_color2'
      'where'
      '  clbh = :OLD_clbh')
    Left = 281
    Top = 329
  end
  object Query7: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select SUBSTRING(CLZL.ywpm,1,4)as ywpm4,SUBSTRING(CLZL.ywpm,5,20' +
        '0)as ywpm,ZSZL.ZSYWJC,'
      
        'CGZL_Color2.CLBH,CGZL_Color2.A4Comfirm,TrackingA4Comfirm,DateA4C' +
        'omfirm,CLLB from CGZL_Color2'
      'left join CLZL on cgzl_color2.CLBH=CLZL.cldh'
      'left join ZSZL  on CLZL.ZSDH=ZSZL.ZSDH'
      '')
    Left = 369
    Top = 281
    object Query7ywpm4: TStringField
      FieldName = 'ywpm4'
      FixedChar = True
      Size = 8
    end
    object Query7ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query7ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query7CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query7A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 100
    end
    object Query7TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object Query7DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object Query7CLLB: TStringField
      FieldName = 'CLLB'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource7: TDataSource
    DataSet = Query7
    Left = 369
    Top = 225
  end
  object Query8: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource7
    SQL.Strings = (
      
        'select CLDH,ywpm,:A4Comfirm as A4Comfirm,:TrackingA4Comfirm as T' +
        'rackingA4Comfirm,:DateA4Comfirm as DateA4Comfirm,'#39'Auto_N735'#39' as ' +
        'Signer,cgzl_color2.CLBH as  cgzl_color2clbh from CLZL'
      'left join cgzl_color2 on cgzl_color2.CLBH=CLDH'
      'where ywpm like '#39'%'#39'+:ywpm'
      
        'and CLDH not in (select CLBH from CGZL_Color2 where A4Comfirm is' +
        ' not null)'
      'and CLZL.CLLB=:CLLB')
    UpdateObject = UpdateSQL3
    Left = 929
    Top = 273
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'A4Comfirm'
        ParamType = ptUnknown
        Size = 101
      end
      item
        DataType = ftFixedChar
        Name = 'TrackingA4Comfirm'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftDateTime
        Name = 'DateA4Comfirm'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFixedChar
        Name = 'ywpm'
        ParamType = ptUnknown
        Size = 201
      end
      item
        DataType = ftFixedChar
        Name = 'CLLB'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query8CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query8ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query8A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 39
    end
    object Query8TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 10
    end
    object Query8DateA4Comfirm: TStringField
      FieldName = 'DateA4Comfirm'
      FixedChar = True
      Size = 21
    end
    object Query8Signer: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 9
    end
    object Query8cgzl_color2clbh: TStringField
      FieldName = 'cgzl_color2clbh'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateSQL3: TUpdateSQL
    InsertSQL.Strings = (
      'update cgzl_color2'
      'set'
      '  A4Comfirm= :A4Comfirm,'
      '  TrackingA4Comfirm= :TrackingA4Comfirm,'
      '  DateA4Comfirm= :DateA4Comfirm,'
      '  Signer= :Signer'
      'where'
      '  CLBH = :OLD_CLDH')
    Left = 929
    Top = 313
  end
  object DataSource8: TDataSource
    DataSet = Query8
    Left = 929
    Top = 241
  end
end
