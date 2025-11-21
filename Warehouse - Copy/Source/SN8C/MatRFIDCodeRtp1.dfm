object MatRFIDCodeRtp: TMatRFIDCodeRtp
  Left = 229
  Top = 171
  Width = 1024
  Height = 556
  Caption = 'MatRFIDCodeRtp'
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
    Width = 1008
    Height = 518
    ActivePage = TabSheet4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet4: TTabSheet
      Caption = 'Daily Material In Out'
      ImageIndex = 3
      object Splitter4: TSplitter
        Left = 585
        Top = 65
        Width = 5
        Height = 422
        Color = clHotLight
        ParentColor = False
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 24
          Top = 38
          Width = 34
          Height = 16
          Caption = 'From:'
        end
        object Label10: TLabel
          Left = 184
          Top = 12
          Width = 62
          Height = 16
          Caption = 'MatName:'
        end
        object Label11: TLabel
          Left = 20
          Top = 11
          Width = 38
          Height = 16
          Caption = 'CLBH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 159
          Top = 37
          Width = 20
          Height = 16
          Caption = 'To:'
        end
        object DTP3: TDateTimePicker
          Left = 62
          Top = 35
          Width = 97
          Height = 24
          Date = 43101.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43101.000000000000000000
          TabOrder = 0
        end
        object DTP4: TDateTimePicker
          Left = 182
          Top = 34
          Width = 97
          Height = 24
          Date = 43122.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43122.000000000000000000
          TabOrder = 1
        end
        object CLBHDEdit: TEdit
          Left = 61
          Top = 8
          Width = 116
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object YWPMDEdit: TEdit
          Left = 248
          Top = 8
          Width = 233
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object BitBtn1: TBitBtn
          Left = 528
          Top = 11
          Width = 58
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
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
        object BitBtn3: TBitBtn
          Left = 600
          Top = 11
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
      end
      object DBGridEh6: TDBGridEh
        Left = 590
        Top = 65
        Width = 410
        Height = 422
        Align = alClient
        DataSource = DS7
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
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh6CellClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'LLDate'
            Footer.FieldName = 'LLDate'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #38936#26009#26085#26399'|LLDate'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|SCBH'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991'|ywpm'
            Width = 275
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
            Width = 42
          end>
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 65
        Width = 585
        Height = 422
        Align = alLeft
        DataSource = DS5
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
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh7CellClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'RKDate'
            Footer.FieldName = 'RKDate'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #20837#24235#26085#26399'|RKDate'
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991'|YWPM'
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
            Width = 59
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Anytime Stock'
      object Splitter1: TSplitter
        Left = 577
        Top = 65
        Width = 5
        Height = 422
        Color = clHotLight
        ParentColor = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 39
          Width = 41
          Height = 16
          Caption = 'SCNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 11
          Width = 38
          Height = 16
          Caption = 'CLBH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 184
          Top = 12
          Width = 62
          Height = 16
          Caption = 'MatName:'
        end
        object Label3: TLabel
          Left = 208
          Top = 38
          Width = 34
          Height = 16
          Caption = 'From:'
        end
        object Label4: TLabel
          Left = 343
          Top = 40
          Width = 20
          Height = 16
          Caption = 'To:'
        end
        object BitBtn2: TBitBtn
          Left = 528
          Top = 11
          Width = 58
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
        object SCNOEdit: TEdit
          Left = 61
          Top = 34
          Width = 116
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CLBHEdit: TEdit
          Left = 61
          Top = 8
          Width = 116
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object YWPMEdit: TEdit
          Left = 248
          Top = 8
          Width = 233
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object DTP1: TDateTimePicker
          Left = 246
          Top = 35
          Width = 97
          Height = 24
          Date = 43101.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43101.000000000000000000
          TabOrder = 4
        end
        object DTP2: TDateTimePicker
          Left = 366
          Top = 34
          Width = 97
          Height = 24
          Date = 43122.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43122.000000000000000000
          TabOrder = 5
        end
        object Check: TCheckBox
          Left = 189
          Top = 38
          Width = 19
          Height = 17
          TabOrder = 6
        end
        object HideCK: TCheckBox
          Left = 472
          Top = 40
          Width = 49
          Height = 17
          Caption = 'RY#'
          TabOrder = 7
          OnClick = HideCKClick
        end
        object bbt6: TBitBtn
          Left = 600
          Top = 11
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
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
      end
      object Panel2: TPanel
        Left = 582
        Top = 65
        Width = 418
        Height = 422
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 1
          Top = 219
          Width = 416
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 222
          Width = 416
          Height = 199
          Align = alBottom
          DataSource = DS3
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
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Visible = False
          OnCellClick = DBGridEh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              ReadOnly = True
              Title.Caption = #20837#24235#21934'|RKNO'
            end
            item
              EditButtons = <>
              FieldName = 'DOCNO'
              Footers = <>
              Title.Caption = #36008#27331'INV|DOCNO'
              Width = 158
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25976#37327'|Qty'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CGBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35330#21934#32232#34399'|CGBH'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26448#26009#32232#34399'|CLBH'
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'ZSNO'
              Footers = <>
              Title.Caption = #25505#36092#21934'|ZSNO'
              Width = 94
            end>
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 416
          Height = 218
          Align = alClient
          TabOrder = 1
          object Splitter2: TSplitter
            Left = 257
            Top = 1
            Height = 216
          end
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 1
            Width = 256
            Height = 216
            Align = alLeft
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
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Visible = False
            OnCellClick = DBGridEh4CellClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SCNO'
                Footers = <>
                ReadOnly = True
                Title.Caption = #25475#25551#20837#24235'|SCNO'
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = #26009#34399'|CLBH'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                Title.Caption = #20837#24235#25976#37327'|Qty'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'RemQty'
                Footer.FieldName = 'RemQty'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = #25976#37327'|RemQty'
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = #26448#26009#33521#25991'|YWPM'
                Width = 286
              end>
          end
          object DBGridEh3: TDBGridEh
            Left = 260
            Top = 1
            Width = 155
            Height = 216
            Align = alClient
            DataSource = DS2
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
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh3CellClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SCNO'
                Footers = <>
                ReadOnly = True
                Title.Caption = #25475#25551#20837#24235'|SCNO'
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = #26009#34399'|CLBH'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'TagID'
                Footers = <>
                Title.Caption = #32232#34399'|TagID'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #20837#24235#25976#37327'|Qty'
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'RemQty'
                Footer.FieldName = 'RemQty'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = #25976#37327'|RemQty'
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'Pack'
                Footers = <>
                ReadOnly = True
                Title.Caption = #24207#34399'|Pack'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = #26448#26009#33521#25991'|YWPM'
                Width = 286
              end>
          end
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 65
        Width = 577
        Height = 422
        Align = alLeft
        DataSource = DS1
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
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh1CellClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26009#34399'|CLBH'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991'|YWPM'
            Width = 279
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #25976#37327'|RemQty'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'KCQty'
            Footers = <>
            Title.Caption = 'ERP'#20489#24235'|KCQty'
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Monthly Stock'
      ImageIndex = 2
      object Splitter5: TSplitter
        Left = 657
        Top = 65
        Width = 5
        Height = 422
        Color = clHotLight
        ParentColor = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 16
          Top = 11
          Width = 38
          Height = 16
          Caption = 'CLBH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 184
          Top = 12
          Width = 62
          Height = 16
          Caption = 'MatName:'
        end
        object Label9: TLabel
          Left = 141
          Top = 39
          Width = 39
          Height = 16
          Caption = 'Month:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 20
          Top = 39
          Width = 32
          Height = 16
          Caption = 'Year:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 249
          Top = 41
          Width = 66
          Height = 16
          Caption = 'StockDate:'
        end
        object btnQuery: TBitBtn
          Left = 528
          Top = 11
          Width = 58
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnQueryClick
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
        object edtCLBH: TEdit
          Left = 61
          Top = 8
          Width = 116
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtYWPM: TEdit
          Left = 248
          Top = 8
          Width = 233
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object btnExcel: TBitBtn
          Left = 600
          Top = 11
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
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
        object cbxYear: TComboBox
          Left = 60
          Top = 35
          Width = 73
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 1
          ParentFont = False
          TabOrder = 4
          Text = '2018'
          OnChange = cbxMonthChange
          Items.Strings = (
            '2017'
            '2018'
            '2019'
            '2020'
            '2021'
            '2022'
            '2023'
            '2024')
        end
        object cbxMonth: TComboBox
          Left = 182
          Top = 35
          Width = 57
          Height = 24
          DropDownCount = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 5
          Text = '01'
          OnChange = cbxMonthChange
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
        object StockDate: TDateTimePicker
          Left = 320
          Top = 36
          Width = 105
          Height = 24
          Date = 39289.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 39289.406377673610000000
          TabOrder = 6
        end
      end
      object DBG_REPORT: TDBGridEh
        Left = 0
        Top = 65
        Width = 657
        Height = 422
        Align = alLeft
        DataSource = DS_ReportStock
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
        PopupMenu = PopupMenu3
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBG_REPORTCellClick
        OnGetCellParams = DBG_REPORTGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|YEAR'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|MONTH'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991'|YWPM'
            Width = 272
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'KCQty'
            Footers = <>
            Title.Caption = 'ERP'#25976#37327'|KCQty'
            Width = 59
          end>
      end
      object DBG_DETAILREPORT: TDBGridEh
        Left = 662
        Top = 65
        Width = 338
        Height = 422
        Align = alClient
        DataSource = DS_ReportDetailStock
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
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBG_DETAILREPORTCellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #25475#25551#20837#24235'|SCNO'
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#33521#25991'|YWPM'
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 50
          end
          item
            DisplayFormat = '#0.00'
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'TAGID'
            Footers = <>
            Title.Caption = 'RFID'#32232#34399'|TAGID'
          end
          item
            EditButtons = <>
            FieldName = 'Pack'
            Footers = <>
            Title.Caption = #21253#35037'|Pack'
            Width = 61
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Exception'
      ImageIndex = 1
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 537
        Height = 487
        Align = alLeft
        DataSource = DS6
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh5CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCNO'
            Footer.FieldName = 'SCNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #25475#25551#20837#24235'|SCNO'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'SCQty'
            Footers = <>
            Title.Caption = #25475#25551'Qty|SCQty'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Title.Caption = #20837#24235#26085'|USERDATE'
            Width = 76
          end>
      end
    end
  end
  object KCRKRF: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select RFSS.*,KCZLS.KCQty from ('
      'select CLBH,YWPM,DWBH,Sum(RemQty) as RemQty from ('
      
        'select RFSS.CLBH,RFSS.Pack,RFSS.Qty,IsNull(RemQty,Qty) as RemQty' +
        ' ,RFSS.TagID,CLZL.YWPM,CLZL.DWBH '
      'from KCRKScan_RFSS RFSS'
      'left join   CLZL on CLZL.CLDH=RFSS.CLBH'
      'where RFSS.SCNO like '#39'2018080001%'#39' '
      '   and RFSS.CLBH like '#39'C010002596%'#39' '
      ') RFSS'
      'where RFSS.RemQty>0'
      'Group by CLBH,YWPM,DWBH ) RFSS'
      'left join KCZLS on RFSS.CLBH=KCZLS.CLBH and KCZLS.CKBH='#39'VA12'#39)
    Left = 203
    Top = 212
    object KCRKRFCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKRFYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCRKRFDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCRKRFRemQty: TFloatField
      FieldName = 'RemQty'
      DisplayFormat = '#0.00'
    end
    object KCRKRFKCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = KCRKRF
    Left = 204
    Top = 180
  end
  object DS2: TDataSource
    DataSet = KCRKRFSS
    Left = 268
    Top = 180
  end
  object KCRKRFSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select SCNO,CLBH,YWPM,DWBH,Qty,RemQty,TagID,SCNO,Pack'
      'from ('
      
        'select RFSS.SCNO,RFSS.CLBH,RFSS.Pack,RFSS.Qty,IsNull(RemQty,Qty)' +
        ' as RemQty ,RFSS.TagID,CLZL.YWPM,CLZL.DWBH '
      'from KCRKScan_RFSS RFSS'
      'left join   CLZL on CLZL.CLDH=RFSS.CLBH'
      'where RFSS.SCNO=:SCNO'
      '   and RFSS.CLBH=:CLBH'
      ') RFSS'
      'where RFSS.RemQty>0')
    Left = 267
    Top = 212
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object KCRKRFSSSCNO: TStringField
      FieldName = 'SCNO'
      FixedChar = True
      Size = 11
    end
    object KCRKRFSSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKRFSSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCRKRFSSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCRKRFSSQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object KCRKRFSSRemQty: TFloatField
      FieldName = 'RemQty'
      DisplayFormat = '#0.00'
    end
    object KCRKRFSSTagID: TIntegerField
      FieldName = 'TagID'
    end
    object KCRKRFSSPack: TIntegerField
      FieldName = 'Pack'
    end
  end
  object DS3: TDataSource
    DataSet = KCRKS
    Left = 300
    Top = 180
  end
  object KCRKS: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'select KCRK.RKNO,KCRK.ZSNO,KCRK.DOCNO,KCRKS.CLBH,KCRKS.CGBH,KCRK' +
        'S.Qty  '
      'from KCRK'
      'Left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      'where KCRK.SCNO=:SCNO and KCRKS.CLBH=:CLBH')
    Left = 299
    Top = 212
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object KCRKSRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKSZSNO: TStringField
      FieldName = 'ZSNO'
      Origin = 'DB.KCRK.ZSNO'
      FixedChar = True
    end
    object KCRKSDOCNO: TStringField
      FieldName = 'DOCNO'
      Origin = 'DB.KCRK.DOCNO'
      FixedChar = True
      Size = 30
    end
    object KCRKSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCRKS.CLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKSCGBH: TStringField
      FieldName = 'CGBH'
      Origin = 'DB.KCRKS.CGBH'
      FixedChar = True
      Size = 15
    end
    object KCRKSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCRKS.Qty'
      DisplayFormat = '#0.00'
    end
  end
  object KCRKRFS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select SCNO,CLBH,YWPM,DWBH,sum(Qty) as Qty,Sum(RemQty) as RemQty'
      'from ('
      
        'select RFSS.SCNO,RFSS.CLBH,RFSS.Pack,RFSS.Qty,IsNull(RemQty,Qty)' +
        ' as RemQty ,RFSS.TagID,CLZL.YWPM,CLZL.DWBH '
      'from KCRKScan_RFSS RFSS'
      'left join   CLZL on CLZL.CLDH=RFSS.CLBH'
      'where RFSS.SCNO like '#39'%'#39' '
      '   and RFSS.CLBH like '#39'%'#39' '
      ') RFSS'
      'where RFSS.RemQty>0 and RFSS.CLBH='#39'C010002596'#39
      'Group by SCNO,CLBH,YWPM,DWBH')
    Left = 235
    Top = 212
    object KCRKRFSSCNO: TStringField
      FieldName = 'SCNO'
      FixedChar = True
      Size = 11
    end
    object KCRKRFSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKRFSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCRKRFSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCRKRFSQty: TFloatField
      FieldName = 'Qty'
    end
    object KCRKRFSRemQty: TFloatField
      FieldName = 'RemQty'
    end
  end
  object DS4: TDataSource
    DataSet = KCRKRFS
    Left = 236
    Top = 180
  end
  object DS6: TDataSource
    DataSet = ErrKSCRKScan
    Left = 500
    Top = 181
  end
  object ErrKSCRKScan: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRKScan_RFS.SCNO,KCRKScan_RFS.CLBH,KCRKScan_RFS.Qty as S' +
        'CQty,KCRKS.Qty as RKQty,KCRKScan_RFS.USERDATE  from KCRKScan_RFS'
      'left join ('
      #9'select KCRK.SCNO,KCRKS.CLBH,Sum(KCRKS.Qty) Qty  '
      #9'from KCRK'
      #9'Left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      #9'where KCRK.SCNO is not null --and KCRK.USERDATE>GetDate()-90'
      #9'Group by KCRK.SCNO,KCRKS.CLBH'
      
        ') KCRKS on KCRKS.SCNO=KCRKScan_RFS.SCNO and KCRKS.CLBH=KCRKScan_' +
        'RFS.CLBH'
      'left join ('
      '   select SCNO,CLBH,Sum(IsNull(RemQty,Qty)) as RemQty '
      '   from KCRKScan_RFSS Group by SCNO,CLBH '
      
        ') KCRKScan_RFSS on KCRKScan_RFSS.SCNO=KCRKScan_RFS.SCNO and KCRK' +
        'Scan_RFSS.CLBH=KCRKScan_RFS.CLBH'
      
        'where ( Round(KCRKS.Qty,2)<>Round(KCRKScan_RFS.Qty,2) ) or (KCRK' +
        'S.Qty is null) and KCRKScan_RFSS.RemQty>0'
      '')
    Left = 499
    Top = 213
    object ErrKSCRKScanSCNO: TStringField
      FieldName = 'SCNO'
      FixedChar = True
      Size = 11
    end
    object ErrKSCRKScanCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ErrKSCRKScanSCQty: TFloatField
      FieldName = 'SCQty'
      DisplayFormat = '#0.00'
    end
    object ErrKSCRKScanRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.00'
    end
    object ErrKSCRKScanUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 659
    Top = 53
  end
  object DS_ReportStock: TDataSource
    DataSet = KCCLMONTH_RFPACK
    Left = 364
    Top = 182
  end
  object KCCLMONTH_RFPACK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      'Select RFPACK.*,KCZLS.KCQty from ('
      'select KCYEAR,KCMONTH,CKBH,CLBH,YWPM,DWBH,Sum(Qty) as Qty from ('
      
        'select KCYEAR,KCMONTH,CKBH,RFPACK.CLBH,RFPACK.Pack,RFPACK.Qty,CL' +
        'ZL.YWPM,CLZL.DWBH'
      'from KCCLMONTH_RFPACK RFPACK'
      'left join  CLZL on CLZL.CLDH=RFPACK.CLBH'
      'where RFPACK.CLBH like '#39'%'#39
      '    and RFPACK.KCYEAR = '#39'2018'#39
      '    and RFPACK.KCMONTH = '#39'08'#39
      ') RFPACK'
      'Group by CLBH,YWPM,DWBH,KCYEAR,KCMONTH,CKBH) RFPACK'
      'left join KCZLS on RFPACK.CLBH=KCZLS.CLBH and KCZLS.CKBH='#39'VA12'#39)
    Left = 364
    Top = 214
    object KCCLMONTH_RFPACKCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCCLMONTH_RFPACKYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCCLMONTH_RFPACKDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCCLMONTH_RFPACKQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object KCCLMONTH_RFPACKKCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '#0.00'
    end
    object KCCLMONTH_RFPACKKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object KCCLMONTH_RFPACKKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object KCCLMONTH_RFPACKCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS_ReportDetailStock: TDataSource
    DataSet = RFPACKS
    Left = 400
    Top = 182
  end
  object RFPACKS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ReportStock
    SQL.Strings = (
      ''
      ''
      
        'select RFPACK.SCNO,RFPACK.CLBH,RFPACK.Pack,RFPACK.Qty,CLZL.YWPM,' +
        'CLZL.DWBH,RFSS.TAGID '
      'from KCCLMONTH_RFPACK RFPACK'
      
        'left join   KCRKSCan_RFSS RFSS on right(RFSS.SCNO,8)=RFPACK.SCNO' +
        ' and RFSS.CLBH=RFPACK.CLBH and RFSS.Pack=RFPACK.Pack'
      'left join   CLZL on CLZL.CLDH=RFPACK.CLBH'
      'where RFPACK.CLBH=:CLBH'
      '    and RFPACK.KCYEAR=:KCYEAR'
      '    and RFPACK.KCMONTH=:KCMONTH'
      '')
    Left = 400
    Top = 214
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'KCYEAR'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'KCMONTH'
        ParamType = ptUnknown
        Size = 3
      end>
    object RFPACKSSCNO: TStringField
      FieldName = 'SCNO'
      FixedChar = True
      Size = 10
    end
    object RFPACKSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object RFPACKSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object RFPACKSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object RFPACKSQty: TFloatField
      FieldName = 'Qty'
    end
    object RFPACKSPack: TIntegerField
      FieldName = 'Pack'
    end
    object RFPACKSTAGID: TIntegerField
      FieldName = 'TAGID'
    end
  end
  object MatQryIn: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select * from ('
      
        'select  convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDA' +
        'TE,111)) as RKDate,KCRKScan_RFSS.CLBH,CLZL.YWPM,CLZL.DWBH,SUM(Qt' +
        'y) as Qty from KCRKScan_RFSS'
      'left join KCRKScan_RF on KCRKScan_RFSS.SCNO=KCRKScan_RF.SCNO'
      'left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH'
      
        'where KCRKScan_RF.CKBH='#39'VA12'#39' and convert(smalldatetime,convert(' +
        'varchar,KCRKScan_RF.USERDATE,111)) between '#39'2008/01/01'#39' and '#39'202' +
        '0/01/01'#39
      
        'Group by convert(smalldatetime,convert(varchar,KCRKScan_RF.USERD' +
        'ATE,111)),KCRKScan_RFSS.CLBH,CLZL.YWPM,CLZL.DWBH'
      ') RK order by RKDate,CLBH'
      ''
      ''
      '')
    Left = 84
    Top = 214
    object MatQryInRKDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'RKDate'
    end
    object MatQryInCLBH: TStringField
      DisplayWidth = 11
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MatQryInYWPM: TStringField
      DisplayWidth = 40
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object MatQryInDWBH: TStringField
      DisplayWidth = 7
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object MatQryInQty: TFloatField
      DisplayWidth = 10
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
  end
  object DS5: TDataSource
    DataSet = MatQryIn
    Left = 84
    Top = 182
  end
  object DS7: TDataSource
    DataSet = MatQryOut
    Left = 124
    Top = 182
  end
  object MatQryOut: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(smalldatetime,convert(varchar,KCLLS.SCANUSERDATE,' +
        '111)) as LLDate,KCLLS.SCBH,KCLLS.CLBH,CLZL.ywpm,CLZL.dwbh,SUM(KC' +
        'LLS.Qty) as Qty from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'where KCLL.CKBH='#39'VA12'#39'  and convert(smalldatetime,convert(varcha' +
        'r,KCLLS.SCANUSERDATE,111))  between '#39'2008/01/01'#39' and '#39'2020/01/01' +
        #39' and KCLLS.SCANUSERDATE is not null'
      
        'Group by convert(smalldatetime,convert(varchar,KCLLS.SCANUSERDAT' +
        'E,111)),KCLLS.SCBH,KCLLS.CLBH,CLZL.ywpm,CLZL.dwbh'
      ''
      ''
      ''
      '')
    Left = 124
    Top = 214
    object MatQryOutLLDate: TDateTimeField
      FieldName = 'LLDate'
    end
    object MatQryOutSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object MatQryOutCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MatQryOutywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MatQryOutdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object MatQryOutQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 84
    Top = 251
    object MenuN11: TMenuItem
      Caption = 'Detail'
      OnClick = MenuN11Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 124
    Top = 251
    object MenuN21: TMenuItem
      Caption = 'Detail'
      OnClick = MenuN21Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 401
    Top = 249
    object DeleteMonthlyData1: TMenuItem
      Caption = 'Delete Monthly Data'
      OnClick = DeleteMonthlyData1Click
    end
    object RemQty01: TMenuItem
      Caption = 'Update RemQty=0 (Not in Warehouse)'
      OnClick = RemQty01Click
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 36
    Top = 212
  end
end
