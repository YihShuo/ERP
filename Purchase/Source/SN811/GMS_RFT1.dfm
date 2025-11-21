object GMS_RFT: TGMS_RFT
  Left = 276
  Top = 200
  Width = 1237
  Height = 545
  Caption = 'GMS_RFT Calculation Template'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1221
    Height = 506
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Report'
      OnEnter = FormCreate
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1213
        Height = 478
        Align = alClient
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1211
          Height = 96
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 13
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
          object Label1: TLabel
            Left = 136
            Top = 13
            Width = 19
            Height = 16
            Caption = 'TO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 312
            Top = 16
            Width = 3
            Height = 13
          end
          object Button1: TButton
            Left = 8
            Top = 64
            Width = 75
            Height = 25
            Caption = 'Query'
            TabOrder = 0
            OnClick = Button1Click
          end
          object CBX1: TComboBox
            Left = 256
            Top = 8
            Width = 353
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            OnChange = CBX1Change
          end
          object DTP1: TDateTimePicker
            Left = 50
            Top = 11
            Width = 84
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = '?? (??) - ??'
            TabOrder = 2
          end
          object DTP2: TDateTimePicker
            Left = 158
            Top = 11
            Width = 83
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            ImeName = '?? (??) - ??'
            TabOrder = 3
          end
          object Button2: TButton
            Left = 168
            Top = 64
            Width = 75
            Height = 25
            Caption = 'EXCELALL'
            TabOrder = 4
            Visible = False
            OnClick = Button2Click
          end
          object CBX2: TComboBox
            Left = 256
            Top = 48
            Width = 73
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            OnChange = CBX2Change
          end
          object EXCEL1: TButton
            Left = 88
            Top = 64
            Width = 75
            Height = 25
            Caption = 'EXCEL'
            TabOrder = 6
            OnClick = EXCEL1Click
          end
          object chk_Extra: TCheckBox
            Left = 352
            Top = 51
            Width = 73
            Height = 17
            Caption = 'Extra Supp'
            TabOrder = 7
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 97
          Width = 1211
          Height = 380
          Align = alClient
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1209
            Height = 378
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
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'cldh'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'leadtime'
                Footers = <>
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'zsjc'
                Footers = <>
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'PO_NO'
                Footers = <>
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'PO_date'
                Footers = <>
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'Description'
                Footers = <>
                Width = 314
              end
              item
                EditButtons = <>
                FieldName = 'Quantity'
                Footers = <>
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'Invoice_No'
                Footers = <>
                Width = 214
              end
              item
                EditButtons = <>
                FieldName = 'RTA'
                Footers = <>
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'Arrival_Date'
                Footers = <>
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'ng_reason'
                Footers = <>
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'ng_date'
                Footers = <>
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'P_result'
                Footers = <>
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'FlexID'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                Title.Caption = 'Unit'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'BUYNO'
                Footers = <>
                Width = 80
              end>
          end
          object Memo1: TMemo
            Left = 520
            Top = 64
            Width = 313
            Height = 33
            Lines.Strings = (
              'Data Output')
            TabOrder = 1
            Visible = False
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Leadtime_setup'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1213
        Height = 478
        Align = alClient
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1211
          Height = 72
          Align = alTop
          TabOrder = 0
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
            TabOrder = 0
            Visible = False
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
            TabOrder = 3
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
            TabOrder = 6
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
        object Panel6: TPanel
          Left = 1
          Top = 129
          Width = 1211
          Height = 348
          Align = alClient
          TabOrder = 1
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 1209
            Height = 346
            Align = alClient
            DataSource = Leadtime_data
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
            OnDrawColumnCell = DBGridEh2DrawColumnCell
            Columns = <
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'csbh'
                Footers = <>
                Title.Caption = 'Supplier'
                Width = 54
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'clbhdef'
                Footers = <>
                Title.Caption = 'Matereial'
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'leadtime'
                Footers = <>
                Title.Caption = 'LeadTime'
                Width = 74
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Width = 109
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'USERDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'USERDATE'
                Width = 177
              end
              item
                EditButtons = <>
                FieldName = 'YN'
                Footers = <>
                Width = 59
              end>
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 73
          Width = 1211
          Height = 56
          Align = alTop
          TabOrder = 2
          object Label4: TLabel
            Left = 16
            Top = 16
            Width = 60
            Height = 13
            Caption = 'Supplier_NO'
          end
          object Label5: TLabel
            Left = 240
            Top = 16
            Width = 40
            Height = 13
            Caption = 'Mat_NO'
          end
          object Button3: TButton
            Left = 416
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Query'
            TabOrder = 0
            OnClick = Button3Click
          end
          object Edit1: TEdit
            Left = 80
            Top = 13
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object Edit2: TEdit
            Left = 286
            Top = 11
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object CB1: TCheckBox
            Left = 416
            Top = 32
            Width = 97
            Height = 17
            Caption = 'Mine'
            TabOrder = 3
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dev_Report'
      ImageIndex = 2
      OnEnter = FormCreate
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1213
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 55
          Height = 20
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 48
          Width = 43
          Height = 20
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 72
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 72
          Top = 48
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Button4: TButton
          Left = 80
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button4Click
        end
        object ComboBox1: TComboBox
          Left = 256
          Top = 8
          Width = 353
          Height = 21
          ItemHeight = 0
          TabOrder = 3
          OnChange = ComboBox1Change
        end
        object ComboBox2: TComboBox
          Left = 256
          Top = 40
          Width = 73
          Height = 21
          ItemHeight = 0
          TabOrder = 4
          OnChange = ComboBox2Change
        end
        object Button5: TButton
          Left = 176
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button5Click
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 105
        Width = 1213
        Height = 373
        Align = alClient
        Caption = 'Panel9'
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 1211
          Height = 371
          Align = alClient
          DataSource = DEV_DS
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
              FieldName = 'season'
              Footers = <>
              Title.Caption = 'Season'
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'purpose'
              Footers = <>
              Title.Caption = 'Stage'
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'cldh'
              Footers = <>
              Title.Caption = 'Mat.NO'
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'leadtime'
              Footers = <>
              Title.Caption = 'Leadtime'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'zsjc'
              Footers = <>
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'PO_NO'
              Footers = <>
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'PO_date'
              Footers = <>
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'Description'
              Footers = <>
              Width = 467
            end
            item
              EditButtons = <>
              FieldName = 'Quantity'
              Footers = <>
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'Invoice_No'
              Footers = <>
              Width = 214
            end
            item
              EditButtons = <>
              FieldName = 'RTA'
              Footers = <>
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'Arrival_Date'
              Footers = <>
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'ng_reason'
              Footers = <>
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'ng_Date'
              Footers = <>
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'P_result'
              Footers = <>
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'Flexcode'
              Footers = <>
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'GMS'
      ImageIndex = 3
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1213
        Height = 63
        Align = alTop
        TabOrder = 0
        object BD1: TBitBtn
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
          TabOrder = 0
          OnClick = BD1Click
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
        object BD2: TBitBtn
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
          TabOrder = 1
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
        object BD4: TBitBtn
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
          TabOrder = 4
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
          TabOrder = 5
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
          TabOrder = 6
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
      object Panel11: TPanel
        Left = 0
        Top = 63
        Width = 1213
        Height = 51
        Align = alTop
        TabOrder = 1
        Visible = False
        object Label8: TLabel
          Left = 15
          Top = 17
          Width = 77
          Height = 16
          Caption = 'Supplier_NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 255
          Top = 12
          Width = 91
          Height = 16
          Caption = 'Supplier_name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit7: TEdit
          Left = 94
          Top = 12
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit8: TEdit
          Left = 362
          Top = 10
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Button6: TButton
          Left = 492
          Top = 8
          Width = 78
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button6Click
        end
        object BBTT1: TBitBtn
          Left = 216
          Top = 10
          Width = 19
          Height = 25
          Caption = '...'
          TabOrder = 3
          Visible = False
          OnClick = BBTT1Click
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 114
        Width = 1213
        Height = 364
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'zsdh'
            Footers = <>
            Width = 50
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 144
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Width = 130
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select allin.*,MaterialNG.ng_reason,MaterialNG.ng_date,MaterialN' +
        'G.P_result from  ('
      
        'select clzl.cldh,clzl_GMS.leadtime as leadtime,ZSZL.zsjc,CGZL.CG' +
        'NO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as Description,'
      
        'KCRKs.QTY as Quantity,KCRK.DOCNO as Invoice_No,MAX(CGZLS.YQDate)' +
        ' as RTA,'
      'kcrks.userdate as Arrival_Date'
      'from kcrkS'
      'left join kcrk on kcrk.RKNO=kcrks.RKNO'
      'left join CLZL on CLZL.CLDH=kcrks.CLBH'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'LEFT JOIN ZSZL_GMS ON ZSZL_GMS.ZSDH=ZSZL.ZSDH'
      'left join CGZLS on KCRK.ZSNO=CGZLS.CGNO'
      'left join CGZL on CGZLS.CGNO=CGZL.CGNO '
      
        'left join clzl_GMS on clzl_GMS.clbhdef=left(kcrks.clbh,3) and cl' +
        'zl_GMS.csbh=cgzl.zsbh  '
      
        'where convert(smalldatetime,convert(varchar,KCRK.userdate,111)) ' +
        ' between '
      #39'2015/12/09'#39' and  '#39'2016/01/08'#39
      'and CGZL.GSBH='#39'VA12'#39
      'and ZSZL.yn='#39'2'#39
      'and ZSZL.zsdh =:ZSDH'
      ''
      
        'group by clzl.cldh,clzl_GMS.leadtime,ZSZL.zsjc,ZSZL_GMS.ZSDH,CGZ' +
        'L.CGNO,CGZL.cgdate,clzl.ywpm,KCRKs.QTY,kcrks.userdate,KCRK.DOCNO'
      'union all'
      
        'select clzl.cldh,clzl_GMS.leadtime as leadtime,ZSZL.zsjc,ZSZL_GM' +
        'S.ZSDH,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as De' +
        'scription,'
      
        'HG_INVs.QTY as Quantity,HG_INV.DOCNO as Invoice_No,MAX(CGZLS.YQD' +
        'ate) as RTA,HG_INV.SHIPDATE as Arrival_Date '
      'from  HG_INVS'
      'left join HG_INV on HG_INVS.RKNO=HG_INV.RKNO'
      
        'LEFT JOIN kcrks ON kcrks.RKNO=HG_INVS.RKNO AND kcrks.CLBH=HG_INV' +
        'S.CLBH'
      'left join CLZL on CLZL.CLDH=HG_INVS.CLBH'
      'left join CGZLS on HG_INV.ZSNO=CGZLS.CGNO'
      'left join CGZL on CGZLS.CGNO=CGZL.CGNO '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      'LEFT JOIN ZSZL_GMS ON ZSZL_GMS.ZSDH=ZSZL.ZSDH'
      
        'left join clzl_GMS on clzl_GMS.clbhdef=left(HG_INVS.clbh,3) and ' +
        'clzl_GMS.csbh=cgzl.zsbh '
      
        'where convert(smalldatetime,convert(varchar,HG_INV.SHIPDATE,111)' +
        ')  between '
      #39'2015/12/09'#39' and  '#39'2016/01/08'#39
      'and CGZL.GSBH='#39'VA12'#39
      'and ZSZL.yn='#39'1'#39
      'and cgzl.zsbh like  '
      #39'%MU86%'#39
      
        'group by clzl.cldh,clzl_GMS.leadtime,ZSZL.zsjc,ZSZL_GMS.ZSDH,CGZ' +
        'L.CGNO,CGZL.cgdate,clzl.ywpm,HG_INVs.QTY,kcrks.userdate,HG_INV.D' +
        'OCNO,HG_INV.SHIPDATE'
      ')allin '
      
        'left join MaterialNG on allin.PO_NO=MaterialNG.CGNO and allin.cl' +
        'dh=MaterialNG.clbh'
      'order by allin.PO_NO,allin.Description'
      '')
    Left = 41
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZSDH'
        ParamType = ptUnknown
      end>
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1leadtime: TIntegerField
      FieldName = 'leadtime'
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Query1PO_NO: TStringField
      FieldName = 'PO_NO'
      FixedChar = True
      Size = 11
    end
    object Query1PO_date: TDateTimeField
      FieldName = 'PO_date'
    end
    object Query1Description: TStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 200
    end
    object Query1Quantity: TCurrencyField
      FieldName = 'Quantity'
    end
    object Query1Invoice_No: TStringField
      FieldName = 'Invoice_No'
      FixedChar = True
      Size = 30
    end
    object Query1RTA: TDateTimeField
      FieldName = 'RTA'
    end
    object Query1Arrival_Date: TDateTimeField
      FieldName = 'Arrival_Date'
    end
    object Query1ng_reason: TStringField
      FieldName = 'ng_reason'
      FixedChar = True
    end
    object Query1ng_date: TDateTimeField
      FieldName = 'ng_date'
    end
    object Query1P_result: TStringField
      FieldName = 'P_result'
      FixedChar = True
      Size = 10
    end
    object Query1FlexID: TStringField
      FieldName = 'FlexID'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 73
    Top = 185
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 41
    Top = 217
  end
  object LeadtimeQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select *,YN='#39'1'#39' from CLZL_GMS')
    UpdateObject = UpdLeadtime
    Left = 309
    Top = 185
    object LeadtimeQryclbhdef: TStringField
      FieldName = 'clbhdef'
      Origin = 'DB.clzl_GMS.clbhdef'
      FixedChar = True
      Size = 5
    end
    object LeadtimeQryleadtime: TIntegerField
      FieldName = 'leadtime'
      Origin = 'DB.clzl_GMS.leadtime'
    end
    object LeadtimeQrycsbh: TStringField
      FieldName = 'csbh'
      Origin = 'DB.clzl_GMS.csbh'
      FixedChar = True
      Size = 5
    end
    object LeadtimeQryUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.clzl_GMS.USERID'
      FixedChar = True
      Size = 15
    end
    object LeadtimeQryUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.clzl_GMS.USERDate'
    end
    object LeadtimeQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object Leadtime_data: TDataSource
    DataSet = LeadtimeQry
    Left = 309
    Top = 145
  end
  object UpdLeadtime: TUpdateSQL
    ModifySQL.Strings = (
      'update CLZL_GMS'
      'set'
      '  clbhdef = :clbhdef ,'
      '  leadtime = :leadtime ,'
      '  userid = :userid ,'
      '  userdate = :userdate ,'
      '  csbh = :csbh '
      'where'
      '  clbhdef = :OLD_clbhdef  and'
      '  csbh = :OLD_csbh ')
    InsertSQL.Strings = (
      'insert into CLZL_GMS'
      '  (clbhdef, csbh, leadtime,userid,userdate)'
      'values'
      '  (:clbhdef, :csbh, :leadtime,:userid,:userdate)')
    DeleteSQL.Strings = (
      'delete from CLZL_GMS'
      'where'
      '  clbhdef = :OLD_clbhdef and'
      '  csbh = :OLD_csbh ')
    Left = 309
    Top = 224
  end
  object TIMEQRY: TQuery
    DatabaseName = 'DB'
    Left = 269
    Top = 185
  end
  object DEV_QRY: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select allin.*,MaterialNG.ng_reason as ng_reason,MaterialNG.ng_d' +
        'ate as ng_Date,MaterialNG.P_result as P_result,CGZLInvoice.eta A' +
        'rrival_Date from  ('
      
        'select cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.samplelead' +
        'time as leadtime,ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_' +
        'date,clzl.ywpm as Description,'
      
        'KCRKs.QTY as Quantity,KCRK.DOCNO as Invoice_No,MAX(CGZLS.CFMDate' +
        ') as RTA,'
      'kcrks.userdate as Arrival_Date1,CGZLS.DelayReason  from kcrkS'
      
        'left join (select * from kcrk where GSBH='#39'CDC'#39' and ckbh='#39'CDC'#39')kc' +
        'rk on kcrk.RKNO=kcrks.RKNO'
      'left join CLZL on CLZL.CLDH=kcrks.CLBH'
      
        'left join CGZLS on KCRK.ZSNO=CGZLS.CGNO  and KCRKS.CLBH = CGZLS.' +
        'CLBH'
      
        'left join (select * from CGZL where season='#39'19H'#39' and GSBH='#39'CDC'#39' ' +
        ')CGZL on CGZLS.CGNO=CGZL.CGNO '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'left join(select * from materialmoq where season='#39'19H'#39' )material' +
        'moq on materialmoq.clbh=kcrks.clbh and materialmoq.zsbh=cgzl.zsb' +
        'h and Materialmoq.season='#39'19H'#39' '
      'where CGZL.GSBH='#39'CDC'#39
      'and ZSZL.yn='#39'1'#39
      'and cgzl.season ='#39'19H'#39' '
      'and cgzl.purpose ='#39'SMS'#39' '
      
        'group by cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.samplele' +
        'adtime,ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,KCRKs.QTY,kcrks' +
        '.userdate,KCRK.DOCNO,CGZLS.DelayReason'
      'union all'
      
        'select cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.samplelead' +
        'time as leadtime,ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_' +
        'date,clzl.ywpm as Description,'
      
        'HG_INVs.QTY as Quantity,HG_INV.DOCNO as Invoice_No,MAX(CGZLS.YQD' +
        'ate) as RTA,HG_INV.SHIPDATE as Arrival_Date,CGZLS.DelayReason'
      'from  HG_INVS'
      'left join HG_INV on HG_INVS.RKNO=HG_INV.RKNO'
      
        'LEFT JOIN kcrks ON kcrks.RKNO=HG_INVS.RKNO AND kcrks.CLBH=HG_INV' +
        'S.CLBH'
      'left join CLZL on CLZL.CLDH=HG_INVS.CLBH'
      
        'left join CGZLS on HG_INV.ZSNO=CGZLS.CGNO and HG_INVS.CLBH = CGZ' +
        'LS.CLBH'
      'left join CGZL on CGZLS.CGNO=CGZL.CGNO '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'left join materialmoq on materialmoq.clbh=kcrks.clbh and materia' +
        'lmoq.zsbh=cgzl.zsbh and Materialmoq.season='#39'19H'#39'  '
      'where CGZL.GSBH='#39'CDC'#39
      'and ZSZL.yn='#39'1'#39
      'and cgzl.season ='#39'19H'#39
      'and cgzl.purpose= '#39'SMS'#39' '
      
        'group by cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.samplele' +
        'adtime,ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,HG_INVs.QTY,kcr' +
        'ks.userdate,HG_INV.DOCNO,HG_INV.SHIPDATE,CGZLS.DelayReason'
      ')allin'
      
        'left join MaterialNG on allin.PO_NO=MaterialNG.CGNO and allin.cl' +
        'dh=MaterialNG.clbh'
      
        'left join (select CGZLInvoices.cgno,CGZLInvoices.clbh,CGZLInvoic' +
        'e.eta from CGZLInvoices'
      
        #9'left join CGZLInvoice on CGZLInvoices.cino=CGZLInvoice.cino)CGZ' +
        'LInvoice on CGZLInvoice.cgno=allin.PO_NO and CGZLInvoice.clbh=al' +
        'lin.cldh'
      'where allin.cldh='#39'E120009657'#39
      'order by allin.PO_NO,allin.Description')
    Left = 468
    Top = 177
    object DEV_QRYseason: TStringField
      FieldName = 'season'
      FixedChar = True
    end
    object DEV_QRYpurpose: TStringField
      FieldName = 'purpose'
      FixedChar = True
      Size = 15
    end
    object DEV_QRYcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object DEV_QRYleadtime: TIntegerField
      FieldName = 'leadtime'
    end
    object DEV_QRYzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object DEV_QRYPO_NO: TStringField
      FieldName = 'PO_NO'
      FixedChar = True
      Size = 11
    end
    object DEV_QRYPO_date: TDateTimeField
      FieldName = 'PO_date'
    end
    object DEV_QRYDescription: TStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 200
    end
    object DEV_QRYQuantity: TCurrencyField
      FieldName = 'Quantity'
    end
    object DEV_QRYInvoice_No: TStringField
      FieldName = 'Invoice_No'
      FixedChar = True
      Size = 30
    end
    object DEV_QRYng_reason: TStringField
      FieldName = 'ng_reason'
      FixedChar = True
    end
    object DEV_QRYng_Date: TDateTimeField
      FieldName = 'ng_Date'
    end
    object DEV_QRYP_result: TStringField
      FieldName = 'P_result'
      FixedChar = True
      Size = 10
    end
    object DEV_QRYRTA: TDateTimeField
      FieldName = 'RTA'
    end
    object DEV_QRYArrival_Date: TDateTimeField
      FieldName = 'Arrival_Date'
    end
    object DEV_QRYFlexcode: TStringField
      FieldName = 'Flexcode'
    end
    object DEV_QRYDelayReason: TStringField
      FieldName = 'DelayReason'
      FixedChar = True
      Size = 150
    end
  end
  object DEV_DS: TDataSource
    DataSet = DEV_QRY
    Left = 468
    Top = 153
  end
  object DS2: TDataSource
    DataSet = GMS_QRY
    Left = 164
    Top = 168
  end
  object GMS_QRY: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select zszl_gms.zsdh,zszl_gms.USERID,zszl_gms.USERDATE,zsywjc fr' +
        'om zszl_gms '
      'left join zszl on zszl.zsdh=zszl_gms.zsdh'
      'where zszl_gms.zsdh like'#39'%'#39)
    UpdateObject = UpdateGMS
    Left = 164
    Top = 200
    object GMS_QRYzsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.ZSZL.zsdh'
      FixedChar = True
      Size = 6
    end
    object GMS_QRYzsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.ZSZL.zsywjc'
      FixedChar = True
    end
    object GMS_QRYUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ZSZL.USERID'
      FixedChar = True
    end
    object GMS_QRYUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ZSZL.USERDATE'
    end
  end
  object UpdateGMS: TUpdateSQL
    InsertSQL.Strings = (
      'insert into zszl_gms'
      '  (ZSDH,USERID,USERDATE)'
      'values'
      '  (:ZSDH,:USERID,:USERDATE)')
    Left = 164
    Top = 232
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 164
    Top = 264
  end
end
