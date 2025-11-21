object SampleWarehouse: TSampleWarehouse
  Left = 136
  Top = 192
  Width = 1413
  Height = 724
  Caption = 'SampleWarehouse'
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
  object main: TPanel
    Left = 0
    Top = 0
    Width = 1397
    Height = 685
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1395
      Height = 683
      ActivePage = TabSheet5
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Sample Shoe'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1387
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 480
            Top = 8
            Width = 54
            Height = 20
            Caption = 'TestNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
          object CheckBox1: TCheckBox
            Left = 360
            Top = 8
            Width = 97
            Height = 17
            Caption = 'SampleNO=7'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
          object CheckBox2: TCheckBox
            Left = 360
            Top = 24
            Width = 97
            Height = 17
            Caption = 'haveSampleNO'
            Checked = True
            State = cbChecked
            TabOrder = 8
          end
          object CheckBox3: TCheckBox
            Left = 360
            Top = 40
            Width = 97
            Height = 17
            Caption = 'show 10*'
            Checked = True
            State = cbChecked
            TabOrder = 9
          end
          object Testnoedit: TEdit
            Left = 478
            Top = 29
            Width = 121
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object Button1: TButton
            Left = 608
            Top = 8
            Width = 73
            Height = 49
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
          object Button3: TButton
            Left = 680
            Top = 8
            Width = 75
            Height = 49
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnClick = Button3Click
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 169
          Width = 1387
          Height = 1393
          Align = alTop
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1385
            Height = 279
            Align = alTop
            DataSource = DataSource1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh1CellClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'TestNO'
                Width = 77
              end
              item
                Color = clSilver
                EditButtons = <>
                FieldName = 'bw01'
                Footer.FieldName = 'bw01'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Finished Shoe|Giay thanh pham|Need'
                Width = 49
              end
              item
                Color = clSilver
                EditButtons = <>
                FieldName = 'tinbw01'
                Footer.FieldName = 'tinbw01'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Finished Shoe|Giay thanh pham|in'
                Width = 39
              end
              item
                Color = clSilver
                EditButtons = <>
                FieldName = 'Woutbw01'
                Footer.FieldName = 'Woutbw01'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Finished Shoe|Giay thanh pham|Out'
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'bw02'
                Footer.FieldName = 'bw02'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Half Stitching Upper|May nua|Need'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'tinbw02'
                Footer.FieldName = 'tinbw02'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Half Stitching Upper|May nua|In'
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'Woutbw02'
                Footer.FieldName = 'Woutbw02'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Half Stitching Upper|May nua|Out'
                Width = 50
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'bw03'
                Footer.FieldName = 'bw03'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Stitching Upper|Mu giay|Need'
                Width = 47
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'tinbw03'
                Footer.FieldName = 'tinbw03'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Stitching Upper|Mu giay|In'
                Width = 39
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Woutbw03'
                Footer.FieldName = 'Woutbw03'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Stitching Upper|Mu giay|Out'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'bw04'
                Footer.FieldName = 'bw04'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Lasted upper|Nong phom|Need'
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'tinbw04'
                Footer.FieldName = 'tinbw04'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Lasted upper|Nong phom|In'
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'Woutbw04'
                Footer.FieldName = 'Woutbw04'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Lasted upper|Nong phom|Out'
                Width = 38
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'bw05'
                Footer.FieldName = 'bw05'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Upper Component|Mat bo vi|Need'
                Width = 47
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'tinbw05'
                Footer.FieldName = 'tinbw05'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Upper Component|Mat bo vi|In'
                Width = 44
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Woutbw05'
                Footer.FieldName = 'Woutbw05'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Upper Component|Mat bo vi|Out'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'bw06'
                Footer.FieldName = 'bw06'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Bottom Component|De bo vi |Need'
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'tinbw06'
                Footer.FieldName = 'tinbw06'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Bottom Component|De bo vi |In'
                Width = 93
              end
              item
                EditButtons = <>
                FieldName = 'Woutbw06'
                Footer.FieldName = 'Woutbw06'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Bottom Component|De bo vi |Out'
                Width = 48
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'bw07'
                Footers = <>
                Title.Caption = 'Sheet|Mieng vat tu|Need'
                Width = 51
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'tinbw07'
                Footers = <>
                Title.Caption = 'Sheet|Mieng vat tu|In'
                Width = 49
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Woutbw07'
                Footers = <>
                Title.Caption = 'Sheet|Mieng vat tu|Out'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'ypdh'
                Footers = <>
                Title.Caption = 'SampleOrder'
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'Developer'
                Footers = <>
                Width = 110
              end>
          end
          object Panel3: TPanel
            Left = 1
            Top = 280
            Width = 1385
            Height = 1112
            Align = alClient
            TabOrder = 1
            object Panel4: TPanel
              Left = 1
              Top = 1
              Width = 1383
              Height = 1110
              Align = alClient
              TabOrder = 0
              object Panel5: TPanel
                Left = 1909
                Top = 1
                Width = 0
                Height = 1108
                Align = alClient
                Caption = 'Panel5'
                TabOrder = 0
                Visible = False
                object Panel7: TPanel
                  Left = 1
                  Top = 1
                  Width = 1
                  Height = 48
                  Align = alTop
                  Alignment = taLeftJustify
                  Caption = 'ShoeIN'
                  Color = clWindow
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBGridEh2: TDBGridEh
                  Left = 1
                  Top = 49
                  Width = 1
                  Height = 1058
                  Align = alClient
                  DataSource = DataSource2
                  Flat = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -12
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  FooterRowCount = 1
                  ParentFont = False
                  SumList.Active = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -16
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'parts'
                      Footer.FieldName = 'parts'
                      Footer.ValueType = fvtCount
                      Footers = <>
                      Title.Caption = 'Parts'
                      Width = 62
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Qty'
                      Footer.FieldName = 'Qty'
                      Footer.ValueType = fvtSum
                      Footers = <>
                      Width = 55
                    end
                    item
                      EditButtons = <>
                      FieldName = 'UserID'
                      Footers = <>
                      Width = 113
                    end
                    item
                      EditButtons = <>
                      FieldName = 'UserDate'
                      Footers = <>
                      Width = 227
                    end>
                end
              end
              object Panel6: TPanel
                Left = 1
                Top = 1
                Width = 1908
                Height = 1108
                Align = alLeft
                Alignment = taLeftJustify
                Caption = 'Panel6'
                TabOrder = 1
                Visible = False
                object Panel8: TPanel
                  Left = 1
                  Top = 1
                  Width = 1906
                  Height = 32
                  Align = alTop
                  Alignment = taLeftJustify
                  Caption = 'ShoeOut'
                  Color = clWindow
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBGridEh3: TDBGridEh
                  Left = 1
                  Top = 33
                  Width = 1906
                  Height = 519
                  Align = alTop
                  DataSource = DataSource3
                  Flat = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -12
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  FooterRowCount = 1
                  ParentFont = False
                  SumList.Active = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -16
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'parts'
                      Footer.FieldName = 'parts'
                      Footer.ValueType = fvtCount
                      Footers = <>
                      Title.Caption = 'Parts'
                      Width = 69
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Qty'
                      Footer.FieldName = 'Qty'
                      Footer.ValueType = fvtSum
                      Footers = <>
                      Width = 56
                    end
                    item
                      EditButtons = <>
                      FieldName = 'UserID'
                      Footers = <>
                      Width = 111
                    end
                    item
                      EditButtons = <>
                      FieldName = 'UserDate'
                      Footers = <>
                      Width = 237
                    end>
                end
              end
            end
          end
        end
        object ToolPanel: TPanel
          Left = 0
          Top = 65
          Width = 1387
          Height = 104
          Align = alTop
          TabOrder = 2
          Visible = False
          object Label2: TLabel
            Left = 1000
            Top = 56
            Width = 94
            Height = 20
            Caption = 'SampleOrder'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object sampleorderedit: TEdit
            Left = 983
            Top = 23
            Width = 121
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Visible = False
          end
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 320
            Height = 102
            Align = alLeft
            TabOrder = 1
            object Label9: TLabel
              Left = 29
              Top = 6
              Width = 47
              Height = 16
              Caption = 'TestNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 45
              Top = 53
              Width = 31
              Height = 16
              Caption = 'Parts'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 10
              Top = 30
              Width = 67
              Height = 16
              Caption = 'SampleNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 12
              Top = 77
              Width = 64
              Height = 16
              Caption = 'Developer'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit8: TEdit
              Left = 79
              Top = 2
              Width = 232
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit4: TEdit
              Left = 79
              Top = 51
              Width = 232
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit1: TDBEdit
              Left = 79
              Top = 26
              Width = 232
              Height = 21
              DataField = 'ypdh'
              DataSource = DataSource1
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 79
              Top = 75
              Width = 232
              Height = 21
              DataField = 'Developer'
              DataSource = DataSource1
              TabOrder = 3
            end
          end
          object PageControl2: TPageControl
            Left = 321
            Top = 1
            Width = 216
            Height = 102
            ActivePage = TabSheet2
            Align = alLeft
            TabOrder = 2
            object TabSheet2: TTabSheet
              Caption = 'ShoeIn'
              OnMouseDown = TabSheet2MouseDown
              OnMouseMove = TabSheet2MouseMove
              object Label3: TLabel
                Left = 8
                Top = 0
                Width = 66
                Height = 32
                Caption = 'In Qty'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Edit1: TEdit
                Left = 8
                Top = 32
                Width = 81
                Height = 40
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object Button2: TButton
                Left = 96
                Top = 32
                Width = 57
                Height = 41
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = Button2Click
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'ShoeOut'
              ImageIndex = 1
              OnMouseDown = TabSheet3MouseDown
              OnMouseMove = TabSheet3MouseMove
              object Label4: TLabel
                Left = 8
                Top = 0
                Width = 86
                Height = 32
                Caption = 'Out Qty'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Edit2: TEdit
                Left = 8
                Top = 32
                Width = 81
                Height = 40
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object Button5: TButton
                Left = 96
                Top = 32
                Width = 57
                Height = 41
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = Button5Click
              end
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Requisition Status'
        ImageIndex = 1
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 1387
          Height = 41
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label8: TLabel
            Left = 16
            Top = 14
            Width = 59
            Height = 16
            Caption = 'Ship Date'
          end
          object Label10: TLabel
            Left = 173
            Top = 18
            Width = 9
            Height = 16
            Caption = '~'
          end
          object DTP1: TDateTimePicker
            Left = 77
            Top = 10
            Width = 95
            Height = 24
            Date = 44817.540237430560000000
            Format = 'yyyy/MM/dd'
            Time = 44817.540237430560000000
            TabOrder = 0
          end
          object DTP2: TDateTimePicker
            Left = 184
            Top = 10
            Width = 95
            Height = 24
            Date = 44817.540237430560000000
            Format = 'yyyy/MM/dd'
            Time = 44817.540237430560000000
            TabOrder = 1
          end
          object Button4: TButton
            Left = 568
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Query'
            TabOrder = 2
            OnClick = Button4Click
          end
          object CB1: TCheckBox
            Left = 304
            Top = 14
            Width = 241
            Height = 17
            Caption = 'Only Usage Not Equal To Requisition'
            Checked = True
            State = cbChecked
            TabOrder = 3
          end
        end
        object DBGridEh4: TDBGridEh
          Left = 0
          Top = 41
          Width = 1387
          Height = 614
          Align = alClient
          DataSource = DS4
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnGetCellParams = DBGridEh4GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Caption = 'SeriNo'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'TESTNO'
              Footers = <>
              Title.Caption = 'Test No'
              Title.TitleButton = True
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Title.Caption = 'Sample No'
              Title.TitleButton = True
              Width = 120
            end
            item
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat No'
              Title.TitleButton = True
              Width = 100
            end
            item
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = 'Usage'
              Title.TitleButton = True
              Width = 75
            end
            item
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'ReqQty'
              Footers = <>
              Title.Caption = 'Requisition'
              Title.TitleButton = True
              Width = 75
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'WH Planning'
        ImageIndex = 2
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1387
          Height = 104
          Align = alTop
          Color = clGray
          TabOrder = 0
          object Label11: TLabel
            Left = 798
            Top = 75
            Width = 49
            Height = 20
            Caption = 'MEMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 402
            Top = 70
            Width = 140
            Height = 20
            Caption = 'Warehouse_MEMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 785
            Top = 52
            Width = 72
            Height = 27
            DataField = 'FD'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 1058
            Top = 75
            Width = 49
            Height = 20
            Caption = 'MEMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 1059
            Top = 59
            Width = 52
            Height = 20
            Caption = 'Plannig'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BitBtn2: TBitBtn
            Left = 248
            Top = 7
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
            TabOrder = 0
            OnClick = BitBtn2Click
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
          object BitBtn3: TBitBtn
            Left = 200
            Top = 7
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
            TabOrder = 1
            OnClick = BitBtn3Click
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
          object BitBtn4: TBitBtn
            Left = 152
            Top = 7
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
            OnClick = BitBtn4Click
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
          object Button6: TButton
            Left = 12
            Top = 7
            Width = 45
            Height = 49
            Caption = 'Query'
            TabOrder = 3
            OnClick = Button6Click
          end
          object DBMemo1: TDBMemo
            Left = 551
            Top = 8
            Width = 196
            Height = 90
            Color = clScrollBar
            DataField = 'Memo2'
            DataSource = DataSource4
            ReadOnly = True
            TabOrder = 4
          end
          object FD_Memo: TDBMemo
            Left = 853
            Top = 8
            Width = 199
            Height = 90
            Color = clScrollBar
            DataField = 'Memo1'
            DataSource = DataSource4
            ReadOnly = True
            TabOrder = 5
          end
          object DBMemo2: TDBMemo
            Left = 1117
            Top = 7
            Width = 202
            Height = 91
            Color = clScrollBar
            DataField = 'PlanningMemo'
            DataSource = DataSource4
            ReadOnly = True
            TabOrder = 6
          end
          object BDT6: TBitBtn
            Left = 370
            Top = 7
            Width = 52
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Excel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BDT6Click
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
        end
        object Panel12: TPanel
          Left = 0
          Top = 104
          Width = 1387
          Height = 81
          Align = alTop
          Color = clGray
          TabOrder = 1
          object Label15: TLabel
            Left = 179
            Top = 11
            Width = 15
            Height = 13
            Caption = 'SR'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 157
            Top = 31
            Width = 37
            Height = 13
            Caption = 'TestNO'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label17: TLabel
            Left = 426
            Top = 31
            Width = 16
            Height = 13
            Caption = 'LAI'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 739
            Top = 13
            Width = 7
            Height = 13
            Caption = '~'
          end
          object Label19: TLabel
            Left = 21
            Top = 11
            Width = 36
            Height = 13
            Caption = 'Season'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label20: TLabel
            Left = 29
            Top = 31
            Width = 28
            Height = 13
            Caption = 'Stage'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 299
            Top = 11
            Width = 34
            Height = 13
            Caption = 'Groups'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label22: TLabel
            Left = 293
            Top = 31
            Width = 40
            Height = 13
            Caption = 'Groups2'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Frozen: TLabel
            Left = 535
            Top = 31
            Width = 32
            Height = 13
            Caption = 'Frozen'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label23: TLabel
            Left = 8
            Top = 51
            Width = 49
            Height = 13
            Caption = 'Developer'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label24: TLabel
            Left = 150
            Top = 51
            Width = 44
            Height = 13
            Caption = 'DevType'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label25: TLabel
            Left = 290
            Top = 51
            Width = 43
            Height = 13
            Caption = 'SubType'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 196
            Top = 7
            Width = 85
            Height = 21
            TabOrder = 0
          end
          object Edit5: TEdit
            Left = 196
            Top = 27
            Width = 85
            Height = 21
            TabOrder = 1
          end
          object UserDatecheck: TCheckBox
            Left = 427
            Top = 10
            Width = 15
            Height = 17
            Caption = 'ReceiveDate:'
            Checked = True
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            State = cbChecked
            TabOrder = 3
          end
          object DTP3: TDateTimePicker
            Left = 650
            Top = 7
            Width = 87
            Height = 21
            Date = 41675.431051550920000000
            Format = 'yyyy/MM/dd'
            Time = 41675.431051550920000000
            TabOrder = 4
          end
          object DTP4: TDateTimePicker
            Left = 753
            Top = 7
            Width = 87
            Height = 21
            Date = 41675.431356041660000000
            Format = 'yyyy/MM/dd'
            Time = 41675.431356041660000000
            TabOrder = 5
          end
          object Edit6: TEdit
            Left = 59
            Top = 7
            Width = 86
            Height = 21
            TabOrder = 6
          end
          object Edit7: TEdit
            Left = 59
            Top = 27
            Width = 86
            Height = 21
            TabOrder = 7
          end
          object Edit9: TEdit
            Left = 335
            Top = 7
            Width = 80
            Height = 21
            TabOrder = 8
          end
          object Edit10: TEdit
            Left = 335
            Top = 27
            Width = 80
            Height = 21
            TabOrder = 9
          end
          object Edit11: TEdit
            Left = 572
            Top = 28
            Width = 27
            Height = 21
            TabOrder = 10
            Text = '11'
          end
          object ComboBox2: TComboBox
            Left = 444
            Top = 7
            Width = 197
            Height = 21
            DropDownCount = 30
            ItemHeight = 13
            TabOrder = 11
            Text = 'TBreceive'
            Items.Strings = (
              'TBreceive'
              'MaterialSQ'
              'MaterialOK'
              'Material Ready'
              'lamination_send'
              'lamination_get'
              'BaoHe_send'
              'BaoHe_get'
              'kietphong_Send'
              'kietphong_Get'
              'Amico_Send'
              'Amico_Get'
              'Laser_Send'
              'Laser_Get'
              'DAJU_Send'
              'DAJU_Get'
              'Cutting Material Receive'
              'Stitching Accessories Ready'
              'Stitching Accessories Receive'
              'Assembly Accessories Ready'
              'LiMao_Send'
              'LiMao_Get'
              'Assembly Accessories Receive'
              'Packing Accessories Ready'
              'Packing Accessories Receive')
          end
          object dtp11: TDateTimePicker
            Left = 538
            Top = 47
            Width = 83
            Height = 21
            Date = 41675.000000000000000000
            Format = 'HH:mm:ss'
            Time = 41675.000000000000000000
            Kind = dtkTime
            TabOrder = 12
            Visible = False
          end
          object dtp22: TDateTimePicker
            Left = 621
            Top = 47
            Width = 84
            Height = 21
            Date = 41675.999305555550000000
            Format = 'HH:mm:ss'
            Time = 41675.999305555550000000
            Kind = dtkTime
            TabOrder = 13
            Visible = False
          end
          object Edit12: TEdit
            Left = 59
            Top = 47
            Width = 86
            Height = 21
            TabOrder = 14
          end
          object Edit13: TEdit
            Left = 196
            Top = 47
            Width = 85
            Height = 21
            TabOrder = 15
          end
          object Edit14: TEdit
            Left = 335
            Top = 47
            Width = 80
            Height = 21
            TabOrder = 16
          end
          object GSDHCheckBox: TCheckBox
            Left = 613
            Top = 30
            Width = 116
            Height = 17
            Caption = 'Only this DC data'
            TabOrder = 17
            Visible = False
          end
          object ComboBox3: TComboBox
            Left = 444
            Top = 27
            Width = 79
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Items.Strings = (
              ''
              'V'
              'K'
              'T')
          end
          object DBGridEh5: TDBGridEh
            Left = 869
            Top = 13
            Width = 481
            Height = 53
            Color = clGray
            DataSource = DataSource4
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            TabOrder = 18
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'PreparationDate1'
                Footers = <>
                Title.Caption = 'Vat tu Mat'
                Width = 106
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'S_material'
                Footers = <>
                Title.Caption = 'Vat tu May'
                Width = 105
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'insole_send'
                Footers = <>
                Title.Caption = 'Vat tu Go'
                Width = 106
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'lace_send'
                Footers = <>
                Title.Caption = 'Vat tu BaoBi'
                Width = 106
              end>
          end
        end
        object DBGridEh7: TDBGridEh
          Left = 0
          Top = 185
          Width = 1387
          Height = 470
          Align = alClient
          ColumnDefValues.Title.TitleButton = True
          DataSource = DataSource4
          EvenRowColor = clInfoText
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clBlack
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = DBGridEh1CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Serino'
              Footer.FieldName = 'Serino'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Serino no|'#24207#34399
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Title.Caption = 'Season|'#23395#31680
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'stage'
              Footers = <>
              Title.Caption = 'Stage|Gigi Doan|'#38542#27573
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'groups'
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'groups2'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'testno'
              Footers = <>
              Title.Caption = 'Testno|'#36890#22577
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SR'
              Width = 127
            end
            item
              EditButtons = <>
              FieldName = 'kflx'
              Footers = <>
              Title.Caption = 'Tech Level'
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'shipdate'
              Footers = <>
              Title.Caption = 'Shipdate'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'ETC'
              Footers = <>
              Width = 94
            end
            item
              DisplayFormat = 'yyyy/MM/dd HH:mm'
              EditButtons = <>
              FieldName = 'TBReceiveDate'
              Footers = <>
              Title.Caption = 'TB_Receive Planning team|SQ Nhan TB|TB Receive Date|'#36890#22577#25509#25910#26085
              Width = 107
            end
            item
              EditButtons = <>
              FieldName = 'lamination'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|GC-Trong|JNG|'#24288#20839#21152#24037
            end
            item
              EditButtons = <>
              FieldName = 'lamination_CRMTO'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|GC-ngoai|CRMTO|'#24288#22806#21152#24037#25104#38263
            end
            item
              EditButtons = <>
              FieldName = 'Amico'
              Footers = <>
              Title.Caption = 
                'TB Receive - Planning Team(SINH QUAN)|GC-ngoai(Amico)|Amico(TPU)' +
                '|'#24288#22806#21152#24037'Amico'
            end
            item
              EditButtons = <>
              FieldName = 'Sublimation'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Bao He|Sublimation|'#23542#21644
            end
            item
              EditButtons = <>
              FieldName = 'kietphong'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Kiet Phong|Punching|'#21513#35920
            end
            item
              EditButtons = <>
              FieldName = 'E_embroidery'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Theu|Embroidery|'#38651#32353
            end
            item
              EditButtons = <>
              FieldName = 'printing'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|In|Printing|'#21360#21047
            end
            item
              EditButtons = <>
              FieldName = 'LiMao'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|LiMao||LiMao||'#31435#33538
            end
            item
              EditButtons = <>
              FieldName = 'Laser'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Laser|Laser'
            end
            item
              EditButtons = <>
              FieldName = 'DAJU'
              Footers = <>
              Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|DAJU|DAJU'
            end
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'warehousePL'
              Footers = <>
              Title.Caption = 'Warehouse status|Kho trang thai|'#20489#24235#36914#24230#29376#24907'|Pre-scheduling'
              Visible = False
              Width = 81
            end
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'PreparationDate_first'
              Footers = <>
              Title.Caption = 'Warehouse status|Kho trang thai|'#20489#24235#36914#24230#29376#24907'|Re-plan'
              Width = 69
            end
            item
              DisplayFormat = 'yyyy/MM/dd HH:mm'
              EditButtons = <>
              FieldName = 'PreparationDate'
              Footers = <>
              Title.Caption = 'Warehouse status|Kho trang thai|'#20489#24235#36914#24230#29376#24907'|Done (Scan)'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'PreparationDate1'
              Footers = <>
              Title.Caption = 'Warehouse status|Vat Tu Mat Ok|Main Materials Ready|'#20027#38754#26009#20633#26009#23436#25104
            end
            item
              EditButtons = <>
              FieldName = 'lamination_send'
              Footers = <>
              Title.Caption = 'Warehouse status|Phat GC|lamination Send|'#30332#36028#21512
            end
            item
              EditButtons = <>
              FieldName = 'lamination_get'
              Footers = <>
              Title.Caption = 'Warehouse status|GC VE|lamination Get|'#38936#36028#21512
            end
            item
              EditButtons = <>
              FieldName = 'BaoHe_send'
              Footers = <>
              Title.Caption = 'Warehouse status|Phat BaoHe|BaoHe Send|'#30332#23542#21644
            end
            item
              EditButtons = <>
              FieldName = 'BaoHe_get'
              Footers = <>
              Title.Caption = 'Warehouse status|BaoHe Ve|BaoHe Get|'#38936#23542#21644
            end
            item
              EditButtons = <>
              FieldName = 'kietphong_Send'
              Footers = <>
              Title.Caption = 'Warehouse status|Phat Kietphong|Kietphong Send|'#30332#21513#35920
            end
            item
              EditButtons = <>
              FieldName = 'kietphong_Get'
              Footers = <>
              Title.Caption = 'Warehouse status|Kietphong Ve|Kietphong Get|'#38936#21513#35920
            end
            item
              EditButtons = <>
              FieldName = 'Amico_Send'
              Footers = <>
              Title.Caption = 'Warehouse status|Phat Amico|Amico Send|'#30332'Amico'
            end
            item
              EditButtons = <>
              FieldName = 'Amico_Get'
              Footers = <>
              Title.Caption = 'Warehouse status|Amico Ve|Amico Get|'#38936'Amico'
            end
            item
              EditButtons = <>
              FieldName = 'Laser_Send'
              Footers = <>
              Title.Caption = 'Warehouse status|Phat Laser|Laser_Send|'#30332#21644#37995
            end
            item
              EditButtons = <>
              FieldName = 'Laser_Get'
              Footers = <>
              Title.Caption = 'Warehouse status|Laser Ve|Laser_Get|'#38936#21644#37995
            end
            item
              EditButtons = <>
              FieldName = 'DAJU_Send'
              Footers = <>
              Title.Caption = 'Warehouse status|Phat DAJU|DAJU_Send|'#30332'DAJU'
            end
            item
              EditButtons = <>
              FieldName = 'DAJU_Get'
              Footers = <>
              Title.Caption = 'Warehouse status|DAJU Ve|DAJU_Get|'#38936'DAJU'
            end
            item
              EditButtons = <>
              FieldName = 'FirstMatOutDate'
              Footers = <>
              Title.Caption = 'Cuttung status|Lanh vat tu mat|Cutting Material Receive||'#35009#26039#38936#26009#26085
            end
            item
              EditButtons = <>
              FieldName = 'S_material'
              Footers = <>
              Title.Caption = 'Stitching status|Stitching Accessories Ready|'#37341#36554#21103#26009#20633#26009#23436#25104
            end
            item
              EditButtons = <>
              FieldName = 'StitchingPhuFinishDate'
              Footers = <>
              Title.Caption = 
                'Stitching status|Lanh phu lieu May|Stitching Accessories Receive' +
                '||'#37341#36554#21103#26009#38936#26009#26085
            end
            item
              EditButtons = <>
              FieldName = 'insole_send'
              Footers = <>
              Title.Caption = 
                'Assembly status|Go Phu Iieu Ok|Assembly Accessories Ready|'#25104#22411#21103#26009#20633#26009 +
                #23436#25104
            end
            item
              EditButtons = <>
              FieldName = 'LiMao_Send'
              Footers = <>
              Title.Caption = 'Assembly status|Phat LiMao|LiMao Send|'#30332#31435#33538
            end
            item
              EditButtons = <>
              FieldName = 'LiMao_Get'
              Footers = <>
              Title.Caption = 'Assembly status|LiMao Ve|LiMao Get|'#38936#31435#33538
            end
            item
              EditButtons = <>
              FieldName = 'insole_get'
              Footers = <>
              Title.Caption = 
                'Assembly status|Go Phu Lieu Ianh|Assembly Accessories Receive|'#25104#22411 +
                #21103#26009#38936#26009#26085
            end
            item
              EditButtons = <>
              FieldName = 'lace_send'
              Footers = <>
              Title.Caption = 
                'Packing status|Bao Bi Phu Iieu Ok|Packing Accessories Ready|'#21253#35037#21103#26009 +
                #20633#26009#23436#25104
            end
            item
              EditButtons = <>
              FieldName = 'lace_get'
              Footers = <>
              Title.Caption = 
                'Packing status|Bao Bi Phu Lieu Ianh|Packing Accessories Receive|' +
                #21253#35037#21103#26009#38936#26009#26085
            end>
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 141
    Top = 346
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select shoetest.testno,shoetest.ypdh,isnull(Busers.engname,'#39'NoNa' +
        'me'#39')+'#39'-'#39'+Busers.USERID as Developer,'
      'isnull(bw01.qty,0) as bw01,'
      'isnull(winbw01.qty,0) as tinbw01,'
      'isnull(Woutbw01.qty,0) as Woutbw01,'
      'isnull(bw02.qty,0) as bw02,'
      'isnull(winbw02.qty,0) as tinbw02,'
      'isnull(Woutbw02.qty,0) as Woutbw02,'
      'isnull(bw03.qty,0) as bw03,'
      'isnull(winbw03.qty,0) as tinbw03,'
      'isnull(Woutbw03.qty,0) as Woutbw03,'
      'isnull(bw04.qty,0) as bw04,'
      'isnull(winbw04.qty,0) as tinbw04,'
      'isnull(Woutbw04.qty,0) as Woutbw04,'
      'isnull(bw05.qty,0) as bw05,'
      'isnull(winbw05.qty,0) as tinbw05,'
      'isnull(Woutbw05.qty,0) as Woutbw05,'
      'isnull(bw06.qty,0) as bw06,'
      'isnull(winbw06.qty,0) as tinbw06,'
      'isnull(Woutbw06.qty,0) as Woutbw06,'
      'isnull(bw07.qty,0) as bw07,'
      'isnull(winbw07.qty,0) as tinbw07,'
      'isnull(Woutbw07.qty,0) as Woutbw07'
      'from shoetest'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW01'#39' group by testno,' +
        'parts)bw01 on bw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW02'#39' group by testno,' +
        'parts)bw02 on bw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW03'#39' group by testno,' +
        'parts)bw03 on bw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW04'#39' group by testno,' +
        'parts)bw04 on bw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW05'#39' group by testno,' +
        'parts)bw05 on bw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW06'#39' group by testno,' +
        'parts)bw06 on bw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetest2 wh' +
        'ere shoetest2.testno='#39'18F1060'#39' and parts='#39'BW07'#39' group by testno,' +
        'parts)bw07 on bw07.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW01'#39' group by testn' +
        'o,parts)Winbw01 on Winbw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW02'#39' group by testn' +
        'o,parts)Winbw02 on Winbw02.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW03'#39' group by testn' +
        'o,parts)Winbw03 on Winbw03.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW04'#39' group by testn' +
        'o,parts)Winbw04 on Winbw04.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW05'#39' group by testn' +
        'o,parts)Winbw05 on Winbw05.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW06'#39' group by testn' +
        'o,parts)Winbw06 on Winbw06.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestin w' +
        'here shoetestin.testno='#39'18F1060'#39' and parts='#39'BW07'#39' group by testn' +
        'o,parts)Winbw07 on Winbw07.testno=shoetest.testno'
      ''
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW01'#39' group by tes' +
        'tno,parts)Woutbw01 on Woutbw01.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW02'#39' group by tes' +
        'tno,parts)Woutbw02 on Woutbw02.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW03'#39' group by tes' +
        'tno,parts)Woutbw03 on Woutbw03.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW04'#39' group by tes' +
        'tno,parts)Woutbw04 on Woutbw04.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW05'#39' group by tes' +
        'tno,parts)Woutbw05 on Woutbw05.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW06'#39' group by tes' +
        'tno,parts)Woutbw06 on Woutbw06.testno=shoetest.testno'
      
        'left join (select testno,parts,sum(qty) as qty from shoetestout ' +
        'where shoetestout.testno='#39'18F1060'#39' and parts='#39'BW07'#39' group by tes' +
        'tno,parts)Woutbw07 on Woutbw07.testno=shoetest.testno'
      'left join Busers on Busers.userid = shoetest.userid'
      'where shoetest.testno='#39'18F1060'#39)
    Left = 141
    Top = 394
    object Query1testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query1Developer: TStringField
      FieldName = 'Developer'
      FixedChar = True
      Size = 31
    end
    object Query1bw01: TFloatField
      FieldName = 'bw01'
    end
    object Query1tinbw01: TFloatField
      FieldName = 'tinbw01'
    end
    object Query1Woutbw01: TFloatField
      FieldName = 'Woutbw01'
    end
    object Query1bw02: TFloatField
      FieldName = 'bw02'
    end
    object Query1tinbw02: TFloatField
      FieldName = 'tinbw02'
    end
    object Query1Woutbw02: TFloatField
      FieldName = 'Woutbw02'
    end
    object Query1bw03: TFloatField
      FieldName = 'bw03'
    end
    object Query1tinbw03: TFloatField
      FieldName = 'tinbw03'
    end
    object Query1Woutbw03: TFloatField
      FieldName = 'Woutbw03'
    end
    object Query1bw04: TFloatField
      FieldName = 'bw04'
    end
    object Query1tinbw04: TFloatField
      FieldName = 'tinbw04'
    end
    object Query1Woutbw04: TFloatField
      FieldName = 'Woutbw04'
    end
    object Query1bw05: TFloatField
      FieldName = 'bw05'
    end
    object Query1tinbw05: TFloatField
      FieldName = 'tinbw05'
    end
    object Query1Woutbw05: TFloatField
      FieldName = 'Woutbw05'
    end
    object Query1bw06: TFloatField
      FieldName = 'bw06'
    end
    object Query1tinbw06: TFloatField
      FieldName = 'tinbw06'
    end
    object Query1Woutbw06: TFloatField
      FieldName = 'Woutbw06'
    end
    object Query1bw07: TFloatField
      FieldName = 'bw07'
    end
    object Query1tinbw07: TFloatField
      FieldName = 'tinbw07'
    end
    object Query1Woutbw07: TFloatField
      FieldName = 'Woutbw07'
    end
  end
  object ShoeinQry: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select *  from shoetestin'
      
        'left join (select testno,parts,sum(qty) as total  from shoetesti' +
        'n  group by  testno,parts)total on total.testno=shoetestin.testn' +
        'o and total.parts=shoetestin.parts'
      ' where shoetestin.testno='#39'19U0024'#39' and shoetestin.parts='#39'bw01'#39)
    UpdateObject = Shoeinupd
    Left = 1095
    Top = 491
    object ShoeinQryQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.shoetestin.Qty'
    end
    object ShoeinQryUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.shoetestin.UserID'
      FixedChar = True
      Size = 15
    end
    object ShoeinQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.shoetestin.UserDate'
    end
    object ShoeinQryparts: TStringField
      FieldName = 'parts'
      Origin = 'DB.shoetestin.parts'
      FixedChar = True
      Size = 4
    end
    object ShoeinQrytotal: TFloatField
      FieldName = 'total'
    end
  end
  object ShoeoutQry: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select *  from shoetestout'
      
        'left join (select testno,parts,sum(qty) as total  from shoetesto' +
        'ut  group by  testno,parts)total on total.testno=shoetestout.tes' +
        'tno and total.parts=shoetestout.parts'
      ' where shoetestout.testno='#39'19U0024'#39' and shoetestout.parts='#39'bw01'#39)
    UpdateObject = Shoeoutupd
    Left = 1175
    Top = 419
    object ShoeoutQryQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.shoetestOut.Qty'
    end
    object ShoeoutQryUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.shoetestOut.UserID'
      FixedChar = True
      Size = 15
    end
    object ShoeoutQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.shoetestOut.UserDate'
    end
    object ShoeoutQryparts: TStringField
      FieldName = 'parts'
      Origin = 'DB.shoetestOut.parts'
      FixedChar = True
      Size = 4
    end
    object ShoeoutQrytotal: TFloatField
      FieldName = 'total'
    end
  end
  object DataSource2: TDataSource
    DataSet = ShoeinQry
    Left = 1103
    Top = 459
  end
  object DataSource3: TDataSource
    DataSet = ShoeoutQry
    Left = 1175
    Top = 451
  end
  object Shoeinupd: TUpdateSQL
    Left = 1095
    Top = 523
  end
  object Shoeoutupd: TUpdateSQL
    Left = 1175
    Top = 483
  end
  object tempqry: TQuery
    DatabaseName = 'DB'
    Left = 1029
    Top = 498
  end
  object QStatus: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ShoeTestPlan.Serino, ShoeTestPlan.Groups, shoetests.TESTN' +
        'O, shoetest.YPDH, shoetest.ShipDate, shoetests.CLBH, shoetests.Q' +
        'ty, KCLLS.Qty AS ReqQty FROM shoetests'
      'LEFT JOIN shoetest ON shoetest.TestNo = shoetests.TESTNO'
      'LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = shoetest.TestNo'
      
        'LEFT JOIN KCLLS ON KCLLS.LLNO = shoetests.LLNO AND KCLLS.CLBH = ' +
        'shoetests.CLBH'
      'LEFT JOIN KCLL ON KCLL.LLNO = KCLLS.LLNO'
      'WHERE KCLL.CFMID <> '#39'NO'#39' AND shoetests.Qty <> KCLLS.Qty'
      'AND shoetest.ShipDate = '#39'2022/08/13'#39)
    Left = 21
    Top = 145
    object QStatusSerino: TIntegerField
      FieldName = 'Serino'
    end
    object QStatusGroups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object QStatusTESTNO: TStringField
      FieldName = 'TESTNO'
      FixedChar = True
      Size = 10
    end
    object QStatusShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object QStatusCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QStatusQty: TCurrencyField
      FieldName = 'Qty'
    end
    object QStatusReqQty: TCurrencyField
      FieldName = 'ReqQty'
    end
    object QStatusYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
  end
  object DS4: TDataSource
    DataSet = QStatus
    Left = 21
    Top = 113
  end
  object DataSource4: TDataSource
    DataSet = shoetest
    Left = 393
    Top = 425
  end
  object shoetest: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      'select'
      
        'shoetestplan.Serino,shoetest.Season,shoetest.stage,groups,groups' +
        '2,shoetest.testno,shoetest.Article,TBReceiveDate,'
      
        'PreparationDate_first,case when (isnull(PreparationDate,'#39#39')<>'#39#39')' +
        ' and (isnull(S_material,'#39#39')<>'#39#39')  and (isnull(insole_send,'#39#39')<>'#39 +
        #39')  and (isnull(lace_send,'#39#39')<>'#39#39')  then warehouse.Wdate else nu' +
        'll end PreparationDate,'
      'shoetest.ETC,shoetest.shipdate,shoetest.warehousePL,kfxxzl.kflx,'
      
        'shoetest.S_material,shoetest.insole_send,shoetest.lace_send,shoe' +
        'test.lamination_send,shoetest.lamination_get,'
      
        'shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,shoet' +
        'est.LiMao_Get,'
      
        'shoetest.kietphong_Send,shoetest.kietphong_Get,shoetest.Amico_Se' +
        'nd,shoetest.Amico_Get,'
      
        'shoetest.Laser_Send,shoetest.Laser_Get,shoetest.DAJU_Send,shoete' +
        'st.DAJU_Get,shoetest.MemoPL PlanningMemo,shoetest.Memo1,shoetest' +
        '.Memo2,'
      
        'shoetest.PreparationDate PreparationDate1,shoetest.StitchingPhuF' +
        'inishDate,shoetest.insole_get,shoetest.lace_get,shoetest.FirstMa' +
        'tOutDate,'
      
        'shoetest.lamination,shoetest.lamination_CRMTO,shoetest.Amico,sho' +
        'etest.Sublimation,shoetest.kietphong,shoetest.E_embroidery,shoet' +
        'est.printing,shoetest.LiMao,shoetest.Laser,shoetest.DAJU'
      'from shoetest'
      'left join shoetestplan on shoetest.testno = shoetestplan.testno'
      'left join shoetestDelay on shoetestDelay.testno=shoetest.testno'
      'left join shoetestDetail DP on DP.YYBH=shoetestDelay.DP'
      'left join shoetestDetail DR on DP.YYBH=shoetestDelay.DR'
      'left join ypzl on ypzl.YPDH=shoetest.YPDH'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.XieXing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join ('
      '  select testno,'
      '  (select max(Wdate)'
      
        '  from (values (PreparationDate),(S_material),(insole_send),(lac' +
        'e_send)) as cvalues(Wdate)'
      '  )AS Wdate'
      '  from shoetest )warehouse on warehouse.testno=shoetest.testno'
      'where  1=2'
      ' and shoetest.TBreceiveDate between'
      ' convert(smalldatetime,'#39'2022/01/16 00:00:00'#39') '
      ' and  '
      ' convert(smalldatetime,'#39'2022/02/15 23:59:00'#39')  '
      '')
    UpdateObject = updqry1
    Left = 393
    Top = 481
    object shoetestSerino: TIntegerField
      FieldName = 'Serino'
    end
    object shoetestSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object shoeteststage: TStringField
      FieldName = 'stage'
      FixedChar = True
      Size = 15
    end
    object shoetestgroups: TStringField
      FieldName = 'groups'
      FixedChar = True
      Size = 6
    end
    object shoetestgroups2: TStringField
      FieldName = 'groups2'
      FixedChar = True
      Size = 6
    end
    object shoetesttestno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object shoetestArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object shoetestkflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 3
    end
    object shoetestshipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object shoetestETC: TDateTimeField
      FieldName = 'ETC'
    end
    object shoetestTBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object shoetestlamination: TBooleanField
      FieldName = 'lamination'
    end
    object shoetestlamination_CRMTO: TBooleanField
      FieldName = 'lamination_CRMTO'
    end
    object shoetestAmico: TBooleanField
      FieldName = 'Amico'
    end
    object shoetestSublimation: TBooleanField
      FieldName = 'Sublimation'
    end
    object shoetestkietphong: TBooleanField
      FieldName = 'kietphong'
    end
    object shoetestE_embroidery: TBooleanField
      FieldName = 'E_embroidery'
    end
    object shoetestprinting: TBooleanField
      FieldName = 'printing'
    end
    object shoetestLiMao: TBooleanField
      FieldName = 'LiMao'
    end
    object shoetestLaser: TBooleanField
      FieldName = 'Laser'
    end
    object shoetestDAJU: TBooleanField
      FieldName = 'DAJU'
    end
    object shoetestwarehousePL: TDateTimeField
      FieldName = 'warehousePL'
    end
    object shoetestPreparationDate_first: TDateTimeField
      FieldName = 'PreparationDate_first'
    end
    object shoetestPreparationDate: TDateTimeField
      FieldName = 'PreparationDate'
    end
    object shoetestPreparationDate1: TDateTimeField
      FieldName = 'PreparationDate1'
    end
    object shoetestlamination_send: TDateTimeField
      FieldName = 'lamination_send'
    end
    object shoetestlamination_get: TDateTimeField
      FieldName = 'lamination_get'
    end
    object shoetestBaoHe_send: TDateTimeField
      FieldName = 'BaoHe_send'
    end
    object shoetestBaoHe_get: TDateTimeField
      FieldName = 'BaoHe_get'
    end
    object shoetestkietphong_Send: TDateTimeField
      FieldName = 'kietphong_Send'
    end
    object shoetestkietphong_Get: TDateTimeField
      FieldName = 'kietphong_Get'
    end
    object shoetestAmico_Send: TDateTimeField
      FieldName = 'Amico_Send'
    end
    object shoetestAmico_Get: TDateTimeField
      FieldName = 'Amico_Get'
    end
    object shoetestLaser_Send: TDateTimeField
      FieldName = 'Laser_Send'
    end
    object shoetestLaser_Get: TDateTimeField
      FieldName = 'Laser_Get'
    end
    object shoetestDAJU_Send: TDateTimeField
      FieldName = 'DAJU_Send'
    end
    object shoetestDAJU_Get: TDateTimeField
      FieldName = 'DAJU_Get'
    end
    object shoetestFirstMatOutDate: TDateTimeField
      FieldName = 'FirstMatOutDate'
    end
    object shoetestS_material: TDateTimeField
      FieldName = 'S_material'
    end
    object shoetestStitchingPhuFinishDate: TDateTimeField
      FieldName = 'StitchingPhuFinishDate'
    end
    object shoetestinsole_send: TDateTimeField
      FieldName = 'insole_send'
    end
    object shoetestLiMao_Send: TDateTimeField
      FieldName = 'LiMao_Send'
    end
    object shoetestLiMao_Get: TDateTimeField
      FieldName = 'LiMao_Get'
    end
    object shoetestinsole_get: TDateTimeField
      FieldName = 'insole_get'
    end
    object shoetestlace_send: TDateTimeField
      FieldName = 'lace_send'
    end
    object shoetestlace_get: TDateTimeField
      FieldName = 'lace_get'
    end
    object shoetestPlanningMemo: TStringField
      FieldName = 'PlanningMemo'
      FixedChar = True
      Size = 255
    end
    object shoetestMemo1: TMemoField
      FieldName = 'Memo1'
      BlobType = ftMemo
    end
    object shoetestMemo2: TMemoField
      FieldName = 'Memo2'
      BlobType = ftMemo
    end
  end
  object updqry1: TUpdateSQL
    ModifySQL.Strings = (
      'update shoetest'
      'set'
      '  Memo2=:Memo2'
      '  where'
      '   testno = :OLD_testno ')
    Left = 401
    Top = 545
  end
end
