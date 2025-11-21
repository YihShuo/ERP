object FDExcelData_TYB: TFDExcelData_TYB
  Left = 249
  Top = 203
  Width = 1305
  Height = 608
  Caption = 'FDExcelData_TYB'
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
    Width = 1297
    Height = 577
    Align = alClient
    TabOrder = 0
    OnDblClick = Panel1DblClick
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1295
      Height = 575
      ActivePage = TabSheet3
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Sample Commercialization Sheet'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 89
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 8
            Width = 329
            Height = 20
            Caption = 'LYNDC Sample Commercialization Sheet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 202
            Top = 39
            Width = 47
            Height = 16
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 360
            Top = 8
            Width = 80
            Height = 20
            Caption = #27171#21697#23460#36039#26009
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label4: TLabel
            Left = 209
            Top = 63
            Width = 36
            Height = 16
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 31
            Top = 41
            Width = 26
            Height = 16
            Caption = 'SR#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 33
            Top = 63
            Width = 18
            Height = 16
            Caption = 'FD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button1: TButton
            Left = 400
            Top = 29
            Width = 75
            Height = 25
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Buttn1Click
          end
          object Edit1: TEdit
            Left = 63
            Top = 39
            Width = 130
            Height = 24
            TabOrder = 1
          end
          object Button2: TButton
            Left = 400
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button2Click
          end
          object ComboBox1: TComboBox
            Left = 255
            Top = 61
            Width = 120
            Height = 24
            ItemHeight = 16
            TabOrder = 3
            Items.Strings = (
              '')
          end
          object ComboBox3: TComboBox
            Left = 63
            Top = 61
            Width = 130
            Height = 24
            ItemHeight = 16
            TabOrder = 4
            Items.Strings = (
              ''
              'PRO'
              'SM2'
              'SM3'
              'PDT'
              'CFM'
              'ADD'
              'AD1'
              'PUL')
          end
          object ComboBox5: TComboBox
            Left = 255
            Top = 37
            Width = 120
            Height = 24
            ItemHeight = 16
            TabOrder = 5
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 89
          Width = 1287
          Height = 455
          Align = alClient
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1130
            Height = 447
            Align = alClient
            DataSource = DataSource1
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'devcode'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'SR#'
              end
              item
                EditButtons = <>
                FieldName = 'article'
                Footers = <>
                Title.Caption = 'Article'
              end
              item
                EditButtons = <>
                FieldName = 'xieming'
                Footers = <>
                Title.Caption = 'Shoe Name'
                Width = 137
              end
              item
                EditButtons = <>
                FieldName = 'jijie'
                Footers = <>
                Title.Caption = 'Season'
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'kfjd'
                Footers = <>
                Title.Caption = 'Stage'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'fd'
                Footers = <>
                Title.Caption = 'FD'
              end>
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'SampleOrederMaterial List'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 89
          Align = alTop
          TabOrder = 0
          object Label7: TLabel
            Left = 16
            Top = 8
            Width = 214
            Height = 20
            Caption = 'SampleOrederMaterial List'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 192
            Top = 39
            Width = 47
            Height = 16
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 374
            Top = 38
            Width = 137
            Height = 16
            Caption = 'SampleOrederMaterial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label10: TLabel
            Left = 202
            Top = 63
            Width = 36
            Height = 16
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 26
            Top = 39
            Width = 26
            Height = 16
            Caption = 'SR#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 29
            Top = 63
            Width = 18
            Height = 16
            Caption = 'FD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label77: TLabel
            Left = 376
            Top = 63
            Width = 113
            Height = 16
            Caption = 'SampleOrderType'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button3: TButton
            Left = 584
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button3Click
          end
          object Edit5: TEdit
            Left = 59
            Top = 36
            Width = 121
            Height = 24
            TabOrder = 1
          end
          object Button4: TButton
            Left = 584
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button4Click
          end
          object ComboBox2: TComboBox
            Left = 246
            Top = 61
            Width = 120
            Height = 24
            ItemHeight = 16
            TabOrder = 3
            Items.Strings = (
              '')
          end
          object ComboBox4: TComboBox
            Left = 58
            Top = 61
            Width = 120
            Height = 24
            ItemHeight = 16
            TabOrder = 4
            Items.Strings = (
              ''
              'PRO'
              'SM2'
              'SM3'
              'PDT'
              'CFM'
              'ADD'
              'AD1'
              'PUL')
          end
          object ComboBox6: TComboBox
            Left = 246
            Top = 37
            Width = 120
            Height = 24
            ItemHeight = 16
            TabOrder = 5
          end
          object LAI: TComboBox
            Left = 493
            Top = 61
            Width = 81
            Height = 24
            ItemHeight = 16
            TabOrder = 6
            Items.Strings = (
              ''
              'VANV'
              'VANK'
              'VANT'
              'TNFV'
              'TNFK'
              'TNFT'
              'ALTV'
              'ALTK'
              'ALTT')
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 89
          Width = 1287
          Height = 455
          Align = alClient
          DataSource = DataSource2
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
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'devcode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'SR#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 148
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Stage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'jijie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Season'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 136
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'ypdh'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Sample No'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end>
        end
        object Memo1: TMemo
          Left = 680
          Top = 264
          Width = 185
          Height = 89
          TabOrder = 2
          Visible = False
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'ColorSwatch'
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 65
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
          object BitBtn1: TBitBtn
            Left = 56
            Top = 8
            Width = 87
            Height = 49
            Hint = 'Modify Current'
            Caption = 'ColorSwatch'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn1Click
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
          object BB7: TBitBtn
            Left = 557
            Top = 8
            Width = 51
            Height = 49
            Hint = 'Exit Current Form'
            Caption = 'Exit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
          object BitBtn2: TBitBtn
            Left = 143
            Top = 8
            Width = 65
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Sticker'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn2Click
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
          object BDT6: TBitBtn
            Left = 434
            Top = 8
            Width = 72
            Height = 49
            Hint = 'Modify Current'
            Caption = 'SR Detail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
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
          object BitBtn4: TBitBtn
            Left = 271
            Top = 8
            Width = 82
            Height = 49
            Hint = 'Modify Current'
            Caption = 'StickerList'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BitBtn4Click
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
          object BitBtn5: TBitBtn
            Left = 353
            Top = 8
            Width = 83
            Height = 49
            Hint = 'Modify Current'
            Caption = 'BookCover'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BitBtn5Click
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
          object BBT5: TBitBtn
            Left = 506
            Top = 8
            Width = 53
            Height = 49
            Hint = 'Materail supplier no assign purchaser list'
            Caption = 'SR List'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BBT5Click
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
          object BitBtn6: TBitBtn
            Left = 208
            Top = 8
            Width = 65
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Sticker2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = BitBtn6Click
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
        object Panel6: TPanel
          Left = 0
          Top = 65
          Width = 1287
          Height = 479
          Align = alClient
          TabOrder = 1
          object PC1: TPageControl
            Left = 1
            Top = 1
            Width = 1285
            Height = 477
            ActivePage = TS1
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnChange = PC1Change
            object TS1: TTabSheet
              Caption = 'YPMas'
              ImageIndex = 2
              object InfoPanel: TPanel
                Left = 0
                Top = 97
                Width = 1277
                Height = 200
                Align = alTop
                TabOrder = 0
                object Label13: TLabel
                  Left = 0
                  Top = 12
                  Width = 71
                  Height = 16
                  AutoSize = False
                  Caption = 'Sample No:'
                end
                object Label14: TLabel
                  Left = 41
                  Top = 36
                  Width = 52
                  Height = 16
                  AutoSize = False
                  Caption = 'SR#'
                end
                object Label15: TLabel
                  Left = 453
                  Top = 12
                  Width = 56
                  Height = 16
                  AutoSize = False
                  Caption = 'Color No:'
                end
                object Label16: TLabel
                  Left = 36
                  Top = 62
                  Width = 32
                  Height = 16
                  AutoSize = False
                  Caption = 'Rate:'
                end
                object Label17: TLabel
                  Left = 16
                  Top = 87
                  Width = 52
                  Height = 16
                  AutoSize = False
                  Caption = 'Ins Date:'
                end
                object Label18: TLabel
                  Left = 18
                  Top = 112
                  Width = 48
                  Height = 16
                  AutoSize = False
                  Caption = 'Factory:'
                end
                object Label19: TLabel
                  Left = 16
                  Top = 137
                  Width = 50
                  Height = 16
                  AutoSize = False
                  Caption = 'Season:'
                end
                object Label20: TLabel
                  Left = 682
                  Top = 12
                  Width = 40
                  Height = 16
                  AutoSize = False
                  Caption = 'Stage:'
                end
                object Label21: TLabel
                  Left = 477
                  Top = 36
                  Width = 29
                  Height = 16
                  AutoSize = False
                  Caption = 'Size:'
                end
                object Label23: TLabel
                  Left = 433
                  Top = 60
                  Width = 75
                  Height = 16
                  AutoSize = False
                  Caption = 'OutsoleSize:'
                end
                object Label24: TLabel
                  Left = 862
                  Top = 108
                  Width = 62
                  Height = 16
                  AutoSize = False
                  Caption = 'USER No:'
                end
                object Label25: TLabel
                  Left = 455
                  Top = 84
                  Width = 54
                  Height = 16
                  AutoSize = False
                  Caption = 'LastSize:'
                end
                object Label26: TLabel
                  Left = 458
                  Top = 132
                  Width = 50
                  Height = 16
                  AutoSize = False
                  Caption = 'Pair Qty:'
                end
                object Label27: TLabel
                  Left = 0
                  Top = 161
                  Width = 73
                  Height = 16
                  AutoSize = False
                  Caption = 'Developer:'
                end
                object Label22: TLabel
                  Left = 215
                  Top = 12
                  Width = 54
                  Height = 16
                  AutoSize = False
                  Caption = 'Style No:'
                end
                object Label28: TLabel
                  Left = 210
                  Top = 36
                  Width = 59
                  Height = 16
                  AutoSize = False
                  Caption = 'Art Name:'
                end
                object Label29: TLabel
                  Left = 205
                  Top = 62
                  Width = 56
                  Height = 16
                  AutoSize = False
                  Caption = 'Currency:'
                end
                object Label30: TLabel
                  Left = 215
                  Top = 87
                  Width = 55
                  Height = 16
                  AutoSize = False
                  Caption = 'Mat ETA:'
                end
                object Label31: TLabel
                  Left = 199
                  Top = 112
                  Width = 71
                  Height = 16
                  AutoSize = False
                  Caption = 'Finish date :'
                end
                object Label32: TLabel
                  Left = 214
                  Top = 137
                  Width = 57
                  Height = 16
                  AutoSize = False
                  Caption = 'Dev type:'
                end
                object Label33: TLabel
                  Left = 211
                  Top = 161
                  Width = 68
                  Height = 16
                  AutoSize = False
                  Caption = 'Devtype1:'
                end
                object Label34: TLabel
                  Left = 477
                  Top = 178
                  Width = 30
                  Height = 16
                  AutoSize = False
                  Caption = 'ETA:'
                end
                object Label35: TLabel
                  Left = 659
                  Top = 156
                  Width = 73
                  Height = 16
                  AutoSize = False
                  Caption = 'Color Desc:'
                end
                object Label36: TLabel
                  Left = 659
                  Top = 108
                  Width = 73
                  Height = 16
                  AutoSize = False
                  Caption = #38283#30332#31278#39006':'
                end
                object Label37: TLabel
                  Left = 676
                  Top = 132
                  Width = 73
                  Height = 16
                  AutoSize = False
                  Caption = 'US Size:'
                end
                object XieXingQry: TSpeedButton
                  Left = 408
                  Top = 8
                  Width = 23
                  Height = 22
                  Caption = '...'
                  Visible = False
                end
                object StageQry: TSpeedButton
                  Left = 816
                  Top = 8
                  Width = 23
                  Height = 22
                  Caption = '...'
                  Visible = False
                end
                object CurrencyQry: TSpeedButton
                  Left = 408
                  Top = 59
                  Width = 23
                  Height = 22
                  Caption = '...'
                  Visible = False
                end
                object Label52: TLabel
                  Left = 642
                  Top = 36
                  Width = 87
                  Height = 16
                  AutoSize = False
                  Caption = 'Medial Height:'
                end
                object Label53: TLabel
                  Left = 642
                  Top = 60
                  Width = 87
                  Height = 16
                  AutoSize = False
                  Caption = 'Lateral Height:'
                end
                object Label54: TLabel
                  Left = 654
                  Top = 82
                  Width = 87
                  Height = 20
                  AutoSize = False
                  Caption = 'Back Height:'
                end
                object Label57: TLabel
                  Left = 876
                  Top = 12
                  Width = 47
                  Height = 13
                  Caption = 'DevType:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label60: TLabel
                  Left = 890
                  Top = 60
                  Width = 38
                  Height = 16
                  AutoSize = False
                  Caption = 'SKU:'
                end
                object Label58: TLabel
                  Left = 876
                  Top = 36
                  Width = 46
                  Height = 13
                  Caption = 'SubType:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Imageshoe: TImage
                  Left = 1136
                  Top = 8
                  Width = 233
                  Height = 161
                  Stretch = True
                end
                object Label75: TLabel
                  Left = 888
                  Top = 80
                  Width = 35
                  Height = 16
                  Caption = 'Type:'
                end
                object Label76: TLabel
                  Left = 452
                  Top = 156
                  Width = 65
                  Height = 14
                  AutoSize = False
                  Caption = 'Total Qty:'
                end
                object Label59: TLabel
                  Left = 812
                  Top = 132
                  Width = 131
                  Height = 16
                  AutoSize = False
                  Caption = 'ProductionLocation'
                end
                object Label87: TLabel
                  Left = 431
                  Top = 108
                  Width = 82
                  Height = 16
                  AutoSize = False
                  Caption = 'MidsoleSize:'
                end
                object YPDH_DB: TDBEdit
                  Left = 72
                  Top = 8
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'YPDH'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 0
                end
                object ARTNO_DB: TDBEdit
                  Left = 72
                  Top = 33
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'DEVCODE'
                  DataSource = YPZL_DS
                  TabOrder = 1
                end
                object DBEdit1: TDBEdit
                  Left = 510
                  Top = 8
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'SheHao'
                  DataSource = YPZL_DS
                  TabOrder = 2
                end
                object Rate_DB: TDBEdit
                  Left = 72
                  Top = 59
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'Rate'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 3
                end
                object USERDATE_DB: TDBEdit
                  Left = 72
                  Top = 84
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'USERDATE'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 4
                end
                object PFC_DB: TDBEdit
                  Left = 72
                  Top = 109
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'PFC'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 5
                end
                object JiJie_DB: TDBEdit
                  Left = 72
                  Top = 135
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'JiJie'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 6
                end
                object DBEdit14: TDBEdit
                  Left = 730
                  Top = 8
                  Width = 89
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'KFJD'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 7
                end
                object YPCC_DB: TDBEdit
                  Left = 510
                  Top = 32
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'YPCC'
                  DataSource = YPZL_DS
                  TabOrder = 8
                end
                object YPCCO_DB: TDBEdit
                  Left = 510
                  Top = 56
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'YPCCO'
                  DataSource = YPZL_DS
                  TabOrder = 9
                end
                object USERID_DB: TDBEdit
                  Left = 928
                  Top = 104
                  Width = 153
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'UserName'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 10
                end
                object YPCCL_DB: TDBEdit
                  Left = 510
                  Top = 80
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'YPCCL'
                  DataSource = YPZL_DS
                  TabOrder = 11
                end
                object Quantity_DB: TDBEdit
                  Left = 510
                  Top = 128
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'Quantity'
                  DataSource = YPZL_DS
                  TabOrder = 12
                end
                object FD_DB: TDBEdit
                  Left = 72
                  Top = 159
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'FD'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 13
                end
                object XieXing_DB: TDBEdit
                  Left = 272
                  Top = 8
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'XieXing'
                  DataSource = YPZL_DS
                  TabOrder = 14
                end
                object XieMing_DB: TDBEdit
                  Left = 272
                  Top = 33
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'XieMing'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 15
                end
                object Currency_DB: TDBEdit
                  Left = 272
                  Top = 59
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'Currency'
                  DataSource = YPZL_DS
                  TabOrder = 16
                end
                object KFRQ_DB: TDBEdit
                  Left = 272
                  Top = 84
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'KFRQ'
                  DataSource = YPZL_DS
                  TabOrder = 17
                end
                object FINDATE_DB: TDBEdit
                  Left = 272
                  Top = 109
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'FINDATE'
                  DataSource = YPZL_DS
                  TabOrder = 18
                end
                object KFLX2_DB: TDBEdit
                  Left = 272
                  Top = 135
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'KFLX2'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 19
                end
                object DevType_DB: TDBEdit
                  Left = 272
                  Top = 159
                  Width = 129
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'DevType'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 20
                end
                object DBEdit2: TDBEdit
                  Left = 510
                  Top = 174
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'JHRQ'
                  DataSource = YPZL_DS
                  TabOrder = 21
                end
                object DBEdit3: TDBEdit
                  Left = 731
                  Top = 152
                  Width = 225
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'YSSM'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 22
                end
                object DBEdit4: TDBEdit
                  Left = 731
                  Top = 104
                  Width = 113
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'Category'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 23
                end
                object DBEdit5: TDBEdit
                  Left = 731
                  Top = 128
                  Width = 47
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'CCGB'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 24
                end
                object DBEdit10: TDBEdit
                  Left = 731
                  Top = 32
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'MH'
                  DataSource = YPZL_DS
                  TabOrder = 25
                end
                object DBEdit11: TDBEdit
                  Left = 732
                  Top = 56
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'LH'
                  DataSource = YPZL_DS
                  TabOrder = 26
                end
                object DBEdit12: TDBEdit
                  Left = 732
                  Top = 80
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'BH'
                  DataSource = YPZL_DS
                  TabOrder = 27
                end
                object DBEdit15: TDBEdit
                  Left = 930
                  Top = 8
                  Width = 135
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'DevType'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 28
                end
                object DBEdit16: TDBEdit
                  Left = 930
                  Top = 56
                  Width = 174
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'ARTNO'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 29
                end
                object DBEdit13: TDBEdit
                  Left = 930
                  Top = 32
                  Width = 135
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'subtype'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 30
                end
                object DBEdit17: TDBEdit
                  Left = 930
                  Top = 80
                  Width = 135
                  Height = 24
                  CharCase = ecUpperCase
                  Color = clSilver
                  DataField = 'ywsm_1'
                  DataSource = YPZL_DS
                  Enabled = False
                  ReadOnly = True
                  TabOrder = 31
                end
                object DBEdit18: TDBEdit
                  Left = 510
                  Top = 152
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'totalQuantity'
                  DataSource = YPZL_DS
                  TabOrder = 32
                end
                object DBEdit19: TDBEdit
                  Left = 928
                  Top = 128
                  Width = 174
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'productionlocation'
                  DataSource = YPZL_DS
                  ReadOnly = True
                  TabOrder = 33
                end
                object YPCCM_DB: TDBEdit
                  Left = 510
                  Top = 104
                  Width = 123
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'ypccM'
                  DataSource = YPZL_DS
                  TabOrder = 34
                end
              end
              object YPZLGrid: TDBGridEh
                Left = 0
                Top = 297
                Width = 1277
                Height = 149
                Align = alClient
                DataSource = YPZL_DS
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                FrozenCols = 8
                SumList.Active = True
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                OnDblClick = YPZLGridDblClick
                OnDrawColumnCell = YPZLGridDrawColumnCell
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'fd_check'
                    Footers = <>
                    Title.Caption = 'BOM|Status'
                    Width = 63
                  end
                  item
                    DisplayFormat = 'MM/DD'
                    EditButtons = <>
                    FieldName = 'DelDate'
                    Footers = <>
                    Title.Caption = 'BOM|Date'
                    Width = 74
                  end
                  item
                    EditButtons = <>
                    FieldName = 're_check'
                    Footers = <>
                    Title.Caption = 'Develop|Status'
                    Width = 44
                  end
                  item
                    EditButtons = <>
                    FieldName = 'recheckdate'
                    Footers = <>
                    Title.Caption = 'Develop|Date'
                    Width = 74
                  end
                  item
                    EditButtons = <>
                    FieldName = 'pur_recieve'
                    Footers = <>
                    Title.Caption = 'Purchase|Status'
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'recieveDate'
                    Footers = <>
                    Title.Caption = 'Purchase|Date'
                    Width = 74
                  end
                  item
                    EditButtons = <>
                    FieldName = 'YPDH'
                    Footers = <
                      item
                        FieldName = 'YPDH'
                        ValueType = fvtCount
                      end>
                    ReadOnly = True
                    Title.Caption = #27171#21697#21934#34399'|Sample No'
                    Width = 113
                  end
                  item
                    EditButtons = <>
                    FieldName = 'FD'
                    Footers = <>
                    Title.Caption = #38283#30332#21729'|FD'
                    Width = 116
                  end
                  item
                    EditButtons = <>
                    FieldName = 'USERDATE'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #38283#21934#26085#26399'|Date'
                    Width = 55
                  end
                  item
                    EditButtons = <>
                    FieldName = 'Quantity'
                    Footers = <>
                    Title.Caption = #25976#37327'|PairQty'
                    Width = 57
                  end
                  item
                    EditButtons = <>
                    FieldName = 'XieXing'
                    Footers = <>
                    Title.Caption = #38795#22411'|Style No'
                    Width = 113
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SheHao'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #33394#34399'|Color'
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DevType'
                    Footers = <>
                    Title.Caption = #38283#30332#39006#22411'|DevType'
                    Width = 77
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DEVCODE'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = 'SR#|DevCode'
                    Width = 150
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ARTNO'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = 'Article|SKU'
                    Width = 150
                  end
                  item
                    EditButtons = <>
                    FieldName = 'JiJie'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #23395#21029'|Sea'
                    Width = 36
                  end
                  item
                    EditButtons = <>
                    FieldName = 'KFJD'
                    Footers = <>
                    Title.Caption = #38542#27573'|Stage'
                    Width = 36
                  end
                  item
                    EditButtons = <>
                    FieldName = 'YPCC'
                    Footers = <>
                    Title.Caption = #23610#23544'|Size'
                    Width = 40
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UserName'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#25142#32232#34399'|USERID'
                    Width = 55
                  end
                  item
                    EditButtons = <>
                    FieldName = 'YSSM'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #38991#33394#21517#31281'|Color Name'
                    Width = 83
                  end
                  item
                    EditButtons = <>
                    FieldName = 'USERDATE'
                    Footers = <>
                    Title.Caption = #20462#25913#26085#26399'|Date'
                    Width = 62
                  end
                  item
                    EditButtons = <>
                    FieldName = 'JHRQ'
                    Footers = <>
                    Title.Caption = #20132#26399'|ETA'
                    Width = 61
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BWBH'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #37096#20301#25976#37327'|Parts'
                    Width = 61
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DROPPED'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #21462#28040'|Drop'
                    Width = 35
                  end
                  item
                    EditButtons = <>
                    FieldName = 'MH'
                    Footers = <>
                    Title.Caption = #38795#36523#20839#33136'|Medial Height'
                    Width = 82
                  end
                  item
                    EditButtons = <>
                    FieldName = 'LH'
                    Footers = <>
                    Title.Caption = #38795#36523#22806#33136'|Lateral Height'
                    Width = 86
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BH'
                    Footers = <>
                    Title.Caption = #24460#36319#39640'|Back Height'
                    Width = 89
                  end
                  item
                    EditButtons = <>
                    FieldName = 'subtype'
                    Footers = <>
                    Width = 113
                  end
                  item
                    EditButtons = <>
                    FieldName = 'productionlocation'
                    Footers = <>
                    Title.Caption = #37327#29986#22320'ProductionLocation'
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypccM'
                    Footers = <>
                    Title.Caption = 'MidsoleSize'
                  end>
              end
              object ToolPanel: TPanel
                Left = 0
                Top = 0
                Width = 1277
                Height = 97
                Align = alTop
                Color = clMoneyGreen
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                object Label38: TLabel
                  Left = 2
                  Top = 20
                  Width = 73
                  Height = 16
                  Caption = 'Sample NO:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label39: TLabel
                  Left = 21
                  Top = 71
                  Width = 52
                  Height = 16
                  Caption = 'Ins Date:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label40: TLabel
                  Left = 184
                  Top = 72
                  Width = 20
                  Height = 16
                  Caption = 'To:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label41: TLabel
                  Left = 238
                  Top = 20
                  Width = 30
                  Height = 16
                  Caption = 'SKU:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label42: TLabel
                  Left = 19
                  Top = 44
                  Width = 54
                  Height = 16
                  Caption = 'Style No:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label43: TLabel
                  Left = 217
                  Top = 44
                  Width = 56
                  Height = 16
                  Caption = 'Color No:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label44: TLabel
                  Left = 448
                  Top = 44
                  Width = 50
                  Height = 16
                  Caption = 'Season:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label45: TLabel
                  Left = 459
                  Top = 20
                  Width = 39
                  Height = 16
                  Caption = 'Stage:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label46: TLabel
                  Left = 440
                  Top = 69
                  Width = 59
                  Height = 16
                  AutoSize = False
                  Caption = 'Art Name:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label47: TLabel
                  Left = 671
                  Top = 73
                  Width = 26
                  Height = 16
                  Caption = 'SR#'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label48: TLabel
                  Left = 652
                  Top = 22
                  Width = 60
                  Height = 16
                  Caption = 'DevType:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label55: TLabel
                  Left = 864
                  Top = 21
                  Width = 39
                  Height = 16
                  Caption = 'Brand:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label56: TLabel
                  Left = 652
                  Top = 46
                  Width = 59
                  Height = 16
                  Caption = 'SubType:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label72: TLabel
                  Left = 1099
                  Top = 17
                  Width = 21
                  Height = 16
                  Caption = 'FD:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object YPDHEdit: TEdit
                  Left = 73
                  Top = 16
                  Width = 121
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object Button5: TButton
                  Left = 1029
                  Top = 64
                  Width = 81
                  Height = 29
                  Caption = 'QUERY'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = Button5Click
                end
                object DTP1: TDateTimePicker
                  Left = 74
                  Top = 68
                  Width = 97
                  Height = 21
                  Date = 39255.000000000000000000
                  Format = 'yyyy/MM/dd'
                  Time = 39255.000000000000000000
                  TabOrder = 1
                end
                object DTP2: TDateTimePicker
                  Left = 216
                  Top = 68
                  Width = 97
                  Height = 21
                  Date = 39255.000000000000000000
                  Format = 'yyyy/MM/dd'
                  Time = 39255.000000000000000000
                  TabOrder = 2
                end
                object Check: TCheckBox
                  Left = 960
                  Top = 74
                  Width = 54
                  Height = 17
                  Caption = 'Mine'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object ArticleEdit: TEdit
                  Left = 270
                  Top = 16
                  Width = 155
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object XieXingEdit: TEdit
                  Left = 73
                  Top = 40
                  Width = 121
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object SheHaoEdit: TEdit
                  Left = 270
                  Top = 40
                  Width = 155
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                end
                object JiJieEdit: TEdit
                  Left = 500
                  Top = 40
                  Width = 121
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object XieMingEdit: TEdit
                  Left = 500
                  Top = 66
                  Width = 121
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                end
                object DevCodeEdit: TEdit
                  Left = 699
                  Top = 67
                  Width = 157
                  Height = 25
                  AutoSelect = False
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'VNI-Times'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                end
                object DateCK: TCheckBox
                  Left = 2
                  Top = 72
                  Width = 17
                  Height = 17
                  Checked = True
                  State = cbChecked
                  TabOrder = 11
                end
                object KFJDEdit: TComboBox
                  Left = 501
                  Top = 13
                  Width = 120
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 12
                  Items.Strings = (
                    ''
                    'PRO'
                    'SM2'
                    'SM3'
                    'SM4'
                    'PDT'
                    'CFM'
                    'ADD'
                    'AD1'
                    'PUL'
                    'AD2'
                    'AD3'
                    'AD4'
                    'AD5'
                    'AD6')
                end
                object DevTypeEdit: TComboBox
                  Left = 700
                  Top = 16
                  Width = 157
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 13
                  OnChange = DevTypeEditChange
                  Items.Strings = (
                    ''
                    'Inline'
                    'Great@Good'
                    'QuickResponse'
                    'Incubate'
                    'SMU')
                end
                object DroppedCK: TComboBox
                  Left = 325
                  Top = 66
                  Width = 100
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 14
                  Items.Strings = (
                    ''
                    'Dropped'
                    'Not Dropped')
                end
                object brand: TComboBox
                  Left = 901
                  Top = 16
                  Width = 154
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 15
                  Items.Strings = (
                    ''
                    'PRO'
                    'SM2'
                    'SM3'
                    'PDT'
                    'CFM'
                    'ADD'
                    'ADD2')
                end
                object allnook: TCheckBox
                  Left = 865
                  Top = 72
                  Width = 72
                  Height = 17
                  Caption = 'Uncheck  '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 16
                end
                object subtypechose: TComboBox
                  Left = 700
                  Top = 42
                  Width = 157
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 17
                  Items.Strings = (
                    ''
                    'Inline'
                    'QuickStrike'
                    'Offline'
                    'Smu'
                    'Segment ')
                end
                object FD: TEdit
                  Left = 1125
                  Top = 13
                  Width = 98
                  Height = 21
                  TabOrder = 18
                end
              end
            end
            object TS2: TTabSheet
              Caption = 'YPDet'
              ImageIndex = 3
              object YPZLSGrid: TDBGridEh
                Left = 0
                Top = 89
                Width = 1277
                Height = 357
                Align = alClient
                DataSource = YPZLS_DS
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                FrozenCols = 6
                SumList.Active = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                Columns = <
                  item
                    Color = clScrollBar
                    EditButtons = <>
                    FieldName = 'ROWID'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32232#34399'|No.'
                    Width = 26
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xh'
                    Footers = <
                      item
                        FieldName = 'xh'
                        ValueType = fvtCount
                      end>
                    Title.Caption = #38918#24207'|Sort'
                    Width = 29
                  end
                  item
                    EditButtons = <>
                    FieldName = 'XH1'
                    Footers = <>
                    Title.Caption = #25490'|De'
                    Width = 19
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BWBH'
                    Footers = <>
                    Title.Caption = #37096#20301'|Part'
                    Width = 31
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BWMCNM'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #37096#20301#21517#31281'|Part Name'
                    Width = 131
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CLBH'
                    Footers = <>
                    Title.Caption = #26448#26009#32232#34399'|Mat No'
                    Width = 74
                  end
                  item
                    EditButtons = <>
                    FieldName = 'cqdh'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #24288#21312'|Loc'
                    Width = 33
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ywpm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26448#26009#21517#31281'|Mat Name'
                    Width = 350
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dwbh'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #21934#20301'|Unit'
                    Width = 34
                  end
                  item
                    EditButtons = <>
                    FieldName = 'clzmlb'
                    Footers = <>
                    Title.Caption = #21152#24037'|Extra'
                    Width = 40
                  end
                  item
                    EditButtons = <>
                    FieldName = 'loss'
                    Footers = <>
                    Title.Caption = #32791#25613'|Loss%'
                    Width = 85
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CLSL'
                    Footers = <>
                    Title.Caption = #29992#37327'|Usage'
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CSBH'
                    Footers = <>
                    Title.Caption = #24288#21830'No.|Sup No.'
                    Width = 82
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zsywjc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #24288#21830'|Supplier'
                    Width = 48
                  end
                  item
                    EditButtons = <>
                    FieldName = 'Currency'
                    Footers = <>
                    Title.Caption = #24163#21029'|Cur'
                    Width = 48
                  end
                  item
                    DisplayFormat = '0.000'
                    EditButtons = <>
                    FieldName = 'CLDJ'
                    Footers = <>
                    Title.Caption = #21934#20729'|U.P.'
                    Visible = False
                    Width = 38
                  end
                  item
                    DisplayFormat = '0.00'
                    EditButtons = <>
                    FieldName = 'Rate'
                    Footers = <>
                    Title.Caption = #21295#29575'|Rate'
                    Visible = False
                    Width = 31
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SamplePurchaser'
                    Footers = <>
                    Title.Caption = #25505#36092#20154#21729'|Pur'
                    Width = 44
                  end
                  item
                    EditButtons = <>
                    FieldName = 'MatUser'
                    Footers = <>
                    Title.Caption = #26448#26009#24314#31435'|MatUser'
                    Width = 68
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UserID'
                    Footers = <>
                    Title.Caption = #20351#29992#32773'|UserID'
                    Width = 56
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UserDate'
                    Footers = <>
                    Title.Caption = #30064#21205#26085#26399'|Date'
                    Width = 47
                  end
                  item
                    EditButtons = <>
                    FieldName = 'Remark'
                    Footers = <>
                    Title.Caption = #25551#36848'|Desc'
                    Width = 369
                  end>
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 1277
                Height = 89
                Align = alTop
                TabOrder = 1
                object Label49: TLabel
                  Left = 32
                  Top = 12
                  Width = 71
                  Height = 16
                  AutoSize = False
                  Caption = 'Part Name:'
                end
                object Label50: TLabel
                  Left = 8
                  Top = 36
                  Width = 97
                  Height = 16
                  AutoSize = False
                  Caption = 'Material Name:'
                end
                object Label51: TLabel
                  Left = 28
                  Top = 62
                  Width = 77
                  Height = 16
                  AutoSize = False
                  Caption = 'Description:'
                end
                object DBEdit6: TDBEdit
                  Left = 99
                  Top = 8
                  Width = 174
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'zwsm'
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 99
                  Top = 33
                  Width = 649
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'CLMC'
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit9: TDBEdit
                  Left = 99
                  Top = 59
                  Width = 649
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'ywpm'
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit8: TDBEdit
                  Left = 272
                  Top = 8
                  Width = 198
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'ywsm'
                  ReadOnly = True
                  TabOrder = 3
                end
                object CKShowExtra: TCheckBox
                  Left = 472
                  Top = 10
                  Width = 65
                  Height = 17
                  Caption = 'Extra'
                  TabOrder = 4
                  OnClick = CKShowChildMatClick
                end
                object CKShowChildMat: TCheckBox
                  Left = 536
                  Top = 10
                  Width = 145
                  Height = 17
                  Caption = 'Show child material'
                  TabOrder = 5
                  OnClick = CKShowChildMatClick
                end
              end
            end
            object TS3: TTabSheet
              Caption = 'Memo'
              ImageIndex = 2
              object YPZLS2Grid: TDBGridEh
                Left = 0
                Top = 0
                Width = 1277
                Height = 446
                Align = alClient
                DataSource = YPZLS2_DS
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                SumList.Active = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                UseMultiTitle = True
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'LineNum'
                    Footers = <
                      item
                        FieldName = 'xh'
                        ValueType = fvtCount
                      end>
                    Title.Caption = '#|'#24207#34399
                    Width = 36
                  end
                  item
                    EditButtons = <>
                    FieldName = 'Remark'
                    Footers = <>
                    Title.Caption = #20633#24536'|Mark'
                    Width = 838
                  end>
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Check'
              ImageIndex = 3
              object Panel16: TPanel
                Left = 0
                Top = 0
                Width = 1277
                Height = 446
                Align = alClient
                TabOrder = 0
                object DBGridEh7: TDBGridEh
                  Left = 321
                  Top = 1
                  Width = 955
                  Height = 444
                  Align = alClient
                  DataSource = FD_Check_time_DS
                  Flat = False
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -15
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -15
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'ypdh'
                      Footers = <>
                      Title.Caption = 'SampleOrder'
                      Width = 144
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ID'
                      Footers = <>
                      Title.Caption = 'BOM|ID'
                      Width = 113
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Check_Time'
                      Footers = <>
                      Title.Caption = 'BOM|CheckTime'
                      Width = 208
                    end
                    item
                      EditButtons = <>
                      FieldName = 'remark'
                      Footers = <>
                      Title.Caption = 'BOM|Memo'
                      Width = 315
                    end
                    item
                      EditButtons = <>
                      FieldName = 'recheckID'
                      Footers = <>
                      Title.Caption = 'Develop|ID'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'recheckDate'
                      Footers = <>
                      Title.Caption = 'Develop|CheckTime'
                      Width = 298
                    end
                    item
                      EditButtons = <>
                      FieldName = 'recieveid'
                      Footers = <>
                      Title.Caption = 'Purchase|ID'
                      Width = 113
                    end
                    item
                      EditButtons = <>
                      FieldName = 'recievedate'
                      Footers = <>
                      Title.Caption = 'Purchase|RecieveTime'
                      Width = 173
                    end>
                end
                object Panel18: TPanel
                  Left = 1
                  Top = 1
                  Width = 320
                  Height = 444
                  Align = alLeft
                  Caption = 'Panel18'
                  TabOrder = 1
                  object DBGridEh8: TDBGridEh
                    Left = 1
                    Top = 65
                    Width = 318
                    Height = 378
                    Align = alClient
                    DataSource = RE_CHECK_DS
                    Flat = False
                    FooterColor = clWindow
                    FooterFont.Charset = DEFAULT_CHARSET
                    FooterFont.Color = clWindowText
                    FooterFont.Height = -15
                    FooterFont.Name = 'MS Sans Serif'
                    FooterFont.Style = []
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -15
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        EditButtons = <>
                        FieldName = 'ypdh'
                        Footers = <>
                        Title.Caption = 'SampleOrder'
                      end
                      item
                        EditButtons = <>
                        FieldName = 'RE_check'
                        Footers = <>
                        Title.Caption = 'Check'
                        Width = 66
                      end>
                  end
                  object Panel19: TPanel
                    Left = 1
                    Top = 1
                    Width = 318
                    Height = 64
                    Align = alTop
                    Caption = 'Panel19'
                    TabOrder = 1
                    object BitBtn3: TBitBtn
                      Left = 15
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
                    object BF4: TBitBtn
                      Left = 63
                      Top = 8
                      Width = 49
                      Height = 49
                      Hint = 'Modify Current'
                      Caption = 'Modify'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      OnClick = BF4Click
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
                    object BF5: TBitBtn
                      Left = 111
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
                      OnClick = BF5Click
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
                    object BF6: TBitBtn
                      Left = 159
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
                      TabOrder = 3
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
                    object FD_Check_time_CK: TCheckBox
                      Left = 213
                      Top = 17
                      Width = 108
                      Height = 32
                      Caption = 'Show FD_Check_time'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                    end
                  end
                end
              end
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        ImageIndex = 3
        TabVisible = False
      end
      object TabSheet5: TTabSheet
        Caption = 'Material compositions'
        ImageIndex = 4
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 1132
          Height = 538
          Align = alClient
          Caption = 'Panel8'
          TabOrder = 0
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 1130
            Height = 48
            Align = alTop
            TabOrder = 0
            object Label61: TLabel
              Left = 32
              Top = 18
              Width = 46
              Height = 16
              Caption = 'Buy NO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label62: TLabel
              Left = 216
              Top = 16
              Width = 26
              Height = 16
              Caption = 'SR#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Button6: TButton
              Left = 416
              Top = 13
              Width = 75
              Height = 25
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button6Click
            end
            object Edit2: TEdit
              Left = 82
              Top = 15
              Width = 121
              Height = 24
              TabOrder = 1
            end
            object Edit3: TEdit
              Left = 248
              Top = 14
              Width = 145
              Height = 24
              TabOrder = 2
            end
            object Button7: TButton
              Left = 503
              Top = 13
              Width = 75
              Height = 25
              Caption = 'EXCEL'
              TabOrder = 3
              OnClick = Button7Click
            end
            object CheckBox2: TCheckBox
              Left = 592
              Top = 16
              Width = 153
              Height = 17
              Caption = 'Shoe name not null'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
          end
          object Panel10: TPanel
            Left = 1
            Top = 49
            Width = 1130
            Height = 488
            Align = alClient
            Caption = 'Panel10'
            TabOrder = 1
            object DBGridEh3: TDBGridEh
              Left = 1
              Top = 1
              Width = 1128
              Height = 486
              Align = alClient
              DataSource = DataSource4
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'buyno'
                  Footers = <>
                  Title.Caption = 'BuyNo'
                end
                item
                  EditButtons = <>
                  FieldName = 'article'
                  Footers = <>
                  Width = 101
                end
                item
                  EditButtons = <>
                  FieldName = 'devcode'
                  Footers = <>
                  Width = 101
                end
                item
                  EditButtons = <>
                  FieldName = 'UPPERmat'
                  Footers = <>
                  Width = 256
                end
                item
                  EditButtons = <>
                  FieldName = 'UPPERmatDetail'
                  Footers = <>
                  Width = 212
                end
                item
                  EditButtons = <>
                  FieldName = 'LININgmat'
                  Footers = <>
                  Width = 233
                end
                item
                  EditButtons = <>
                  FieldName = 'LININgmatDetail'
                  Footers = <>
                  Width = 148
                end
                item
                  EditButtons = <>
                  FieldName = 'Insolemat'
                  Footers = <>
                  Width = 490
                end
                item
                  EditButtons = <>
                  FieldName = 'InsolematDetail'
                  Footers = <>
                  Width = 979
                end
                item
                  EditButtons = <>
                  FieldName = 'Outsolemat'
                  Footers = <>
                  Width = 490
                end
                item
                  EditButtons = <>
                  FieldName = 'OutsolematDetail'
                  Footers = <>
                  Width = 979
                end
                item
                  EditButtons = <>
                  FieldName = 'cfmdate'
                  Footers = <>
                  Width = 42
                end>
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'New Project List'
        ImageIndex = 5
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 544
          Align = alClient
          Caption = 'Panel11'
          TabOrder = 0
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 1285
            Height = 64
            Align = alTop
            TabOrder = 0
            object Label63: TLabel
              Left = 12
              Top = 7
              Width = 47
              Height = 16
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 131
              Top = 10
              Width = 26
              Height = 16
              Caption = 'SR#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label85: TLabel
              Left = 19
              Top = 35
              Width = 36
              Height = 16
              Caption = 'Stage'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label86: TLabel
              Left = 143
              Top = 36
              Width = 18
              Height = 16
              Caption = 'FD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit4: TEdit
              Left = 62
              Top = 5
              Width = 62
              Height = 24
              CharCase = ecUpperCase
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit6: TEdit
              Left = 164
              Top = 7
              Width = 173
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object ComboBox11: TComboBox
              Left = 61
              Top = 32
              Width = 63
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 2
              Items.Strings = (
                ''
                'AD1'
                'AD2'
                'AD3'
                'AD4'
                'AD5'
                'AD6'
                'AD7'
                'AD8'
                'AD9'
                'ADD'
                'CFM'
                'CR1'
                'CR2'
                'CR3'
                'CR4'
                'FIT'
                'PDT'
                'PHT'
                'PMO'
                'POS'
                'SEE'
                'SM1'
                'SM2'
                'SM3'
                'SM4'
                'SMS'
                'SMU'
                'SU1'
                'SU2'
                'SU3'
                'TST'
                'WEA')
            end
            object ComboBox12: TComboBox
              Left = 163
              Top = 33
              Width = 72
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 3
            end
            object Button8: TButton
              Left = 376
              Top = 31
              Width = 75
              Height = 25
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = Button8Click
            end
            object Button9: TButton
              Left = 375
              Top = 5
              Width = 75
              Height = 25
              Caption = 'EXCEL'
              TabOrder = 5
              OnClick = Button9Click
            end
            object CheckBox1: TCheckBox
              Left = 461
              Top = 34
              Width = 161
              Height = 17
              Caption = 'Shoe name not null'
              Checked = True
              State = cbChecked
              TabOrder = 6
            end
          end
          object Panel13: TPanel
            Left = 1
            Top = 65
            Width = 1285
            Height = 478
            Align = alClient
            Caption = 'Panel13'
            TabOrder = 1
            object DBGridEh4: TDBGridEh
              Left = 1
              Top = 1
              Width = 1128
              Height = 470
              Align = alClient
              DataSource = DataSource5
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Type'
                  Footers = <>
                  Width = 50
                end
                item
                  EditButtons = <>
                  FieldName = 'ypdh'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Dev_Factory'
                  Footers = <>
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'picture'
                  Footers = <>
                  Width = 76
                end
                item
                  EditButtons = <>
                  FieldName = 'Category'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Style_Name'
                  Footers = <>
                  Width = 98
                end
                item
                  EditButtons = <>
                  FieldName = 'Cut'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Colorway'
                  Footers = <>
                  Width = 113
                end
                item
                  EditButtons = <>
                  FieldName = 'SR'
                  Footers = <>
                  Width = 67
                end
                item
                  EditButtons = <>
                  FieldName = 'Rubber_SKU'
                  Footers = <>
                  Width = 102
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footers = <>
                  Width = 32
                end
                item
                  EditButtons = <>
                  FieldName = 'TECH_LEVEL'
                  Footers = <>
                  Width = 54
                end
                item
                  EditButtons = <>
                  FieldName = 'Need_Commercialization_trial'
                  Footers = <>
                  Width = 54
                end
                item
                  EditButtons = <>
                  FieldName = 'Gender'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Sample_Size'
                  Footers = <>
                  Width = 72
                end
                item
                  EditButtons = <>
                  FieldName = 'Last'
                  Footers = <>
                  Width = 74
                end
                item
                  EditButtons = <>
                  FieldName = 'Last_cost_per_pair_Only_for_Ne'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Converse_Authorize_Molds'
                  Footers = <>
                  Width = 136
                end
                item
                  EditButtons = <>
                  FieldName = 'Size_Conversion_Chart'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Main_Material_Description'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Material_Mini'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Long_Leadtime_Material'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Long_Leadtime_Material_Estimat'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Sample_Size_Fitting'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'PC_status'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Cutting_Die_Code'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'New_Cutting_Die'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Test'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'QP'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'remarks'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'fd'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'NA'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'cTS'
                  Footers = <>
                end>
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'MLT_Prod'
        ImageIndex = 6
        TabVisible = False
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label65: TLabel
            Left = 31
            Top = 27
            Width = 47
            Height = 16
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 190
            Top = 27
            Width = 26
            Height = 16
            Caption = 'SR#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit8: TEdit
            Left = 224
            Top = 24
            Width = 137
            Height = 24
            TabOrder = 0
            OnChange = Edit8Change
          end
          object Button10: TButton
            Left = 368
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button10Click
          end
          object Button11: TButton
            Left = 456
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button11Click
          end
          object edit7: TComboBox
            Left = 83
            Top = 24
            Width = 97
            Height = 24
            ItemHeight = 16
            TabOrder = 3
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 65
          Width = 1287
          Height = 479
          Align = alClient
          Caption = 'Panel15'
          TabOrder = 1
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 1
            Width = 1130
            Height = 471
            Align = alClient
            DataSource = DataSource6
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Initial_Product_Line'
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Product_Line'
                Footers = <>
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'Initial_Development_Season'
                Footers = <>
                Width = 152
              end
              item
                EditButtons = <>
                FieldName = 'New_Carryover'
                Footers = <>
                Visible = False
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'Product_Bucket'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'ProductNumber'
                Footers = <>
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'Product_Name'
                Footers = <>
                Width = 156
              end
              item
                EditButtons = <>
                FieldName = 'Product_Description'
                Footers = <>
                Width = 127
              end
              item
                EditButtons = <>
                FieldName = 'cut'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ColorwayID'
                Footer.Color = clYellow
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'Base_Material_ID'
                Footers = <>
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'Material_Number'
                Footers = <>
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'Segment'
                Footers = <>
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'Category'
                Footers = <>
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'Design_Pack'
                Footers = <>
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'TechLevel'
                Footers = <>
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'Initial_In_Store_Date'
                Footers = <>
                Visible = False
                Width = 123
              end
              item
                EditButtons = <>
                FieldName = 'Development_Center'
                Footers = <>
                Width = 115
              end
              item
                EditButtons = <>
                FieldName = 'Fctory'
                Footers = <>
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'Colorway_Status'
                Footers = <>
                Width = 86
              end
              item
                EditButtons = <>
                FieldName = 'cldh'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'cldhflex'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Material_Description'
                Footers = <>
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'PO_collaboration'
                Footers = <>
                Width = 88
              end
              item
                EditButtons = <>
                FieldName = 'Material_Prod_LT'
                Footers = <>
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'Material_Trans_LT'
                Footers = <>
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = 'Shoes_production_LT'
                Footers = <>
                Width = 114
              end
              item
                EditButtons = <>
                FieldName = 'Good_Insurance'
                Footers = <>
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'MLT'
                Footers = <>
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'ExtraMethod'
                Footers = <>
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'Extraday'
                Footers = <>
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'Remarks'
                Footers = <>
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'Remarks2'
                Footers = <>
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'Remarks3'
                Footers = <>
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'RN'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'MLT_update'
              end
              item
                EditButtons = <>
                FieldName = 'country'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'cldhflexdes'
                Footers = <>
              end>
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'MLT_Dev'
        ImageIndex = 7
        TabVisible = False
        object TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 59
          Align = alTop
          TabOrder = 0
          object Label67: TLabel
            Left = 32
            Top = 24
            Width = 47
            Height = 16
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 581
            Top = 24
            Width = 26
            Height = 16
            Caption = 'SR#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 172
            Top = 24
            Width = 32
            Height = 16
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 457
            Top = 24
            Width = 36
            Height = 16
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label71: TLabel
            Left = 303
            Top = 24
            Width = 56
            Height = 16
            Caption = 'SubType'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button12: TButton
            Left = 722
            Top = 19
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button12Click
          end
          object Edit10: TEdit
            Left = 616
            Top = 18
            Width = 98
            Height = 24
            TabOrder = 1
          end
          object ComboBox7: TComboBox
            Left = 498
            Top = 19
            Width = 72
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            TabOrder = 2
          end
          object MLTDEVTYPE: TComboBox
            Left = 208
            Top = 19
            Width = 85
            Height = 24
            ItemHeight = 16
            TabOrder = 3
            OnChange = MLTDEVTYPEChange
            Items.Strings = (
              ''
              'Inline'
              'Great@Good'
              'Quick Response'
              'Incubate'
              'SMU'
              '')
          end
          object MLTsubtype: TComboBox
            Left = 363
            Top = 20
            Width = 72
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            TabOrder = 4
            Items.Strings = (
              ''
              'Inline'
              'QuickStrike'
              'Transfer'
              'Offline'
              'SMU'
              'Segment')
          end
          object Button13: TButton
            Left = 808
            Top = 20
            Width = 65
            Height = 26
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = Button13Click
          end
          object edit9: TComboBox
            Left = 85
            Top = 21
            Width = 65
            Height = 24
            ItemHeight = 16
            TabOrder = 6
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 59
          Width = 1287
          Height = 485
          Align = alClient
          Caption = 'Panel17'
          TabOrder = 1
          object DBGridEh6: TDBGridEh
            Left = 1
            Top = 1
            Width = 1130
            Height = 477
            Align = alClient
            DataSource = DataSource7
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Initial_Product_Line'
                Footers = <>
                Width = 102
              end
              item
                EditButtons = <>
                FieldName = 'Product_Line'
                Footers = <>
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'Initial_Development_Season'
                Footers = <>
                Width = 151
              end
              item
                EditButtons = <>
                FieldName = 'New_Carryover'
                Footers = <>
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'Product_Bucket'
                Footers = <>
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'ProductNumber'
                Footers = <>
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'Product_Name'
                Footers = <>
                Width = 125
              end
              item
                EditButtons = <>
                FieldName = 'Product_Description'
                Footers = <>
                Width = 131
              end
              item
                EditButtons = <>
                FieldName = 'cut'
                Footers = <>
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'ColorwayID'
                Footer.Color = clYellow
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Base_Material_ID'
                Footers = <>
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'Material_Number'
                Footers = <>
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'Segment'
                Footers = <>
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'Category'
                Footers = <>
                Width = 149
              end
              item
                EditButtons = <>
                FieldName = 'Design_Pack'
                Footers = <>
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'TechLevel'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'Initial_In_Store_Date'
                Footers = <>
                Width = 114
              end
              item
                EditButtons = <>
                FieldName = 'Development_Center'
                Footers = <>
                Width = 18
              end
              item
                EditButtons = <>
                FieldName = 'Fctory'
                Footers = <>
                Width = 18
              end
              item
                EditButtons = <>
                FieldName = 'Colorway_Status'
                Footers = <>
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'cldh'
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Material_Description'
                Footers = <>
                Width = 978
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'PO_collaboration'
                Footers = <>
                Width = 8
              end
              item
                EditButtons = <>
                FieldName = 'Material_Prod_LT'
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Material_Trans_LT'
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Shoes_production_LT'
                Footers = <>
                Width = 13
              end
              item
                EditButtons = <>
                FieldName = 'Good_Insurance'
                Footers = <>
                Width = 13
              end
              item
                EditButtons = <>
                FieldName = 'ExtraMethod'
                Footers = <>
                Width = 978
              end
              item
                EditButtons = <>
                FieldName = 'MLT'
                Footers = <>
                Width = 52
              end>
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'ShippingData'
        ImageIndex = 8
        object Panel20: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label73: TLabel
            Left = 32
            Top = 24
            Width = 47
            Height = 16
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 161
            Top = 24
            Width = 36
            Height = 16
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edit11: TComboBox
            Left = 85
            Top = 21
            Width = 65
            Height = 24
            ItemHeight = 16
            TabOrder = 0
            OnChange = edit11Change
          end
          object ComboBox8: TComboBox
            Left = 201
            Top = 21
            Width = 72
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            TabOrder = 1
          end
          object Button14: TButton
            Left = 287
            Top = 19
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button14Click
          end
          object Button15: TButton
            Left = 376
            Top = 19
            Width = 75
            Height = 25
            Caption = 'EXCEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button15Click
          end
        end
        object Panel21: TPanel
          Left = 0
          Top = 65
          Width = 1287
          Height = 479
          Align = alClient
          TabOrder = 1
          object DBGridEh9: TDBGridEh
            Left = 1
            Top = 1
            Width = 1130
            Height = 471
            Align = alClient
            DataSource = DataSource8
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
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Season'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'STT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'SR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 159
              end
              item
                EditButtons = <>
                FieldName = 'SKU'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
              end
              item
                EditButtons = <>
                FieldName = 'MainMaterial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 227
              end
              item
                EditButtons = <>
                FieldName = 'Cut'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
              end
              item
                EditButtons = <>
                FieldName = 'SampleSize'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'GrandTotalPairs'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'DEV'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'SampleNO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
              end>
          end
        end
      end
      object TabSheet12: TTabSheet
        Caption = 'Blue_File'
        ImageIndex = 10
        object Panel25: TPanel
          Left = 0
          Top = 0
          Width = 1287
          Height = 56
          Align = alTop
          TabOrder = 0
          object Label81: TLabel
            Left = 318
            Top = 5
            Width = 56
            Height = 16
            Caption = 'SEASON'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label83: TLabel
            Left = 453
            Top = 6
            Width = 34
            Height = 16
            Caption = 'SKU#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label230: TLabel
            Left = 320
            Top = 30
            Width = 18
            Height = 16
            Caption = 'FD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label231: TLabel
            Left = 641
            Top = 32
            Width = 38
            Height = 16
            Caption = 'TEAM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label232: TLabel
            Left = 648
            Top = 8
            Width = 32
            Height = 16
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label78: TLabel
            Left = 461
            Top = 30
            Width = 26
            Height = 16
            Caption = 'SR#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label80: TLabel
            Left = 790
            Top = 7
            Width = 29
            Height = 16
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object r4bbt1: TBitBtn
            Left = 8
            Top = 0
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
            OnClick = r4bbt1Click
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
          object r4bbt2: TBitBtn
            Left = 56
            Top = 0
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
            TabOrder = 1
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
          object r4bbt3: TBitBtn
            Left = 104
            Top = 0
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
          object r4bbt4: TBitBtn
            Left = 152
            Top = 0
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
            TabOrder = 3
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
          object r4bbt5: TBitBtn
            Left = 200
            Top = 0
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
            TabOrder = 4
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
          object R4SEASON: TComboBox
            Left = 380
            Top = 0
            Width = 58
            Height = 24
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 5
            Items.Strings = (
              ''
              '14'
              '15'
              '16'
              '17'
              '18'
              '19')
          end
          object R4ARTICLE: TEdit
            Left = 496
            Top = 2
            Width = 116
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object R4FD: TComboBox
            Left = 366
            Top = 26
            Width = 72
            Height = 24
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 7
          end
          object r4excel: TButton
            Left = 248
            Top = 0
            Width = 49
            Height = 49
            Caption = 'Excel'
            TabOrder = 8
            OnClick = r4excelClick
          end
          object TeamR4: TComboBox
            Left = 684
            Top = 27
            Width = 63
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 9
            Items.Strings = (
              ''
              'A'
              'B'
              'C'
              'SMU')
          end
          object r4type: TComboBox
            Left = 684
            Top = 4
            Width = 63
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 1
            ParentFont = False
            TabOrder = 10
            Text = 'Inline'
            Items.Strings = (
              ''
              'Inline'
              'Great@Good'
              'QuickResponse'
              'Incubate'
              'SMU')
          end
          object R4Devcode: TEdit
            Left = 496
            Top = 26
            Width = 116
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object data: TComboBox
            Left = 824
            Top = 3
            Width = 82
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 12
            Text = 'NoDropped'
            Items.Strings = (
              'NoDropped'
              'new'
              'no_ok'
              'ok'
              'Dropped'
              'Transfer'
              'NoTransfer')
          end
          object CheckBox4: TCheckBox
            Left = 790
            Top = 32
            Width = 65
            Height = 17
            Caption = 'Not Null'
            Checked = True
            State = cbChecked
            TabOrder = 13
          end
        end
        object Panel26: TPanel
          Left = 0
          Top = 56
          Width = 1287
          Height = 105
          Align = alTop
          TabOrder = 1
          object Label238: TLabel
            Left = 9
            Top = 10
            Width = 82
            Height = 16
            Caption = 'Project Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label239: TLabel
            Left = 65
            Top = 42
            Width = 26
            Height = 16
            Caption = 'SR#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label240: TLabel
            Left = 35
            Top = 70
            Width = 56
            Height = 16
            Caption = 'Colorway'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label266: TLabel
            Left = 241
            Top = 11
            Width = 86
            Height = 16
            Caption = 'NA Developer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label267: TLabel
            Left = 233
            Top = 42
            Width = 94
            Height = 16
            Caption = 'CTS Developer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label268: TLabel
            Left = 234
            Top = 72
            Width = 92
            Height = 16
            Caption = 'Fcty Developer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit60: TDBEdit
            Left = 95
            Top = 8
            Width = 121
            Height = 24
            Color = clScrollBar
            DataField = 'XieMing'
            DataSource = DataSource9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit75: TDBEdit
            Left = 96
            Top = 38
            Width = 121
            Height = 24
            Color = clScrollBar
            DataField = 'devcode'
            DataSource = DataSource9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit98: TDBEdit
            Left = 96
            Top = 67
            Width = 121
            Height = 24
            Color = clScrollBar
            DataField = 'YSSM'
            DataSource = DataSource9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit174: TDBEdit
            Left = 333
            Top = 9
            Width = 121
            Height = 24
            Color = clScrollBar
            DataField = 'NA'
            DataSource = DataSource9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit175: TDBEdit
            Left = 333
            Top = 39
            Width = 121
            Height = 24
            Color = clScrollBar
            DataField = 'CTS'
            DataSource = DataSource9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit176: TDBEdit
            Left = 334
            Top = 70
            Width = 121
            Height = 24
            Color = clScrollBar
            DataField = 'FD'
            DataSource = DataSource9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object GroupBox1: TGroupBox
            Left = 480
            Top = 8
            Width = 313
            Height = 90
            Caption = 'Blue File Excel'
            Color = clSilver
            ParentColor = False
            TabOrder = 6
            object Label79: TLabel
              Left = 66
              Top = 15
              Width = 26
              Height = 16
              Caption = 'SR#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label82: TLabel
              Left = 45
              Top = 66
              Width = 48
              Height = 16
              Caption = 'Factory:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label84: TLabel
              Left = 19
              Top = 40
              Width = 75
              Height = 16
              Caption = 'CTS Project:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object R4SR: TComboBox
              Left = 97
              Top = 12
              Width = 107
              Height = 24
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 0
              Items.Strings = (
                ''
                '')
            end
            object ComboBox9: TComboBox
              Left = 97
              Top = 37
              Width = 107
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 1
              Items.Strings = (
                ''
                'Hieu, Huynh'
                'Minh Tai, Dang'
                '')
            end
            object ComboBox10: TComboBox
              Left = 97
              Top = 62
              Width = 107
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 2
              Items.Strings = (
                ''
                'LYN'
                'BY')
            end
            object Button16: TButton
              Left = 216
              Top = 14
              Width = 75
              Height = 25
              Caption = 'Blue File'
              TabOrder = 3
              OnClick = Button16Click
            end
          end
          object GroupBox2: TGroupBox
            Left = 800
            Top = 2
            Width = 57
            Height = 97
            TabOrder = 7
            object CheckBox5: TCheckBox
              Left = 8
              Top = 8
              Width = 37
              Height = 17
              Caption = 'R1'
              Checked = True
              State = cbChecked
              TabOrder = 0
            end
            object CheckBox6: TCheckBox
              Left = 8
              Top = 25
              Width = 39
              Height = 17
              Caption = 'R2'
              Checked = True
              State = cbChecked
              TabOrder = 1
            end
            object CheckBox7: TCheckBox
              Left = 8
              Top = 42
              Width = 39
              Height = 17
              Caption = 'R3'
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
            object CheckBox8: TCheckBox
              Left = 8
              Top = 59
              Width = 38
              Height = 17
              Caption = 'R4'
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
            object CheckBox9: TCheckBox
              Left = 8
              Top = 77
              Width = 46
              Height = 17
              Caption = 'CFM'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
          end
        end
        object DBGridEh10: TDBGridEh
          Left = 0
          Top = 161
          Width = 1287
          Height = 383
          Align = alClient
          DataSource = DataSource9
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'YSSM'
              Footers = <>
              Width = 93
            end
            item
              EditButtons = <>
              FieldName = 'kflx'
              Footers = <>
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'XTMH'
              Footers = <>
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'DDMH'
              Footers = <>
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Width = 126
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'CTS'
              Footers = <>
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'NA'
              Footers = <>
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'GENDER'
              Footers = <>
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'subtype'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'SS'
              Footers = <>
              Width = 65
            end>
        end
      end
      object TabSheet11: TTabSheet
        Caption = 'MEMO'
        ImageIndex = 9
        object Memo2: TMemo
          Left = 0
          Top = 0
          Width = 1287
          Height = 544
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Lines.Strings = (
            'ColorSwatch'#38913#38754':'
            'ColorSwatch'#25353#37397':'#33394#21345#26412#34920#38957#36028#32025
            'Sticker'#25353#37397':A4'#33394#21345#36028#32025)
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object YProom: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devcode,ypzl.article,left(kfxxzl.devcode,13) as cu' +
        'tting,kfxxzl.xieming,kfxxzl.yssm,'
      'kfxxzl.jijie,kfxxzl.fd,ypzl.YPCC,kfxxzl.XTMH,ypzl.kfjd,'
      'kfxxzl.DDMH from kfxxzl'
      
        'left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kf' +
        'xxzl.shehao'
      'where  kfxxzl.devcode like '#39'%G%'#39)
    Left = 112
    Top = 400
    object YProomdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object YProomarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object YProomxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object YProomjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object YProomfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object YProomcutting: TStringField
      FieldName = 'cutting'
      FixedChar = True
    end
    object YProomyssm: TStringField
      FieldName = 'yssm'
      FixedChar = True
      Size = 40
    end
    object YProomYPCC: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object YProomXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object YProomDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object YProomkfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = YProom
    Left = 112
    Top = 336
  end
  object gettime: TQuery
    DatabaseName = 'dB'
    Left = 113
    Top = 369
  end
  object Detail: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select kfxxzl.devcode,ypzl.article,left(kfxxzl.devcode,13) as cu' +
        'tting,kfxxzl.xieming,kfxxzl.yssm,'
      'kfxxzl.jijie,kfxxzl.fd,ypzl.YPCC,kfxxzl.XTMH,ypzl.kfjd,'
      'kfxxzl.DDMH from kfxxzl'
      
        'left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kf' +
        'xxzl.shehao'
      
        'where  kfxxzl.devcode =:devcode  and kfxxzl.jijie=:jijie and ypz' +
        'l.kfjd=:kfjd')
    Left = 112
    Top = 434
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'devcode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jijie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kfjd'
        ParamType = ptUnknown
      end>
  end
  object outsole: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select ypzl.article,kfxxzl.jijie,ypzl.kfjd,left(clzl.ywpm,15) as' +
        ' ywpm from ypzls'
      'left join ypzl on ypzls.ypdh=ypzl.ypdh'
      'left join bwzl on bwzl.bwdh=ypzls.bwbh'
      'left join clzl on clzl.cldh=ypzls.clbh'
      
        'left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=' +
        'kfxxzl.shehao'
      
        'where bwzl.ywsm='#39'outsole'#39' and ypzl.article=:article and ypzl.kfj' +
        'd=:kfjd and kfxxzl.jijie=:jijie'
      ''
      '')
    Left = 111
    Top = 466
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'article'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kfjd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jijie'
        ParamType = ptUnknown
      end>
  end
  object MatList: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfxxzl.devcode,ypzl.KFJD,kfxxzl.jijie,kfxxzl.FD,ypzl.ypdh' +
        ','#39'TBDC'#39' as GSBH '
      'from ypzl '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH '
      'where  kfxxzl.devcode is not null and kfzl_GS.GSBH='#39'TBDC'#39' '
      
        'group by kfxxzl.devcode,kfxxzl.jijie,kfxxzl.FD,ypzl.KFJD,ypzl.yp' +
        'dh')
    Left = 261
    Top = 369
    object MatListKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object MatListjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object MatListFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object MatListypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object MatListdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object MatListGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource2: TDataSource
    DataSet = MatList
    Left = 261
    Top = 337
  end
  object MatDetail: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource2
    SQL.Strings = (
      'if object_id('#39'tempdb..#FDStatus_CG'#39') is not null'
      'begin drop table #FDStatus_CG end                 '
      
        'select max(CGZLInvoice_1.cidate)as cidate,cs.clbh as cldh,count(' +
        'cs.clbh) as recs,min(cgzl.cgdate)as cgdate,max(cgzls.memo) as cg' +
        'zl_memo,Max(ETDTemp.ETD) as H_ETD,min(cs.CFMdate) as yqdate,min(' +
        'CGZLInvoice_1.ETA) as ETA,max(CGZLInvoice_1.Invoice) as Invoice,' +
        'max(CGZLInvoice_1.BillNO) as BillNO'
      
        '       ,min(cgzls.cgno) as cgno,Sum(KCRKS.qty) as rkqty,min(KCRK' +
        'S.Userdate) as rkdate,sum(cs.Qty) as PurQty,MAX(cgzl.zsbh) AS zs' +
        'bh '
      '       into #FDStatus_CG '
      'from cgzlss cs'
      'left join cgzl on cgzl.cgno=cs.cgno'
      'left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh'
      'left join KCRKS on KCRKS.DOCNO=cs.cgno and KCRKS.clbh=cs.clbh'
      
        'left join (select CGNO,clbh,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1 from CGZLInvoiceS GROUP BY CGNO,clbh ) CGZLInvoiceS_1 on CG' +
        'ZLS.clbh=CGZLInvoiceS_1.clbh and CGZLS.CGNO=CGZLInvoiceS_1.CGNO'
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1'
      
        'left join ( Select CGNO,CLBH,Min(ETD) as ETD from ETDTemp where ' +
        'VER=1 Group by CGNO,CLBH )  ETDTemp on cs.CGNO = ETDTemp.CGNO  a' +
        'nd  cs.CLBH = ETDTemp.CLBH'
      'where cs.qty>0  and cs.zlbh=:ypdh'
      'group by cs.clbh'
      ''
      
        'select clbh,clywmc+'#39' - '#39'+zsywjc+'#39' - '#39'+'#39'ETD:'#39' as ywpm,zszl_dev.Co' +
        'untry,#FDStatus_CG.yqdate from ('
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,' +
        'ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzl' +
        's.Currency ,ypzls.Rate,clzl.CQDH '
      
        ',ypzls.Remark ,bwzl.ywsm+'#39'-'#39'+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl' +
        '.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.z' +
        'sjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc '
      'FROM ypzls ypzls '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH =:ypdh'
      'union all'
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+'#39'-Child'#39' as R' +
        'elation,clzhzl.CLDH1 as CLBH '
      ' ,ypzls.BWLB , '
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH '
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm AS ' +
        'CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc '
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc '
      'FROM ypzls ypzls '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      'WHERE YPDH =:ypdh  and CLZHZL.SYL>0'
      'union all '
      
        'Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+'#39'1'#39' ' +
        'as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      
        ' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,c' +
        'lzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH '
      
        ',clzhzl2.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm A' +
        'S CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc'
      ',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   '
      ' from ('
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+'#39'-Child'#39' as R' +
        'elation,clzhzl.CLDH1 as CLBH '
      ' ,ypzls.BWLB , '
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH '
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm AS ' +
        'CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc '
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      'WHERE YPDH =:ypdh  and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1  '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      ')  YPZLS'
      
        'left join (select * from zszl_dev where gsbh=:GSBH) zszl_dev on ' +
        'zszl_dev.zsdh=YPZLS.csbh'
      'left join #FDStatus_CG on #FDStatus_CG.cldh = YPZLS.clbh'
      'where left(clbh,1) not in ('#39'H'#39','#39'G'#39','#39'P'#39') and'
      'left (clbh,3) not in ('#39'L09'#39','#39'D11'#39','#39'A27'#39','#39'A13'#39','#39'A18'#39')'
      'and zsywjc<>'#39'JNG'#39
      
        'group by clbh,clywmc+'#39' - '#39'+zsywjc+'#39' - '#39'+'#39'ETD:'#39',zszl_dev.Country,' +
        '#FDStatus_CG.yqdate'
      'order by   clbh'
      ''
      '')
    Left = 261
    Top = 401
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
  end
  object part: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource3
    SQL.Strings = (
      ''
      ''
      ''
      'select bwzl.ywsm from ypzls'
      'left join bwzl on bwzl.bwdh = ypzls.bwbh'
      'where ypzls.ypdh=:ypdh and ypzls.clbh=:clbh'
      'union'
      ''
      'select bwzl.ywsm from ypzls'
      'left join bwzl on bwzl.bwdh = ypzls.bwbh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'where ypzls.ypdh=:ypdh and clzhzl.cldh1=:clbh'
      ''
      'union'
      'select clzhzl2.ywsm from ('
      'select ypzls.clbh,bwzl.ywsm,clzhzl.cldh1 from ypzls'
      'left join bwzl on bwzl.bwdh = ypzls.bwbh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'where ypzls.ypdh=:ypdh  )clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh1'
      'where clzhzl.cldh1=:clbh'
      'group by ywsm')
    Left = 308
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end>
  end
  object DataSource3: TDataSource
    DataSet = carddetail
    Left = 308
    Top = 335
  end
  object carddetail: TQuery
    DatabaseName = 'dB'
    DataSource = YPZL_DS
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      'select * from ('
      
        'select final.*,row_number() over (partition by final.clbh order ' +
        'by xh)rn from ('
      
        'select a.jijie,a.xh,a.ypdh,a.devcode,a.article,a.xieming,a.cldh ' +
        'as clbh,a.ywpm,'
      
        'case when a.zsywjc like '#39'%JNG%'#39' then '#39'LYN'#39'+'#39'('#39'+isnull(materialmo' +
        'q.location,'#39'VN'#39')+'#39')'#39' '
      
        'else  a.zsywjc+'#39'('#39'+isnull(materialmoq.location,'#39'NULL'#39')+'#39')'#39' end a' +
        's zsywjc'
      'from ('
      ''
      
        'select kfxxzl.jijie,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devco' +
        'de,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm,zszl.zsywjc' +
        ' from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh = ypzls.csbh'
      
        'where  ypzl.ypdh=:ypdh     and zsywjc<>'#39'CRMTO'#39'  and zsywjc<>'#39'JNG' +
        #39' and left(clbh,1)<>'#39'P'#39
      'union'
      
        'select kfxxzl.jijie,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devco' +
        'de,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm,zszl.zsywjc' +
        ' from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh = ypzls.csbh'
      
        'where  ypzl.ypdh=:ypdh     and zsywjc<>'#39'CRMTO'#39'  and zsywjc<>'#39'JNG' +
        #39' and (left(clbh,1)='#39'P'#39' and zszl.zsywjc='#39'COSMO'#39')'
      'union'
      
        'select kfxxzl.jijie,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devco' +
        'de,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm,zszl.zsywjc' +
        ' from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh = ypzls.csbh'
      'LEFT JOIN bwzl ON ypzls.BWBH = bwzl.bwdh'
      
        'where  ypzl.ypdh=:ypdh      and zsywjc='#39'CRMTO'#39'  and left(clbh,1)' +
        '='#39'P'#39' and bwzl.ywsm like '#39'%INSOLE%'#39
      'union'
      
        'select kfxxzl.jijie,ypzls.xh ,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devc' +
        'ode,kfxxzl.article,kfxxzl.xieming,clzhzl.cldh1,clzl.ywpm,zszl.zs' +
        'ywjc from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'left join zszl on zszl.zsdh = clzhzl.zsdh'
      ''
      'where ypzl.ypdh=:ypdh'
      'union'
      
        'select jijie,clzhzl2.XH,ypdh,BWBH,devcode,article,xieming,clzhzl' +
        '.cldh1,clzl.ywpm,zszl.zsywjc from ('
      
        'select kfxxzl.jijie,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devco' +
        'de,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm  from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      ''
      'where ypzl.ypdh=:ypdh  )clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'left join zszl on zszl.zsdh = clzhzl.zsdh'
      ')a'
      
        'left join materialmoq on materialmoq.season=a.jijie and  materia' +
        'lmoq.clbh=a.cldh'
      'LEFT JOIN bwzl ON a.BWBH = bwzl.bwdh'
      'where bwzl.ywsm not like '#39'%filler%'#39
      ')final)total'
      ''
      
        'where rn=1  and left(clbh,1) not in('#39'G'#39','#39'I'#39','#39'W'#39') and left(clbh,3' +
        ') not in('#39'L09'#39','#39'A27'#39','#39'A13'#39','#39'A09'#39','#39'N02'#39') and clbh<>'#39'D1100032261'#39' ' +
        'and (left(clbh,3)='#39'H05'#39' or left(clbh,1)<>'#39'H'#39')'
      'order by xh'
      '')
    Left = 308
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end>
  end
  object YPZL_DS: TDataSource
    DataSet = YPZL
    Left = 620
    Top = 341
  end
  object YPZL: TQuery
    AfterScroll = YPZLAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ypzl.re_check,recheckdate,ypzl.pur_recieve,recieveDate,yp' +
        'zl.fd_check,BModRec_Dev.DelDate,ypzl.YPDH,ypzl.XieXing,ypzl.SheH' +
        'ao,ypzl.Article,ypzl.KFJD,ypzl.YPCC,'
      
        'ypzl.Rate,ypzl.Currency,ypzl.KFRQ,ypzl.SDRQ,ypzl.JHRQ,ypzl.Quant' +
        'ity,ypzl.PFC,ypzl.CFM,ypzl.FINDATE,ypzl.GSDH,ypzl.UserID,ypzl.Us' +
        'erDate,ypzl.UserID+'#39'-'#39'+BUsers.UserName as UserName,ypzl.totalQua' +
        'ntity,ypzl.productionlocation  '
      
        ',ypzl.CGBH,ypzl.KFLX,ypzl.ypcco,ypzl.ypccl,ypzl.ypccM,ypzl.CGBH1' +
        ',xxzl.Article as SKU'
      
        ',kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.Ji' +
        'Jie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ,kfxxzl.DEVC' +
        'ODE ,kfzl.kfjc ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB '
      
        ',kfxxzl.FD ,kfxxzl.DevType ,kfxxzl.Category,'#39'1'#39' as YN,(Select Co' +
        'unt(XH) from YPZLS where YPZLS.YPDH=YPZL.YPDH) as BWBH,xxzlKF.DR' +
        'OPPED,ypzl.BH,ypzl.LH,ypzl.MH,ypzl.subtype'
      
        ',xxzlkf.imgnameR1,xxzlkf.imgnameR2,xxzlkf.imgnameR3,xxzlkf.imgna' +
        'meCFM,lbzls03.ywsm  FROM ypzl ypzl'
      
        'LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypz' +
        'l.SheHao = kfxxzl.SheHao '
      
        'Left JOIN XXZL on XXZL.XieXing = kfxxzl.XieXing AND XXZL.SheHao ' +
        '= kfxxzl.SheHao '
      'LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh '
      
        'LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = '#39 +
        '04'#39
      
        'LEFT JOIN lbzls lbzls03 ON kfxxzl.xiegn = lbzls03.lbdh AND lbzls' +
        '03.lb = '#39'03'#39
      
        'LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.S' +
        'heHao = kfxxzl.SheHao'
      'LEFT JOIN BUsers on BUsers.UserID=ypzl.UserID '
      
        'left join (select a.TNO,a.DelDate,b.recieveDate,b.recheckdate fr' +
        'om (select max(DelDate) as DelDate,TNO from BModRec_Dev where ar' +
        'ticle='#39'FD_check'#39' group by TNO)a'
      
        'left join (select recheckdate,TNO,DelDate,recieveDate from BModR' +
        'ec_Dev where article='#39'FD_check'#39')b on b.TNO=a.TNO and a.DelDate=b' +
        '.DelDate group by a.TNO,a.DelDate,b.recieveDate,b.recheckdate'
      ')BModRec_Dev on TNO=ypzl.YPDH'
      'where  ypzl.YPDH like  '#39'%%'#39' '
      
        '   and convert(smalldatetime,convert(varchar,YPZL.USERDATE,111))' +
        ' between '
      '   '#39'2017/03/08'#39' and '#39'2017/04/07'#39
      'order by YPZL.YPDH desc ')
    UpdateObject = upMas
    Left = 619
    Top = 397
    object YPZLYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object YPZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object YPZLARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object YPZLKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLYPCC: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object YPZLRate: TFloatField
      FieldName = 'Rate'
    end
    object YPZLCurrency: TStringField
      FieldName = 'Currency'
      FixedChar = True
      Size = 3
    end
    object YPZLKFRQ: TStringField
      FieldName = 'KFRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLSDRQ: TStringField
      FieldName = 'SDRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLJHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object YPZLPFC: TStringField
      FieldName = 'PFC'
      FixedChar = True
      Size = 3
    end
    object YPZLfd_check: TBooleanField
      FieldName = 'fd_check'
    end
    object YPZLCFM: TStringField
      FieldName = 'CFM'
      FixedChar = True
      Size = 1
    end
    object YPZLFINDATE: TStringField
      FieldName = 'FINDATE'
      FixedChar = True
      Size = 8
    end
    object YPZLGSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object YPZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YPZLUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object YPZLCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
    end
    object YPZLKFLX: TStringField
      FieldName = 'KFLX'
      FixedChar = True
      Size = 2
    end
    object YPZLYPCCO: TStringField
      FieldName = 'YPCCO'
      FixedChar = True
      Size = 6
    end
    object YPZLYPCCL: TStringField
      FieldName = 'YPCCL'
      FixedChar = True
      Size = 6
    end
    object YPZLCGBH1: TStringField
      FieldName = 'CGBH1'
      FixedChar = True
    end
    object YPZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YPZLARTNO: TStringField
      FieldName = 'ARTNO'
      FixedChar = True
    end
    object YPZLYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object YPZLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object YPZLXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object YPZLDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object YPZLKFLX2: TStringField
      FieldName = 'KFLX2'
      FixedChar = True
      Size = 2
    end
    object YPZLDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object YPZLkfjc: TStringField
      FieldName = 'kfjc'
      FixedChar = True
    end
    object YPZLywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object YPZLkfdh: TStringField
      FieldName = 'kfdh'
      FixedChar = True
      Size = 4
    end
    object YPZLCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object YPZLFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object YPZLDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object YPZLCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object YPZLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YPZLBWBH: TIntegerField
      FieldName = 'BWBH'
    end
    object YPZLDROPPED: TBooleanField
      FieldName = 'DROPPED'
    end
    object YPZLUserName: TStringField
      FieldName = 'UserName'
    end
    object YPZLMH: TStringField
      FieldName = 'MH'
      FixedChar = True
      Size = 5
    end
    object YPZLLH: TStringField
      FieldName = 'LH'
      FixedChar = True
      Size = 5
    end
    object YPZLBH: TStringField
      FieldName = 'BH'
      FixedChar = True
      Size = 5
    end
    object YPZLSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object YPZLsubtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object YPZLpur_recieve: TBooleanField
      FieldName = 'pur_recieve'
    end
    object YPZLrecieveDate: TDateTimeField
      FieldName = 'recieveDate'
      DisplayFormat = 'MM/DD HH:NN'
    end
    object YPZLDelDate: TDateTimeField
      FieldName = 'DelDate'
      DisplayFormat = 'MM/DD HH:NN'
    end
    object YPZLre_check: TBooleanField
      FieldName = 're_check'
    end
    object YPZLrecheckdate: TDateTimeField
      FieldName = 'recheckdate'
      DisplayFormat = 'MM/DD HH:NN'
    end
    object YPZLimgnameR1: TStringField
      FieldName = 'imgnameR1'
      FixedChar = True
      Size = 255
    end
    object YPZLimgnameR2: TStringField
      FieldName = 'imgnameR2'
      FixedChar = True
      Size = 50
    end
    object YPZLimgnameR3: TStringField
      FieldName = 'imgnameR3'
      FixedChar = True
      Size = 255
    end
    object YPZLimgnameCFM: TStringField
      FieldName = 'imgnameCFM'
      FixedChar = True
      Size = 50
    end
    object YPZLywsm_1: TStringField
      FieldName = 'ywsm_1'
      FixedChar = True
      Size = 50
    end
    object YPZLtotalQuantity: TFloatField
      FieldName = 'totalQuantity'
    end
    object YPZLproductionlocation: TStringField
      FieldName = 'productionlocation'
      FixedChar = True
      Size = 4
    end
    object YPZLypccM: TStringField
      FieldName = 'ypccM'
      FixedChar = True
      Size = 6
    end
  end
  object YPZLS: TQuery
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      
        'SELECT DENSE_RANK() OVER(ORDER BY YPZLS.XH) AS ROWID,ypzls.YPDH ' +
        ',ypzls.xh ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls' +
        '.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate ,ypzls' +
        '.Remark ,bwzl.ywsm+'#39'-'#39'+bwzl.zwsm AS BWMCNM,'
      
        '       bwzl.zwsm,bwzl.ywsm,clzl.zwpm AS CLMC ,clzl.dwbh ,zszl.zs' +
        'jc ,clzl.clzmlb  ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zs' +
        'ywjc ,clzl.ywpm ,clzl.cqdh,zszl_dev.SamplePurchaser,'#39'1'#39' as YN,CL' +
        'ZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate,XH1  FROM ypzls' +
        ' ypzls'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh'
      
        'LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh   and zszl_dev.G' +
        'SBH=:GSDH'
      'WHERE YPDH =:YPDH '
      'ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1')
    UpdateObject = UpDet
    Left = 651
    Top = 397
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YPZLSYPDH: TStringField
      DisplayWidth = 15
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLSxh: TStringField
      DisplayWidth = 3
      FieldName = 'xh'
      FixedChar = True
      Size = 3
    end
    object YPZLSBWBH: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object YPZLSCLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLSBWLB: TStringField
      DisplayWidth = 5
      FieldName = 'BWLB'
      FixedChar = True
      Size = 5
    end
    object YPZLSCSBH: TStringField
      DisplayWidth = 6
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object YPZLSloss: TFloatField
      DisplayWidth = 10
      FieldName = 'loss'
      DisplayFormat = '0%'
    end
    object YPZLSCLSL: TFloatField
      DisplayWidth = 10
      FieldName = 'CLSL'
      DisplayFormat = '0.0000'
    end
    object YPZLSCLDJ: TFloatField
      DisplayWidth = 10
      FieldName = 'CLDJ'
    end
    object YPZLSCurrency: TStringField
      DisplayWidth = 3
      FieldName = 'Currency'
      FixedChar = True
      Size = 3
    end
    object YPZLSRate: TFloatField
      DisplayWidth = 10
      FieldName = 'Rate'
    end
    object YPZLSRemark: TStringField
      DisplayWidth = 50
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object YPZLSBWMC: TStringField
      DisplayWidth = 40
      FieldName = 'BWMCNM'
      FixedChar = True
      Size = 40
    end
    object YPZLSCLMC: TStringField
      DisplayWidth = 200
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object YPZLSdwbh: TStringField
      DisplayWidth = 4
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object YPZLSzsjc: TStringField
      DisplayWidth = 20
      FieldName = 'zsjc'
      FixedChar = True
    end
    object YPZLSclzmlb: TStringField
      DisplayWidth = 1
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object YPZLStyjh: TStringField
      DisplayWidth = 1
      FieldName = 'tyjh'
      FixedChar = True
      Size = 1
    end
    object YPZLSJGZWSM: TStringField
      DisplayWidth = 100
      FieldName = 'JGZWSM'
      FixedChar = True
      Size = 100
    end
    object YPZLSJGYWSM: TStringField
      DisplayWidth = 100
      FieldName = 'JGYWSM'
      FixedChar = True
      Size = 100
    end
    object YPZLSzsywjc: TStringField
      DisplayWidth = 20
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object YPZLSywpm: TStringField
      DisplayWidth = 200
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object YPZLScqdh: TStringField
      DisplayWidth = 4
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object YPZLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YPZLSSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object YPZLSMatUser: TStringField
      FieldName = 'MatUser'
      FixedChar = True
    end
    object YPZLSROWID: TFloatField
      FieldName = 'ROWID'
    end
    object YPZLSzwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object YPZLSywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object YPZLSUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object YPZLSUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object YPZLSXH1: TIntegerField
      FieldName = 'XH1'
    end
  end
  object YPZLS2_DS: TDataSource
    DataSet = YPZLS2
    Left = 652
    Top = 341
  end
  object YPZLS_DS: TDataSource
    DataSet = YPZLS
    Left = 684
    Top = 341
  end
  object UpMemo: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZLS2 Set'
      '  LineNum=:LineNum,'
      '  Remark=:Remark'
      'Where YPDH=:OLD_YPDH'
      '     and LineNum=:OLD_LineNum')
    InsertSQL.Strings = (
      'Insert into YPZLS2'
      '   (YPDH, LineNum, Remark)'
      'Values'
      '   (:YPDH, :LineNum, :Remark)')
    DeleteSQL.Strings = (
      'Delete From YPZLS2'
      '  where YPDH=:OLD_YPDH'
      '        and LineNum=:OLD_LineNum')
    Left = 684
    Top = 368
  end
  object UpDet: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZLS Set'
      '   YPDH=:YPDH,'
      '   BWBH=:BWBH,'
      '   XH=:XH,'
      '   BWLB=:BWLB,'
      '   CLBH=:CLBH,'
      '   CSBH=:CSBH,'
      '   LOSS=:LOSS,'
      '   CLSL=:CLSL,'
      '   CLDJ=:CLDJ,'
      '   Currency=:Currency,'
      '   Rate=:Rate,'
      '   Remark=:Remark,'
      '   JGZWSM=:JGZWSM,'
      '   JGYWSM=:JGYWSM,'
      '   UserID=:UserID,'
      '   UserDate=:UserDate,'
      '   XH1=:XH1'
      'where'
      '  YPDH=:OLD_YPDH'
      '  and XH=:OLD_XH'
      '  and BWBH=:OLD_BWBH')
    InsertSQL.Strings = (
      'Insert into YPZLS'
      
        '   (YPDH, XH, BWBH, BWLB ,CLBH, CSBH, LOSS, CLSL, CLDJ, Currency' +
        ', Rate, Remark, JGZWSM, JGYWSM, UserID, UserDate, XH1 )'
      'Values'
      
        '   (:YPDH, :XH, :BWBH, :BWLB ,:CLBH, :CSBH, :LOSS, :CLSL, :CLDJ,' +
        ' :Currency, :Rate, :Remark, :JGZWSM, :JGYWSM, :UserID, :UserDate' +
        ', :XH1 )')
    DeleteSQL.Strings = (
      'Delete From YPZLS'
      'where'
      '  YPDH=:OLD_YPDH'
      '  and XH=:OLD_XH'
      '  and BWBH=:OLD_BWBH')
    Left = 651
    Top = 367
  end
  object upMas: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZL Set'
      '      fd_check=:fd_check'
      'where'
      '  YPDH=:OLD_YPDH')
    InsertSQL.Strings = (
      'Insert into YPZL'
      
        '   (YPDH, XieXing, SheHao, ARTICLE ,KFJD, YPCC, Rate, Currency, ' +
        'KFRQ, SDRQ, JHRQ, Quantity, PFC, CFM , FINDATE, GSDH, USERID, US' +
        'ERDATE, CGBH, KFLX, YPCCO ,YPCCL , CGBH1)'
      'Values'
      
        '   (:YPDH, :XieXing, :SheHao, :ARTICLE , :KFJD, :YPCC, :Rate, :C' +
        'urrency, :KFRQ, :SDRQ, :JHRQ, :Quantity, :PFC, :CFM , :FINDATE, ' +
        ':GSDH, :USERID, :USERDATE, :CGBH, :KFLX, :YPCCO , :YPCCL , :CGBH' +
        '1)')
    DeleteSQL.Strings = (
      'Delete From YPZL'
      'where'
      '  YPDH=:OLD_YPDH')
    Left = 620
    Top = 368
  end
  object YPZLS2: TQuery
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      'select ypdh,LineNum,Remark,'#39'1'#39' as YN from YPZLS2'
      'where YPDH=:YPDH'
      'order by LineNum')
    UpdateObject = UpMemo
    Left = 683
    Top = 397
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YPZLS2ypdh: TStringField
      FieldName = 'ypdh'
      Origin = 'DB.ypzls2.ypdh'
      FixedChar = True
    end
    object YPZLS2LineNum: TStringField
      FieldName = 'LineNum'
      Origin = 'DB.ypzls2.LineNum'
      FixedChar = True
      Size = 3
    end
    object YPZLS2Remark: TStringField
      DisplayWidth = 70
      FieldName = 'Remark'
      Origin = 'DB.ypzls2.Remark'
      FixedChar = True
      Size = 100
    end
    object YPZLS2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 716
    Top = 396
  end
  object MatQry: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    SQL.Strings = (
      
        'select   CLDH,ZWPM,dwbh,CQDH from CLZL where ((Substring(CLDH,1,' +
        '4)='#39'V901'#39') or YN=1 )')
    Left = 652
    Top = 437
  end
  object PartQry: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    Left = 652
    Top = 469
  end
  object SupplierQry: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    SQL.Strings = (
      'select zsdh,zsqm,ZSYWJC from ZSZL where zsdh<>'#39#39)
    Left = 652
    Top = 501
  end
  object Sticker: TQuery
    DatabaseName = 'dB'
    DataSource = YPZL_DS
    SQL.Strings = (
      ''
      'select * from ('
      
        'select ROW_NUMBER() OVER (partition by ypdh order by ypdh) as ro' +
        'w,* from ('
      
        'select a.xieming,a.devcode,a.article,a.ywpm,a.cldh as clbh,a.jij' +
        'ie,a.ypdh'
      
        ',case when a.zsywjc like '#39'%JNG%'#39' then '#39'LYN'#39'+'#39'('#39'+isnull(materialm' +
        'oq.location,'#39'VN'#39')+'#39')'#39' '
      
        'else  a.zsywjc+'#39'('#39'+isnull(materialmoq.location,'#39'NULL'#39')+'#39')'#39' end a' +
        's zsywjc'
      'from ('
      
        'select kfxxzl.jijie,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devco' +
        'de,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm,zszl.zsywjc' +
        ' from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh = ypzls.csbh'
      'where  ypzl.ypdh=:ypdh'
      'union'
      
        'select kfxxzl.jijie,ypzls.xh ,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devc' +
        'ode,kfxxzl.article,kfxxzl.xieming,clzhzl.cldh1,clzl.ywpm,zszl.zs' +
        'ywjc from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'left join zszl on zszl.zsdh = clzhzl.zsdh'
      'where ypzl.ypdh=:ypdh'
      'union'
      
        'select jijie,clzhzl2.XH,ypdh,BWBH,devcode,article,xieming,clzhzl' +
        '.cldh1,clzl.ywpm,zszl.zsywjc from ('
      
        'select kfxxzl.jijie,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,kfxxzl.devco' +
        'de,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm  from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'where ypzl.ypdh=:ypdh )clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'left join zszl on zszl.zsdh = clzhzl.zsdh'
      ')a'
      
        'left join materialmoq on materialmoq.season=a.jijie and  materia' +
        'lmoq.clbh=a.cldh'
      'LEFT JOIN bwzl ON a.BWBH = bwzl.bwdh'
      
        'where left(a.cldh,3) not in ('#39'A13'#39','#39'A09'#39') and left(a.cldh,1)in('#39 +
        'C'#39','#39'F'#39','#39'K'#39','#39'A'#39'))final'
      
        'group by xieming,devcode,article,ywpm,clbh,jijie,ypdh,zsywjc)fin' +
        'al order by row desc'
      '')
    Left = 306
    Top = 366
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ypdh'
        ParamType = ptUnknown
      end>
  end
  object DataSource4: TDataSource
    DataSet = compositions
    Left = 368
    Top = 336
  end
  object compositions: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ddzl.buyno,kfxxzl.article,kfxxzl.devcode,UPPERmat,LININgm' +
        'at,Insolemat,Outsolemat,UPPERmatDetail,LININgmatDetail,Insolemat' +
        'Detail,OutsolematDetail,cfmdate from xxzlkf'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao '
      
        'left join ddzl on ddzl.xiexing=xxzlkf.xiexing and ddzl.shehao=xx' +
        'zlkf.shehao '
      'where kfxxzl.khdh='#39'036'#39
      
        'group by ddzl.buyno,kfxxzl.article,kfxxzl.devcode,UPPERmat,LININ' +
        'gmat,Insolemat,Outsolemat,UPPERmatDetail,LININgmatDetail,Insolem' +
        'atDetail,OutsolematDetail,cfmdate'
      '')
    Left = 369
    Top = 370
    object compositionsbuyno: TStringField
      FieldName = 'buyno'
      FixedChar = True
      Size = 10
    end
    object compositionsarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object compositionsdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object compositionsUPPERmat: TStringField
      FieldName = 'UPPERmat'
      FixedChar = True
      Size = 100
    end
    object compositionsUPPERmatDetail: TStringField
      FieldName = 'UPPERmatDetail'
      FixedChar = True
      Size = 200
    end
    object compositionsLININgmat: TStringField
      FieldName = 'LININgmat'
      FixedChar = True
      Size = 100
    end
    object compositionsLININgmatDetail: TStringField
      FieldName = 'LININgmatDetail'
      FixedChar = True
      Size = 200
    end
    object compositionsInsolemat: TStringField
      FieldName = 'Insolemat'
      FixedChar = True
      Size = 100
    end
    object compositionsInsolematDetail: TStringField
      FieldName = 'InsolematDetail'
      FixedChar = True
      Size = 200
    end
    object compositionsOutsolemat: TStringField
      FieldName = 'Outsolemat'
      FixedChar = True
      Size = 100
    end
    object compositionsOutsolematDetail: TStringField
      FieldName = 'OutsolematDetail'
      FixedChar = True
      Size = 200
    end
    object compositionscfmdate: TStringField
      FieldName = 'cfmdate'
      FixedChar = True
      Size = 8
    end
  end
  object DataSource5: TDataSource
    DataSet = TearDown
    Left = 422
    Top = 338
  end
  object DataSource6: TDataSource
    DataSet = MLTQuery
    Left = 461
    Top = 338
  end
  object MLTQuery: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      'select * from ('
      
        'select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Mate' +
        'rial_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_n' +
        'umber() over (partition by sub.ColorwayID+Material_Number'
      
        'order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Mate' +
        'rial_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extra' +
        'day,0) desc)RN from('
      
        'select CASE WHEN kfxxzl.devtype<>'#39'SMU'#39' THEN '#39'Global'#39' when kfxxzl' +
        '.devtype='#39'SMU'#39' then '#39'SMU'#39' else null END as Initial_Product_Line,'
      #39' '#39' as Product_Line,'
      'kfxxzl.jijie as Initial_Development_Season,'
      #39' '#39' as New_Carryover,'
      'xxzlkf.bucket as Product_Bucket,'
      'left(kfxxzl.devcode,13) as ProductNumber,'
      'left(kfxxzl.devcode,13)+'#39'-'#39'+xxzl.Xieming as Product_Name,'
      'xxzl.xieming as Product_Description,'
      'xxzlkf.cut,'
      'kfxxzl.devcode as ColorwayID,'
      'left(xxzl.article,6) as Base_Material_ID,'
      'xxzl.article as Material_Number,'
      'xxzlkf.Segment as Segment,'
      'xxzlkf.category as Category,'
      #39' '#39' as Design_Pack,'
      'kfxxzl.kflx as TechLevel,'
      'CFM.IDD as Initial_In_Store_Date,'
      #39'LYN'#39' as Development_Center,'
      #39'LYN'#39' as Fctory,'
      'xxzlkf.colorwaystatus as Colorway_Status,'
      'clzl.cldh,'
      'clzl_flex.cldhflex,'
      'clzl_flexs.cldhflexdes,'
      'clzl.ywpm as Material_Description,'
      'zszl.zsywjc as Supplier,'
      #39'7'#39' as PO_collaboration,'
      'main.prodleadtime as Material_Prod_LT,'
      'main.totaltime as Material_Trans_LT,'
      #39'28'#39' as Shoes_production_LT,'
      #39'7'#39' as Good_Insurance,'
      'xxzlkf.extra as ExtraMethod,'
      'xxzlkf.Extraday,'
      #39#39' as Remarks,'
      #39#39' as Remarks2,'
      #39#39' as Remarks3,main.userdate,country'
      'from ('
      'select a.xiexing,a.shehao,a.jijie,a.clbh'
      
        ',a.csbh,a.khdh,ZSZL_Dev.prodleadtime,ZSZL_Dev.country,ZSZL_Dev.s' +
        'hippingleadtimesea,ZSZL_Dev.customclearanceday,'
      
        'case when isnull(ZSZL_Dev.shippingleadtimesea,0)=0 then (isnull(' +
        'ZSZL_Dev.shippingleadtimeair,0)+isnull(ZSZL_Dev.customclearanced' +
        'ay,0))'
      
        'else  isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.cus' +
        'tomclearanceday,0) end as totaltime,ZSZL_Dev.userdate'
      'from ('
      
        'select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh' +
        ',xxzl.khdh from xxzls'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and xxzl.jijie like '#39'%21U%'#39
      'union'
      
        'select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,' +
        'clzhzl.zsdh as csbh,xxzl.khdh from xxzls'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and xxzl.jijie like '#39'%21U%'#39
      'union'
      
        'select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as ' +
        'csbh,khdh from ('
      
        'select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,' +
        'clzhzl.zsdh,xxzl.khdh from xxzls'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and xxzl.jijie like '#39'%21U%'#39' )clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.clbh'
      'left join clzl on clzl.cldh=clzhzl.cldh1'
      ')A'
      'left join ('
      'select * from ('
      
        'select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_lea' +
        'dtime,country,shippingleadtimeair,shippingleadtimesea,customclea' +
        'ranceday,userdate,row_number() over'
      '(partition by zsbh+clbh order by userdate desc)RN from ('
      
        'select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_lea' +
        'dtime,ZSZL_DEV.COUNTRY as country,'
      
        'country.shippingleadtimeair,country.shippingleadtimesea,country.' +
        'customclearanceday,materialmoq.userdate,RANK() OVER '
      
        '(partition by zsbh+clbh order by left(season,2) desc)RN from Mat' +
        'erialMOQ'
      
        'LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH='#39'cdc'#39')ZSZL_DEV ON Z' +
        'SZL_DEV.ZSDH=MaterialMOQ.ZSBH'
      'left join country on country.country=ZSZL_DEV.COUNTRY'
      ')ZSZL_Dev where rn=1 )ZSZL_Dev where rn=1'
      ')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh '
      'where a.Xiexing not like '#39'%Q%'#39'  or  a.Xiexing not like '#39'%A%'#39'  '
      ')main'
      
        'left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.sheha' +
        'o=main.shehao'
      
        'left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=' +
        'xxzlkf.shehao'
      
        'left join xxzl on main.xiexing=xxzl.xiexing and main.shehao=xxzl' +
        '.shehao'
      
        'left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.sh' +
        'ehao'
      'left join clzl on main.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh=main.csbh'
      'left join clzl_flex on main.clbh=clzl_flex.cldh'
      'left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex'
      ')sub)final where rn=1 and colorwayID like '#39'%%'#39
      'union'
      'select * from ('
      
        'select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Mate' +
        'rial_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_n' +
        'umber() over (partition by sub.ColorwayID+Material_Number'
      
        'order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Mate' +
        'rial_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extra' +
        'day,0) desc)RN from('
      
        'select CASE WHEN kfxxzl.devtype<>'#39'SMU'#39' THEN '#39'Global_FC'#39' when kfx' +
        'xzl.devtype='#39'SMU'#39' then '#39'SMU_FC'#39' else null END as Initial_Product' +
        '_Line,'
      #39' '#39' as Product_Line,'
      'kfxxzl.jijie as Initial_Development_Season,'
      #39' '#39' as New_Carryover,'
      'xxzlkf.bucket as Product_Bucket,'
      'left(kfxxzl.devcode,13) as ProductNumber,'
      'left(kfxxzl.devcode,13)+'#39'-'#39'+xxzl.Xieming as Product_Name,'
      'xxzl.xieming as Product_Description,'
      'xxzlkf.cut,'
      'kfxxzl.devcode as ColorwayID,'
      'left(xxzl.article,6) as Base_Material_ID,'
      'xxzl.article as Material_Number,'
      'xxzlkf.Segment as Segment,'
      'xxzlkf.category as Category,'
      #39' '#39' as Design_Pack,'
      'kfxxzl.kflx as TechLevel,'
      'CFM.IDD as Initial_In_Store_Date,'
      #39'LYN'#39' as Development_Center,'
      #39'LYN'#39' as Fctory,'
      'xxzlkf.colorwaystatus as Colorway_Status,'
      'clzl.cldh,'
      'clzl_flex.cldhflex,'
      'clzl_flexs.cldhflexdes,'
      'clzl.ywpm as Material_Description,'
      'zszl.zsywjc as Supplier,'
      #39'7'#39' as PO_collaboration,'
      'main.prodleadtime as Material_Prod_LT,'
      'main.totaltime as Material_Trans_LT,'
      #39'28'#39' as Shoes_production_LT,'
      #39'7'#39' as Good_Insurance,'
      'xxzlkf.extra as ExtraMethod,'
      'xxzlkf.Extraday,'
      #39#39' as Remarks,'
      #39#39' as Remarks2,'
      #39#39' as Remarks3,main.userdate,country'
      'from ('
      'select a.xiexing,a.shehao,a.jijie,a.clbh'
      
        ',a.csbh,a.khdh,ZSZL_Dev.Forecast_Leadtime as prodleadtime,ZSZL_D' +
        'ev.country,ZSZL_Dev.shippingleadtimesea,ZSZL_Dev.customclearance' +
        'day,'
      
        'case when isnull(ZSZL_Dev.shippingleadtimesea,0)=0 then (isnull(' +
        'ZSZL_Dev.shippingleadtimeair,0)+isnull(ZSZL_Dev.customclearanced' +
        'ay,0))'
      
        'else  isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.cus' +
        'tomclearanceday,0) end as totaltime,ZSZL_Dev.userdate'
      'from ('
      
        'select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh' +
        ',xxzl.khdh from xxzls'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and xxzl.jijie like '#39'%21U%'#39
      'union'
      
        'select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,' +
        'clzhzl.zsdh as csbh,xxzl.khdh from xxzls'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and xxzl.jijie like '#39'%21U%'#39
      'union'
      
        'select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as ' +
        'csbh,khdh from ('
      
        'select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,' +
        'clzhzl.zsdh,xxzl.khdh from xxzls'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and xxzl.jijie like '#39'%21U%'#39' )clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.clbh'
      'left join clzl on clzl.cldh=clzhzl.cldh1'
      ')A'
      'left join ('
      'select * from ('
      
        'select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_lea' +
        'dtime,country,shippingleadtimeair,shippingleadtimesea,customclea' +
        'ranceday,userdate,row_number()'
      ' over(partition by zsbh+clbh order by userdate desc)RN from ('
      
        'select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_lea' +
        'dtime,ZSZL_DEV.COUNTRY as country,'
      
        'country.shippingleadtimeair,country.shippingleadtimesea,country.' +
        'customclearanceday,materialmoq.userdate,RANK() OVER '
      
        '(partition by zsbh+clbh order by left(season,2) desc)RN from Mat' +
        'erialMOQ'
      
        'LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH='#39'cdc'#39')ZSZL_DEV ON Z' +
        'SZL_DEV.ZSDH=MaterialMOQ.ZSBH'
      'left join country on country.country=ZSZL_DEV.COUNTRY'
      ')ZSZL_Dev where rn=1 )ZSZL_Dev where rn=1'
      ')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh '
      'where a.Xiexing not like '#39'%Q%'#39'  or  a.Xiexing not like '#39'%A%'#39'  '
      ')main'
      
        'left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.sheha' +
        'o=main.shehao'
      
        'left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=' +
        'xxzlkf.shehao'
      
        'left join xxzl on main.xiexing=xxzl.xiexing and main.shehao=xxzl' +
        '.shehao'
      
        'left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.sh' +
        'ehao'
      'left join clzl on main.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh=main.csbh'
      'left join clzl_flex on main.clbh=clzl_flex.cldh'
      'left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex'
      ')sub)final where rn=1 and colorwayID like '#39'%%'#39
      'order by colorwayID')
    Left = 509
    Top = 386
    object MLTQueryInitial_Product_Line: TStringField
      FieldName = 'Initial_Product_Line'
      FixedChar = True
      Size = 6
    end
    object MLTQueryProduct_Line: TStringField
      FieldName = 'Product_Line'
      FixedChar = True
      Size = 1
    end
    object MLTQueryInitial_Development_Season: TStringField
      FieldName = 'Initial_Development_Season'
      FixedChar = True
    end
    object MLTQueryNew_Carryover: TStringField
      FieldName = 'New_Carryover'
      FixedChar = True
      Size = 1
    end
    object MLTQueryProduct_Bucket: TStringField
      FieldName = 'Product_Bucket'
      FixedChar = True
      Size = 8
    end
    object MLTQueryProductNumber: TStringField
      FieldName = 'ProductNumber'
      FixedChar = True
    end
    object MLTQueryProduct_Name: TStringField
      FieldName = 'Product_Name'
      FixedChar = True
      Size = 71
    end
    object MLTQueryProduct_Description: TStringField
      FieldName = 'Product_Description'
      FixedChar = True
      Size = 50
    end
    object MLTQuerycut: TStringField
      FieldName = 'cut'
      FixedChar = True
      Size = 8
    end
    object MLTQueryColorwayID: TStringField
      FieldName = 'ColorwayID'
      FixedChar = True
    end
    object MLTQueryBase_Material_ID: TStringField
      FieldName = 'Base_Material_ID'
      FixedChar = True
      Size = 12
    end
    object MLTQueryMaterial_Number: TStringField
      FieldName = 'Material_Number'
      FixedChar = True
    end
    object MLTQuerySegment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 15
    end
    object MLTQueryCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 30
    end
    object MLTQueryDesign_Pack: TStringField
      FieldName = 'Design_Pack'
      FixedChar = True
      Size = 1
    end
    object MLTQueryTechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 2
    end
    object MLTQueryInitial_In_Store_Date: TStringField
      FieldName = 'Initial_In_Store_Date'
      FixedChar = True
      Size = 1
    end
    object MLTQueryDevelopment_Center: TStringField
      FieldName = 'Development_Center'
      FixedChar = True
      Size = 3
    end
    object MLTQueryFctory: TStringField
      FieldName = 'Fctory'
      FixedChar = True
      Size = 3
    end
    object MLTQueryColorway_Status: TStringField
      FieldName = 'Colorway_Status'
      FixedChar = True
      Size = 15
    end
    object MLTQuerycldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object MLTQuerycldhflex: TStringField
      FieldName = 'cldhflex'
      FixedChar = True
      Size = 15
    end
    object MLTQueryMaterial_Description: TStringField
      FieldName = 'Material_Description'
      FixedChar = True
      Size = 200
    end
    object MLTQuerySupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object MLTQueryPO_collaboration: TStringField
      FieldName = 'PO_collaboration'
      FixedChar = True
      Size = 1
    end
    object MLTQueryMaterial_Prod_LT: TIntegerField
      FieldName = 'Material_Prod_LT'
    end
    object MLTQueryMaterial_Trans_LT: TIntegerField
      FieldName = 'Material_Trans_LT'
    end
    object MLTQueryShoes_production_LT: TStringField
      FieldName = 'Shoes_production_LT'
      FixedChar = True
      Size = 2
    end
    object MLTQueryGood_Insurance: TStringField
      FieldName = 'Good_Insurance'
      FixedChar = True
      Size = 2
    end
    object MLTQueryExtraMethod: TStringField
      FieldName = 'ExtraMethod'
      FixedChar = True
      Size = 200
    end
    object MLTQueryExtraday: TIntegerField
      FieldName = 'Extraday'
    end
    object MLTQueryRemarks: TStringField
      FieldName = 'Remarks'
      FixedChar = True
      Size = 1
    end
    object MLTQueryRemarks2: TStringField
      FieldName = 'Remarks2'
      FixedChar = True
      Size = 1
    end
    object MLTQueryRemarks3: TStringField
      FieldName = 'Remarks3'
      FixedChar = True
      Size = 1
    end
    object MLTQueryMLT: TIntegerField
      FieldName = 'MLT'
    end
    object MLTQueryRN: TFloatField
      FieldName = 'RN'
    end
    object MLTQueryuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object MLTQuerycountry: TStringField
      FieldName = 'country'
      FixedChar = True
      Size = 10
    end
    object MLTQuerycldhflexdes: TStringField
      FieldName = 'cldhflexdes'
      FixedChar = True
      Size = 200
    end
  end
  object MLT_DevQuery: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from ('
      
        'select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Mate' +
        'rial_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_n' +
        'umber() over (partition by sub.ColorwayID'
      
        'order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Mate' +
        'rial_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extra' +
        'day,0) desc)RN from('
      
        'select CASE WHEN kfxxzl.devtype='#39'Inline'#39' THEN '#39'Global'#39' when kfxx' +
        'zl.devtype='#39'SMU'#39' then '#39'SMU'#39' else null END as Initial_Product_Lin' +
        'e,'
      #39' '#39' as Product_Line,'
      'kfxxzl.jijie as Initial_Development_Season,'
      #39'New'#39' as New_Carryover,'
      'xxzlkf.bucket as Product_Bucket,'
      'left(kfxxzl.devcode,13) as ProductNumber,'
      'left(kfxxzl.devcode,13)+'#39'-'#39'+kfxxzl.Xieming as Product_Name,'
      'kfxxzl.xieming as Product_Description,'
      'xxzlkf.cut,'
      'kfxxzl.devcode as ColorwayID,'
      'left(kfxxzl.article,6) as Base_Material_ID,'
      'kfxxzl.article as Material_Number,'
      'xxzlkf.Segment,'
      'xxzlkf.category as Category,'
      #39' '#39' as Design_Pack,'
      
        'case when kfxxzl.kflx = '#39'MU'#39' then '#39'NM'#39' when  kfxxzl.kflx = '#39'CU'#39' ' +
        'then '#39'NC'#39' else kfxxzl.kflx end  as TechLevel,'
      'CFM.IDD as Initial_In_Store_Date,'
      #39'LYN(DC)'#39' as Development_Center,'
      #39'LYN(DC)'#39' as Fctory,'
      'xxzlkf.colorwaystatus as Colorway_Status,'
      'clzl.cldh,'
      'clzl.ywpm as Material_Description,'
      'zszl.zsywjc+'#39'('#39'+clzl.cqdh+'#39')'#39' as Supplier,'
      #39'7'#39' as PO_collaboration,'
      'main.prodleadtime as Material_Prod_LT,'
      'main.totaltime as Material_Trans_LT,'
      'isnull(xxzlkf.Extraday,0)+28 as Shoes_production_LT,'
      #39'7'#39' as Good_Insurance,'
      
        'case when xxzlkf.extra is null then '#39'No special process'#39' else xx' +
        'zlkf.extra end as Factory_Remarks,'
      'xxzlkf.Extraday'
      'from ('
      'select a.xiexing,a.shehao,a.jijie,a.clbh'
      
        ',a.csbh,a.khdh,ZSZL_Dev.prodleadtime,ZSZL_Dev.country,ZSZL_Dev.s' +
        'hippingleadtimesea,ZSZL_Dev.customclearanceday'
      
        ',(isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customc' +
        'learanceday,0)) as totaltime'
      'from ('
      
        'select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,ypzls.clb' +
        'h,ypzls.csbh,kfxxzl.khdh,ypzl.subtype from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      'where kfxxzl.khdh='#39'036'#39' and kfxxzl.jijie like '#39'%18S%'#39
      'and xxzlkf.dropped<>'#39'1'#39
      'and xxzlkf.transfer<>'#39'1'#39
      
        'group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,ypzls.c' +
        'lbh,ypzls.csbh,kfxxzl.khdh,ypzl.subtype'
      'union'
      
        'select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cl' +
        'dh1 as clbh,clzhzl.zsdh as csbh,kfxxzl.khdh,ypzl.subtype from yp' +
        'zls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      'where kfxxzl.khdh='#39'036'#39' and kfxxzl.jijie like '#39'%18S%'#39
      'and xxzlkf.dropped<>'#39'1'#39
      'and xxzlkf.transfer<>'#39'1'#39
      
        'group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.' +
        'cldh1,clzhzl.zsdh,kfxxzl.khdh,ypzl.subtype'
      'union'
      
        'select jijie,kfjd,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsd' +
        'h as csbh,khdh,subtype from ('
      
        'select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cl' +
        'dh1 as clbh,clzhzl.zsdh as csbh,kfxxzl.khdh,ypzl.subtype from yp' +
        'zls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      'where kfxxzl.khdh='#39'036'#39' and kfxxzl.jijie like '#39'%18S%'#39
      'and xxzlkf.dropped<>'#39'1'#39
      'and xxzlkf.transfer<>'#39'1'#39
      
        'group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.' +
        'cldh1,clzhzl.zsdh,kfxxzl.khdh,ypzl.subtype'
      ')clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.clbh'
      'left join clzl on clzl.cldh=clzhzl.cldh1'
      ')A'
      'left join ('
      
        'select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_lea' +
        'dtime,MaterialMOQ.location as country,'
      
        'country.shippingleadtimeair,country.shippingleadtimesea,country.' +
        'customclearanceday from MaterialMOQ'
      'left join country on country.country=MaterialMOQ.location'
      
        ')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh and Z' +
        'SZL_Dev.season=a.jijie'
      'where a.Xiexing not like '#39'%Q%'#39'  or  a.Xiexing not like '#39'%A%'#39
      ')main'
      
        'left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.sheha' +
        'o=main.shehao'
      
        'left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=' +
        'xxzlkf.shehao'
      
        'left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.sh' +
        'ehao'
      'left join clzl on main.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh=main.csbh'
      ')sub)final where rn=1 and colorwayID like '#39'%%'#39
      '')
    Left = 509
    Top = 421
    object MLT_DevQueryInitial_Product_Line: TStringField
      FieldName = 'Initial_Product_Line'
      FixedChar = True
      Size = 6
    end
    object MLT_DevQueryProduct_Line: TStringField
      FieldName = 'Product_Line'
      FixedChar = True
      Size = 1
    end
    object MLT_DevQueryInitial_Development_Season: TStringField
      FieldName = 'Initial_Development_Season'
      FixedChar = True
    end
    object MLT_DevQueryNew_Carryover: TStringField
      FieldName = 'New_Carryover'
      FixedChar = True
      Size = 1
    end
    object MLT_DevQueryProduct_Bucket: TStringField
      FieldName = 'Product_Bucket'
      FixedChar = True
      Size = 8
    end
    object MLT_DevQueryProductNumber: TStringField
      FieldName = 'ProductNumber'
      FixedChar = True
    end
    object MLT_DevQueryProduct_Name: TStringField
      FieldName = 'Product_Name'
      FixedChar = True
      Size = 71
    end
    object MLT_DevQueryProduct_Description: TStringField
      FieldName = 'Product_Description'
      FixedChar = True
      Size = 50
    end
    object MLT_DevQuerycut: TStringField
      FieldName = 'cut'
      FixedChar = True
      Size = 8
    end
    object MLT_DevQueryColorwayID: TStringField
      FieldName = 'ColorwayID'
      FixedChar = True
    end
    object MLT_DevQueryBase_Material_ID: TStringField
      FieldName = 'Base_Material_ID'
      FixedChar = True
      Size = 12
    end
    object MLT_DevQueryMaterial_Number: TStringField
      FieldName = 'Material_Number'
      FixedChar = True
    end
    object MLT_DevQuerySegment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 15
    end
    object MLT_DevQueryCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 30
    end
    object MLT_DevQueryDesign_Pack: TStringField
      FieldName = 'Design_Pack'
      FixedChar = True
      Size = 1
    end
    object MLT_DevQueryTechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 2
    end
    object MLT_DevQueryInitial_In_Store_Date: TStringField
      FieldName = 'Initial_In_Store_Date'
      FixedChar = True
      Size = 15
    end
    object MLT_DevQueryDevelopment_Center: TStringField
      FieldName = 'Development_Center'
      FixedChar = True
      Size = 3
    end
    object MLT_DevQueryFctory: TStringField
      FieldName = 'Fctory'
      FixedChar = True
      Size = 3
    end
    object MLT_DevQueryColorway_Status: TStringField
      FieldName = 'Colorway_Status'
      FixedChar = True
      Size = 15
    end
    object MLT_DevQueryMaterial_Description: TStringField
      FieldName = 'Material_Description'
      FixedChar = True
      Size = 200
    end
    object MLT_DevQuerySupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object MLT_DevQueryPO_collaboration: TStringField
      FieldName = 'PO_collaboration'
      FixedChar = True
      Size = 1
    end
    object MLT_DevQueryMaterial_Prod_LT: TIntegerField
      FieldName = 'Material_Prod_LT'
    end
    object MLT_DevQueryMaterial_Trans_LT: TIntegerField
      FieldName = 'Material_Trans_LT'
    end
    object MLT_DevQueryShoes_production_LT: TIntegerField
      FieldName = 'Shoes_production_LT'
    end
    object MLT_DevQueryGood_Insurance: TStringField
      FieldName = 'Good_Insurance'
      FixedChar = True
      Size = 2
    end
    object MLT_DevQueryMLT: TIntegerField
      FieldName = 'MLT'
    end
    object MLT_DevQueryFactory_Remarks: TStringField
      FieldName = 'Factory_Remarks'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource7: TDataSource
    DataSet = MLT_DevQuery
    Left = 509
    Top = 341
  end
  object FD_Check_time: TQuery
    DatabaseName = 'DB'
    DataSource = RE_CHECK_DS
    SQL.Strings = (
      
        'select TNO as ypdh,delid as ID,deldate as Check_Time,recheckID,r' +
        'echeckDate,recieveid,recievedate, remark from BModRec_Dev'
      'where TNO=:YPDH and article='#39'FD_CHECK'#39
      'order by deldate desc'
      ''
      ''
      '')
    Left = 810
    Top = 372
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object FD_Check_timeypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 50
    end
    object FD_Check_timeID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 15
    end
    object FD_Check_timeCheck_Time: TDateTimeField
      FieldName = 'Check_Time'
    end
    object FD_Check_timeremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 99
    end
    object FD_Check_timerecieveid: TStringField
      FieldName = 'recieveid'
      FixedChar = True
      Size = 15
    end
    object FD_Check_timerecievedate: TDateTimeField
      FieldName = 'recievedate'
    end
    object FD_Check_timerecheckID: TStringField
      FieldName = 'recheckID'
      FixedChar = True
      Size = 15
    end
    object FD_Check_timerecheckDate: TDateTimeField
      FieldName = 'recheckDate'
    end
  end
  object FD_Check_time_DS: TDataSource
    DataSet = FD_Check_time
    Left = 810
    Top = 340
  end
  object RE_CHECK_DS: TDataSource
    DataSet = RE_Check
    Left = 754
    Top = 342
  end
  object RE_Check: TQuery
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      'select ypdh,RE_check from YPzl'
      'where YPDH=:YPDH')
    UpdateObject = UP_REChECK
    Left = 754
    Top = 374
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object RE_Checkypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object RE_CheckRE_check: TBooleanField
      FieldName = 'RE_check'
    end
  end
  object UP_REChECK: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZL Set'
      '      re_check=:re_check,'
      '      recheckdate=GetDate()'
      'where'
      '  YPDH=:OLD_YPDH')
    Left = 754
    Top = 414
  end
  object Tempqry1: TQuery
    DatabaseName = 'DB'
    Left = 850
    Top = 374
  end
  object Shipping: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select '
      'kfxxzl.jijie as Season,'
      'ypzl.kfjd as Stage,'
      
        'ROW_NUMBER() OVER (order by devcode) as STT,kfxxzl.devcode as SR' +
        ','
      'xxzl.article as SKU,'
      'xxzlkf.MMD as MainMaterial,'
      'xxzlkf.Cut,'
      'Ypzl.YPCC as SampleSize,'
      'ypzl.Quantity as GrandTotalPairs,'
      'kfxxzl.FD as DEV,'
      'Ypzl.ypdh  as SampleNO'
      'from ypzl'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzl on xxzl.xiexing=ypzl.xiexing and xxzl.shehao=ypzl' +
        '.shehao'
      'where kfxxzl.jijie='#39'17S'#39
      ''
      '')
    Left = 893
    Top = 378
    object ShippingSTT: TFloatField
      FieldName = 'STT'
    end
    object ShippingSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object ShippingStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object ShippingSampleNO: TStringField
      FieldName = 'SampleNO'
      FixedChar = True
      Size = 15
    end
    object ShippingSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object ShippingSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object ShippingMainMaterial: TStringField
      FieldName = 'MainMaterial'
      FixedChar = True
      Size = 200
    end
    object ShippingCut: TStringField
      FieldName = 'Cut'
      FixedChar = True
      Size = 8
    end
    object ShippingSampleSize: TStringField
      FieldName = 'SampleSize'
      FixedChar = True
      Size = 6
    end
    object ShippingGrandTotalPairs: TFloatField
      FieldName = 'GrandTotalPairs'
    end
    object ShippingDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
    end
  end
  object DataSource8: TDataSource
    DataSet = Shipping
    Left = 893
    Top = 338
  end
  object bookcover: TQuery
    DatabaseName = 'dB'
    DataSource = YPZL_DS
    SQL.Strings = (
      
        'select kfxxzl.devcode,kfxxzl.article,kfxxzl.xieming,kfxxzl.yssm,' +
        'XXZLKF.imgnamecfm'
      ' from ypzl '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join XXZLKF on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXi' +
        'ng=XXZLKF.XieXing'
      'where  ypzl.ypdh=:ypdh'
      
        'group by kfxxzl.devcode,kfxxzl.article,kfxxzl.xieming,kfxxzl.yss' +
        'm,XXZLKF.imgnamecfm')
    Left = 306
    Top = 406
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end>
  end
  object TearDown: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select ypzl.productionlocation as Type,'
      'xxzl.imgname as picture,'
      'xxzlkf.Category,'
      'kfxxzl.XieMing as Style_Name,'
      'xxzlkf.Cut,'
      'kfxxzl.YSSM as Colorway,'
      'kfxxzl.devcode as SR,'
      'xxzl.article as Rubber_SKU,'
      #39#39'as Qty,'
      
        'case when kfxxzl.kflx ='#39'MU'#39' then '#39'NM'#39' when kfxxzl.kflx ='#39'CU'#39' the' +
        'n '#39'NC'#39' else kfxxzl.kflx  end  as TECH_LEVEL,'
      'xxzlkf.CT as Need_Commercialization_trial,'
      'kfxxzl.Gender,'
      'xxzlkf.ss as Sample_Size,'
      'kfxxzl.xtmh as Last,'
      'xxzlkf.lcpR as Last_cost_per_pair_Only_for_NewLast,'
      'kfxxzl.DDMH as Converse_Authorize_Molds,'
      'xxzlkf.scc as Size_Conversion_Chart,'
      'xxzlkf.MMD as Main_Material_Description,'
      #39#39' as Material_Mini,'
      #39#39' as Long_Leadtime_Material,'
      #39#39' as Long_Leadtime_Material_Estimate,'
      #39#39' as Sample_Size_Fitting,'
      'xxzlkf.PCs as PC_status,'
      'XXZLKF.CDC as Cutting_Die_Code,'
      'xxzlkf.NCd as New_Cutting_Die,'
      'xxzlkf.Test,'
      'xxzlkf.QP,'
      'xxzlkf.remarks,'
      'ypzl.fd,'
      'xxzlkf.NA,'
      'xxzlkf.cTS,'
      #39#39' as UpperMatDetail1,'
      'XXZLKF.UpperMatDetail as UPPER,'
      #39#39' as LiningMatDetail1,'
      'XXZLKF.LiningMatDetail as LINNING,'
      #39#39' as InsoleMatDetail1,'
      'XXZLKF.InsoleMatDetail as Insole,'
      'XXZLKF.OutsoleMatDetail as Outsole,'
      'ypzl.ypdh'
      'from xxzlkf'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      
        'left join ypzl on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao=xx' +
        'zlkf.shehao'
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and kfxxzl.shehao=' +
        'xxzl.shehao'
      'where kfxxzl.khdh='#39'036'#39' '
      'and  kfxxzl.jijie like '#39'%19S%'#39
      '--and  kfxxzl.devcode like '#39'%G31198-OS119Y-19R01%'#39
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      ' and ypzl.subtype='#39'Inline'#39' '
      ' and YPZL.KFJD = '#39'CFM'#39' '
      'order by ypzl.ypdh')
    Left = 422
    Top = 378
    object TearDownType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 1
    end
    object TearDownpicture: TStringField
      FieldName = 'picture'
      FixedChar = True
      Size = 60
    end
    object TearDownCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 8
    end
    object TearDownStyle_Name: TStringField
      FieldName = 'Style_Name'
      FixedChar = True
      Size = 50
    end
    object s: TStringField
      FieldName = 'Cut'
      FixedChar = True
      Size = 8
    end
    object TearDownColorway: TStringField
      FieldName = 'Colorway'
      FixedChar = True
      Size = 40
    end
    object TearDownSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object TearDownRubber_SKU: TStringField
      FieldName = 'Rubber_SKU'
      FixedChar = True
    end
    object TearDownQty: TStringField
      FieldName = 'Qty'
      FixedChar = True
      Size = 1
    end
    object TearDownTECH_LEVEL: TStringField
      FieldName = 'TECH_LEVEL'
      FixedChar = True
      Size = 2
    end
    object TearDownNeed_Commercialization_trial: TStringField
      FieldName = 'Need_Commercialization_trial'
      FixedChar = True
      Size = 5
    end
    object TearDownGender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 10
    end
    object TearDownSample_Size: TStringField
      FieldName = 'Sample_Size'
      FixedChar = True
      Size = 5
    end
    object TearDownLast: TStringField
      FieldName = 'Last'
      FixedChar = True
      Size = 30
    end
    object TearDownLast_cost_per_pair_Only_for_Ne: TStringField
      FieldName = 'Last_cost_per_pair_Only_for_Ne'
      FixedChar = True
      Size = 10
    end
    object TearDownConverse_Authorize_Molds: TStringField
      FieldName = 'Converse_Authorize_Molds'
      FixedChar = True
      Size = 30
    end
    object TearDownSize_Conversion_Chart: TStringField
      FieldName = 'Size_Conversion_Chart'
      FixedChar = True
      Size = 5
    end
    object TearDownMain_Material_Description: TStringField
      FieldName = 'Main_Material_Description'
      FixedChar = True
      Size = 200
    end
    object TearDownMaterial_Mini: TStringField
      FieldName = 'Material_Mini'
      FixedChar = True
      Size = 200
    end
    object TearDownLong_Leadtime_Material: TStringField
      FieldName = 'Long_Leadtime_Material'
      FixedChar = True
      Size = 1
    end
    object TearDownLong_Leadtime_Material_Estimat: TStringField
      FieldName = 'Long_Leadtime_Material_Estimat'
      FixedChar = True
      Size = 1
    end
    object TearDownSample_Size_Fitting: TStringField
      FieldName = 'Sample_Size_Fitting'
      FixedChar = True
      Size = 1
    end
    object TearDownPC_status: TStringField
      FieldName = 'PC_status'
      FixedChar = True
      Size = 10
    end
    object TearDownCutting_Die_Code: TStringField
      FieldName = 'Cutting_Die_Code'
      FixedChar = True
      Size = 40
    end
    object TearDownNew_Cutting_Die: TStringField
      FieldName = 'New_Cutting_Die'
      FixedChar = True
      Size = 40
    end
    object TearDownTest: TStringField
      FieldName = 'Test'
      FixedChar = True
      Size = 200
    end
    object TearDownQP: TStringField
      FieldName = 'QP'
      FixedChar = True
      Size = 50
    end
    object TearDownremarks: TStringField
      FieldName = 'remarks'
      FixedChar = True
      Size = 200
    end
    object TearDownfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object TearDowncTS: TStringField
      FieldName = 'cTS'
      FixedChar = True
    end
    object TearDownNA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object TearDownUpperMatDetail1: TStringField
      FieldName = 'UpperMatDetail1'
      FixedChar = True
      Size = 1
    end
    object TearDownUPPER: TStringField
      FieldName = 'UPPER'
      FixedChar = True
      Size = 255
    end
    object TearDownLiningMatDetail1: TStringField
      FieldName = 'LiningMatDetail1'
      FixedChar = True
      Size = 1
    end
    object TearDownLINNING: TStringField
      FieldName = 'LINNING'
      FixedChar = True
      Size = 255
    end
    object TearDownInsoleMatDetail1: TStringField
      FieldName = 'InsoleMatDetail1'
      FixedChar = True
      Size = 1
    end
    object TearDownInsole: TStringField
      FieldName = 'Insole'
      FixedChar = True
      Size = 255
    end
    object TearDownOutsole: TStringField
      FieldName = 'Outsole'
      FixedChar = True
      Size = 255
    end
    object TearDownypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
  end
  object TearDownPic: TQuery
    DatabaseName = 'DB'
    Left = 422
    Top = 410
  end
  object MOQ: TQuery
    DatabaseName = 'DB'
    Left = 422
    Top = 450
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 422
    Top = 482
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 422
    Top = 522
  end
  object MOQleadDay: TQuery
    DatabaseName = 'DB'
    Left = 462
    Top = 450
  end
  object MOQLeadTime: TQuery
    DatabaseName = 'DB'
    Left = 462
    Top = 412
  end
  object MOQMax: TQuery
    DatabaseName = 'DB'
    Left = 461
    Top = 380
  end
  object DataSource9: TDataSource
    DataSet = BlueFile
    Left = 941
    Top = 337
  end
  object BlueFile: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'ypzl.FD as FD,'
      'isnull(KFXXZL.YSSM,'#39#39') as YSSM,'
      
        'case when kfxxzl.kflx = '#39'MU'#39' then '#39'NM'#39' when  kfxxzl.kflx = '#39'CU'#39' ' +
        'then '#39'NC'#39' else kfxxzl.kflx end  as kflx,'
      'isnull(kfxxzl.XTMH,'#39#39') as XTMH,'
      'isnull(kfxxzl.DDMH,'#39#39') as DDMH,'
      'isnull(kfxxzl.XieMing,'#39#39') as XieMing,'
      'isnull(kfxxzl.article,'#39#39') as article,'
      'isnull(kfxxzl.devcode,'#39#39') as devcode,'
      'isnull(xxzlkf.CTS,'#39#39') as CTS,'
      'isnull(xxzlkf.NA,'#39#39') as NA,'
      'isnull(KFXXZL.GENDER,'#39#39') as GENDER,'
      'isnull(ypzl.subtype,'#39#39') as subtype,'
      'isnull(xxzlkf.SS,'#39#39') as SS'
      'from XXZLKF'
      
        'left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXi' +
        'ng=XXZLKF.XieXing'
      
        'left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZ' +
        'LKF.XieXing'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kf' +
        'xxzl.shehao'
      'where KFXXZL.jijie like '#39'%19S%'#39
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      'and kfxxzl.devtype like '#39'%Inline%'#39
      'and ypzl.fd = '#39'vANUS'#39' '
      'and (xxzlkf.dropped ='#39'0'#39' or xxzlkf.dropped is null)'
      
        'group by ypzl.FD,KFXXZL.YSSM,KFXXZL.XTMH,KFXXZL.DDMH,kfxxzl.kflx' +
        ',kfxxzl.XieMing,kfxxzl.Article,devcode,CTS,NA'
      ',KFXXZL.GENDER,ypzl.subtype,xxzlkf.SS'
      'order by kfxxzl.devcode')
    Left = 941
    Top = 369
    object BlueFileFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object BlueFileYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object BlueFilekflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 2
    end
    object BlueFileXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object BlueFileDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object BlueFileXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object BlueFilearticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object BlueFiledevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object BlueFileCTS: TStringField
      FieldName = 'CTS'
      FixedChar = True
    end
    object BlueFileNA: TStringField
      FieldName = 'NA'
      FixedChar = True
    end
    object BlueFileGENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object BlueFilesubtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object BlueFileSS: TStringField
      FieldName = 'SS'
      FixedChar = True
      Size = 5
    end
  end
  object SR: TQuery
    DatabaseName = 'DB'
    Left = 941
    Top = 401
  end
  object BlueExcel: TQuery
    DatabaseName = 'DB'
    Left = 942
    Top = 432
  end
  object BlueIM: TQuery
    DatabaseName = 'DB'
    Left = 944
    Top = 468
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 539
    Top = 85
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 53
    Top = 364
  end
  object Sticker2: TQuery
    DatabaseName = 'dB'
    DataSource = YPZL_DS
    SQL.Strings = (
      'select * from ('
      '  select * from ('
      
        #9#9'select YPZLS.xieming,YPZLS.devcode,YPZLS.article,YPZLS.ywpm,YP' +
        'ZLS.cldh as clbh,YPZLS.jijie,YPZLS.ypdh,YPZLS.KFJD,YPZLS.CSBH'
      #9#9',case when YPZLS.zsywjc like '#39'%JNG%'#39' then '#39'LYN'#39' '
      
        #9#9'else  YPZLS.zsywjc end as zsywjc, CLZL_FLEX.CLDHFLEX AS FlexCo' +
        'de'
      #9'from ('
      
        #9#9'select kfxxzl.jijie,ypzl.kfjd,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,' +
        'kfxxzl.devcode,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm' +
        ',ypzls.csbh,zszl.zsywjc from ypzls'
      #9#9'left join ypzl on ypzl.ypdh=ypzls.ypdh '
      
        #9#9'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.she' +
        'hao=ypzl.shehao'
      #9#9'left join clzl on ypzls.clbh=clzl.cldh'
      #9#9'left join zszl on zszl.zsdh = ypzls.csbh'
      #9#9'where  ypzl.ypdh=:YPDH'
      #9#9'union'
      
        #9#9'select kfxxzl.jijie,ypzl.kfjd,ypzls.xh ,ypzls.ypdh,ypzls.BWBH ' +
        ',kfxxzl.devcode,kfxxzl.article,kfxxzl.xieming,clzhzl.cldh1,clzl.' +
        'ywpm,clzhzl.zsdh as csbh,zszl.zsywjc from ypzls'
      #9#9'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      #9#9'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        #9#9'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.she' +
        'hao=ypzl.shehao'
      #9#9'left join clzl on clzhzl.cldh1=clzl.cldh'
      #9#9'left join zszl on zszl.zsdh = clzhzl.zsdh'
      #9#9'where ypzl.ypdh=:YPDH'
      #9'union'
      
        #9#9'select jijie,clzhzl2.kfjd,clzhzl2.XH,ypdh,BWBH,devcode,article' +
        ',xieming,clzhzl.cldh1,clzl.ywpm,clzhzl.zsdh as csbh,zszl.zsywjc ' +
        'from ('
      
        #9#9'select kfxxzl.jijie,ypzl.kfjd,ypzls.xh,ypzls.ypdh,ypzls.BWBH ,' +
        'kfxxzl.devcode,kfxxzl.article,kfxxzl.xieming,clzl.cldh,clzl.ywpm' +
        '  from ypzls'
      #9#9'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      #9#9'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        #9#9'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.she' +
        'hao=ypzl.shehao'
      #9#9'left join clzl on clzhzl.cldh1=clzl.cldh'
      #9#9'where ypzl.ypdh=:YPDH )clzhzl2'
      #9#9'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      #9#9'left join clzl on clzhzl.cldh1=clzl.cldh'
      #9#9'left join zszl on zszl.zsdh = clzhzl.zsdh'
      #9') YPZLS'
      #9'LEFT JOIN bwzl ON YPZLS.BWBH = bwzl.bwdh'
      
        '                LEFT JOIN CLZL_FLEX ON CLZL_FLEX.CLDH = YPZLS.cl' +
        'dh'
      
        #9'where ( (left(YPZLS.cldh,1)  in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'P'#39') and YPZLS' +
        '.zsywjc<>'#39'OIA'#39')'
      #9#9'  or YPZLS.CSBH in ('#39'VU34'#39','#39'V034'#39','#39'A113'#39','#39'A114'#39') )'
      ' ) final'
      
        'group by xieming,devcode,article,ywpm,clbh,jijie,ypdh,kfjd,csbh,' +
        'zsywjc,FlexCode) final ')
    Left = 306
    Top = 454
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end>
  end
end
