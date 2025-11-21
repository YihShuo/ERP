object StockShoeMonth: TStockShoeMonth
  Left = 556
  Top = 171
  Width = 1612
  Height = 558
  Caption = 'StockShoeMonth'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1604
    Height = 527
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Mass'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 74
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 162
          Top = 48
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YSBH:'
        end
        object Label1: TLabel
          Left = 5
          Top = 16
          Width = 45
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 345
          Top = 17
          Width = 48
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
        end
        object Label15: TLabel
          Left = 167
          Top = 15
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Memo:'
        end
        object Label16: TLabel
          Left = 5
          Top = 47
          Width = 44
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object YSBHEdit: TEdit
          Left = 215
          Top = 45
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 770
          Top = 20
          Width = 70
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 53
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button2: TButton
          Left = 842
          Top = 20
          Width = 70
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button2Click
        end
        object CheckBox1: TCheckBox
          Left = 475
          Top = 16
          Width = 60
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Button3: TButton
          Left = 916
          Top = 20
          Width = 70
          Height = 33
          Caption = 'Print'
          TabOrder = 5
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 988
          Top = 20
          Width = 70
          Height = 33
          Caption = 'Confirm'
          TabOrder = 6
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 1062
          Top = 20
          Width = 70
          Height = 33
          Caption = 'Reset'
          TabOrder = 7
          OnClick = Button5Click
        end
        object ComboBox1: TComboBox
          Left = 397
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 8
        end
        object MemoEdit: TEdit
          Left = 215
          Top = 12
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 9
        end
        object DDBHEdit: TEdit
          Left = 53
          Top = 44
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object CheckBox8: TCheckBox
          Left = 475
          Top = 42
          Width = 81
          Height = 17
          Caption = 'Qty is null'
          TabOrder = 11
        end
        object CheckBox9: TCheckBox
          Left = 563
          Top = 16
          Width = 57
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 12
        end
        object TRQtyCK: TCheckBox
          Left = 563
          Top = 42
          Width = 76
          Height = 17
          Caption = 'TRQty>0'
          TabOrder = 13
        end
        object MergeYSBHCK: TCheckBox
          Left = 648
          Top = 15
          Width = 97
          Height = 17
          Caption = 'Merge YSBH'
          Checked = True
          State = cbChecked
          TabOrder = 14
        end
        object chk_OrderSeperate: TCheckBox
          Left = 648
          Top = 40
          Width = 113
          Height = 17
          Caption = 'Order Seperate'
          Checked = True
          State = cbChecked
          TabOrder = 15
        end
        object B_ImportP3: TBitBtn
          Left = 1155
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Import'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnClick = B_ImportP3Click
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
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 74
        Width = 1596
        Height = 422
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|DDBH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'YSBH'
            Footers = <>
            Title.Caption = #21046#20196#32232#34399'|YSBH'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'TRQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25286#21934#20986#24235'|TRQty'
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#25976#37327'|XHQty'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footer.FieldName = 'DDZT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'UnitPrice'
            Footers = <>
            Title.Caption = #21934#20729'|UnitPrice'
          end
          item
            EditButtons = <>
            FieldName = 'Amount'
            Footers = <>
            Title.Caption = #32317#20729'|Amount'
          end
          item
            EditButtons = <>
            FieldName = '<=30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '31~60'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '61~90'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '91~120'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '121~180'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '181~360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '>360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 187
          end>
      end
    end
    object TS5: TTabSheet
      Caption = 'Mass_Monthly'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label17: TLabel
          Left = 8
          Top = 8
          Width = 262
          Height = 24
          Caption = 'Monthly Stock Mass Production'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 262
          Top = 47
          Width = 42
          Height = 16
          Caption = 'DDBH:'
        end
        object Label19: TLabel
          Left = 28
          Top = 45
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label20: TLabel
          Left = 143
          Top = 45
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Edt_RY1: TEdit
          Left = 308
          Top = 44
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_Query: TButton
          Left = 583
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = btn_QueryClick
        end
        object btn_Excel: TButton
          Left = 680
          Top = 38
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 2
          OnClick = btn_ExcelClick
        end
        object cbx_Year: TComboBox
          Left = 64
          Top = 43
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 0
          TabOrder = 3
          Text = '2017'
        end
        object cbx_Month: TComboBox
          Left = 184
          Top = 43
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 4
          Text = '01'
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
        object btn_Monthly: TButton
          Left = 781
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = btn_MonthlyClick
        end
      end
      object DBG_MonthStock: TDBGridEh
        Left = 0
        Top = 81
        Width = 1596
        Height = 415
        Align = alClient
        DataSource = DS_MonthStock
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934'|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#26411'|RemQty'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|<30'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|31-60'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|61-90'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|91-120'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|121-180'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|181-359'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|>=360'#22825
            Width = 80
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Sample'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 148
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 31
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 356
          Top = 17
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestNo:'
        end
        object Label10: TLabel
          Left = 488
          Top = 17
          Width = 48
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
        end
        object Edit2: TEdit
          Left = 221
          Top = 14
          Width = 130
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button6: TButton
          Left = 694
          Top = 8
          Width = 67
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button6Click
        end
        object DTP2: TDateTimePicker
          Left = 50
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button7: TButton
          Left = 764
          Top = 8
          Width = 69
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button7Click
        end
        object CheckBox2: TCheckBox
          Left = 611
          Top = 8
          Width = 56
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Edit3: TEdit
          Left = 412
          Top = 14
          Width = 71
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object Button8: TButton
          Left = 835
          Top = 8
          Width = 78
          Height = 33
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 915
          Top = 8
          Width = 70
          Height = 33
          Caption = 'Confirm'
          TabOrder = 7
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 986
          Top = 8
          Width = 71
          Height = 33
          Caption = 'Reset'
          TabOrder = 8
          OnClick = Button10Click
        end
        object ComboBox2: TComboBox
          Left = 540
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 9
        end
        object CheckBox4: TCheckBox
          Left = 611
          Top = 27
          Width = 56
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 10
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1596
        Height = 447
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #27171#21697#21934#32232#34399'|Sample No'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#25976#37327'|XHQty'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = #36890#22577#34399'|TestNo'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 153
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'UnitPrice'
            Footers = <>
            Title.Caption = #21934#20729'|UnitPrice'
          end
          item
            EditButtons = <>
            FieldName = 'Amount'
            Footers = <>
            Title.Caption = #32317#20729'|Amount'
          end
          item
            EditButtons = <>
            FieldName = '<=30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '31~60'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '61~90'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '91~120'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '121~180'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '181~360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '>360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 144
          end>
      end
    end
    object TS6: TTabSheet
      Caption = 'Sample_Monthly'
      ImageIndex = 5
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label21: TLabel
          Left = 8
          Top = 8
          Width = 240
          Height = 24
          Caption = 'Monthly Stock Sample Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 284
          Top = 47
          Width = 42
          Height = 16
          Caption = 'DDBH:'
        end
        object Label23: TLabel
          Left = 28
          Top = 45
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label24: TLabel
          Left = 143
          Top = 45
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Edit1: TEdit
          Left = 328
          Top = 44
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_Sample: TButton
          Left = 583
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = btn_SampleClick
        end
        object Button22: TButton
          Left = 680
          Top = 38
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 2
          OnClick = Button22Click
        end
        object cbx_Year_Sample: TComboBox
          Left = 64
          Top = 43
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 0
          TabOrder = 3
          Text = '2017'
        end
        object cbx_Month_Sample: TComboBox
          Left = 184
          Top = 43
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 4
          Text = '01'
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
        object Button23: TButton
          Left = 781
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = Button23Click
        end
      end
      object DBG_MonthStock_Sample: TDBGridEh
        Left = 0
        Top = 81
        Width = 1596
        Height = 415
        Align = alClient
        DataSource = DS_MonthStock_Sample
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934'|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#26411'|RemQty'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|<30'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|31-60'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|61-90'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|91-120'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|121-180'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|181-359'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|>=360'#22825
            Width = 80
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'CBY'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 152
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label9: TLabel
          Left = 10
          Top = 16
          Width = 37
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 345
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrderId:'
        end
        object Label11: TLabel
          Left = 417
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrderId:'
        end
        object Label12: TLabel
          Left = 536
          Top = 17
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDZT:'
        end
        object Edit4: TEdit
          Left = 225
          Top = 14
          Width = 129
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button11: TButton
          Left = 785
          Top = 8
          Width = 64
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button11Click
        end
        object DTP3: TDateTimePicker
          Left = 50
          Top = 13
          Width = 89
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button12: TButton
          Left = 850
          Top = 8
          Width = 71
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button12Click
        end
        object CheckBox3: TCheckBox
          Left = 664
          Top = 9
          Width = 59
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object Edit5: TEdit
          Left = 418
          Top = 14
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object Button13: TButton
          Left = 923
          Top = 8
          Width = 70
          Height = 33
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 997
          Top = 8
          Width = 68
          Height = 33
          Caption = 'Confirm'
          TabOrder = 7
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 1070
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Reset'
          TabOrder = 8
          OnClick = Button15Click
        end
        object CheckBox5: TCheckBox
          Left = 664
          Top = 27
          Width = 59
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 9
        end
        object DDZTEdit: TEdit
          Left = 592
          Top = 14
          Width = 59
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object MergeCB: TCheckBox
          Left = 728
          Top = 16
          Width = 59
          Height = 17
          Caption = 'Merge'
          Checked = True
          State = cbChecked
          TabOrder = 11
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1596
        Height = 447
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #22823#35330#21934#34399'|Sample NO'
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#24235#25976#37327'|XHQty'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = 'CBY'#23567#35330#21934#34399'|OrderId'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'UNITPRICE'
            Footers = <>
            Title.Caption = #21934#20729'|UNITPRICE'
          end
          item
            EditButtons = <>
            FieldName = 'Amount'
            Footers = <>
            Title.Caption = #32317#20729'|Amount'
          end
          item
            EditButtons = <>
            FieldName = '<=30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '31~60'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '61~90'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '91~120'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '121~180'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '181~360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '>360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 118
          end>
      end
    end
    object TS7: TTabSheet
      Caption = 'CBY_Monthly'
      ImageIndex = 6
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label25: TLabel
          Left = 8
          Top = 8
          Width = 213
          Height = 24
          Caption = 'Monthly Stock CBY Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 284
          Top = 47
          Width = 42
          Height = 16
          Caption = 'DDBH:'
        end
        object Label27: TLabel
          Left = 28
          Top = 45
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label28: TLabel
          Left = 143
          Top = 45
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Edit7: TEdit
          Left = 328
          Top = 44
          Width = 177
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_CBY: TButton
          Left = 583
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = btn_CBYClick
        end
        object Button24: TButton
          Left = 680
          Top = 38
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 2
          OnClick = Button24Click
        end
        object cbx_Year_CBY: TComboBox
          Left = 64
          Top = 43
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 0
          TabOrder = 3
          Text = '2017'
        end
        object cbx_Month_CBY: TComboBox
          Left = 184
          Top = 43
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 4
          Text = '01'
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
        object Button25: TButton
          Left = 781
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = Button25Click
        end
      end
      object DBG_MonthStock_CBY: TDBGridEh
        Left = 0
        Top = 81
        Width = 1596
        Height = 415
        Align = alClient
        DataSource = DS_MonthStock_CBY
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934'|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#26411'|RemQty'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|<30'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|31-60'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|61-90'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|91-120'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|121-180'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|181-359'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|>=360'#22825
            Width = 80
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Outsole'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 49
        Width = 1596
        Height = 447
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|DDBH'
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footer.FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#24235#25976#37327'|XHQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footer.FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 79
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 49
        Align = alTop
        TabOrder = 1
        object Label13: TLabel
          Left = 194
          Top = 18
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object Label14: TLabel
          Left = 23
          Top = 18
          Width = 36
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 250
          Top = 13
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button16: TButton
          Left = 559
          Top = 8
          Width = 71
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button16Click
        end
        object DTP4: TDateTimePicker
          Left = 63
          Top = 13
          Width = 113
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button17: TButton
          Left = 637
          Top = 8
          Width = 71
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button17Click
        end
        object CheckBox6: TCheckBox
          Left = 390
          Top = 18
          Width = 57
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object CheckBox7: TCheckBox
          Left = 468
          Top = 18
          Width = 57
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 5
        end
        object Button18: TButton
          Left = 715
          Top = 7
          Width = 71
          Height = 33
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 793
          Top = 7
          Width = 71
          Height = 33
          Caption = 'Confirm'
          TabOrder = 7
          OnClick = Button19Click
        end
        object Button20: TButton
          Left = 871
          Top = 6
          Width = 71
          Height = 33
          Caption = 'Reset'
          TabOrder = 8
          OnClick = Button20Click
        end
      end
    end
    object TS8: TTabSheet
      Caption = 'Outsole_Monthly'
      ImageIndex = 7
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1596
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label29: TLabel
          Left = 8
          Top = 8
          Width = 241
          Height = 24
          Caption = 'Monthly Stock Outsole Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 284
          Top = 47
          Width = 42
          Height = 16
          Caption = 'DDBH:'
        end
        object Label31: TLabel
          Left = 28
          Top = 45
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label32: TLabel
          Left = 143
          Top = 45
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Edit8: TEdit
          Left = 328
          Top = 44
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_Out: TButton
          Left = 583
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = btn_OutClick
        end
        object Button26: TButton
          Left = 680
          Top = 38
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 2
          OnClick = Button26Click
        end
        object cbx_Year_Out: TComboBox
          Left = 64
          Top = 43
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 0
          TabOrder = 3
          Text = '2017'
        end
        object cbx_Month_Out: TComboBox
          Left = 184
          Top = 43
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 4
          Text = '01'
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
        object Button27: TButton
          Left = 781
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = Button27Click
        end
      end
      object DBG_MonthStock_Out: TDBGridEh
        Left = 0
        Top = 81
        Width = 1596
        Height = 415
        Align = alClient
        DataSource = DS_MonthStock_Out
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934'|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#26411'|RemQty'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|<30'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|31-60'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|61-90'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|91-120'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|121-180'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|181-359'#22825
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384#25976#37327'|>=360'#22825
            Width = 80
          end>
      end
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YWDDM.DDBH,YWDDM.YSBH,YWDDM.CKBH,IsNull(YWDD.Qty,DDZL.Pai' +
        'rs) as Pairs,YWDDM.LastRem,YWDDM.RKQty,YWDDM.XHQty,YWDDM.TRQty,Y' +
        'WDDM.Qty,'
      
        #9'   DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT,YWCPMemo.Memo,0 as '#39'<=3' +
        '0'#39',0 as '#39'31~60'#39',0 as '#39'61~90'#39',0 as '#39'91~120'#39',0 as '#39'121~180'#39',0 as '#39 +
        '181~360'#39',0 as '#39'>360'#39',Mass_Cost.UnitPrice,isnull(YWDDM.Qty,0)*Mas' +
        's_Cost.UnitPrice as Amount'
      'from ('
      
        #9'Select YWCP.DDBH,IsNull(YWDD.YSBH,YWCP.DDBH) as YSBH,Max(YWCP.C' +
        'KBH) as CKBH,Sum(YWCPMonth.Qty) as LastRem,Sum(YWCPRK.Qty) as RK' +
        'Qty,'
      
        #9#9'Sum(YWCPXH.Qty) as XHQty,Sum(YWCPMONTH_DDZLTR.Qty) as TRQty,Ca' +
        'se when SUM(YWCP.Qty) is not null and SUM(YWCPMONTH_DDZLTR.Qty) ' +
        'is not null then SUM(YWCP.Qty)-SUM(YWCPMONTH_DDZLTR.Qty) else SU' +
        'M(YWCP.Qty) end as Qty'
      #9'from ('
      #9#9'Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty from ('
      #9#9#9'Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB '
      #9#9#9'From YWCPMONTH   '
      #9#9#9'where YWCPMONTH.KCYEAR='#39'2023'#39'  '
      #9#9#9'and YWCPMONTH.KCMONTH='#39'01'#39' '
      #9#9#9'union all'
      
        #9#9#9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,' +
        #39'2'#39' as SB'
      #9#9#9'from YWCP'
      
        #9#9#9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111))' +
        ' between '#39'2023/02/01'#39' and '#39'2023/02/08'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9#9#9'Group by YWCP.DDBH'
      #9#9#9'union all'
      
        #9#9#9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,-1*Sum( Case when SB=' +
        #39'3'#39' then YWCP.Qty else 0 end) as Qty,'#39'3'#39' as SB'
      #9#9#9'from YWCP'
      
        #9#9#9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)' +
        ') between '#39'2023/02/01'#39' and '#39'2023/02/08'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9#9#9'Group by YWCP.DDBH  ) YWCPMONTH'
      #9#9'Group by DDBH  ) YWCP'
      #9#9'Left join  ('
      #9#9#9'Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB '
      #9#9#9'From YWCPMONTH   '
      #9#9#9'where YWCPMONTH.KCYEAR='#39'2023'#39'  '
      
        #9#9#9'and YWCPMONTH.KCMONTH='#39'01'#39'  ) YWCPMonth on YWCP.DDBH=YWCPMont' +
        'h.DDBH'
      #9#9'Left join  ('
      
        #9#9#9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,' +
        #39'2'#39' as SB'
      #9#9#9'from YWCP'
      
        #9#9#9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111))' +
        ' between '#39'2023/02/01'#39' and '#39'2023/02/08'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9#9#9'Group by YWCP.DDBH ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH'
      #9#9'Left join  ('
      
        #9#9#9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum( Case when SB='#39'3'#39 +
        ' then YWCP.Qty else 0 end) as Qty,'#39'3'#39' as SB'
      #9#9#9'from YWCP'
      
        #9#9#9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)' +
        ') between '#39'2023/02/01'#39' and '#39'2023/02/08'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9#9#9'Group by YWCP.DDBH ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH'#9
      #9#9'Left join  ( '
      
        #9#9#9'Select YWCPDDTR.CKBH,YWCPDDTR.DDBH, Case when IsNull(YWCP.Qty' +
        ',0)<YWCPDDTR.Qty then IsNull(YWCP.Qty,0) else YWCPDDTR.Qty end a' +
        's  Qty,YWCPDDTR.SB from ('
      
        #9#9#9#9'Select null as CKBH,YWCPMONTH_DDZLTR.DDBH,Sum(YWCPMONTH_DDZL' +
        'TR.Qty) as Qty,'#39'6'#39' as SB '
      #9#9#9#9'from YWCPMONTH_DDZLTR'
      #9#9#9#9'where ddbh in (Select DDBH from ('
      #9#9#9#9#9#9#9#9#9'Select YWCPMONTH.DDBH From YWCPMONTH   '
      
        #9#9#9#9#9#9#9#9#9'where YWCPMONTH.KCYEAR='#39'2023'#39' and YWCPMONTH.KCMONTH='#39'01' +
        #39' '
      #9#9#9#9#9#9#9#9#9'Union all'
      #9#9#9#9#9#9#9#9#9'Select YWCP.DDBH from YWCP'
      
        #9#9#9#9#9#9#9#9#9'where convert(smalldatetime,convert(varchar,YWCP.INDATE' +
        ',111)) between '#39'2023/02/01'#39' and '#39'2023/02/08'#39' and IsNull(SB,'#39#39')<>' +
        #39#39' '
      #9#9#9#9#9#9#9#9#9'Group by YWCP.DDBH ) YWCP Group by DDBH)'
      #9#9#9#9'Group by YWCPMONTH_DDZLTR.DDBH'
      #9#9#9') YWCPDDTR '
      
        #9#9#9'inner join (Select YWCPMONTH_DDZLTR.DDBH,Sum(YWCP.Qty) as Qty' +
        ' From YWCP'
      
        #9#9#9#9#9#9'inner join YWCPMONTH_DDZLTR on YWCPMONTH_DDZLTR.DDBH1=YWCP' +
        '.DDBH'
      
        #9#9#9#9#9#9'where  IsNull(SB,'#39#39')<>'#39#39'  and convert(smalldatetime,conver' +
        't(varchar,YWCP.INDATE,111))<='#39'2023/02/08'#39'   '
      #9#9#9#9#9#9'Group by YWCPMONTH_DDZLTR.DDBH'
      #9#9')YWCP on YWCPDDTR.DDBH=YWCP.DDBH'
      #9')YWCPMONTH_DDZLTR on YWCP.DDBH=YWCPMONTH_DDZLTR.DDBH'
      
        #9'Left join YWDD on YWDD.DDBH=YWCP.DDBH  Group by YWDD.YSBH,YWCP.' +
        'DDBH ) YWDDM  '
      'Left join YWCPMemo on YWCPMemo.DDBH=YWDDM.YSBH '
      'left join DDZL on YWDDM.YSBH=DDZL.DDBH'
      'left join YWDD on YWDDM.DDBH=YWDD.DDBH'
      
        'left join Mass_Cost on Mass_Cost.RY = YWDDM.DDBH and YM = '#39'20230' +
        '1'#39
      'where 1=1 and DDZL.GSBH='#39'TBA'#39
      'and YWDD.YSBH like '#39'SL2302-0022%'#39' '
      'and YWDD.Qty>0'
      'Order by YWDDM.YSBH'
      ''
      ''
      '')
    Left = 349
    Top = 210
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 10
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query1LastRem: TIntegerField
      FieldName = 'LastRem'
    end
    object Query1RKQty: TIntegerField
      FieldName = 'RKQty'
    end
    object Query1XHQty: TIntegerField
      FieldName = 'XHQty'
    end
    object Query1TRQty: TIntegerField
      FieldName = 'TRQty'
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query1UnitPrice: TFloatField
      FieldName = 'UnitPrice'
    end
    object Query1Amount: TFloatField
      FieldName = 'Amount'
    end
    object Query1BDEDesigner30: TIntegerField
      FieldName = '<=30'
    end
    object Query1BDEDesigner3160: TIntegerField
      FieldName = '31~60'
    end
    object Query1BDEDesigner6190: TIntegerField
      FieldName = '61~90'
    end
    object Query1BDEDesigner91120: TIntegerField
      FieldName = '91~120'
    end
    object Query1BDEDesigner121180: TIntegerField
      FieldName = '121~180'
    end
    object Query1BDEDesigner181360: TIntegerField
      FieldName = '181~360'
    end
    object Query1BDEDesigner360: TIntegerField
      FieldName = '>360'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 349
    Top = 178
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 309
    Top = 211
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 400
    Top = 178
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ShoeTest.YPDH as DDBH,YPZL.GSDH as CKBH,YPZL.Quantity as ' +
        'Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQty,ShoeT' +
        'estship.Qty as XHQty,ShoetestAll.Qty,YPZL.JHRQ,'
      
        'Shoetest.TestNo,ShoeTest.Article,Case when ShoeTest.TBCancel=1 t' +
        'hen '#39'C'#39' else '#39'Y'#39' end as DDZT,ShoeTestMonth_Memo.Memo,0.0 as '#39'<=3' +
        '0'#39',0.0 as '#39'31~60'#39',0.0 as '#39'61~90'#39',0.0 as '#39'91~120'#39',0.0 as '#39'121~180' +
        #39',0.0 as '#39'181~360'#39',0.0 as '#39'>360'#39
      
        ',Mass_Cost.UnitPrice,isnull(ShoetestAll.Qty,0)*Mass_Cost.UnitPri' +
        'ce as Amount'
      'from ('
      '  Select  TestNo , Sum(Qty) as Qty'
      '  from ('
      #9'Select TestNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      #9'   and ShoeTestMonth.CKBH<>'#39'CBY'#39
      #9'union all'
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'2'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.complete, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39' '
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      #9'Group by shoetest.TestNo'
      #9'union all '
      #9'Select  shoetest.TestNo,-1*Sum(shoetest2.qty) as Qty,'#39'3'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.ShipDate, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39'   and shoetest.Complete is not null'
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  Shoet' +
        'estAll'
      'Left join ('
      #9'Select TestNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      
        #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' ) ShoeTestMonth on ShoeTestMo' +
        'nth.TestNo=ShoetestAll.TestNo'
      'Left join ('
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'2'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.complete, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39' '
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=Shoe' +
        'testAll.TestNo'
      'Left join ('
      #9'Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,'#39'3'#39' as SB'
      #9'from shoetest'
      
        #9'left join (select testno,sum(qty) as qty from shoetest2 group b' +
        'y testno ) shoetest2 on  shoetest2.testno=shoetest.testno'
      
        #9'where Convert(varchar,shoetest.ShipDate, 111) between '#39'2022/10/' +
        '01'#39' and '#39'2022/10/15'#39'  and shoetest.Complete is not null'
      
        #9#9'  and (shoetest.YPDH like '#39'LAIV%'#39' or shoetest.YPDH like '#39'SKXV%' +
        #39' or shoetest.YPDH like '#39'CBYV%'#39' or shoetest.YPDH like '#39'BYIV%'#39') '
      
        #9'Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=' +
        'ShoetestAll.TestNo'
      'left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo'
      'Left join YPZL on YPZL.YPDH=ShoeTest.YPDH'
      
        'left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=Shoete' +
        'stAll.TestNo'
      
        'left join Mass_Cost on Mass_Cost.RY = shoetest.YPDH and YM = '#39'20' +
        '2301'#39
      'where 1=1'
      'and ShoetestAll.Qty>0'
      'order by ShoetestAll.TestNo'
      '')
    Left = 400
    Top = 210
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 3
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query2LastRem: TFloatField
      FieldName = 'LastRem'
    end
    object Query2RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query2XHQty: TFloatField
      FieldName = 'XHQty'
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2JHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object Query2TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query2UnitPrice: TFloatField
      FieldName = 'UnitPrice'
    end
    object Query2Amount: TFloatField
      FieldName = 'Amount'
    end
    object Query2BDEDesigner30: TFloatField
      FieldName = '<=30'
    end
    object Query2BDEDesigner3160: TFloatField
      FieldName = '31~60'
    end
    object Query2BDEDesigner6190: TFloatField
      FieldName = '61~90'
    end
    object Query2BDEDesigner91120: TFloatField
      FieldName = '91~120'
    end
    object Query2BDEDesigner121180: TFloatField
      FieldName = '121~180'
    end
    object Query2BDEDesigner181360: TFloatField
      FieldName = '181~360'
    end
    object Query2BDEDesigner360: TFloatField
      FieldName = '>360'
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 401
    Top = 247
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 453
    Top = 178
  end
  object Query3: TQuery
    AfterOpen = Query3AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CBY_Orders.MasterOrder as DDBH,'#39'CBY '#39'as CKBH,CBY_Orders.t' +
        'otal as Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQ' +
        'ty,ShoeTestship.Qty as XHQty,CBYShoetestAll.Qty,CBY_Orders.requi' +
        'redShipDate as JHRQ,'
      
        'CBYShoetestAll.workOrderId as TestNo,CBY_Orders.style as Article' +
        ',Case when CBY_Orders.Cancel=1 then '#39'C'#39' else '#39'Y'#39' end DDZT,ShoeTe' +
        'stMonth_Memo.Memo,0.0 as '#39'<=30'#39',0.0 as '#39'31~60'#39',0.0 as '#39'61~90'#39',0.' +
        '0 as '#39'91~120'#39',0.0 as '#39'121~180'#39',0.0 as '#39'181~360'#39',0.0 as '#39'>360'#39',Ma' +
        'ss_Cost.UNITPRICE,Mass_Cost.UNITPRICE * CBYShoetestAll.Qty as Am' +
        'ount'
      '  from ('
      '  Select  TestNo as workOrderId, Sum(Qty) as Qty'
      '  from ('
      #9'Select testNo,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      #9'   and ShoeTestMonth.CKBH='#39'CBY'#39
      #9'union all'
      
        #9'Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, '#39'2'#39' as S' +
        'B '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where Convert(varchar,ScanI.ScanDate, 111) between '#39'2022/10/01'#39 +
        ' and '#39'2022/10/15'#39'  '
      #9'union all '
      
        #9'Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, '#39'3'#39' a' +
        's SB '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where  (Convert(varchar,CBY_Orders.ShipDate, 111) between '#39'2022' +
        '/10/01'#39' and '#39'2022/10/15'#39'  and  ScanI.ScanDate is not null)   )  ' +
        'Shoetest  Group by TestNo )  CBYShoetestAll'
      'Left join ('
      #9'Select TestNo as workOrderId,Qty,'#39'1'#39' as SB'
      #9'from ShoeTestMonth'
      #9'where ShoeTestMonth.KCYEAR='#39'2022'#39' '
      #9'   and ShoeTestMonth.KCMONTH='#39'09'#39' '
      
        #9'   and ShoeTestMonth.CKBH='#39'CBY'#39' ) ShoeTestMonth on ShoeTestMont' +
        'h.workOrderId=CBYShoetestAll.workOrderId'
      'Left join ('
      
        #9'Select CBY_Orders.workOrderId ,CBY_Orders.total as Qty, '#39'2'#39' as ' +
        'SB '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where Convert(varchar,ScanI.ScanDate, 111) between '#39'2022/10/01'#39 +
        ' and '#39'2022/10/15'#39'   ) ShoeTestIn on ShoeTestIn.workOrderId=CBYSh' +
        'oetestAll.workOrderId'
      'Left join ('
      
        #9'Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, '#39'3'#39' a' +
        's SB '
      #9'From CBY_Orders'
      
        #9'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_O' +
        'rders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        #9'where  (Convert(varchar,CBY_Orders.ShipDate, 111) between '#39'2022' +
        '/10/01'#39' and '#39'2022/10/15'#39'  and  ScanI.ScanDate is not null)  ) Sh' +
        'oeTestship on ShoeTestship.workOrderId=CBYShoetestAll.workOrderI' +
        'd'
      
        'left join CBY_Orders on CBY_Orders.workOrderId=CBYShoetestAll.wo' +
        'rkOrderId'
      
        'left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=CBYSho' +
        'etestAll.workOrderId'
      
        'left join Mass_Cost on Mass_Cost.RY = CBYShoetestAll.workOrderId' +
        ' and YM = '#39'202301'#39
      'where 1=1')
    Left = 453
    Top = 210
    object Query3DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query3LastRem: TFloatField
      FieldName = 'LastRem'
    end
    object Query3RKQty: TIntegerField
      FieldName = 'RKQty'
    end
    object Query3XHQty: TIntegerField
      FieldName = 'XHQty'
    end
    object Query3Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query3JHRQ: TDateTimeField
      FieldName = 'JHRQ'
    end
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 15
    end
    object Query3Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query3DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query3UNITPRICE: TFloatField
      FieldName = 'UNITPRICE'
    end
    object Query3Amount: TFloatField
      FieldName = 'Amount'
    end
    object Query3BDEDesigner30: TFloatField
      FieldName = '<=30'
    end
    object Query3BDEDesigner3160: TFloatField
      FieldName = '31~60'
    end
    object Query3BDEDesigner6190: TFloatField
      FieldName = '61~90'
    end
    object Query3BDEDesigner91120: TFloatField
      FieldName = '91~120'
    end
    object Query3BDEDesigner121180: TFloatField
      FieldName = '121~180'
    end
    object Query3BDEDesigner181360: TFloatField
      FieldName = '181~360'
    end
    object Query3BDEDesigner360: TFloatField
      FieldName = '>360'
    end
    object Query3Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 455
    Top = 249
    object Detail2: TMenuItem
      Caption = 'Detail'
      OnClick = Detail2Click
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 509
    Top = 178
  end
  object Query4: TQuery
    AfterOpen = Query4AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Outsole_MonthAll.DDBH,DDZL.Pairs,isnull(Outsole_Month.Qty' +
        ',0) as LastRem, isnull(RK.Qty,0) as RKQty, isnull(LL.Qty,0) as X' +
        'HQty, Outsole_MonthAll.Qty '
      
        '        ,DDZL.CQDH as CKBH,DDZL.Article,DDZL.DDZT, '#39#39' as Memo fr' +
        'om ( '
      ' Select DDBH, sum(Qty) as Qty from ( '
      ' Select DDBH,Qty,'#39'1'#39' as SB '
      '   from LIY_DD.dbo.OUTSOLE_Month Outsole_Month '
      '   where Outsole_Month.KCYEAR='#39'2022'#39' '
      '  '#9'and Outsole_Month.KCMONTH='#39'10'#39' '
      ' union all '
      ' Select RK.DDBH,sum(RK.Qty) as Qty,'#39'2'#39' as SB '
      '   from LIY_DD.dbo.OUTSOLE_RK RK '
      
        '   where Convert(varchar,RK.InDate, 111) between '#39'2022/11/01'#39' an' +
        'd '#39'2022/11/30'#39' '
      '   Group by RK.DDBH '
      ' union all  '
      '   Select LL.DDBH,-1*sum(LL.Qty) as Qty,'#39'3'#39' as SB '
      '   from LIY_DD.dbo.OUTSOLE_LL LL '
      
        '   where Convert(varchar,LL.LLDate, 111) between '#39'2022/11/01'#39' an' +
        'd '#39'2022/11/30'#39' '
      
        '   Group by LL.DDBH) Outsole_Month  Group by DDBH) Outsole_Month' +
        'All '
      ' Left join ( '
      '   Select DDBH,Qty,'#39'1'#39' as SB  '
      '   from LIY_DD.dbo.OUTSOLE_Month Outsole_Month  '
      '   where Outsole_Month.KCYEAR='#39'2023'#39' '
      
        '  '#9'and Outsole_Month.KCMONTH='#39'01'#39' ) Outsole_Month on Outsole_Mon' +
        'th.DDBH=Outsole_MonthAll.DDBH '
      ' Left join ( '
      '   Select RK.DDBH,sum(RK.Qty) as Qty,'#39'2'#39' as SB '
      '  '#9'from LIY_DD.dbo.OUTSOLE_RK RK  '
      
        '  '#9'where Convert(varchar,RK.InDate, 111) between '#39'2022/11/01'#39' an' +
        'd '#39'2022/11/30'#39' '
      '  '#9'Group by RK.DDBH) RK on RK.DDBH=Outsole_MonthAll.DDBH  '
      ' Left join ( '
      '  '#9'Select LL.DDBH,sum(LL.Qty) as Qty,'#39'3'#39' as SB '
      '  '#9'from LIY_DD.dbo.OUTSOLE_LL LL '
      
        '  '#9'where Convert(varchar,LL.LLDate, 111) between '#39'2022/11/01'#39' an' +
        'd '#39'2022/11/30'#39' '
      '  '#9'Group by LL.DDBH) LL on LL.DDBH=Outsole_MonthAll.DDBH  '
      
        ' Left join LIY_DD.dbo.DDZL DDZL on DDZL.DDBH=Outsole_MonthAll.DD' +
        'BH  '
      ' where 1=1 and DDZL.CQDH='#39'VR3'#39' '
      ' order by Outsole_MonthAll.DDBH')
    Left = 509
    Top = 210
    object Query4DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object Query4Pairs: TFloatField
      FieldName = 'Pairs'
      DisplayFormat = '#,##0.0'
    end
    object Query4LastRem: TCurrencyField
      FieldName = 'LastRem'
      DisplayFormat = '#,##0.0'
    end
    object Query4RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#,##0.0'
    end
    object Query4XHQty: TCurrencyField
      FieldName = 'XHQty'
      DisplayFormat = '#,##0.0'
    end
    object Query4Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query4CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query4Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query4DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query4Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 108
    Top = 179
  end
  object Qry_MonthStock: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemQty01T,RemQty02T,RemQ' +
        'ty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T '
      'FROM Monthly_EntryOrder_Stock'
      'WHERE KCYEAR='#39'2022'#39' AND KCMONTH='#39'09'#39)
    Left = 556
    Top = 210
    object Qry_MonthStockKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Qry_MonthStockKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Qry_MonthStockDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Qry_MonthStockCKBH: TStringField
      FieldName = 'CKBH'
      Size = 4
    end
    object Qry_MonthStockRemQty: TIntegerField
      FieldName = 'RemQty'
    end
    object Qry_MonthStockRemQty01T: TIntegerField
      FieldName = 'RemQty01T'
    end
    object Qry_MonthStockRemQty02T: TIntegerField
      FieldName = 'RemQty02T'
    end
    object Qry_MonthStockRemQty03T: TIntegerField
      FieldName = 'RemQty03T'
    end
    object Qry_MonthStockRemQty04T: TIntegerField
      FieldName = 'RemQty04T'
    end
    object Qry_MonthStockRemQty05T: TIntegerField
      FieldName = 'RemQty05T'
    end
    object Qry_MonthStockRemQty06T: TIntegerField
      FieldName = 'RemQty06T'
    end
    object Qry_MonthStockRemQty07T: TIntegerField
      FieldName = 'RemQty07T'
    end
  end
  object DS_MonthStock: TDataSource
    DataSet = Qry_MonthStock
    Left = 556
    Top = 179
  end
  object Qry_MonthStock_Sample: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemQty01T,RemQty02T,RemQ' +
        'ty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T '
      'FROM Monthly_EntryOrder_Stock'
      'WHERE KCYEAR='#39'2022'#39' AND KCMONTH='#39'09'#39)
    Left = 596
    Top = 210
    object StringField1: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'CKBH'
      Size = 4
    end
    object Qry_MonthStock_SampleRemQty: TFloatField
      FieldName = 'RemQty'
    end
    object Qry_MonthStock_SampleRemQty01T: TFloatField
      FieldName = 'RemQty01T'
    end
    object Qry_MonthStock_SampleRemQty02T: TFloatField
      FieldName = 'RemQty02T'
    end
    object Qry_MonthStock_SampleRemQty03T: TFloatField
      FieldName = 'RemQty03T'
    end
    object Qry_MonthStock_SampleRemQty04T: TFloatField
      FieldName = 'RemQty04T'
    end
    object Qry_MonthStock_SampleRemQty05T: TFloatField
      FieldName = 'RemQty05T'
    end
    object Qry_MonthStock_SampleRemQty06T: TFloatField
      FieldName = 'RemQty06T'
    end
    object Qry_MonthStock_SampleRemQty07T: TFloatField
      FieldName = 'RemQty07T'
    end
  end
  object DS_MonthStock_Sample: TDataSource
    DataSet = Qry_MonthStock_Sample
    Left = 596
    Top = 179
  end
  object Qry_MonthStock_CBY: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemQty01T,RemQty02T,RemQ' +
        'ty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T '
      'FROM Monthly_EntryOrder_Stock'
      'WHERE KCYEAR='#39'2022'#39' AND KCMONTH='#39'09'#39)
    Left = 636
    Top = 210
    object StringField5: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'CKBH'
      Size = 4
    end
    object Qry_MonthStock_CBYRemQty: TFloatField
      FieldName = 'RemQty'
    end
    object Qry_MonthStock_CBYRemQty01T: TFloatField
      FieldName = 'RemQty01T'
    end
    object Qry_MonthStock_CBYRemQty02T: TFloatField
      FieldName = 'RemQty02T'
    end
    object Qry_MonthStock_CBYRemQty03T: TFloatField
      FieldName = 'RemQty03T'
    end
    object Qry_MonthStock_CBYRemQty04T: TFloatField
      FieldName = 'RemQty04T'
    end
    object Qry_MonthStock_CBYRemQty05T: TFloatField
      FieldName = 'RemQty05T'
    end
    object Qry_MonthStock_CBYRemQty06T: TFloatField
      FieldName = 'RemQty06T'
    end
    object Qry_MonthStock_CBYRemQty07T: TFloatField
      FieldName = 'RemQty07T'
    end
  end
  object DS_MonthStock_CBY: TDataSource
    DataSet = Qry_MonthStock_CBY
    Left = 636
    Top = 179
  end
  object Qry_MonthStock_Out: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemQty01T,RemQty02T,RemQ' +
        'ty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T '
      'FROM Monthly_EntryOrder_Stock'
      'WHERE KCYEAR='#39'2022'#39' AND KCMONTH='#39'09'#39)
    Left = 684
    Top = 210
    object StringField9: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'CKBH'
      Size = 4
    end
    object IntegerField1: TIntegerField
      FieldName = 'RemQty'
    end
    object IntegerField2: TIntegerField
      FieldName = 'RemQty01T'
    end
    object IntegerField3: TIntegerField
      FieldName = 'RemQty02T'
    end
    object IntegerField4: TIntegerField
      FieldName = 'RemQty03T'
    end
    object IntegerField5: TIntegerField
      FieldName = 'RemQty04T'
    end
    object IntegerField6: TIntegerField
      FieldName = 'RemQty05T'
    end
    object IntegerField7: TIntegerField
      FieldName = 'RemQty06T'
    end
    object IntegerField8: TIntegerField
      FieldName = 'RemQty07T'
    end
  end
  object DS_MonthStock_Out: TDataSource
    DataSet = Qry_MonthStock_Out
    Left = 684
    Top = 179
  end
end
