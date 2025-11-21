object AnyStockUltra: TAnyStockUltra
  Left = 176
  Top = 82
  Width = 1664
  Height = 788
  Caption = 'AnyStockUltra'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1656
    Height = 757
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'VAStock'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Splitter1: TSplitter
        Left = 0
        Top = 337
        Width = 1648
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1648
        Height = 129
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 165
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Any Material Stock:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 42
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 231
          Top = 44
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 195
          Top = 98
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CKBH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 14
          Top = 99
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'StockDate:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 575
          Top = 98
          Width = 82
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'days no use'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 1
          Top = 70
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SupNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 142
          Top = 70
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 345
          Top = 72
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CustomNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 301
          Top = 40
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = Edit2KeyPress
        end
        object Edit1: TEdit
          Left = 77
          Top = 40
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object Button1: TButton
          Left = 677
          Top = 80
          Width = 105
          Height = 33
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 429
          Top = 40
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
          OnKeyPress = Edit3KeyPress
        end
        object Button2: TButton
          Left = 677
          Top = 40
          Width = 105
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 4
          OnClick = Button2Click
        end
        object DTP1: TDateTimePicker
          Left = 86
          Top = 96
          Width = 106
          Height = 24
          Date = 39289.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 39289.406377673610000000
          TabOrder = 5
          OnChange = DTP1Change
        end
        object CB1: TCheckBox
          Left = 547
          Top = 43
          Width = 65
          Height = 17
          Caption = '<0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Button3: TButton
          Left = 789
          Top = 40
          Width = 89
          Height = 33
          Caption = 'Print'
          TabOrder = 7
          Visible = False
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 893
          Top = 40
          Width = 89
          Height = 33
          Caption = 'Database'
          TabOrder = 8
          Visible = False
          OnClick = Button4Click
        end
        object CBX1: TComboBox
          Left = 266
          Top = 94
          Width = 121
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 9
          OnChange = CBX1Change
          Items.Strings = (
            'All')
        end
        object Edit4: TEdit
          Left = 516
          Top = 95
          Width = 57
          Height = 24
          TabOrder = 10
          Text = '90'
        end
        object CB2: TCheckBox
          Left = 397
          Top = 100
          Width = 119
          Height = 17
          Caption = 'In Warehouse >'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object CB3: TCheckBox
          Left = 600
          Top = 42
          Width = 77
          Height = 17
          Caption = '>2014'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object Edit5: TEdit
          Left = 72
          Top = 66
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 13
          OnKeyPress = Edit1KeyPress
        end
        object Edit6: TEdit
          Left = 213
          Top = 66
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 14
          OnKeyPress = Edit1KeyPress
        end
        object CNOEdit: TEdit
          Left = 416
          Top = 66
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 15
          OnKeyPress = Edit1KeyPress
        end
        object Button5: TButton
          Left = 788
          Top = 80
          Width = 91
          Height = 33
          Caption = 'PrintC'
          TabOrder = 16
          Visible = False
          OnClick = Button5Click
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 129
        Width = 1648
        Height = 208
        Align = alTop
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
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
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLDH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <
              item
                FieldName = 'YWPM'
                ValueType = fvtCount
              end>
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 379
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #24235#23384#25976#37327'|Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footers = <
              item
                FieldName = 'LastRem'
                ValueType = fvtSum
              end>
            Title.Caption = #26376#21021#24235#23384'|LastRem'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235'|RKQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <
              item
                FieldName = 'LLQty'
                ValueType = fvtSum
              end>
            Title.Caption = #30332#26009'|LLQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'JGRK'
            Footers = <
              item
                FieldName = 'JGRK'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#36914'|JGRK'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'JGCK'
            Footers = <
              item
                FieldName = 'JGCK'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#20986'|JGCK'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'JGCKTemp'
            Footers = <
              item
                FieldName = 'JGCKTemp'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#26410#22238'|JGCKTemp'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.Caption = #36008#26550#34399'|KCBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LBBH'
            Footers = <>
            Title.Caption = #20998#39006'|LBBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'zsdh'
            Footers = <>
            Title.Caption = #24288#21830'|ZSDH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            Title.Caption = #24288#21830'|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 95
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 340
        Width = 1648
        Height = 382
        Align = alClient
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 657
          Top = 114
          Width = 5
          Height = 267
          Color = clHotLight
          ParentColor = False
        end
        object Splitter3: TSplitter
          Left = 1097
          Top = 114
          Width = 5
          Height = 267
          Color = clHotLight
          ParentColor = False
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1646
          Height = 113
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label10: TLabel
            Left = 14
            Top = 8
            Width = 91
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Material code : '
          end
          object Label11: TLabel
            Left = 8
            Top = 63
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Remainder : '
          end
          object Label12: TLabel
            Left = 7
            Top = 86
            Width = 72
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'MatName:'
          end
          object Label13: TLabel
            Left = 232
            Top = 9
            Width = 54
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Date:'
          end
          object Label15: TLabel
            Left = 193
            Top = 63
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'On way: '
          end
          object Label17: TLabel
            Left = 344
            Top = 63
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Need:'
          end
          object Label14: TLabel
            Left = 501
            Top = 63
            Width = 46
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Unit:'
          end
          object DBText1: TDBText
            Left = 137
            Top = 86
            Width = 528
            Height = 16
            Alignment = taRightJustify
            DataField = 'YWPM'
            DataSource = DS3
          end
          object DBText2: TDBText
            Left = 558
            Top = 63
            Width = 106
            Height = 16
            Alignment = taRightJustify
            DataField = 'DWBH'
            DataSource = DS3
          end
          object DBText3: TDBText
            Left = 85
            Top = 63
            Width = 104
            Height = 17
            Alignment = taRightJustify
            DataField = 'Remainder'
            DataSource = DS3
          end
          object DBText4: TDBText
            Left = 408
            Top = 63
            Width = 87
            Height = 17
            Alignment = taRightJustify
            DataField = 'NeedQty'
            DataSource = DS3
          end
          object DBText5: TDBText
            Left = 264
            Top = 63
            Width = 68
            Height = 17
            Alignment = taRightJustify
            DataField = 'OnQty'
            DataSource = DS3
          end
          object Label16: TLabel
            Left = 400
            Top = 8
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'To'
          end
          object Label18: TLabel
            Left = 638
            Top = 7
            Width = 59
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CKBH:'
          end
          object Label19: TLabel
            Left = 34
            Top = 38
            Width = 70
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CGNo:'
          end
          object Label20: TLabel
            Left = 246
            Top = 37
            Width = 72
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Invoice:'
          end
          object Label28: TLabel
            Left = 640
            Top = 37
            Width = 57
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Shelves:'
          end
          object Edit7: TEdit
            Left = 107
            Top = 4
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            Color = clYellow
            TabOrder = 0
          end
          object Button6: TButton
            Left = 786
            Top = 8
            Width = 75
            Height = 33
            Caption = 'Search'
            TabOrder = 1
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 786
            Top = 41
            Width = 75
            Height = 33
            Caption = 'Print'
            TabOrder = 2
            Visible = False
            OnClick = Button2Click
          end
          object DTP2: TDateTimePicker
            Left = 288
            Top = 5
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 3
          end
          object DTP3: TDateTimePicker
            Left = 424
            Top = 5
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 4
          end
          object CBX2: TComboBox
            Left = 700
            Top = 4
            Width = 81
            Height = 24
            ItemHeight = 16
            TabOrder = 5
          end
          object CheckBox1: TCheckBox
            Left = 543
            Top = 9
            Width = 88
            Height = 17
            Caption = '<2014'
            TabOrder = 6
          end
          object CGNOEdit: TEdit
            Left = 107
            Top = 34
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object InvEdit: TEdit
            Left = 320
            Top = 34
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 8
          end
          object CheckBox2: TCheckBox
            Left = 543
            Top = 33
            Width = 90
            Height = 17
            Caption = 'Confirm'
            TabOrder = 9
          end
          object Button9: TButton
            Left = 877
            Top = 38
            Width = 100
            Height = 33
            Caption = 'No I/O Mat No'
            TabOrder = 10
            OnClick = Button9Click
          end
          object Button10: TButton
            Left = 877
            Top = 74
            Width = 75
            Height = 32
            Caption = 'The Kho'
            TabOrder = 11
            OnClick = Button10Click
          end
          object Button11: TButton
            Left = 970
            Top = 73
            Width = 75
            Height = 33
            Caption = 'Print ALL'
            TabOrder = 12
            OnClick = Button11Click
          end
          object Button12: TButton
            Left = 1082
            Top = 72
            Width = 75
            Height = 33
            Caption = 'Auto Print'
            TabOrder = 13
            Visible = False
            OnClick = Button12Click
          end
          object Edit11: TEdit
            Left = 700
            Top = 35
            Width = 81
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 14
          end
          object Button15: TButton
            Left = 986
            Top = 39
            Width = 87
            Height = 33
            Caption = 'No I/O Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnClick = Button15Click
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 114
          Width = 656
          Height = 267
          Align = alLeft
          Color = clWhite
          DataSource = DS1
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
          FooterRowCount = 1
          ParentFont = False
          PopupMenu = PopupMenu2
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = #20837#24235#21934#34399'|RKNO'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'ZSBH'
              Footers = <>
              Title.Caption = #24288#21830'ID|ZSBH'
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = #20837#24235#26085'|DATE'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <
                item
                  FieldName = 'Qty'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Qty'
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'CFMID'
              Footers = <>
              Title.Caption = #30906#35469'ID|CFMID'
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'Memo'
              Footers = <>
              Title.Caption = #39006#22411'|Memo'
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'Invoice'
              Footers = <>
              Title.Caption = #30332#31080'|Invoice'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'PaperNo'
              Footers = <>
              Title.Caption = #25991#20214'|PaperNo'
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = #35330#21934'|ZLBH'
            end>
        end
        object DBGrid2: TDBGridEh
          Left = 662
          Top = 114
          Width = 435
          Height = 267
          Align = alLeft
          Color = clWhite
          DataSource = DS2
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
          FooterRowCount = 1
          ParentFont = False
          PopupMenu = PopupMenu3
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'LLNO'
              Footers = <>
              Title.Caption = #38936#26009#21934#34399'|LLNO'
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'SCBH'
              Footers = <>
              Title.Caption = #35330#21934'|SCBH'
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'CFMDATE'
              Footers = <>
              Title.Caption = #26085#26399'|DATE'
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <
                item
                  FieldName = 'Qty'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Qty'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'CFMID'
              Footers = <>
              Title.Caption = #30906#35469'ID|CFMID'
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'Memo'
              Footers = <>
              Title.Caption = #39006#22411#25110#21934#20301'|Memo'
              Width = 116
            end>
        end
        object Panel4: TPanel
          Left = 584
          Top = 197
          Width = 225
          Height = 84
          TabOrder = 3
          Visible = False
          object Label29: TLabel
            Left = 8
            Top = 17
            Width = 89
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Set Date:'
          end
          object DTP4: TDateTimePicker
            Left = 104
            Top = 13
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 0
          end
          object Button13: TButton
            Left = 48
            Top = 48
            Width = 65
            Height = 25
            Caption = 'OK'
            TabOrder = 1
            OnClick = Button13Click
          end
          object Button14: TButton
            Left = 128
            Top = 48
            Width = 73
            Height = 25
            Caption = 'Cancel'
            TabOrder = 2
            OnClick = Button14Click
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 1102
          Top = 114
          Width = 545
          Height = 267
          Align = alClient
          Color = clWhite
          DataSource = DS4
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
          FooterRowCount = 1
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Visible = False
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Material No'
            end
            item
              EditButtons = <>
              FieldName = 'KCBH'
              Footers = <>
              Title.Caption = 'Shelves'
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'QTY'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CKBH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'EntryDate'
              Footers = <>
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'DeliverDate'
              Footers = <>
              Width = 84
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'NK'
              Footers = <>
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'KD'
              Footers = <>
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'HD'
              Footers = <>
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'TC'
              Footers = <>
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'GC'
              Footers = <>
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'XT'
              Footers = <>
            end
            item
              DisplayFormat = '0.####'
              EditButtons = <>
              FieldName = 'ZZZZ'
              Footers = <>
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CDCStock'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1648
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label21: TLabel
          Left = 11
          Top = 49
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CKBH:'
        end
        object Label22: TLabel
          Left = 9
          Top = 11
          Width = 56
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
        end
        object Label23: TLabel
          Left = 980
          Top = 5
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNO:'
          Visible = False
        end
        object Label24: TLabel
          Left = 224
          Top = 49
          Width = 83
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'StockDate:'
        end
        object Label25: TLabel
          Left = 236
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DWBH:'
        end
        object Label26: TLabel
          Left = 444
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KCBH:'
        end
        object Label27: TLabel
          Left = 444
          Top = 45
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'HGLB:'
        end
        object Button8: TButton
          Left = 609
          Top = 40
          Width = 89
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button8Click
        end
        object CBX3: TComboBox
          Left = 72
          Top = 44
          Width = 141
          Height = 28
          Style = csDropDownList
          ItemHeight = 20
          TabOrder = 1
        end
        object MatNoEdit: TEdit
          Left = 72
          Top = 8
          Width = 141
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CNO1Edit: TEdit
          Left = 1061
          Top = 1
          Width = 122
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 3
          Visible = False
        end
        object StockDT1: TDateTimePicker
          Left = 316
          Top = 44
          Width = 125
          Height = 24
          Date = 43069.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 43069.406377673610000000
          TabOrder = 4
        end
        object CBox1: TCheckBox
          Left = 612
          Top = 8
          Width = 97
          Height = 17
          Caption = '>0'
          TabOrder = 5
        end
        object Edit8: TEdit
          Left = 317
          Top = 9
          Width = 68
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object Edit9: TEdit
          Left = 525
          Top = 9
          Width = 68
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object Edit10: TEdit
          Left = 525
          Top = 41
          Width = 68
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 8
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 81
        Width = 1648
        Height = 641
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = KhoPopup
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footer.FieldName = 'CLDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26009#34399'|MatNo'
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009'|YWPM'
            Width = 295
          end
          item
            EditButtons = <>
            FieldName = 'Classification'
            Footers = <>
            Title.Caption = #20489#24235#20998#39006'|Classification'
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.Caption = #36008#26550#34399'|KCBH'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24235#23384'|KCQty'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NK'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|NK'
          end
          item
            EditButtons = <>
            FieldName = 'TC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|TC'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|HD'
          end
          item
            EditButtons = <>
            FieldName = 'KD'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|KD'
          end
          item
            EditButtons = <>
            FieldName = 'XT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|XT'
          end
          item
            EditButtons = <>
            FieldName = 'GC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|GC'
          end
          item
            EditButtons = <>
            FieldName = 'ZZ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|ZZ'
          end>
      end
    end
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        'select clzl.zsdh,CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,' +
        'RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp'
      'into #CLZLKC from CLZL with (nolock) '
      
        'left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as' +
        ' LastRem '
      
        '           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR' +
        '='#39'2015'#39
      '           and KCMONTH='#39'12'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VTXW'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      
        'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS ' +
        'with (nolock)  '
      
        '           left join KCRK with (nolock)   on KCRK.RKNO=KCRKS.RKN' +
        'O where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)' +
        ')>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2016/01/04'#39
      '           and KCRKS.CLBH like '#39'%'#39
      '           and KCRK.CKBH='#39'VTXW'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      
        'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ' +
        'with (nolock)   '
      
        '           left join KCLL with (nolock)    on KCLL.LLNO=KCLLS.LL' +
        'NO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)' +
        ')>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2016/01/04'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VTXW'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS w' +
        'ith (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        '>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2016/01/04'#39
      '           and JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2016/01/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2016/01/04'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2016/01/04'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where  JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      
        'select CLZL_HAIQUAN.CNO,clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,IsNull(' +
        '#CLZLKC.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.D' +
        'WBH,isnull(#CLZLKC.LastRem,0) as LastRem,'
      
        '       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) ' +
        'as LLQty,'
      
        '       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZ' +
        'LKC.JGCK,2),0) as JGCK,'
      
        '       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,KCZLS.KCB' +
        'H,KCZLS.CKBH,'
      
        '       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.R' +
        'KQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC' +
        '.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty'
      'from #CLZLKC '
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH '
      'left join zszl on zszl.zsdh=clzl.zsdh '
      'left join (select * from KCZLS   where CKBH='#39'VTXW'#39
      '                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH'
      
        'left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='#39'VT' +
        'X'#39' '
      'left join CLZL_HAIQUAN on CLZL_HAIQUAN.CLDH=#CLZLKC.CLDH '
      
        '  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null ' +
        'and #CLZLKC.LLQty is null '
      
        '               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null' +
        ' and #CLZLKC.JGCKTemp is null)'
      'and KCZLS.CKBH like '#39'VTXW%'#39
      'and #CLZLKC.CLDH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'order by #CLZLKC.CLDH'
      '  ')
    Left = 504
    Top = 160
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LastRem: TFloatField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLQty: TFloatField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGRK: TFloatField
      FieldName = 'JGRK'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCK: TFloatField
      FieldName = 'JGCK'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCKTemp: TCurrencyField
      FieldName = 'JGCKTemp'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1CNO: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 472
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 192
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 472
    Top = 232
  end
  object KCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZ' +
        'L.CFMID1 as CFMID,JGZLS.Qty,'
      #39'JG'#39' as Memo,'#39#39' as Invoice,'#39#39' as PaperNo,JGZLSS.ZLBH'
      'from JGZL,JGZLS '
      
        'Left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLS.JGNO=JGZLSS' +
        '.JGNO'
      'where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'and JGZLS.CLBH='#39'P100000306'#39
      
        'and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) be' +
        'tween '
      #39'2016/12/09'#39
      ' and '#39'2017/02/28'#39
      'and JGZL.CKBH='#39'VA12'#39
      ''
      'union all'
      ''
      
        'select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,K' +
        'CRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRK' +
        'S.CGBH as ZLBH'
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'where KCRKS.CLBH='#39'P100000306'#39
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween '
      #39'2017/02/01'#39
      ' and '#39'2017/02/28'#39
      'and KCRK.CKBH='#39'VBT'#39
      'order by kcrk.rkno'
      '')
    Left = 88
    Top = 440
    object KCRKRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCRK.USERDATE'
      DisplayFormat = 'm/d'
    end
    object KCRKQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCRKS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCRKZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.KCRK.ZSBH'
      FixedChar = True
      Size = 6
    end
    object KCRKCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCRK.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCRKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object KCRKInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
      Size = 30
    end
    object KCRKPaperNo: TStringField
      FieldName = 'PaperNo'
      FixedChar = True
      Size = 50
    end
    object KCRKZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = KCRK
    Left = 120
    Top = 440
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 440
    object EXCEL2: TMenuItem
      Caption = 'EXCEL'
    end
    object JGDet2: TMenuItem
      Caption = 'JGDet'
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 440
  end
  object Material: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CLDH,YWPM,DWBH,1000.00 as Remainder,'
      
        '        1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,100' +
        '0.00 as OnQty'
      'from CLZL ')
    UpdateObject = UpSQL1
    Left = 136
    Top = 352
  end
  object DS3: TDataSource
    DataSet = Material
    Left = 176
    Top = 352
  end
  object UpSQL1: TUpdateSQL
    Left = 216
    Top = 352
  end
  object PopupMenu3: TPopupMenu
    Left = 432
    Top = 472
    object EXCEL1: TMenuItem
      Caption = 'Excel'
    end
    object JGDet1: TMenuItem
      Caption = 'JGDet'
    end
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,'
      'JGZL.CFMID1 as CFMID,JGZLS.Qty*JGZLM.Qty as Qty,'#39'ZZZZ'#39
      'as SCBH, '#39'JG'#39' as Memo '
      'from JGZLS  '
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      'left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS '
      
        'left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldateti' +
        'me,convert(varchar,JGZL.CFMDate1,111)) between '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      ') JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH'
      'where JGZL.CFMDate1>='
      #39'2008/05/01'#39
      'and JGZLS.ZMLB='#39'AFG0000107'#39
      'and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      'union all'
      
        'select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, B' +
        'Department.DepName as Memo'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      'where KCLL.LLNO=KCLLS.LLNO'
      'and KCLLS.CLBH='#39'AFG0000107'#39
      
        'and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'or KCLL.CFMDATE is null)'
      'order by KCLL.LLNO')
    Left = 488
    Top = 456
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object KCLLCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'M/d'
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCLLMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = KCLL
    Left = 520
    Top = 456
  end
  object KHOQry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id('#39'tempdb..#tmpKCCLMonthHG'#39') is not null '
      'begin   drop table #tmpKCCLMonthHG end   '
      
        'select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as ' +
        'RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,'
      
        '       Round(isnull(round(Sum(LastRem),2),0)+isnull(round(Sum(RK' +
        'Qty),2),0)-isnull(round(Sum(LLQty),2),0)+isnull(round(Sum(JGRK),' +
        '2),0)-isnull(round(Sum(JGCK),2),0),2)  as Qty'
      'into #tmpKCCLMonthHG  from ('
      'select * from ('
      
        'select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CN' +
        'O,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as ' +
        'JGCK'
      
        '           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR' +
        '='#39'2021'#39' '
      
        '                                 and KCMONTH='#39'04'#39' and CLBH like ' +
        #39'A01%'#39' and CKBH in (select CKBH from KCCK where GSBH='#39'VA12'#39') '
      '                                 ) LastKC'
      'Union all   '
      'select * from ('
      
        'select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CN' +
        'O,'#39#39')='#39#39' or KCRK.HGLB not in ('#39'NK'#39','#39'HD'#39')) then '#39'ZZZZ'#39' else KCRKS' +
        '.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty' +
        ',0 as JGRK,0 as JGCK from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111)) between '
      '                 '#39'2021/05/01'#39' and '#39'2021/05/05'#39
      '           and KCRKS.CLBH like '#39'A01%'#39'    '
      
        '           and CKBH in (select CKBH from KCCK where GSBH='#39'VA12'#39')' +
        ' '
      
        '           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (Is' +
        'Null(KCRKS.CNO,'#39#39')='#39#39' or KCRK.HGLB not in ('#39'NK'#39','#39'HD'#39')) then '#39'ZZZ' +
        'Z'#39' else KCRKS.CNO end ) RK        '
      'union all'
      'select * from ('
      
        'select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.C' +
        'NO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'HD'#39')) then '#39'ZZZZ'#39' else KCL' +
        'LS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQt' +
        'y,0 as JGRK,0 as JGCK from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2021/05/01'#39' and '#39'2021/05/05'#39
      
        '           and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39' and ' +
        'KCLLS.Qty>0 and KCLLS.CLBH like '#39'A01%'#39'  and CKBH in (select CKBH' +
        ' from KCCK where GSBH='#39'VA12'#39') '
      
        '           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (I' +
        'sNull(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'HD'#39')) then '#39'Z' +
        'ZZZ'#39' else KCLLS.CNO end ) LL    '
      'union all '
      'select * from (                                         '
      
        'select JGZL.CKBH,JGZLS.CLBH,'#39'GC'#39' as HGLB,'#39'ZZZZ'#39' as CNO,0 as Last' +
        'Rem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from ' +
        'JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '          where convert(smalldatetime,convert(varchar,JGZL.CFMDa' +
        'te1,111)) between '
      '                 '#39'2021/05/01'#39' and '#39'2021/05/05'#39
      
        '                 and JGZL.CFMID1<>'#39'NO'#39' and JGZLS.CLBH like '#39'A01%' +
        #39' '
      
        '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZLS.Qty>0 and' +
        ' CKBH in (select CKBH from KCCK where GSBH='#39'VA12'#39') '
      '           group by JGZL.CKBH,JGZLS.CLBH ) JGRK'
      'union all'
      'select * from ('
      
        'select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull' +
        '(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'HD'#39')) then '#39'ZZZZ'#39' ' +
        'else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,0 as LLQty,0 a' +
        's JGRK,sum(KCLLS.Qty) as JGCK from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2021/05/01'#39' and '#39'2021/05/05'#39' '
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))>='#39'2017/09/01'#39
      
        '           and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLLS.Qty>0 and KCLL.C' +
        'FMID<>'#39'NO'#39' and KCLLS.CLBH like '#39'A01%'#39' and CKBH in (select CKBH f' +
        'rom KCCK where GSBH='#39'VA12'#39') '
      
        '           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (I' +
        'sNull(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB not in ('#39'NK'#39','#39'HD'#39')) then '#39'Z' +
        'ZZZ'#39' else KCLLS.CNO end ) JGCK'
      ') KCZLS'
      'where 1=1 and CLBH like '#39'A01%'#39'  '
      'Group by CKBH,CLBH,HGLB,CNO     '
      'select KCRK.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,'
      
        'case when left(CLZL.CLDH,3)= '#39'A54'#39' and CLZL.DWBH='#39'M'#39' then '#39'giay ' +
        'bac '#36681#21360#32025#39' else '#39#39' end as '#39'Classification'#39
      'from ('
      
        'select CKBH,CLBH as CLDH,case when CNO='#39'ZZZZ'#39' then '#39#39' else CNO e' +
        'nd as CNO,Sum(Qty) as Qty, '
      '       Sum(Case when HGLB='#39'NK'#39' then Qty else 0 end ) as NK,'
      '       Sum(Case when HGLB='#39'TC'#39' then Qty else 0 end ) as TC,'
      '       Sum(Case when HGLB='#39'HD'#39' then Qty else 0 end ) as HD,'
      '       Sum(Case when HGLB='#39'KD'#39' then Qty else 0 end ) as KD,'
      '       Sum(Case when HGLB='#39'XT'#39' then Qty else 0 end ) as XT,'
      '       Sum(Case when HGLB='#39'GC'#39' then Qty else 0 end ) as GC,'
      '       Sum(Case when HGLB='#39'ZZ'#39' then Qty else 0 end ) as ZZ'
      'from (select * from #tmpKCCLMonthHG ) KCZLS'
      'where 1=1 and CKBH='#39'VA12'#39' and CLBH not like '#39'Adjusting%'#39' '
      'Group by CKBH,CLBH,CNO  ) KCRK'
      'Left join CLZL on CLZL.CLDH=KCRK.CLDH'
      'left join (select * from KCZLS   where CKBH='#39'VTXW'#39
      '                            ) KCZLS on KCZLS.CLBH=KCZLS.CLBH'
      'order by CLZL.CLDH,KCRK.CNO'
      ''
      '')
    Left = 829
    Top = 277
    object KHOQry1CLDH: TStringField
      DisplayWidth = 13
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object KHOQry1Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object KHOQry1NK_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object KHOQry1TC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object KHOQry1ND_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object KHOQry1NKND_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object KHOQry1XT_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object KHOQry1GC_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object KHOQry1Null_Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'ZZ'
      DisplayFormat = '#0.00'
    end
    object KHOQry1YWPM: TStringField
      DisplayWidth = 42
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KHOQry1Classification: TStringField
      FieldName = 'Classification'
      FixedChar = True
      Size = 15
    end
    object KHOQry1DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KHOQry1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KHOQry1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = KHOQry1
    Left = 829
    Top = 309
  end
  object KhoPopup: TPopupMenu
    Left = 828
    Top = 347
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object Data: TQuery
    DatabaseName = 'DB'
    Left = 865
    Top = 624
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.CLBH,KCZLS.KCBH from KCCLMONTH'
      
        'left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH = ' +
        #39'CDC'#39' '
      'where 1=1 and QTY > 0'
      'and KCYear = '#39'2022'#39
      'and KCMonth = '#39'05'#39
      'and KCCLMONTH.CKBH = '#39'CDC'#39
      'and kczls.KCBH like '#39'A05%'#39
      'union  '
      'select KCRKS.CLBH,KCZLS.KCBH from KCRKS  '
      'left join KCRK on KCRK.RKNO = KCRKS.RKNO  '
      
        'left join KCZLS on KCRKS.CLBH = KCZLS.CLBH and KCZLS.CKBH = '#39'CDC' +
        #39' '
      'where KCRKS.USERDATE between '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      'and KCRK.CKBH = '#39'CDC'#39' and KCZLS.KCBH like '#39'A05%'#39
      'group by CLBH,KCBH'
      'order by CLBH')
    Left = 904
    Top = 624
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select CLBH,KCBH,QTY,CKBH,(select MAX(userdate) from KCRKS where' +
        ' CLBH = KCLL.CLBH) as EntryDate,'
      
        '(select MAX(userdate) from KCLLS where CLBH = KCLL.CLBH) as Deli' +
        'verDate,'
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'NK'#39' and CLBH' +
        ' = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH' +
        ' and CKBH = KCLL.CKBH) as '#39'NK'#39', '
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'KD'#39' and CLBH' +
        ' = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH' +
        ' and CKBH = KCLL.CKBH) as '#39'KD'#39', '
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'HD'#39' and CLBH' +
        ' = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH' +
        ' and CKBH = KCLL.CKBH) as '#39'HD'#39', '
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'TC'#39' and CLBH' +
        ' = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH' +
        ' and CKBH = KCLL.CKBH) as '#39'TC'#39', '
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'GC'#39' and CLBH' +
        ' = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH' +
        ' and CKBH = KCLL.CKBH) as '#39'GC'#39', '
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'XT'#39' and CLBH' +
        ' = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH' +
        ' and CKBH = KCLL.CKBH) as '#39'XT'#39', '
      
        '(select top 1 QTY from KCCLMONTH_HGBH where HGLB = '#39'ZZZZ'#39' and CL' +
        'BH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMON' +
        'TH and CKBH = KCLL.CKBH) as '#39'ZZZZ'#39' '
      'from ('
      
        'select KCCLMONTH.CLBH,KCZLS.KCBH,QTY,KCYEAR,KCMONTH,KCCLMONTH.CK' +
        'BH from KCCLMONTH'
      
        'left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in' +
        ' ('#39'CDC'#39','#39'CDT'#39','#39'BYC'#39','#39'BYT'#39') and KCCLMONTH.CKBH = KCZLS.CKBH'
      'where 1=1 and QTY > 0'
      'and KCYear = '#39'2022'#39
      'and KCMonth = '#39'05'#39
      
        'and KCCLMONTH.CLBH not in  (select CLBH from KCRKS where convert' +
        '(smalldatetime,convert(varchar,USERDATE,111)) between '
      '     '#39'2021/12/03'#39
      'and '#39'2022/06/01'#39')'
      
        'and KCCLMONTH.CLBH not in  (select CLBH from KCLLS where convert' +
        '(smalldatetime,convert(varchar,USERDATE,111)) between '
      '     '#39'2021/12/03'#39
      'and '#39'2022/06/01'#39')'
      'and KCCLMONTH.CKBH in ('#39'CDC'#39','#39'CDT'#39','#39'BYC'#39','#39'BYT'#39')'
      'and kczls.KCBH like '#39'A07-02%'#39
      'and KCCLMONTH.CLBH = '#39'A020003855'#39
      ')KCLL'
      'order by CLBH')
    Left = 944
    Top = 624
    object StringField1: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query3QTY: TCurrencyField
      FieldName = 'QTY'
    end
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3EntryDate: TDateTimeField
      FieldName = 'EntryDate'
    end
    object Query3DeliverDate: TDateTimeField
      FieldName = 'DeliverDate'
    end
    object Query3NK: TCurrencyField
      FieldName = 'NK'
    end
    object Query3KD: TCurrencyField
      FieldName = 'KD'
    end
    object Query3HD: TCurrencyField
      FieldName = 'HD'
    end
    object Query3TC: TCurrencyField
      FieldName = 'TC'
    end
    object Query3GC: TCurrencyField
      FieldName = 'GC'
    end
    object Query3XT: TCurrencyField
      FieldName = 'XT'
    end
    object Query3ZZZZ: TCurrencyField
      FieldName = 'ZZZZ'
    end
  end
  object DS4: TDataSource
    DataSet = Query5
    Left = 904
    Top = 584
  end
  object PrintDialog1: TPrintDialog
    Left = 840
    Top = 664
  end
end
