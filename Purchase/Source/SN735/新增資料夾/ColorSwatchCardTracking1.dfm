object ColorSwatchCardTracking: TColorSwatchCardTracking
  Left = 195
  Top = 125
  Width = 1249
  Height = 522
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1241
    Height = 491
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1233
        Height = 463
        Align = alClient
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1231
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
            Enabled = False
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
            Enabled = False
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
            Left = 536
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
        end
        object Panel3: TPanel
          Left = 1
          Top = 172
          Width = 1231
          Height = 224
          Align = alTop
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1229
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
          Width = 1231
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
          object Label18: TLabel
            Left = 598
            Top = 64
            Width = 28
            Height = 13
            Caption = 'Brand'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label22: TLabel
            Left = 368
            Top = 55
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
            Left = 568
            Top = 5
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
          object DBMemo1: TDBMemo
            Left = 643
            Top = 4
            Width = 537
            Height = 101
            DataField = 'remark'
            DataSource = DataSource1
            TabOrder = 9
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
            TabOrder = 10
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
            TabOrder = 11
          end
          object datecheckbox: TCheckBox
            Left = 4
            Top = 81
            Width = 17
            Height = 17
            TabOrder = 12
          end
          object Edit8: TEdit
            Left = 277
            Top = 79
            Width = 33
            Height = 21
            TabOrder = 13
            Text = '9'
          end
          object CheckBox1: TCheckBox
            Left = 314
            Top = 80
            Width = 78
            Height = 17
            Caption = 'Signed Date'
            TabOrder = 14
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
            TabOrder = 15
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
            TabOrder = 16
          end
          object ComboBox14: TComboBox
            Left = 585
            Top = 76
            Width = 58
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
          object Edit9: TEdit
            Left = 425
            Top = 53
            Width = 118
            Height = 21
            TabOrder = 18
            Visible = False
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 396
          Width = 1231
          Height = 66
          Align = alClient
          Caption = 'Panel5'
          TabOrder = 3
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 1229
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
            Height = 24
            Align = alLeft
            Caption = 'Panel7'
            TabOrder = 1
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 1
              Width = 910
              Height = 22
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
            Width = 317
            Height = 24
            Align = alClient
            Caption = 'Panel8'
            TabOrder = 2
            object DBGridEh3: TDBGridEh
              Left = 1
              Top = 1
              Width = 315
              Height = 22
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
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,color.' +
        'ywpm,color.season,color.cgno,purpose,color.clbh,color.maincgno, '
      
        'color.visually,color.spectro,color.spectro_file,color.result,col' +
        'or.userid,color.userdate,color.remark,color.NG_Reason,kcrks.user' +
        'date as ArriveDate, '
      
        'cgzl_color2.clbh as cgzl_color2clbh,cgzl_color2.A4Comfirm,cgzl_c' +
        'olor2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.Co' +
        'lorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,'
      
        'cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.Signe' +
        'r,'
      'cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,'
      'cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,'
      'cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,'
      
        'color.cldhflex as MaterialID,color.zsdhflex as VendorID,FormalCL' +
        'BH,TempCLBH,Article,color.BuyConsolidation  '
      'from ('
      
        'SELECT kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.' +
        'ywpm,CGZL.SEASON,CGZLSs.CGNO,CGZL.PURPOSE,CGZLsS.CLBH,cgzl_color' +
        '.cgno as maincgno,cgzl_color.visually,'
      
        'cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgz' +
        'l_color.userid,cgzl_color.userdate,'
      
        'cgzl_color.remark,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhf' +
        'lex,ZSZL_FLEX.zsdhflex,FormalCLBH.JHDH FormalCLBH,TempCLBH.CLDH ' +
        'TempCLBH,kfxxzl.Article,CGZL_Color.BuyConsolidation'
      'FROM cgzlss'
      'left join CGZL  on CGZl.CGNO=CGZLSs.CGNO '
      'left join CLZL_LS FormalCLBH on FormalCLBH.CLDH=CGZLSS.CLBH '
      'left join CLZL_LS TempCLBH on TempCLBH.JHDH=CGZLSS.CLBH '
      'left join ypzl on ypzl.ypdh=CGZLSs.zlbh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao '
      'left join CLZL  on CLZl.CLDH=CGZLSs.CLBH'
      'left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH'
      
        'left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH' +
        '='#39'CDC'#39' '
      'left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser'
      
        'left join cgzl_color on cgzlss.cgno=cgzl_color.cgno and cgzlss.c' +
        'lbh=cgzl_color.clbh'
      
        'left join materialNG on cgzlss.cgno=materialNG.cgno and cgzlss.c' +
        'lbh=materialNG.clbh'
      'left join CLZL_FLEX on CLZL_FLEX.cldh = cgzlss.clbh'
      'left join ZSZL_FLEX on ZSZL_FLEX.zsdh = cgzl.zsbh'
      'where CGZL.CGLX='#39'6'#39'   '
      'and CGZL.GSBH='#39'CDC'#39' '
      'and CGZLsS.CLBH like '#39'%C050005369%'#39' '
      '--and kfxxzl.Article ='#39'169580C'#39
      
        'group by kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZ' +
        'L.ywpm,CGZL.SEASON,CGZLsS.CGNO,CGZL.PURPOSE,CGZLsS.CLBH,cgzl_col' +
        'or.cgno,cgzl_color.visually,'
      
        'cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgz' +
        'l_color.userid,cgzl_color.userdate,cgzl_color.remark,ypzl.ypdh,m' +
        'aterialNG.NG_Reason,CLZL_FLEX.cldhflex,ZSZL_FLEX.zsdhflex,Formal' +
        'CLBH.JHDH,TempCLBH.CLDH,kfxxzl.Article,CGZL_Color.BuyConsolidati' +
        'on )color'
      
        'left join kcrks on kcrks.clbh=color.clbh and kcrks.cgbh=color.yp' +
        'dh and kcrks.docno=color.cgno'
      'left join cgzl_color2 on color.clbh=cgzl_color2.clbh'
      'group by'
      
        'color.devtype,color.fd,color.devcode,color.zsywjc,color.ywpm,col' +
        'or.season,color.cgno,purpose,color.clbh,color.maincgno,'
      
        'color.visually,color.spectro,color.spectro_file,color.result,col' +
        'or.userid,color.userdate,color.remark,color.NG_Reason,kcrks.user' +
        'date,'
      
        'cgzl_color2.clbh,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Com' +
        'firm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,cgzl_colo' +
        'r2.DateColorWindow,cgzl_color2.PC_Confirm,cldhflex,zsdhflex,Form' +
        'alCLBH,TempCLBH,'
      
        'cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.Signe' +
        'r,'
      'cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,'
      'cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,'
      
        'cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,Ar' +
        'ticle,color.BuyConsolidation'
      'order by color.cgno'
      '')
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
      Size = 50
    end
    object Query1TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object Query1DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object Query1ColorWindow: TStringField
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
      '  clbh = :OLD_clbh '
      ''
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
      '  Readable=:Readable'
      ''
      'where'
      '  clbh = :OLD_clbh')
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
    Left = 263
    Top = 571
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
    Left = 265
    Top = 537
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
    Left = 337
    Top = 540
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource2
    SQL.Strings = (
      'select userdate,userid,Remark from cgzl_colors'
      'where cgno=:cgno and clbh=:clbh')
    Left = 962
    Top = 698
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
    Left = 962
    Top = 658
  end
end
