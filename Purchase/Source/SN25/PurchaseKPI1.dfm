object purchasekpi: Tpurchasekpi
  Left = 223
  Top = 94
  Width = 1281
  Height = 640
  Caption = 'PurchaseKPI'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1273
    Height = 609
    Align = alClient
    TabOrder = 0
    object PC1: TPageControl
      Left = 1
      Top = 1
      Width = 1271
      Height = 607
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Purchaser KPI'
        object Label17: TLabel
          Left = 16
          Top = 56
          Width = 67
          Height = 20
          Caption = 'ShipDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 0
            Top = 53
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 0
            Top = 85
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 8
            Top = 8
            Width = 265
            Height = 24
            AutoSize = False
            Caption = #25505#36092#19979#21934#26178#25928
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object PKPICB1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object Button1: TButton
            Left = 808
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button6: TButton
            Left = 904
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button6Click
          end
          object CBX1: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox2: TGroupBox
            Left = 160
            Top = 40
            Width = 361
            Height = 73
            TabOrder = 4
            object Label5: TLabel
              Left = 206
              Top = 45
              Width = 19
              Height = 16
              Caption = 'TO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object PKSD: TDateTimePicker
              Left = 88
              Top = 43
              Width = 105
              Height = 24
              Date = 41391.604173831020000000
              Format = 'yyyy/MM/dd'
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object PKED: TDateTimePicker
              Left = 240
              Top = 43
              Width = 113
              Height = 24
              Date = 41391.604173831020000000
              Format = 'yyyy/MM/dd'
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object BuyNOOKEdit: TEdit
              Left = 88
              Top = 14
              Width = 65
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object PKRB1: TRadioButton
              Left = 8
              Top = 14
              Width = 65
              Height = 24
              Caption = 'BuyNO'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              TabStop = True
            end
            object PKRB2: TRadioButton
              Left = 8
              Top = 43
              Width = 80
              Height = 24
              Caption = 'ShipDate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object PKRB3: TRadioButton
              Left = 160
              Top = 14
              Width = 105
              Height = 24
              Caption = 'ZLBH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object ZLBHEdit: TEdit
              Left = 272
              Top = 14
              Width = 81
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
          end
          object Panel12: TPanel
            Left = 528
            Top = 49
            Width = 265
            Height = 64
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            object cb1: TCheckBox
              Left = 8
              Top = 3
              Width = 225
              Height = 17
              Caption = 'PurchaseDate - OrderDate > '
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              State = cbChecked
              TabOrder = 0
            end
            object DayEdit: TEdit
              Left = 235
              Top = 2
              Width = 20
              Height = 31
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '3'
            end
            object CBNew: TCheckBox
              Left = 112
              Top = 44
              Width = 89
              Height = 17
              Caption = 'NEW SKU#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object CBOld: TCheckBox
              Left = 8
              Top = 44
              Width = 89
              Height = 17
              Caption = 'OLD SKU#'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 3
            end
            object CBRerun: TCheckBox
              Left = 8
              Top = 23
              Width = 241
              Height = 17
              Caption = 'Don'#39't show the rerunned order'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              State = cbChecked
              TabOrder = 4
            end
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 129
          Width = 313
          Height = 447
          Align = alLeft
          DataSource = DataSource1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindowFrame
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
          OnGetCellParams = DBGridEh1GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'userid'
              Footer.Color = clWindow
              Footers = <>
              Title.Caption = #20351#29992#32773'|UserID'
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'username'
              Footer.Color = clWindow
              Footers = <>
              Title.Caption = #20351#29992#32773#21517#31281'|UserName'
              Width = 146
            end
            item
              EditButtons = <>
              FieldName = 'b'
              Footers = <
                item
                  Color = clWindow
                  DisplayFormat = '0.00'
                  FieldName = 'b'
                  ValueType = fvtAvg
                end>
              Title.Caption = #22825#25976'|Day'
              Width = 34
            end
            item
              EditButtons = <>
              FieldName = 'conn'
              Footers = <
                item
                  Color = clWindow
                  FieldName = 'conn'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Count'
              Width = 41
            end>
        end
        object DBGridEh10: TDBGridEh
          Left = 313
          Top = 129
          Width = 950
          Height = 447
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
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'zlbh'
              Footers = <
                item
                  ValueType = fvtCount
                end>
              Title.Caption = #35330#21934'|ZLBH'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26448#26009#32232#34399'|CLBH'
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'userid'
              Footers = <>
              Title.Caption = #20351#29992#32773'ID|UserID'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'USERNAME'
              Footers = <>
              Title.Caption = #20351#29992#32773#21517#31281'|UserName'
              Width = 165
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'ddrq'
              Footers = <>
              Title.Caption = #35330#21934#26085'|OrderDate'
              Width = 75
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
              Title.Caption = #25289#21934#26085#26399'|UserDate'
              Width = 83
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'zldate'
              Footers = <>
              Title.Caption = #23637#31639#26085'|CompuDate'
              Width = 83
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Caption = #25505#36092#26085'|PurchaseDate'
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'a'
              Footers = <>
              Title.Caption = 'OC'#24046#30064#22825#25976'|OD-CD'
            end
            item
              EditButtons = <>
              FieldName = 'b'
              Footers = <>
              Title.Caption = 'PO'#24046#30064#22825#25976'|PD-OD'
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Puchaser Over'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 0
            Top = 53
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 0
            Top = 85
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 8
            Top = 8
            Width = 441
            Height = 24
            AutoSize = False
            Caption = #25505#36092#29992#37327#33287#20225#21123#29992#37327#24046#30064
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object POCB1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object Button2: TButton
            Left = 840
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Button7: TButton
            Left = 936
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button7Click
          end
          object CBX2: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox1: TGroupBox
            Left = 160
            Top = 40
            Width = 353
            Height = 73
            TabOrder = 4
            object Label6: TLabel
              Left = 206
              Top = 47
              Width = 19
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 160
              Top = 14
              Width = 93
              Height = 24
              Alignment = taRightJustify
              AutoSize = False
              Caption = '->ZLBH'
              Layout = tlCenter
            end
            object posd: TDateTimePicker
              Left = 88
              Top = 43
              Width = 113
              Height = 24
              Date = 41391.604173831020000000
              Format = 'yyyy/MM/dd'
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object poed: TDateTimePicker
              Left = 232
              Top = 43
              Width = 113
              Height = 24
              Date = 41391.604173831020000000
              Format = 'yyyy/MM/dd'
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object BuyNoEdit: TEdit
              Left = 88
              Top = 14
              Width = 65
              Height = 24
              TabOrder = 2
            end
            object RB1: TRadioButton
              Left = 8
              Top = 14
              Width = 65
              Height = 24
              Caption = 'BuyNO'
              Checked = True
              TabOrder = 3
              TabStop = True
            end
            object RB2: TRadioButton
              Left = 8
              Top = 43
              Width = 80
              Height = 24
              Caption = 'ShipDate'
              TabOrder = 4
            end
            object Edit1: TEdit
              Left = 256
              Top = 14
              Width = 89
              Height = 24
              TabOrder = 5
            end
          end
          object Panel13: TPanel
            Left = 520
            Top = 47
            Width = 313
            Height = 66
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            object Label30: TLabel
              Left = 242
              Top = 19
              Width = 9
              Height = 30
              Alignment = taRightJustify
              AutoSize = False
              Caption = '/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Label31: TLabel
              Left = 251
              Top = 29
              Width = 16
              Height = 16
              AutoSize = False
              Caption = '<-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Label32: TLabel
              Left = 290
              Top = 23
              Width = 14
              Height = 20
              AutoSize = False
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Label33: TLabel
              Left = 234
              Top = 19
              Width = 14
              Height = 16
              AutoSize = False
              Caption = '>+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object cb2: TCheckBox
              Left = 8
              Top = 25
              Width = 201
              Height = 17
              Caption = '(CGQty - ZLQty) / ZLQty'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object RateEdit: TEdit
              Left = 266
              Top = 21
              Width = 19
              Height = 24
              TabOrder = 1
              Text = '5'
            end
            object AbsCheckBox: TCheckBox
              Left = 217
              Top = 25
              Width = 16
              Height = 17
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227327
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 2
            end
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 129
          Width = 313
          Height = 447
          Align = alLeft
          DataSource = DataSource2
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
          OnGetCellParams = DBGridEh2GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'zsjc'
              Footers = <>
              Title.Caption = #24288#21830'|ZSJC'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'conn'
              Footers = <
                item
                  FieldName = 'conn'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Count'
              Width = 46
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 313
          Top = 129
          Width = 950
          Height = 447
          Align = alClient
          DataSource = DataSource7
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
          OnGetCellParams = DBGridEh3GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'zlbh'
              Footers = <
                item
                  FieldName = 'zlbh'
                  ValueType = fvtCount
                end>
              Title.Caption = #35330#21934#32232#34399'|ZLBH'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = #26448#26009'|CLBH'
              Width = 355
            end
            item
              EditButtons = <>
              FieldName = 'size'
              Footers = <>
              Title.Caption = #23610#30908'|SIZE'
              Width = 52
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'shipdate'
              Footers = <>
              Title.Caption = #20986#36008#26085'|ShipDate'
              Width = 71
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'zldate'
              Footers = <>
              Title.Caption = #21046#20196#26085#26399'|ZLDate'
              Width = 70
            end
            item
              DisplayFormat = '0.0000'
              EditButtons = <>
              FieldName = 'zlqty'
              Footers = <>
              Title.Caption = #21046#20196#29992#37327'|ZLQty'
              Width = 61
            end
            item
              DisplayFormat = '0.0000'
              EditButtons = <>
              FieldName = 'qty'
              Footers = <>
              Title.Caption = #25505#36092#25976#37327'|CGQty'
            end
            item
              DisplayFormat = '0.00%'
              EditButtons = <>
              FieldName = 'overp'
              Footers = <>
              Title.Caption = #36229#38989#27604#29575'|OverP'
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footers = <>
              Title.Caption = #26448#26009#32232#34399'|CLBH'
              Width = 77
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Deviation of Suppliers'
        ImageIndex = 2
        object DBGridEh4: TDBGridEh
          Left = 0
          Top = 129
          Width = 313
          Height = 447
          Align = alLeft
          DataSource = DataSource3
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
          OnGetCellParams = DBGridEh4GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'zsjc'
              Footers = <>
              Title.Caption = #24288#21830'|ZSJC'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'conn'
              Footers = <
                item
                  FieldName = 'conn'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Count'
              Width = 48
            end>
        end
        object DBGridEh5: TDBGridEh
          Left = 313
          Top = 129
          Width = 950
          Height = 447
          Align = alClient
          DataSource = DataSource8
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'zlbh'
              Footers = <
                item
                  FieldName = 'zlbh'
                  ValueType = fvtCount
                end>
              Title.Caption = #35330#21934#32232#34399'|ZLBH'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = #26448#26009'|YWPM'
              Width = 380
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'shipdate'
              Footers = <>
              Title.Caption = #20986#36008#26085#26399'|ShipDate'
              Width = 70
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              Title.Caption = #35201#27714#26085#26399'|YQDate'
              Width = 70
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'cfmdate'
              Footers = <>
              Title.Caption = #30906#35469#26085#26399'|CFMDdate'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'errday'
              Footers = <>
              Title.Caption = #30456#24046#22825#25976'|ErrDay'
              Width = 55
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          TabOrder = 2
          object Label8: TLabel
            Left = 0
            Top = 53
            Width = 70
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 0
            Top = 85
            Width = 72
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 8
            Top = 8
            Width = 417
            Height = 24
            AutoSize = False
            Caption = #35201#27714#20132#26399#33287#24288#21830#22238#35206#20132#26399#24046#30064
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dscb1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object Button3: TButton
            Left = 704
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button3Click
          end
          object Button8: TButton
            Left = 800
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button8Click
          end
          object CBX3: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox3: TGroupBox
            Left = 160
            Top = 40
            Width = 305
            Height = 73
            TabOrder = 4
            object Label10: TLabel
              Left = 180
              Top = 45
              Width = 27
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RB3: TRadioButton
              Left = 5
              Top = 14
              Width = 84
              Height = 24
              Caption = 'BuyNO'
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object RB4: TRadioButton
              Left = 5
              Top = 43
              Width = 81
              Height = 24
              Caption = 'ShipDate'
              TabOrder = 1
            end
            object BuyNoEdit2: TEdit
              Left = 88
              Top = 14
              Width = 89
              Height = 24
              TabOrder = 2
            end
            object dssd: TDateTimePicker
              Left = 88
              Top = 43
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object dsed: TDateTimePicker
              Left = 208
              Top = 43
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel11: TPanel
            Left = 472
            Top = 47
            Width = 225
            Height = 66
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            object cb3: TCheckBox
              Left = 8
              Top = 12
              Width = 209
              Height = 17
              Caption = '(CFMDate - YQDate) > 5'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227327
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object cb4: TCheckBox
              Left = 8
              Top = 38
              Width = 209
              Height = 17
              Caption = '(CFMDate - YQDate) < -5'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16744576
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 1
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Storage time gap'
        ImageIndex = 4
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          TabOrder = 0
          object Label11: TLabel
            Left = 0
            Top = 53
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 0
            Top = 85
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 8
            Top = 8
            Width = 449
            Height = 24
            Caption = #24288#21830#23526#38555#20132#36008#26085#33287#21407#22987#20132#26399#24046#30064
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object stgcb1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object Button4: TButton
            Left = 712
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button4Click
          end
          object Button9: TButton
            Left = 808
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button9Click
          end
          object CBX4: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox4: TGroupBox
            Left = 160
            Top = 40
            Width = 297
            Height = 73
            TabOrder = 4
            object Label13: TLabel
              Left = 179
              Top = 47
              Width = 19
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object stgsd: TDateTimePicker
              Left = 88
              Top = 43
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object stged: TDateTimePicker
              Left = 200
              Top = 43
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Edit2: TEdit
              Left = 88
              Top = 14
              Width = 89
              Height = 24
              TabOrder = 2
            end
            object CBBUY: TRadioButton
              Left = 8
              Top = 14
              Width = 81
              Height = 24
              Caption = 'BuyNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object CBRK: TRadioButton
              Left = 8
              Top = 43
              Width = 81
              Height = 24
              Caption = 'RKDate'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              TabStop = True
            end
          end
          object Panel9: TPanel
            Left = 464
            Top = 47
            Width = 225
            Height = 66
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            object cb5: TCheckBox
              Left = 8
              Top = 2
              Width = 209
              Height = 19
              Caption = '(RKDate - CFMDate) > 5'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227327
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object cb6: TCheckBox
              Left = 8
              Top = 23
              Width = 209
              Height = 19
              Caption = '(RKDate - CFMDate) < -5'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16744576
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 1
            end
            object cb7: TCheckBox
              Left = 8
              Top = 44
              Width = 209
              Height = 19
              Caption = 'NO Storage in '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 47872
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object DBGridEh6: TDBGridEh
          Left = 313
          Top = 129
          Width = 950
          Height = 447
          Align = alClient
          DataSource = DataSource9
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
          OnGetCellParams = DBGridEh6GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ry'
              Footers = <
                item
                  FieldName = 'ry'
                  ValueType = fvtCount
                end>
              Title.Caption = #35330#21934#32232#34399'|RY'
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = #26448#26009'|YWPM'
              Width = 402
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'shipdate'
              Footers = <>
              Title.Caption = #20986#36008#26085#26399'|ShipDate'
              Width = 70
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'rkdate'
              Footers = <>
              Title.Caption = #20837#24235#26085#26399'|RKDate'
              Width = 70
            end
            item
              DisplayFormat = 'yyyy/mm/dd'
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Caption = #30906#35469#26085#26399'|CFMDate'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'errday'
              Footers = <>
              Title.Caption = #24046#30064#22825#25976'|ErrDay'
              Width = 55
            end>
        end
        object DBGridEh7: TDBGridEh
          Left = 0
          Top = 129
          Width = 313
          Height = 447
          Align = alLeft
          DataSource = DataSource4
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
          OnGetCellParams = DBGridEh7GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ZSJC'
              Footers = <>
              Title.Caption = #24288#21830'|ZSJC'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'conn'
              Footers = <
                item
                  FieldName = 'conn'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Count'
              Width = 48
            end>
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Unqualified Suppliers'
        ImageIndex = 5
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 0
            Top = 53
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 0
            Top = 85
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 8
            Top = 8
            Width = 473
            Height = 24
            AutoSize = False
            Caption = #23526#38555#25505#36092#24288#21830#33287#25033#25505#36092#24288#21830#24046#30064
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button11: TButton
            Left = 560
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button11Click
          end
          object Button12: TButton
            Left = 656
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button12Click
          end
          object KCB1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 2
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object CBX6: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox5: TGroupBox
            Left = 160
            Top = 40
            Width = 369
            Height = 73
            TabOrder = 4
            object Label9: TLabel
              Left = 224
              Top = 45
              Width = 20
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'To:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 184
              Top = 19
              Width = 86
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ZLBH:'
            end
            object RB7: TRadioButton
              Left = 8
              Top = 14
              Width = 81
              Height = 24
              Caption = 'BuyNO'
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object BuyNoEdit4: TEdit
              Left = 88
              Top = 14
              Width = 89
              Height = 24
              TabOrder = 1
            end
            object RB8: TRadioButton
              Left = 8
              Top = 43
              Width = 81
              Height = 24
              Caption = 'ShipDate'
              TabOrder = 2
            end
            object KSD: TDateTimePicker
              Left = 88
              Top = 43
              Width = 121
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object KED: TDateTimePicker
              Left = 256
              Top = 43
              Width = 105
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DDBHEdit: TEdit
              Left = 272
              Top = 16
              Width = 88
              Height = 24
              TabOrder = 5
            end
          end
          object Button15: TButton
            Left = 752
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Supplier'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = Button15Click
          end
        end
        object DBGridEh11: TDBGridEh
          Left = 0
          Top = 129
          Width = 241
          Height = 447
          Align = alLeft
          DataSource = DataSource11
          Flat = False
          FooterColor = clWindow
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
              FieldName = 'ZSJC'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #24288#21830'|ZSJC'
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'Count'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25976#37327'|Count'
            end>
        end
        object DBGridEh12: TDBGridEh
          Left = 241
          Top = 129
          Width = 1022
          Height = 447
          Align = alClient
          DataSource = DataSource12
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #25505#36092#21934'|CGNO'
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = #35330#21934#32232#34399'|ZLBH'
              Width = 83
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
              Title.Caption = #26448#26009'|YWPM'
              Width = 184
            end
            item
              EditButtons = <>
              FieldName = 'ZSJCA'
              Footers = <>
              Title.Caption = #25505#36092#24288#21830'|ZSJCA'
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'ZSJCB'
              Footers = <>
              Title.Caption = 'BOM'#25351#23450#24288#21830'|ZSJCB'
              Width = 107
            end
            item
              EditButtons = <>
              FieldName = 'ZSBH'
              Footers = <>
              Title.Caption = #25505#36092#24288#21830'ID|ZSBH'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              Title.Caption = 'BOM'#24288#21830'ID|CSBH'
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              Title.Caption = #25505#21312'|CQDH'
              Width = 56
            end>
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Materials KPI'
        ImageIndex = 6
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          TabOrder = 0
          object Label12: TLabel
            Left = 0
            Top = 54
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 8
            Top = 85
            Width = 61
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button13: TButton
            Left = 800
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button13Click
          end
          object Button14: TButton
            Left = 896
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button14Click
          end
          object MKCB1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 2
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object CBX7: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox6: TGroupBox
            Left = 160
            Top = 40
            Width = 305
            Height = 73
            TabOrder = 4
            object Label23: TLabel
              Left = 180
              Top = 46
              Width = 27
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RB9: TRadioButton
              Left = 136
              Top = 14
              Width = 65
              Height = 24
              Caption = 'BuyNO'
              TabOrder = 0
            end
            object BUYNOEdit5: TEdit
              Left = 208
              Top = 14
              Width = 89
              Height = 24
              TabOrder = 1
            end
            object RB10: TRadioButton
              Left = 8
              Top = 43
              Width = 81
              Height = 24
              Caption = 'ShipDate'
              TabOrder = 2
            end
            object MKSD: TDateTimePicker
              Left = 88
              Top = 43
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object MKED: TDateTimePicker
              Left = 208
              Top = 43
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object RB11: TRadioButton
              Left = 8
              Top = 14
              Width = 89
              Height = 24
              Caption = 'All Orders'
              Checked = True
              TabOrder = 5
              TabStop = True
            end
          end
          object Panel14: TPanel
            Left = 472
            Top = 47
            Width = 305
            Height = 66
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            object CBR: TCheckBox
              Left = 8
              Top = 12
              Width = 65
              Height = 17
              Caption = 'Ready'
              Checked = True
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 0
              OnClick = CBRClick
            end
            object CBNR: TCheckBox
              Left = 8
              Top = 38
              Width = 105
              Height = 17
              Caption = 'Not Ready'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
              OnClick = CBNRClick
            end
            object CBPM: TCheckBox
              Left = 112
              Top = 12
              Width = 185
              Height = 17
              Caption = 'Show Packaging Materials'
              TabOrder = 2
            end
            object CBGM: TCheckBox
              Left = 112
              Top = 38
              Width = 145
              Height = 17
              Caption = 'Show Glue Materials'
              TabOrder = 3
            end
          end
        end
        object DBGridEh13: TDBGridEh
          Left = 0
          Top = 129
          Width = 257
          Height = 447
          Align = alLeft
          DataSource = DataSource13
          Flat = False
          FooterColor = clWindow
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
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = #21046#20196#32232#34399'|ZLBH'
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38617#25976'|Pairs'
            end>
        end
        object DBGridEh14: TDBGridEh
          Left = 257
          Top = 129
          Width = 1006
          Height = 447
          Align = alClient
          DataSource = DataSource14
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBGridEh14GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26448#26009#32232#34399'|CLBH'
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.ValueType = fvtAvg
              Footers = <>
              Title.Caption = #38617#25976'|Pairs'
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = #21046#20196#29992#37327'|CLSL'
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footers = <>
              Title.Caption = #24235#23384#25976#37327'|RKQty'
            end
            item
              EditButtons = <>
              FieldName = 'UseQty'
              Footers = <>
              Title.Caption = #21033#24235#25976#37327'|UseQty'
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'IQC KPI'
        ImageIndex = 3
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1263
          Height = 129
          Align = alTop
          TabOrder = 0
          object Label14: TLabel
            Left = 0
            Top = 53
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 0
            Top = 85
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object IKCB1: TComboBox
            Left = 72
            Top = 51
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'VA12'
              'VA3'
              'VB1'
              'VDT'
              'VTX'
              'CDC'
              'KDC')
          end
          object Button5: TButton
            Left = 720
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button5Click
          end
          object Button10: TButton
            Left = 816
            Top = 55
            Width = 94
            Height = 47
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button10Click
          end
          object CBX5: TComboBox
            Left = 72
            Top = 83
            Width = 72
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 3
            Text = 'ALL'
            Items.Strings = (
              'ALL'
              'MAIN'
              'Other')
          end
          object GroupBox7: TGroupBox
            Left = 160
            Top = 40
            Width = 297
            Height = 73
            TabOrder = 4
            object Label15: TLabel
              Left = 1
              Top = 32
              Width = 79
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ShipDate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 174
              Top = 32
              Width = 19
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object IKSD: TDateTimePicker
              Left = 80
              Top = 29
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object IKED: TDateTimePicker
              Left = 200
              Top = 29
              Width = 89
              Height = 24
              Date = 41391.604173831020000000
              Time = 41391.604173831020000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel10: TPanel
            Left = 464
            Top = 47
            Width = 249
            Height = 66
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            object cb8: TCheckBox
              Left = 8
              Top = 12
              Width = 233
              Height = 17
              Caption = '(IQC Pass - StorageDate) > 7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227327
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cb9: TCheckBox
              Left = 8
              Top = 38
              Width = 105
              Height = 17
              Caption = '(No IQC) '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16744576
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object DBGridEh8: TDBGridEh
          Left = 0
          Top = 129
          Width = 241
          Height = 447
          Align = alLeft
          DataSource = DataSource5
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
          OnGetCellParams = DBGridEh8GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
              Width = 149
            end
            item
              EditButtons = <>
              FieldName = 'conn'
              Footers = <
                item
                  FieldName = 'conn'
                  ValueType = fvtSum
                end>
              Title.Caption = #25976#37327'|Count'
              Width = 48
            end>
        end
        object DBGridEh9: TDBGridEh
          Left = 241
          Top = 129
          Width = 1022
          Height = 447
          Align = alClient
          DataSource = DataSource10
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ddbh'
              Footers = <
                item
                  FieldName = 'ddbh'
                  ValueType = fvtCount
                end>
              Title.Caption = #35330#21934#32232#34399'|DDBH'
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = #26448#26009'|YWPM'
              Width = 402
            end
            item
              EditButtons = <>
              FieldName = 'shipdate'
              Footers = <>
              Title.Caption = #20986#36008#26085#26399'|ShipDate'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'iqcdate'
              Footers = <>
              Title.Caption = #21697#31649#28204#35430'|IQCDate'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'userdate'
              Footers = <>
              Title.Caption = #26356#26032#26085#26399'|UserDate'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'errday'
              Footers = <>
              Title.Caption = #24046#30064#22825#25976'|ErrDay'
              Width = 55
            end>
        end
      end
    end
  end
  object TempQ: TQuery
    Left = 1120
    Top = 32
  end
  object PKPIM: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select userid,username,b,count(*) as conn'
      'from('
      
        'select cgzl.userid,busers.USERNAME,ddzl.ddrq,zlzls2.userdate as ' +
        'zldate,cgzlss.userdate as cgdate'
      #9',convert(int,ddzl.ddrq)-convert(int,zlzls2.userdate) as a'
      #9',convert(int,cgzlss.userdate)-convert(int,zlzls2.userdate) as b'
      'from cgzlss'
      'left join ddzl on ddzl.ddbh=cgzlss.zlbh'
      'left join cgzl on cgzlss.cgno=cgzl.cgno'
      'left join Busers on busers.USERID=cgzlss.userid'
      
        'left join zlzls2 on zlzls2.zlbh=cgzlss.zlbh and zlzls2.clbh=cgzl' +
        'ss.clbh and zlzls2.size=cgzlss.xxcc'
      
        'where ddzl.shipdate>='#39'2013/04/01'#39' and ddzl.shipdate<='#39'2013/04/30' +
        #39
      'and cgzl.gsbh='#39'VA12'#39') k'
      ' '
      'group by userid,username,b'
      'order by userid,username,b')
    Left = 93
    Top = 281
    object PKPIMuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object PKPIMusername: TStringField
      FieldName = 'username'
      FixedChar = True
      Size = 30
    end
    object PKPIMb: TIntegerField
      FieldName = 'b'
    end
    object PKPIMconn: TIntegerField
      FieldName = 'conn'
    end
  end
  object POM: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select k.zsdh,isnull(k.zsjc,'#39'No Exists'#39') as ZSJC,isnull(k.zsywjc' +
        ','#39'No Exists'#39') as zsywjc,k.overclsl,count(*) as conn '
      'from( '
      
        'select zlzls2.zlbh,zlzls2.clbh,zlzls2.size,ddzl.shipdate,zszl.zs' +
        'dh,zszl.zsjc,zszl.zsywjc'
      #9',sum(clsl) as zlqty,cgzl.qty,max(zlzls2.userdate) as zldate'
      #9', round((cgzl.qty/ sum(clsl)*100),2)  as overp'
      
        #9','#39'overclsl'#39' = case when abs(((cgzl.qty-sum(clsl))/sum(clsl))*10' +
        '0) < 5 then 0 else 1 end'
      'from zlzls2'
      'left join ddzl on zlzls2.zlbh=ddzl.ddbh'
      'left join zszl on zszl.zsdh=zlzls2.csbh'
      'left join (select zlbh,clbh,sum(qty) as qty,xxcc'
      #9#9'from cgzlss'
      #9#9'where zlbh like '#39'%'#39
      #9#9'group by zlbh,clbh,xxcc)as cgzl on zlzls2.zlbh=cgzl.zlbh '
      #9#9'and zlzls2.clbh=cgzl.clbh and zlzls2.size=cgzl.xxcc '
      'where cgzl.qty is not null'
      #9'and zlzls2.clsl > 0'
      #9'and ddzl.shipdate>='#39'2017/03/30'#39
      #9'and ddzl.shipdate<='#39'2017/04/29'#39
      #9'and ddzl.gsbh='#39'VA12'#39
      #9'and zlzls2.zlbh like '#39'%'#39
      
        'group by zlzls2.zlbh,zlzls2.clbh,cgzl.qty,ddzl.shipdate,zszl.zsd' +
        'h,zszl.zsjc,zszl.zsywjc,zlzls2.size'
      ') k'
      'where abs(100-k.overp) >= 5'
      'group by k.zsdh,k.zsjc,k.zsywjc,k.overclsl'#9
      'order by k.zsjc,k.overclsl')
    Left = 141
    Top = 281
    object POMzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object POMzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object POMzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object POMoverclsl: TIntegerField
      FieldName = 'overclsl'
    end
    object POMconn: TIntegerField
      FieldName = 'conn'
    end
  end
  object dsm: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select k.zsjc,k.zsywjc,k.shipdate,k.errf,count(*) as conn'
      'from ('
      'select zszl.zsjc,zszl.zsywjc,ddzl.shipdate,clzl.ywpm'
      #9',cgzlss.yqdate,cgzlss.cfmdate'
      
        #9',convert(int,cgzlss.yqdate)-convert(int,cgzlss.cfmdate) as errd' +
        'ay'
      #9',(case  '
      
        #9#9'when (convert(int,cgzlss.yqdate)-convert(int,cgzlss.cfmdate)>=' +
        '5) then 1'
      
        #9#9'when (convert(int,cgzlss.yqdate)-convert(int,cgzlss.cfmdate)<=' +
        '-5) then 2'
      #9#9'else 0'
      #9'  end) as errf '#9
      ' from cgzlss'
      'left join cgzl on cgzl.cgno=cgzlss.cgno'
      'left join zszl on cgzl.zsbh=zszl.zsdh'
      'left join clzl on cgzlss.clbh=clzl.cldh'
      'left join ddzl on cgzlss.zlbh=ddzl.ddbh'
      'where ddzl.shipdate>='#39'2013/04/01'#39
      #9'and ddzl.shipdate<='#39'2013/04/30'#39
      #9'and ddzl.gsbh='#39'VA12'#39
      ') k'
      'group by k.zsjc,k.zsywjc,k.shipdate,k.errf'
      'order by k.zsywjc,k.shipdate')
    Left = 189
    Top = 281
    object dsmzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object dsmzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object dsmerrf: TIntegerField
      FieldName = 'errf'
    end
    object dsmconn: TIntegerField
      FieldName = 'conn'
    end
  end
  object stgm: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      ''
      'SELECT ZSDH,ZSJC, ZSYWJC, ERRF, COUNT(*) AS CONN,GSBH FROM ('
      
        'SELECT ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipDat' +
        'e, DDZL.BUYNO, SUM(CGZLSS.Qty) AS Qty, KCRK.RKQty,'
      
        'MIN(CGZLSS.CFMDate) AS CGDate, KCRK.RKDate, CGZLSS.ZLBH AS RY, C' +
        'GZLSS.CLBH, CGZL.ZSBH,DDZL.GSBH,'
      
        'CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate))' +
        ' AS ERRDAY,'
      '(CASE'
      
        'WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFM' +
        'Date)) >= 5) THEN 1'
      
        'WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFM' +
        'Date)) <= -5) THEN 2'
      'WHEN MAX(KCRK.RKDate) IS NULL THEN 3'
      'ELSE 0 END) AS ERRF'
      'FROM CGZLSS'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH'
      'LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      'LEFT JOIN ('
      
        'SELECT KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH, SUM(KCRKS.PaQty) AS RK' +
        'Qty, MAX(KCRK.USERDATE) AS RKDate FROM KCRKS'
      'LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO'
      'GROUP BY KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH'
      
        ') AS KCRK ON KCRK.CGBH = CGZLSS.ZLBH AND KCRK.CLBH = CGZLSS.CLBH' +
        ' AND KCRK.ZSBH = CGZL.ZSBH'
      'WHERE DDZL.GSBH = '#39'VA12'#39
      'AND KCRK.RKDate >= '#39'2018/04/01'#39' AND KCRK.RKDate <= '#39'2018/04/30'#39
      
        'GROUP BY ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipD' +
        'ate, DDZL.BUYNO, CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.ZSBH, KCRK.RKQty' +
        ', KCRK.RKDate,DDZL.GSBH'
      ') AS K'
      'WHERE (ERRF = 100'
      'OR ERRF = 0 OR ERRF = 1 OR ERRF = 2 OR ERRF = 3)'
      'GROUP BY ZSDH,ZSJC, ZSYWJC, ERRF,GSBH'
      'ORDER BY COUNT(*) DESC, ERRF, ZSYWJC'
      ''
      '')
    Left = 237
    Top = 281
    object stgmZSJC: TStringField
      FieldName = 'ZSJC'
    end
    object stgmzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object stgmerrf: TIntegerField
      FieldName = 'errf'
    end
    object stgmconn: TIntegerField
      FieldName = 'conn'
    end
    object stgmZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
  end
  object IKM: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select k.zsywjc,k.errf,count(*) as conn'
      'from('
      
        'select zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate,kcrk.cfmd' +
        'ate'
      #9',convert(int,iqc.iqcdate)-convert(int,kcrk.cfmdate) as errday'
      #9',(case  '
      
        #9#9'when (convert(int,iqc.iqcdate)-convert(int,kcrk.cfmdate)>=5) t' +
        'hen 1'
      #9#9'when iqcdate is null then 2'
      #9#9'else 0'
      #9'  end) as errf '
      'from kcrks'
      ' left join kcrk on kcrks.rkno = kcrk.rkno'
      ' left join zszl on kcrk.zsbh=zszl.zsdh'
      ' left join clzl on kcrks.clbh=clzl.cldh'
      ' left join ddzl on kcrks.cgbh=ddzl.ddbh'
      
        ' left join iqc on iqc.rkno = kcrks.rkno and iqc.clbh = kcrks.clb' +
        'h and iqc.pass='#39'Y'#39
      'where ddzl.shipdate>='#39'2013/05/29'#39
      '   and ddzl.shipdate<='#39'2013/06/28'#39
      #9'and ddzl.gsbh='#39'VA12'#39
      
        ' group by zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate,kcrk.c' +
        'fmdate'
      ') K'
      'group by k.zsywjc,k.errf')
    Left = 285
    Top = 281
    object IKMzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IKMerrf: TIntegerField
      FieldName = 'errf'
    end
    object IKMconn: TIntegerField
      FieldName = 'conn'
    end
  end
  object DataSource1: TDataSource
    DataSet = PKPIM
    Left = 93
    Top = 321
  end
  object DataSource2: TDataSource
    DataSet = POM
    Left = 141
    Top = 321
  end
  object DataSource3: TDataSource
    DataSet = dsm
    Left = 189
    Top = 321
  end
  object DataSource4: TDataSource
    DataSet = stgm
    Left = 237
    Top = 321
  end
  object DataSource5: TDataSource
    DataSet = IKM
    Left = 285
    Top = 321
  end
  object PKPId: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select cgzlss.zlbh,cgzl.userid,busers.USERNAME,ddzl.ddrq,zlzls2.' +
        'userdate as zldate,cgzlss.userdate as cgdate'
      #9',convert(int,ddzl.ddrq)-convert(int,zlzls2.userdate) as a'
      #9',convert(int,cgzlss.userdate)-convert(int,zlzls2.userdate) as b'
      'from cgzlss'
      'left join ddzl on ddzl.ddbh=cgzlss.zlbh'
      'left join cgzl on cgzlss.cgno=cgzl.cgno'
      'left join Busers on busers.USERID=cgzlss.userid'
      
        'left join zlzls2 on zlzls2.zlbh=cgzlss.zlbh and zlzls2.clbh=cgzl' +
        'ss.clbh and zlzls2.size=cgzlss.xxcc'
      
        'where ddzl.shipdate>='#39'2013/04/01'#39' and ddzl.shipdate<='#39'2013/04/30' +
        #39
      'and cgzl.gsbh='#39'VA12'#39
      'and cgzl.userid=:userid')
    Left = 93
    Top = 361
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'userid'
        ParamType = ptUnknown
        Size = 16
      end>
    object PKPIdzlbh: TStringField
      FieldName = 'zlbh'
      FixedChar = True
      Size = 15
    end
    object PKPIdCLBH: TStringField
      FieldName = 'CLBH'
    end
    object PKPIduserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object PKPIdUSERNAME: TStringField
      FieldName = 'USERNAME'
      FixedChar = True
      Size = 30
    end
    object PKPIdddrq: TDateTimeField
      FieldName = 'ddrq'
    end
    object PKPIdUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object PKPIdzldate: TDateTimeField
      FieldName = 'zldate'
    end
    object PKPIdcgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object PKPIda: TIntegerField
      FieldName = 'a'
    end
    object PKPIdb: TIntegerField
      FieldName = 'b'
    end
  end
  object DataSource6: TDataSource
    DataSet = PKPId
    Left = 93
    Top = 401
  end
  object POD: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource2
    SQL.Strings = (
      'select * from ('
      
        'select zlzls2.zlbh,CLZL.cldh as CLBH,clzl.ywpm ,zlzls2.size,ddzl' +
        '.shipdate,zszl.zsdh,zszl.zsjc,zszl.zsywjc'
      #9',sum(clsl) as zlqty,cgzl.qty,max(zlzls2.userdate) as zldate'
      #9', round((((cgzl.qty-sum(clsl))/sum(clsl))*100),2)  as overp'
      
        #9','#39'overclsl'#39' = case when abs(((cgzl.qty-sum(clsl))/sum(clsl))*10' +
        '0) < 5 then 0 else 1 end'
      'from zlzls2'
      'left join ddzl on zlzls2.zlbh=ddzl.ddbh'
      'left join zszl on zszl.zsdh=zlzls2.csbh'
      'left join clzl on clzl.cldh=zlzls2.clbh'
      'left join (select zlbh,clbh,sum(qty) as qty,xxcc'
      #9#9'from cgzlss'
      #9#9'where zlbh like '#39'%'#39
      #9#9'group by zlbh,clbh,xxcc)as cgzl on zlzls2.zlbh=cgzl.zlbh '
      #9#9'and zlzls2.clbh=cgzl.clbh and zlzls2.size=cgzl.xxcc '
      'where cgzl.qty is not null'
      #9'and zlzls2.clsl > 0'
      #9'and ddzl.shipdate>='#39'2017/03/30'#39
      #9'and ddzl.shipdate<='#39'2017/04/29'#39
      #9'and ddzl.gsbh='#39'VA12'#39
      ' and zszl.zsdh='#39'V155'#39
      
        'group by zlzls2.zlbh,clzl.cldh,clzl.ywpm,cgzl.qty,ddzl.shipdate,' +
        'zszl.zsdh,zszl.zsjc,zszl.zsywjc,zlzls2.size'
      ') k'
      'where overclsl=1')
    Left = 141
    Top = 361
    object PODzlbh: TStringField
      FieldName = 'zlbh'
      FixedChar = True
      Size = 15
    end
    object PODclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 10
    end
    object PODsize: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object PODshipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object PODzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object PODzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object PODzlqty: TFloatField
      FieldName = 'zlqty'
    end
    object PODqty: TCurrencyField
      FieldName = 'qty'
    end
    object PODzldate: TDateTimeField
      FieldName = 'zldate'
    end
    object PODoverp: TFloatField
      FieldName = 'overp'
    end
    object PODoverclsl: TIntegerField
      FieldName = 'overclsl'
    end
    object PODywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource7: TDataSource
    DataSet = POD
    Left = 141
    Top = 401
  end
  object dsd: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource3
    SQL.Strings = (
      'select cgzlss.zlbh,zszl.zsjc,zszl.zsywjc,ddzl.shipdate,clzl.ywpm'
      #9',cgzlss.yqdate,cgzlss.cfmdate'
      
        #9',convert(int,cgzlss.yqdate)-convert(int,cgzlss.cfmdate) as errd' +
        'ay'
      #9',(case  '
      
        #9#9'when (convert(int,cgzlss.yqdate)-convert(int,cgzlss.cfmdate)>=' +
        '5) then 1'
      
        #9#9'when (convert(int,cgzlss.yqdate)-convert(int,cgzlss.cfmdate)<=' +
        '-5) then 2'
      #9#9'else 0'
      #9'  end) as errf '#9
      ' from cgzlss'
      'left join cgzl on cgzl.cgno=cgzlss.cgno'
      'left join zszl on cgzl.zsbh=zszl.zsdh'
      'left join clzl on cgzlss.clbh=clzl.cldh'
      'left join ddzl on cgzlss.zlbh=ddzl.ddbh'
      'where ddzl.shipdate>='#39'2013/04/01'#39
      #9'and ddzl.shipdate<='#39'2013/04/30'#39
      #9'and ddzl.gsbh='#39'VA12'#39
      'order by zszl.zsywjc,ddzl.shipdate,clzl.ywpm')
    Left = 189
    Top = 361
    object dsdzlbh: TStringField
      FieldName = 'zlbh'
      FixedChar = True
      Size = 15
    end
    object dsdzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object dsdzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object dsdshipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object dsdywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object dsdyqdate: TDateTimeField
      FieldName = 'yqdate'
    end
    object dsdcfmdate: TDateTimeField
      FieldName = 'cfmdate'
    end
    object dsderrday: TIntegerField
      FieldName = 'errday'
    end
    object dsderrf: TIntegerField
      FieldName = 'errf'
    end
  end
  object DataSource8: TDataSource
    DataSet = dsd
    Left = 189
    Top = 401
  end
  object stgd: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource4
    SQL.Strings = (
      ''
      ''
      
        'SELECT ZSDH,RY, ZSYWJC, YWPM, ShipDate, Qty, RKQty, CGDate, RKDa' +
        'te, ERRDAY, ERRF FROM ('
      
        'SELECT ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipDat' +
        'e, DDZL.BUYNO, SUM(CGZLSS.Qty) AS Qty, KCRK.RKQty,'
      
        'MIN(CGZLSS.CFMDate) AS CGDate, KCRK.RKDate, CGZLSS.ZLBH AS RY, C' +
        'GZLSS.CLBH, CGZL.ZSBH,'
      
        'CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate))' +
        ' AS ERRDAY,'
      '(CASE'
      
        'WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFM' +
        'Date)) >= 5) THEN 1'
      
        'WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFM' +
        'Date)) <= -5) THEN 2'
      'WHEN MAX(KCRK.RKDate) IS NULL THEN 3'
      'ELSE 0 END) AS ERRF'
      'FROM CGZLSS'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH'
      'LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      'LEFT JOIN ('
      
        'SELECT KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH, SUM(KCRKS.PaQty) AS RK' +
        'Qty, MAX(KCRK.USERDATE) AS RKDate FROM KCRKS'
      'LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO'
      'GROUP BY KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH'
      
        ') AS KCRK ON KCRK.CGBH = CGZLSS.ZLBH AND KCRK.CLBH = CGZLSS.CLBH' +
        ' AND KCRK.ZSBH = CGZL.ZSBH'
      'WHERE DDZL.GSBH = '#39'VA12'#39'  '
      'AND KCRK.RKDate >= '#39'2018/04/01'#39' AND KCRK.RKDate <= '#39'2018/04/30'#39
      
        'GROUP BY ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipD' +
        'ate, DDZL.BUYNO, CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.ZSBH, KCRK.RKQty' +
        ', KCRK.RKDate'
      ') AS K'
      'WHERE 1=1'
      'and ZSDH like '#39'VT14%'#39' '
      'and ERRF=1'
      'ORDER BY ERRDAY DESC, ShipDate, YWPM'
      '')
    Left = 237
    Top = 361
    object stgdry: TStringField
      FieldName = 'ry'
      FixedChar = True
      Size = 15
    end
    object stgdzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object stgdywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object stgdshipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object stgdqty: TCurrencyField
      FieldName = 'qty'
    end
    object stgdrkqty: TFloatField
      FieldName = 'rkqty'
    end
    object stgdcgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object stgdrkdate: TDateTimeField
      FieldName = 'rkdate'
    end
    object stgderrday: TIntegerField
      FieldName = 'errday'
    end
    object stgderrf: TIntegerField
      FieldName = 'errf'
    end
    object stgdZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource9: TDataSource
    DataSet = stgd
    Left = 237
    Top = 401
  end
  object IKD: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource5
    SQL.Strings = (
      'select *'
      'from('
      
        'select ddzl.ddbh,zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate' +
        ',kcrks.userdate'
      #9',convert(int,iqc.iqcdate)-convert(int,kcrks.userdate) as errday'
      #9',(case  '
      
        #9#9'when (convert(int,iqc.iqcdate)-convert(int,kcrks.userdate)>=5)' +
        ' then 1'
      #9#9'when iqcdate is null then 2'
      #9#9'else 0'
      #9'  end) as errf '
      'from kcrks'
      ' left join kcrk on kcrks.rkno = kcrk.rkno'
      ' left join zszl on kcrk.zsbh=zszl.zsdh'
      ' left join clzl on kcrks.clbh=clzl.cldh'
      ' left join ddzl on kcrks.cgbh=ddzl.ddbh'
      
        ' left join iqc on iqc.rkno = kcrks.rkno and iqc.clbh = kcrks.clb' +
        'h and iqc.pass='#39'Y'#39
      'where ddzl.shipdate>='#39'2013/05/29'#39
      '   and ddzl.shipdate<='#39'2013/06/28'#39
      #9'and ddzl.gsbh='#39'VA12'#39
      
        ' group by ddzl.ddbh,zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcd' +
        'ate,kcrks.userdate'
      ') K'
      ''
      'order by k.shipdate,k.ywpm'
      '')
    Left = 285
    Top = 361
    object IKDddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object IKDzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IKDywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object IKDshipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object IKDiqcdate: TDateTimeField
      FieldName = 'iqcdate'
    end
    object IKDerrday: TIntegerField
      FieldName = 'errday'
    end
    object IKDerrf: TIntegerField
      FieldName = 'errf'
    end
    object IKDuserdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object DataSource10: TDataSource
    DataSet = IKD
    Left = 285
    Top = 401
  end
  object QKM: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select ZSZLA.ZSJC,count(*) as Count from ( '
      
        'select CGZL.CGNO,CGZL.ZSBH,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.CSBH,C' +
        'LZL.YWPM,CLZL.CQDH, '
      
        'case when CLZL.CQDH='#39'TW'#39' then ZLZLS2.CSBH else ZSZL_DEV.ZSDH_TW ' +
        'end as PayZSDH,CGZL.CGLX '
      'from CGZL '
      'left join CGZLS on CGZL.CGNO=CGZLS.CGNO '
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH '
      
        'left join CGZLSS on CGZLSS.CGNO=CGZLS.CGNO and CGZLSS.CLBH=CGZLS' +
        '.CLBH '
      'left join DDZL on DDZL.DDBH=CGZLSS.ZLBH '
      'left join ( '
      'select ZLZLS2.ZLBH,ZLZLS2.CLBH,Max(ZLZLS2.CSBH) as CSBH '
      'from ZLZLS2 '
      'left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH '
      'WHERE DDZL.DDBH like '#39'%'#39
      'and DDZL.BuyNO LIKE '#39'201804%'#39
      
        'and ZLZLS2.CLSL>0 and ZLZLS2.ZMLB='#39'N'#39' and CSBH<>'#39#39' and CSBH is n' +
        'ot null '
      'Group by ZLZLS2.ZLBH,ZLZLS2.CLBH '
      
        '           ) ZLZLS2 on ZLZLS2.ZLBH=CGZLSS.ZLBH and CGZLSS.CLBH=Z' +
        'LZLS2.CLBH '
      
        'left join ZSZL_DEV on  ZSZL_DEV.ZSDH=ZLZLS2.CSBH  and ZSZL_DEV.G' +
        'SBH='#39'VA12'#39
      'Where DDZL.DDBH like '#39'%'#39
      'and DDZL.BuyNO LIKE '#39'201804%'#39
      ') CGZL '
      'left join ZSZL as ZSZLA on ZSZLA.ZSDH=CGZL.ZSBH '
      'left join ZSZL as ZSZLB on ZSZLB.ZSDH=CGZL.PayZSDH '
      'where ZSBH<>PayZSDH '
      'Group by ZSZLA.ZSJC')
    Left = 333
    Top = 281
    object QKMZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object QKMCount: TIntegerField
      FieldName = 'Count'
    end
  end
  object DataSource11: TDataSource
    DataSet = QKM
    Left = 333
    Top = 321
  end
  object DataSource12: TDataSource
    DataSet = QKD
    Left = 333
    Top = 401
  end
  object QKD: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource11
    SQL.Strings = (
      
        'select CGNO,ZLBH,CLBH,YWPM,CQDH,ZSBH,CSBH,PayZSDH,CGLX,ZSZLA.ZSJ' +
        'C as ZSJCA,ZSZLB.ZSJC as ZSJCB from ('
      
        'select CGZL.CGNO,CGZL.ZSBH,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.CSBH,C' +
        'LZL.YWPM,CLZL.CQDH,'
      
        'case when CLZL.CQDH='#39'TW'#39' then ZLZLS2.CSBH else ZSZL_DEV.ZSDH_TW ' +
        'end as PayZSDH,CGZL.CGLX'
      'from CGZL'
      'left join CGZLS on CGZL.CGNO=CGZLS.CGNO '
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      
        'left join CGZLSS on CGZLSS.CGNO=CGZLS.CGNO and CGZLSS.CLBH=CGZLS' +
        '.CLBH'
      'left join DDZL on DDZL.DDBH=CGZLSS.ZLBH'
      'left join ('
      '   select ZLZLS2.ZLBH,ZLZLS2.CLBH,Max(ZLZLS2.CSBH) as CSBH '
      '   from ZLZLS2'
      '   left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH'
      
        '   where DDZL.BUYNO like '#39'201802%'#39' and DDZL.DDBH like '#39'Y18%'#39' and' +
        ' ZLZLS2.CLSL>0 and ZLZLS2.ZMLB='#39'N'#39' and CSBH<>'#39#39' and CSBH is not ' +
        'null'
      '   Group by ZLZLS2.ZLBH,ZLZLS2.CLBH   '
      
        '    ) ZLZLS2 on ZLZLS2.ZLBH=CGZLSS.ZLBH and CGZLSS.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join ZSZL_DEV on  ZSZL_DEV.ZSDH=ZLZLS2.CSBH  and ZSZL_DEV.G' +
        'SBH='#39'VA12'#39'     '
      'where DDZL.BUYNO like '#39'201802%'#39' and DDZL.DDBH like '#39'Y18%'#39
      ') CGZL'
      'left join ZSZL as ZSZLA on ZSZLA.ZSDH=CGZL.ZSBH'
      'left join ZSZL as ZSZLB on ZSZLB.ZSDH=CGZL.PayZSDH '
      'where ZSBH<>PayZSDH and ZSZLA.ZSJC='#39'DINH HANG'#39
      '')
    Left = 333
    Top = 361
    object QKDCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QKDZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object QKDCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object QKDYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object QKDCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object QKDZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QKDCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object QKDPayZSDH: TStringField
      FieldName = 'PayZSDH'
      FixedChar = True
      Size = 6
    end
    object QKDCGLX: TStringField
      FieldName = 'CGLX'
      FixedChar = True
      Size = 1
    end
    object QKDZSJCA: TStringField
      FieldName = 'ZSJCA'
      FixedChar = True
    end
    object QKDZSJCB: TStringField
      FieldName = 'ZSJCB'
      FixedChar = True
    end
  end
  object QMKM: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DISTINCT T.ZLBH, T.Pairs FROM ('
      'SELECT ZLZLS2.ZLBH, ZLZLS2.BWBH, ZLZLS2.CLBH, DDZL.Pairs,'
      
        'CASE WHEN ISNULL(SUM(KCRKS.Qty), 0) + ISNULL(CGKCUSE.Qty, 0) >= ' +
        'ISNULL(ZLZLS2.CLSL, 0) THEN 1 ELSE 2 END AS DONE,'
      
        'ISNULL(ZLZLS2.CLSL, 0) AS CLSL, ISNULL(SUM(KCRKS.Qty), 0) AS RKQ' +
        'ty, ISNULL(CGKCUSE.Qty, 0) AS CKQty FROM ZLZLS2'
      'LEFT JOIN DDZL ON DDZL.DDBH = ZLZLS2.ZLBH'
      
        'LEFT JOIN KCRKS ON KCRKS.CGBH = DDZL.DDBH AND KCRKS.CLBH = ZLZLS' +
        '2.CLBH'
      
        'LEFT JOIN CGKCUSE ON CGKCUSE.ZLBH = ZLZLS2.ZLBH AND CGKCUSE.CLBH' +
        ' = ZLZLS2.CLBH AND CGKCUSE.GSBH = DDZL.GSBH'
      
        'WHERE DDZL.GSBH = '#39'VA12'#39' AND DDZL.BUYNO LIKE '#39'201709%'#39' AND DDZL.' +
        'YN = 1'
      
        'AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN ('#39'H'#39', '#39'U'#39', '#39'M'#39', '#39'L'#39', '#39'W'#39 +
        ')'
      
        'GROUP BY ZLZLS2.ZLBH, ZLZLS2.BWBH, ZLZLS2.CLBH, DDZL.Pairs, ZLZL' +
        'S2.CLSL, CGKCUSE.Qty) AS T'
      'WHERE T.DONE IN (1, 2)'
      'ORDER BY T.ZLBH')
    Left = 381
    Top = 281
    object QMKMZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object QMKMPairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DataSource13: TDataSource
    DataSet = QMKM
    Left = 381
    Top = 321
  end
  object QMKD: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource13
    SQL.Strings = (
      'SELECT * FROM ('
      'SELECT ZLZLS2.ZLBH, ZLZLS2.BWBH, ZLZLS2.CLBH, DDZL.Pairs,'
      
        'CASE WHEN ISNULL(SUM(KCRKS.Qty), 0) + ISNULL(CGKCUSE.Qty, 0) >= ' +
        'ISNULL(ZLZLS2.CLSL, 0) THEN 1 ELSE 2 END AS DONE,'
      
        'ISNULL(ZLZLS2.CLSL, 0) AS CLSL, ISNULL(SUM(KCRKS.Qty), 0) AS RKQ' +
        'ty, ISNULL(CGKCUSE.Qty, 0) AS UseQty FROM'
      
        '(SELECT ZLBH, BWBH, CLBH, SUM(CLSL) AS CLSL FROM ZLZLS2 WHERE ZL' +
        'ZLS2.ZMLB = '#39'N'#39' AND SUBSTRING(ZLZLS2.CSBH, 1, 3) <> '#39'JNG'#39' AND ZL' +
        'ZLS2.CLSL > 0 GROUP BY ZLBH, BWBH, CLBH) AS ZLZLS2'
      'LEFT JOIN DDZL ON DDZL.DDBH = ZLZLS2.ZLBH'
      
        'LEFT JOIN KCRKS ON KCRKS.CGBH = DDZL.DDBH AND KCRKS.CLBH = ZLZLS' +
        '2.CLBH'
      
        'LEFT JOIN CGKCUSE ON CGKCUSE.ZLBH = ZLZLS2.ZLBH AND CGKCUSE.CLBH' +
        ' = ZLZLS2.CLBH AND CGKCUSE.GSBH = DDZL.GSBH'
      
        'WHERE DDZL.GSBH = '#39'VA12'#39' AND DDZL.DDBH = '#39'Y1801-0291'#39' AND DDZL.Y' +
        'N = 1'
      'AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN ('#39'H'#39', '#39'U'#39', '#39'L'#39', '#39'W'#39')'
      
        'GROUP BY ZLZLS2.ZLBH, ZLZLS2.BWBH, ZLZLS2.CLBH, DDZL.Pairs, ZLZL' +
        'S2.CLSL, CGKCUSE.Qty) AS T'
      'WHERE T.DONE IN (1, 2) '
      'ORDER BY T.DONE, T.ZLBH, T.CLBH')
    Left = 381
    Top = 361
    object QMKDZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object QMKDCLBH: TStringField
      FieldName = 'CLBH'
    end
    object QMKDPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object QMKDDONE: TIntegerField
      FieldName = 'DONE'
    end
    object QMKDCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object QMKDRKQty: TFloatField
      FieldName = 'RKQty'
    end
    object QMKDUseQty: TFloatField
      FieldName = 'UseQty'
    end
  end
  object DataSource14: TDataSource
    DataSet = QMKD
    Left = 381
    Top = 401
  end
end
