object OrderSpecAll: TOrderSpecAll
  Left = 299
  Top = 288
  Width = 1146
  Height = 591
  Caption = 'OrderSpecAll'
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1138
    Height = 89
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = -2
      Top = 8
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 32
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 151
      Top = 7
      Width = 8
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
    end
    object Label3: TLabel
      Left = 537
      Top = 9
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo'
    end
    object Label20: TLabel
      Left = 691
      Top = 59
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Location'
    end
    object Label2: TLabel
      Left = 128
      Top = 58
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = -2
      Top = 58
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 689
      Top = 32
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pur ID'
    end
    object Label9: TLabel
      Left = 383
      Top = 57
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
    end
    object EditRY1: TEdit
      Left = 66
      Top = 4
      Width = 84
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 1
    end
    object chk_RYDate: TCheckBox
      Left = 265
      Top = 7
      Width = 79
      Height = 17
      Caption = 'RY Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditArticle: TEdit
      Left = 65
      Top = 28
      Width = 184
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 2
    end
    object Chk_B: TCheckBox
      Left = 854
      Top = 6
      Width = 126
      Height = 17
      Caption = 'Hide B Order'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object EditRY2: TEdit
      Left = 160
      Top = 3
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 0
    end
    object DTP3: TDateTimePicker
      Left = 348
      Top = 25
      Width = 90
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 3
    end
    object DTP4: TDateTimePicker
      Left = 446
      Top = 25
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 4
    end
    object BuyNoEdit: TEdit
      Left = 592
      Top = 6
      Width = 87
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 7
    end
    object LocCB: TComboBox
      Left = 751
      Top = 56
      Width = 52
      Height = 24
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 8
      Text = 'VN'
      Items.Strings = (
        ''
        'VN'
        'TW')
    end
    object KhoCK: TCheckBox
      Left = 855
      Top = 49
      Width = 161
      Height = 17
      Caption = 'Show available stock'
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = KhoCKClick
    end
    object DDLBCb: TComboBox
      Left = 64
      Top = 54
      Width = 62
      Height = 24
      ItemHeight = 16
      TabOrder = 10
      Items.Strings = (
        ''
        '<>'#39'F'#39
        '='#39'F'#39
        '='#39'N'#39)
    end
    object OrderModeCB: TComboBox
      Left = 177
      Top = 54
      Width = 192
      Height = 24
      ItemHeight = 16
      TabOrder = 11
      Items.Strings = (
        ''
        ' in ('#39'MU'#39','#39'NG'#39','#39'NU'#39')'
        ' Not in ('#39'MU'#39','#39'NG'#39','#39'NU'#39')'
        ' in ('#39'CU'#39')'
        ' Not in ('#39'CU'#39')'
        ' in ('#39'MU'#39')'
        ' Not in ('#39'MU'#39')'
        ' in ('#39'NG'#39')'
        ' Not in ('#39'NG'#39')'
        ' in ('#39'NU'#39')'
        ' Not in ('#39'NU'#39')'
        ' in ('#39'TN'#39')'
        ' Not in ('#39'TN'#39')')
    end
    object LTCKbox: TCheckBox
      Left = 855
      Top = 27
      Width = 113
      Height = 17
      Caption = 'Show LedaTime'
      TabOrder = 12
    end
    object PurchaserEdit: TEdit
      Left = 750
      Top = 28
      Width = 73
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 13
    end
    object DTP1: TDateTimePicker
      Left = 348
      Top = 1
      Width = 90
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 14
    end
    object DTP2: TDateTimePicker
      Left = 446
      Top = 1
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 15
    end
    object Chk_POInteger: TCheckBox
      Left = 698
      Top = 6
      Width = 135
      Height = 17
      Caption = 'PO# Qty= (Integer)'
      TabOrder = 16
    end
    object DDGBCombo: TComboBox
      Left = 440
      Top = 53
      Width = 105
      Height = 24
      ItemHeight = 16
      TabOrder = 17
      Items.Strings = (
        ''
        'USA'#39','#39'CND')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 89
    Width = 1138
    Height = 471
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'PO [NoSize]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1130
        Height = 440
        Align = alClient
        TabOrder = 0
        object Splitter3: TSplitter
          Left = 758
          Top = 33
          Height = 406
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1128
          Height = 32
          Align = alTop
          Color = clMoneyGreen
          TabOrder = 0
          object Label13: TLabel
            Left = 248
            Top = 9
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Supplier'
          end
          object Label11: TLabel
            Left = 423
            Top = 9
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Mat ID'
          end
          object Label12: TLabel
            Left = 586
            Top = 9
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Mat Name'
          end
          object Label17: TLabel
            Left = 784
            Top = 9
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Location'
          end
          object Edit_Supplier1: TEdit
            Left = 307
            Top = 5
            Width = 112
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 0
          end
          object Button5: TButton
            Left = 959
            Top = 5
            Width = 73
            Height = 24
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = Button5Click
          end
          object Chk_NoPur1: TCheckBox
            Left = 7
            Top = 9
            Width = 99
            Height = 17
            Caption = 'Show No Pur'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
          object Chk_OverPur1: TCheckBox
            Left = 108
            Top = 9
            Width = 135
            Height = 17
            Caption = 'Show Pur too much'
            TabOrder = 7
            OnClick = Chk_OverPur1Click
          end
          object Edit_MatNo1: TEdit
            Left = 494
            Top = 5
            Width = 91
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 1
          end
          object Edit_MatNM1_A: TEdit
            Left = 665
            Top = 5
            Width = 59
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 2
          end
          object Edit_Loc1: TEdit
            Left = 862
            Top = 5
            Width = 89
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 4
          end
          object Edit_MatNM1_B: TEdit
            Left = 721
            Top = 5
            Width = 59
            Height = 24
            ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
            TabOrder = 3
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 33
          Width = 757
          Height = 406
          Align = alLeft
          DataSource = DS_ToPO
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = Pop_ToPO
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 0
          OnGetCellParams = DBGridEh2GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'EXPDATE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              ReadOnly = True
              Title.Caption = 'Mat ID'
              Title.TitleButton = True
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material Name'
              Title.TitleButton = True
              Width = 328
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              ReadOnly = True
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supp ID'
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Usage'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Use Stock'
              Title.TitleButton = True
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'UseYG'
              Footer.FieldName = 'UseYG'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pur Qty'
              Title.TitleButton = True
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'Diff'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Status'
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'ZKQty'
              Footers = <>
              Title.Caption = 'Kho Qty'
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'ZKBH'
              Footers = <>
              Title.Caption = 'Kho No.'
              Width = 79
            end
            item
              Color = clBtnFace
              EditButtons = <>
              FieldName = 'ZKLQty'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Kho Con '
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Unit'
              Title.TitleButton = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH_TW'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'ProdMOQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MOQ'
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Country'
              Title.TitleButton = True
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'ProdLeadTime'
              Footers = <>
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'Forecast_Leadtime'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser'
              Footers = <>
              Title.Caption = 'Purchaser'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 761
          Top = 33
          Width = 368
          Height = 406
          Align = alClient
          DataSource = DS_ToPO_RY
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = Pop_ToPO_RY1
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 0
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'BuyNo'
              Footers = <>
              ReadOnly = True
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'RY'
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Usage'
              Title.TitleButton = True
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Use Stock'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'UseYG'
              Footer.FieldName = 'UseYG'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pur Qty'
              Title.TitleButton = True
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'Diff'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clRed
              Footer.Font.Height = -13
              Footer.Font.Name = 'MS Sans Serif'
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'RY Shipping'
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'DDRQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'RY Date'
              Title.TitleButton = True
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'DDZT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Status'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Size'
              Footers = <>
              ReadOnly = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'DDLB'
              Footers = <>
              Title.Caption = 'LB'
              Width = 25
            end
            item
              EditButtons = <>
              FieldName = 'Ordermode'
              Footers = <>
              Title.Caption = 'Mode'
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'DDGB'
              Footers = <>
              Width = 41
            end>
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'PO [Size]'
      ImageIndex = 1
      object Splitter4: TSplitter
        Left = 757
        Top = 32
        Height = 408
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1130
        Height = 32
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Label10: TLabel
          Left = 240
          Top = 8
          Width = 64
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier'
        end
        object Label14: TLabel
          Left = 419
          Top = 9
          Width = 71
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat ID'
        end
        object Label15: TLabel
          Left = 584
          Top = 9
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat Name'
        end
        object Label19: TLabel
          Left = 792
          Top = 9
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Location'
        end
        object Edit_Supplier2: TEdit
          Left = 306
          Top = 4
          Width = 111
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 0
        end
        object Button3: TButton
          Left = 965
          Top = 4
          Width = 73
          Height = 24
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
        object Chk_NoPur2: TCheckBox
          Left = 6
          Top = 9
          Width = 129
          Height = 17
          Caption = 'Show No Pur'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = Chk_NoPur2Click
        end
        object Chk_OverPur2: TCheckBox
          Left = 106
          Top = 9
          Width = 135
          Height = 17
          Caption = 'Show Pur too much'
          TabOrder = 6
          OnClick = Chk_OverPur2Click
        end
        object Edit_MatNo2: TEdit
          Left = 491
          Top = 5
          Width = 91
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 2
        end
        object Edit_MatNM2_A: TEdit
          Left = 651
          Top = 5
          Width = 70
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 3
        end
        object Edit_MatNM2_B: TEdit
          Left = 723
          Top = 5
          Width = 70
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 4
        end
        object Edit_Loc2: TEdit
          Left = 862
          Top = 5
          Width = 89
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 7
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 32
        Width = 757
        Height = 408
        Align = alLeft
        DataSource = DS_ToPO2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = Pop_ToPO2
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EXPDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = 'Mat ID'
            Title.TitleButton = True
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Material Name'
            Title.TitleButton = True
            Width = 328
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supp ID'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier'
            Title.TitleButton = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Usage'
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'UseStock'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Use Stock'
            Title.TitleButton = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'UseYG'
            Footer.FieldName = 'UseYG'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Use YG'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pur Qty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Diff'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Status'
            Title.TitleButton = True
            Width = 51
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'ZKQty'
            Footers = <>
            Title.Caption = 'Kho Qty'
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'ZKBH'
            Footers = <>
            Title.Caption = 'Kho NO.'
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'ZKLQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kho Remain'
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit'
            Title.TitleButton = True
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH_TW'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ProdMOQ'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'MOQ'
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Location'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Forecast_Leadtime'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'SamplePurchaser'
            Footers = <>
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 760
        Top = 32
        Width = 370
        Height = 408
        Align = alClient
        DataSource = DS_ToPO_RY2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = Pop_ToPO_RY2
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnDrawColumnCell = DBGridEh5DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BuyNo'
            Footers = <>
            ReadOnly = True
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY'
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Usage'
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'UseStock'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Use Stock'
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'UseYG'
            Footer.FieldName = 'UseYG'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pur Qty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Diff'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clRed
            Footer.Font.Height = -13
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY Shipping'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY Date'
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Status'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
            ReadOnly = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'DDLB'
            Footers = <>
            Title.Caption = 'LB'
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Ordermode'
            Footers = <>
            Title.Caption = 'Mode'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'DDGB'
            Footers = <>
          end>
      end
    end
  end
  object chk_shp: TCheckBox
    Left = 265
    Top = 31
    Width = 79
    Height = 17
    Caption = 'ShipDate'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 135
    Top = 303
  end
  object DS_ToPO: TDataSource
    DataSet = Qry_ToPO1
    Left = 216
    Top = 272
  end
  object Qry_ToPO1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      'select  S2.CLBH'
      '        ,S2.YWPM'
      '        ,S2.DWBH'
      '        ,S2.ZSYWJC '
      '        ,S2.CQDH '
      '        ,ZSZL_DEV.COUNTRY'
      '        ,S2.CLSL '
      '        ,S2.CSBH '
      '        ,CG.CGQTY  '
      '        ,ZSZL_DEV.ZSDH_TW '
      '        ,Stock.UseStock '
      '        ,CGYGUSE.UseYG '
      
        '        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(CGYG' +
        'USE.UseYG,0)-S2.CLSL as Diff '
      '        ,MQ.Location'
      '        ,MQ.ProdMOQ'
      '        ,MQ.ProdLeadTime'
      '        ,MQ.Forecast_Leadtime'
      '        ,MQ.Season'
      '        ,KCZK.ZKBH'
      '        ,KCZK.ZKLQty'
      '        ,KCZK.ZKQty'
      '        ,ZSZL_DEV.SamplePurchaser'
      
        #9'    '#9',CONVERT(VARCHAR(10),(select MAX(CGBJ.EXPDATE) from CGBJ l' +
        'eft join CGBJS on CGBJ.BJNO = CGBJS.BJNO where CLBH = S2.CLBH ),' +
        '120) as EXPDATE'
      'FROM (select  ZLZLS2.CLBH'
      '        ,CLZL.YWPM'
      '        ,CLZL.DWBH'
      '        ,CLZL.CQDH'
      '        ,Max(ZSZL.ZSYWJC) as ZSYWJC '
      '        ,isnull(sum(ZLZLS2.CLSL),0) as CLSL'
      '        ,(ZLZLS2.CSBH) as CSBH '
      '      from ZLZLS2 '
      
        '      inner join DDZL on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='#39'VA' +
        '12'#39' and DDZL.BuyNO like '#39'202106%'#39
      '      left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      '      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH'
      '      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH '
      
        '      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHa' +
        'o=DDZl.SheHao'
      
        '      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL' +
        '.BWBH=ZLZLS2.BWBH '
      '      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      '      LEFT JOIN ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH'
      '      where '
      '            ZLZLS2.SIZE='#39'ZZZZZZ'#39'  '
      '            and left(ZLZLS2.CLBH,1)<>'#39'W'#39
      '            and DDZL.GSBH='#39'VA12'#39
      '            and ZLZLS2.ZMLB='#39'N'#39
      '            and SCZL.SCBH=SCZl.ZLBH '
      '            and SCZL.SCBH is not null '
      '            and ZLZLS2.CLSL<>0'
      
        '            and DDZlTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsCGZLS,'#39#39')<>'#39'N' +
        #39' '
      '            and CLZL.CQDH='#39'VN'#39' '
      '            and isnull(XXBWFLS.DFL,'#39#39')<>'#39'G'#39'  '
      '       and DDZL.BuyNO like '#39'202106%'#39
      '         and DDZL.DDLB<>'#39'B'#39'  '
      
        '      group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,ZLZLS2.' +
        'CSBH'
      '     ) S2 '
      
        'Left JOIN ZSZL_DEV on S2.CSBH=ZSZL_DEV.ZSDH and ZSZL_DEV.GSBH='#39'V' +
        'A12'#39' '
      
        'Left join (select CGZLSS.CLBH,ZLZLS2.CSBH ,ISNULL(SUM(CGZLSS.Qty' +
        '),0) as CGQty '
      '           FROM CGZLSS  '
      '           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      
        '           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.' +
        'SheHao=DDZl.SheHao'
      
        '           left join (select ZLZLS2.ZLBH,ZLZLS2.CSBH,ZLZLS2.CLBH' +
        ' from ZLZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH  and DDZL.GSBH='#39'VA' +
        '12'#39' and ZLZLS2.CLBH like '#39'%'#39
      '           and DDZL.BuyNO like '#39'202106%'#39
      
        '           Group by ZLZLS2.ZLBH,ZLZLS2.CSBH,ZLZLS2.CLBH)ZLZLS2 o' +
        'n CGZLSS.ZLBH=ZLZLS2.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH '
      '           WHERE CGZL.CGLX<>'#39'6'#39' '
      '                 and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           GROUP BY CGZLSS.CLBH,ZLZLS2.CSBH   '
      '           ) CG ON CG.CLBH=S2.CLBH and CG.CSBH=S2.CSBH  '
      
        'Left Join (select CGKCUSE.CLBH,ISNULL(SUM(CGKCUSE.Qty),0) as Use' +
        'Stock '
      '                   FROM CGKCUSE  '
      '                   left join DDZl on DDZl.DDBH=CGKCUSE.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE 1=1  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           GROUP BY CGKCUSE.CLBH  '
      '           ) Stock ON Stock.CLBH=S2.CLBH  '
      
        'Left Join (select CGYGUSE.CLBH,ISNULL(SUM(CGYGUSE.Qty),0) as Use' +
        'YG '
      '                   FROM CGYGUSE  '
      '                   left join DDZl on DDZl.DDBH=CGYGUSE.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE 1=1  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           GROUP BY CGYGUSE.CLBH  '
      '           ) CGYGUSE ON CGYGUSE.CLBH=S2.CLBH  '
      'left join ('
      
        #9#9'   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,L' +
        'ocation from ('
      
        #9#9'   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_' +
        'Leadtime,A.Location from ('
      
        #9#9#9'   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,' +
        'Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY USERDATE ' +
        'desc) '
      #9#9#9'   as  rn from '
      #9#9#9'  ('
      
        #9#9#9'  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH' +
        ',ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USE' +
        'RDATE '
      #9#9#9'  from MaterialMOQ'
      
        #9#9#9'  left join CLZL_LS on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsN' +
        'ull(CLZL_LS.JHDH,'#39#39')<>'#39#39' ) MaterialMOQ'
      '        where 1=2'
      #9#9'   ) A where A.rn=1 and A.CLBH like '#39'%'#39' ) MatMOQ'
      #9#9') MQ ON MQ.CLBH=S2.CLBH  '
      
        'Left Join (Select KCZK.CLBH,max(KCZK.Memo) as Memo,Max(KCZK.ZKBH' +
        ') as ZKBH,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty '
      '    from KCZK '
      '    left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH '
      
        '    where KCZK.YN<>'#39'X'#39' and KCZK.ZKNO='#39'ZZZZZZZZZZ'#39' and KCZK.GSBH=' +
        #39'VA12'#39' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>=0  '
      '    Group by KCZK.CLBH '
      '    having(Sum(KCZKS.LQty))>=0 )  KCZK on KCZK.CLBH=S2.CLBH '
      'where 1=1 '
      
        '  and (isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0))<isnull(S2.CL' +
        'SL,0) '
      ') ZLZLS2 where 1=1'
      'order by ZLZLS2.ZSYWJC,ZLZLS2.CLBH')
    UpdateObject = Qry_ToPO1Upd
    Left = 216
    Top = 304
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO1UseYG: TCurrencyField
      FieldName = 'UseYG'
      DisplayFormat = '##,#0.0'
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
    object Query1COUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 10
    end
    object Qry_ToPO1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_ToPO1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO1Diff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object Qry_ToPO1CSBH: TStringField
      FieldName = 'CSBH'
      Size = 6
    end
    object Qry_ToPO1ZSDH: TStringField
      DisplayLabel = 'VN Supp'
      FieldName = 'ZSDH_TW'
      Size = 6
    end
    object Qry_ToPO1ProdMOQ: TCurrencyField
      FieldName = 'ProdMOQ'
      currency = False
    end
    object Qry_ToPO1Location: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object Qry_ToPO1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO1ZKLQty: TFloatField
      FieldName = 'ZKLQty'
    end
    object Qry_ToPO1ZKBH: TStringField
      FieldName = 'ZKBH'
      FixedChar = True
      Size = 11
    end
    object Qry_ToPO1ZKQty: TFloatField
      FieldName = 'ZKQty'
    end
    object Qry_ToPO1ProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO1Forecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Qry_ToPO1SamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object Qry_ToPO1EXPDATE: TStringField
      FieldName = 'EXPDATE'
      FixedChar = True
      Size = 10
    end
  end
  object DS_ToPO_RY: TDataSource
    DataSet = Qry_ToPO_RY1
    Left = 248
    Top = 272
  end
  object Qry_ToPO_RY1: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ToPO
    SQL.Strings = (
      'select  S2.ZLBH'
      '        ,S2.CLBH '
      '        ,S2.Article '
      '        ,S2.Pairs '
      '        ,S2.CLSL '
      '        ,S2.Size '
      '        ,S2.ShipDate '
      '        ,S2.DDRQ '
      '        ,s2.BuyNo '
      '        ,S2.DDZT '
      '        ,S2.DDLB '
      '        ,S2.Ordermode '
      '        ,S2.DDGB'
      '        ,isnull(CG.CGQTY,0) as CGQty'
      '        ,isnull(Stock.UseStock,0) as UseStock '
      '        ,isnull(PreOrder.UseYG,0) as UseYG '
      
        '        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(PreO' +
        'rder.UseYG,0)-S2.CLSL as Diff '
      'FROM (select  ZLZLS2.ZLBH'
      '        ,ZLZLS2.CLBH '
      '        ,XXZL.Article '
      '        ,DDZL.Pairs '
      
        '        ,case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsCGZLS,'#39#39')' +
        '<>'#39'N'#39') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL '
      '        ,ZLZLS2.SIZE '
      '        ,DDZL.ShipDate '
      '        ,DDZL.DDRQ '
      '        ,DDZL.BuyNo '
      '        ,DDZLTW.DDZT '
      '        ,DDZL.DDLB '
      '        ,DDZL.Ordermode'
      '        ,DDZL.DDGB '
      '      from ZLZLS2 '
      '      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH '
      '      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH '
      '      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH '
      '      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH '
      
        '      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHa' +
        'o=DDZl.SheHao '
      
        '      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL' +
        '.BWBH=ZLZLS2.BWBH '
      '      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      '      where  '
      '            ZLZLS2.SIZE='#39'ZZZZZZ'#39'  '
      '             and left(ZLZLS2.CLBH,1)<>'#39'W'#39
      '             and DDZL.GSBH='#39'VA12'#39
      '             and ZLZLS2.CLBH=:CLBH '
      '             and ZLZLS2.CSBH=:CSBH  '
      '             and ZLZLS2.ZMLB='#39'N'#39'       '
      '             and SCZL.SCBH=SCZl.ZLBH '
      '             and SCZL.SCBH is not null '
      '             and ZLZLS2.CLSL<>0 '
      '            and CLZL.CQDH='#39'VN'#39' '
      '             and isnull(XXBWFLS.DFL,'#39#39')<>'#39'G'#39'  '
      '       and DDZL.BuyNO like '#39'202106%'#39
      '          and DDZL.DDLB<>'#39'B'#39'  '
      
        '       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,XXZL.Article' +
        ',DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BuyNo,DDZLTW.DDZT,DDZL.' +
        'DDLB,DDZL.Ordermode,DDZL.DDGB,SCZL.IsCGZLS '
      '      ) S2  '
      
        'LEFT JOIN (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,ISNULL(SUM' +
        '(CGZLSS.Qty),0) as CGQty '
      '           FROM CGZLSS  '
      '           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      
        '           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.' +
        'SheHao=DDZl.SheHao'
      '           WHERE CGZL.CGLX<>'#39'6'#39'  '
      '               and CGZLSS.CLBH=:CLBH  '
      '               and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC '
      
        '          ) CG ON CG.CLBH=S2.CLBH and CG.ZLBH=S2.ZLBH  and CG.XX' +
        'CC=S2.SIZE '
      
        ' LEFT JOIN ( select CGKCUSES.ZLBH,CGKCUSES.CLBH,CGKCUSES.SIZE,IS' +
        'NULL(SUM(CGKCUSES.Qty),0) as UseStock '
      '                   FROM CGKCUSES  '
      '                   left join DDZl on DDZl.DDBH=CGKCUSES.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE CGKCUSES.CLBH=:CLBH  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      
        '                   group by CGKCUSES.CLBH,CGKCUSES.ZLBH,CGKCUSES' +
        '.SIZE '
      
        '            ) Stock on Stock.ZLBH=S2.ZLBH and Stock.CLBH=S2.CLBH' +
        ' and Stock.SIZE=S2.SIZE  '
      
        ' LEFT JOIN ( select CGYGUSES.ZLBH,CGYGUSES.CLBH,CGYGUSES.SIZE,IS' +
        'NULL(SUM(CGYGUSES.Qty),0) as UseYG '
      '                   FROM CGYGUSES  '
      '                   left join DDZl on DDZl.DDBH=CGYGUSES.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE CGYGUSES.CLBH=:CLBH  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      
        '                   group by CGYGUSES.CLBH,CGYGUSES.ZLBH,CGYGUSES' +
        '.SIZE '
      
        '            ) PreOrder on PreOrder.ZLBH=S2.ZLBH and PreOrder.CLB' +
        'H=S2.CLBH and PreOrder.SIZE=S2.SIZE  '
      'order by S2.ZLBH')
    UpdateObject = Qry_ToPO_RY1Upd
    Left = 248
    Top = 304
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftString
        Name = 'CSBH'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY1UseYG: TCurrencyField
      FieldName = 'UseYG'
      DisplayFormat = '##,#0.0'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1DDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object Qry_ToPO_RY1Diff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object Qry_ToPO_RY1DDZT: TStringField
      FieldName = 'DDZT'
    end
    object Qry_ToPO_RY1Size: TStringField
      FieldName = 'Size'
    end
    object Qry_ToPO_RY1BuyNo: TStringField
      FieldName = 'BuyNo'
    end
    object Qry_ToPO_RY1DDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object Qry_ToPO_RY1Ordermode: TStringField
      FieldName = 'Ordermode'
      FixedChar = True
      Size = 3
    end
    object Qry_ToPO_RY1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Qry_ToPO_RY1DDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
  end
  object Pop_ToPO: TPopupMenu
    AutoHotkeys = maManual
    Left = 217
    Top = 336
    object E1: TMenuItem
      Caption = 'Excel'
      OnClick = E1Click
    end
    object M1: TMenuItem
      Caption = 'Modify'
      OnClick = M1Click
    end
    object PO1: TMenuItem
      Caption = 'Transfer to PO'
      Enabled = False
      OnClick = PO1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object QUseStock1: TMenuItem
      Caption = 'Quickly use stock'
      Enabled = False
      OnClick = QUseStock1Click
    end
  end
  object Pop_ToPO_RY1: TPopupMenu
    AutoHotkeys = maManual
    Left = 249
    Top = 336
    object RY_Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = RY_Modify1Click
    end
    object RY_UseStock1: TMenuItem
      Caption = 'UseStock'
      Enabled = False
      OnClick = RY_UseStock1Click
    end
    object RY_Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = RY_Save1Click
    end
    object RY_Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = RY_Cancel1Click
    end
  end
  object DS_ToPO2: TDataSource
    DataSet = Qry_ToPO2
    Left = 312
    Top = 272
  end
  object Qry_ToPO2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      'select  S2.CLBH'
      '        ,S2.YWPM'
      '        ,S2.DWBH'
      '        ,S2.ZSYWJC '
      '        ,S2.CQDH '
      '        ,ZSZL_DEV.COUNTRY'
      '        ,S2.CLSL '
      '        ,S2.CSBH '
      '        ,CG.CGQTY  '
      '        ,ZSZL_DEV.ZSDH_TW '
      '        ,Stock.UseStock '
      '        ,CGYGUSE.UseYG '
      
        '        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(CGYG' +
        'USE.UseYG,0)-S2.CLSL as Diff '
      '        ,MQ.Location'
      '        ,MQ.ProdMOQ'
      '        ,MQ.ProdLeadTime'
      '        ,MQ.Forecast_Leadtime'
      '        ,MQ.Season'
      '        ,KCZK.ZKBH'
      '        ,KCZK.ZKLQty'
      '        ,KCZK.ZKQty'
      '        ,ZSZL_DEV.SamplePurchaser'
      
        '     '#9#9',CONVERT(VARCHAR(10),(select MAX(CGBJ.EXPDATE) from CGBJ ' +
        'left join CGBJS on CGBJ.BJNO = CGBJS.BJNO where CLBH = S2.CLBH )' +
        ',120) as EXPDATE'
      'FROM (select  ZLZLS2.CLBH'
      '        ,CLZL.YWPM'
      '        ,CLZL.DWBH'
      '        ,CLZL.CQDH'
      '        ,Max(ZSZL.ZSYWJC) as ZSYWJC '
      '        ,isnull(sum(ZLZLS2.CLSL),0) as CLSL'
      '        ,(ZLZLS2.CSBH) as CSBH '
      '      from ZLZLS2 '
      
        '      inner join DDZL on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='#39'VA' +
        '12'#39' and DDZL.BuyNO like '#39'202106%'#39
      '      left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      '      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH'
      '      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH '
      
        '      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHa' +
        'o=DDZl.SheHao'
      
        '      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL' +
        '.BWBH=ZLZLS2.BWBH '
      '      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      '      LEFT JOIN ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH'
      '      where '
      '            ZLZLS2.SIZE='#39'ZZZZZZ'#39'  '
      '            and left(ZLZLS2.CLBH,1)<>'#39'W'#39
      '            and DDZL.GSBH='#39'VA12'#39
      '            and ZLZLS2.ZMLB='#39'N'#39
      '            and SCZL.SCBH=SCZl.ZLBH '
      '            and SCZL.SCBH is not null '
      '            and ZLZLS2.CLSL<>0'
      
        '            and DDZlTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsCGZLS,'#39#39')<>'#39'N' +
        #39' '
      '            and CLZL.CQDH='#39'VN'#39' '
      '            and isnull(XXBWFLS.DFL,'#39#39')<>'#39'G'#39'  '
      '       and DDZL.BuyNO like '#39'202106%'#39
      '         and DDZL.DDLB<>'#39'B'#39'  '
      
        '      group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,ZLZLS2.' +
        'CSBH'
      '     ) S2 '
      
        'Left JOIN ZSZL_DEV on S2.CSBH=ZSZL_DEV.ZSDH and ZSZL_DEV.GSBH='#39'V' +
        'A12'#39' '
      
        'Left join (select CGZLSS.CLBH,ZLZLS2.CSBH ,ISNULL(SUM(CGZLSS.Qty' +
        '),0) as CGQty '
      '           FROM CGZLSS  '
      '           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      
        '           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.' +
        'SheHao=DDZl.SheHao'
      
        '           left join (select ZLZLS2.ZLBH,ZLZLS2.CSBH,ZLZLS2.CLBH' +
        ' from ZLZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH  and DDZL.GSBH='#39'VA' +
        '12'#39' and ZLZLS2.CLBH like '#39'%'#39
      '           and DDZL.BuyNO like '#39'202106%'#39
      
        '           Group by ZLZLS2.ZLBH,ZLZLS2.CSBH,ZLZLS2.CLBH)ZLZLS2 o' +
        'n CGZLSS.ZLBH=ZLZLS2.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH '
      '           WHERE CGZL.CGLX<>'#39'6'#39' '
      '                 and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           GROUP BY CGZLSS.CLBH,ZLZLS2.CSBH   '
      '           ) CG ON CG.CLBH=S2.CLBH and CG.CSBH=S2.CSBH  '
      
        'Left Join (select CGKCUSE.CLBH,ISNULL(SUM(CGKCUSE.Qty),0) as Use' +
        'Stock '
      '                   FROM CGKCUSE  '
      '                   left join DDZl on DDZl.DDBH=CGKCUSE.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE 1=1  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           GROUP BY CGKCUSE.CLBH  '
      '           ) Stock ON Stock.CLBH=S2.CLBH  '
      
        'Left Join (select CGYGUSE.CLBH,ISNULL(SUM(CGYGUSE.Qty),0) as Use' +
        'YG '
      '                   FROM CGYGUSE  '
      '                   left join DDZl on DDZl.DDBH=CGYGUSE.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE 1=1  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           GROUP BY CGYGUSE.CLBH  '
      '           ) CGYGUSE ON CGYGUSE.CLBH=S2.CLBH  '
      'left join ('
      
        #9#9'   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,L' +
        'ocation from ('
      
        #9#9'   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_' +
        'Leadtime,A.Location from ('
      
        #9#9#9'   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,' +
        'Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY USERDATE ' +
        'desc) '
      #9#9#9'   as  rn from '
      #9#9#9'  ('
      
        #9#9#9'  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH' +
        ',ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USE' +
        'RDATE '
      #9#9#9'  from MaterialMOQ'
      
        #9#9#9'  left join CLZL_LS on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsN' +
        'ull(CLZL_LS.JHDH,'#39#39')<>'#39#39' ) MaterialMOQ'
      '        where 1=2'
      #9#9'   ) A where A.rn=1 and A.CLBH like '#39'%'#39' ) MatMOQ'
      #9#9') MQ ON MQ.CLBH=S2.CLBH  '
      
        'Left Join (Select KCZK.CLBH,max(KCZK.Memo) as Memo,Max(KCZK.ZKBH' +
        ') as ZKBH,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty '
      '    from KCZK '
      '    left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH '
      
        '    where KCZK.YN<>'#39'X'#39' and KCZK.ZKNO='#39'ZZZZZZZZZZ'#39' and KCZK.GSBH=' +
        #39'VA12'#39' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>=0  '
      '    Group by KCZK.CLBH '
      '    having(Sum(KCZKS.LQty))>=0 )  KCZK on KCZK.CLBH=S2.CLBH '
      'where 1=1'
      
        '  and (isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0))<isnull(S2.CL' +
        'SL,0) '
      ') ZLZLS2 where 1=1'
      'order by ZLZLS2.ZSYWJC,ZLZLS2.CLBH')
    UpdateObject = Qry_ToPO2Upd
    Left = 312
    Top = 304
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object FloatField3: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO2UseYG: TCurrencyField
      FieldName = 'UseYG'
      DisplayFormat = '##,#0.0'
    end
    object StringField6: TStringField
      FieldName = 'ZSYWJC'
    end
    object StringField9: TStringField
      FieldName = 'COUNTRY'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField11: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object StringField12: TStringField
      FieldName = 'CSBH'
      Size = 6
    end
    object StringField13: TStringField
      DisplayLabel = 'VN Supp'
      FieldName = 'ZSDH_TW'
      Size = 6
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'ProdMOQ'
      currency = False
    end
    object StringField14: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object Qry_ToPO2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Qry_ToPO2ZKBH: TStringField
      FieldName = 'ZKBH'
      FixedChar = True
      Size = 11
    end
    object Qry_ToPO2ZKLQty: TFloatField
      FieldName = 'ZKLQty'
    end
    object Qry_ToPO2ZKQty: TFloatField
      FieldName = 'ZKQty'
    end
    object Qry_ToPO2ProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO2Forecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO2Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Qry_ToPO2SamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object Qry_ToPO2EXPDATE: TStringField
      FieldName = 'EXPDATE'
      FixedChar = True
      Size = 10
    end
  end
  object DS_ToPO_RY2: TDataSource
    DataSet = Qry_ToPO_RY2
    Left = 352
    Top = 272
  end
  object Qry_ToPO_RY2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ToPO2
    SQL.Strings = (
      'select  S2.ZLBH'
      '        ,S2.CLBH '
      '        ,S2.Article '
      '        ,S2.Pairs '
      '        ,S2.CLSL '
      '        ,S2.Size '
      '        ,S2.ShipDate '
      '        ,S2.DDRQ '
      '        ,s2.BuyNo '
      '        ,S2.DDZT '
      '        ,S2.DDLB '
      '        ,S2.Ordermode '
      '        ,S2.DDGB'
      '        ,isnull(CG.CGQTY,0) as CGQty'
      '        ,isnull(Stock.UseStock,0) as UseStock '
      '        ,isnull(PreOrder.UseYG,0) as UseYG '
      
        '        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(PreO' +
        'rder.UseYG,0)-S2.CLSL as Diff '
      'FROM (select  ZLZLS2.ZLBH'
      '        ,ZLZLS2.CLBH '
      '        ,XXZL.Article '
      '        ,DDZL.Pairs '
      
        '        ,case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsCGZLS,'#39#39')' +
        '<>'#39'N'#39') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL '
      '        ,ZLZLS2.SIZE '
      '        ,DDZL.ShipDate '
      '        ,DDZL.DDRQ '
      '        ,DDZL.BuyNo '
      '        ,DDZLTW.DDZT '
      '        ,DDZL.DDLB '
      '        ,DDZL.Ordermode'
      '        ,DDZL.DDGB '
      '      from ZLZLS2 '
      '      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH '
      '      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH '
      '      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH '
      '      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH '
      
        '      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHa' +
        'o=DDZl.SheHao '
      
        '      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL' +
        '.BWBH=ZLZLS2.BWBH '
      '      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      '      where  '
      '            ZLZLS2.SIZE='#39'ZZZZZZ'#39'  '
      '             and left(ZLZLS2.CLBH,1)<>'#39'W'#39
      '             and DDZL.GSBH='#39'VA12'#39
      '             and ZLZLS2.CLBH=:CLBH '
      '             and ZLZLS2.CSBH=:CSBH  '
      '             and ZLZLS2.ZMLB='#39'N'#39'       '
      '             and SCZL.SCBH=SCZl.ZLBH '
      '             and SCZL.SCBH is not null '
      '             and ZLZLS2.CLSL<>0 '
      '            and CLZL.CQDH='#39'VN'#39' '
      '             and isnull(XXBWFLS.DFL,'#39#39')<>'#39'G'#39'  '
      '       and DDZL.BuyNO like '#39'202106%'#39
      '          and DDZL.DDLB<>'#39'B'#39'  '
      
        '       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,XXZL.Article' +
        ',DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BuyNo,DDZLTW.DDZT,DDZL.' +
        'DDLB,DDZL.Ordermode,DDZL.DDGB,SCZL.IsCGZLS '
      '      ) S2  '
      
        'LEFT JOIN (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,ISNULL(SUM' +
        '(CGZLSS.Qty),0) as CGQty '
      '           FROM CGZLSS  '
      '           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      
        '           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.' +
        'SheHao=DDZl.SheHao'
      '           WHERE CGZL.CGLX<>'#39'6'#39'  '
      '               and CGZLSS.CLBH=:CLBH  '
      '               and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC '
      
        '          ) CG ON CG.CLBH=S2.CLBH and CG.ZLBH=S2.ZLBH  and CG.XX' +
        'CC=S2.SIZE '
      
        ' LEFT JOIN ( select CGKCUSES.ZLBH,CGKCUSES.CLBH,CGKCUSES.SIZE,IS' +
        'NULL(SUM(CGKCUSES.Qty),0) as UseStock '
      '                   FROM CGKCUSES  '
      '                   left join DDZl on DDZl.DDBH=CGKCUSES.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE CGKCUSES.CLBH=:CLBH  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      
        '                   group by CGKCUSES.CLBH,CGKCUSES.ZLBH,CGKCUSES' +
        '.SIZE '
      
        '            ) Stock on Stock.ZLBH=S2.ZLBH and Stock.CLBH=S2.CLBH' +
        ' and Stock.SIZE=S2.SIZE  '
      
        ' LEFT JOIN ( select CGYGUSES.ZLBH,CGYGUSES.CLBH,CGYGUSES.SIZE,IS' +
        'NULL(SUM(CGYGUSES.Qty),0) as UseYG '
      '                   FROM CGYGUSES  '
      '                   left join DDZl on DDZl.DDBH=CGYGUSES.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE CGYGUSES.CLBH=:CLBH  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'202106%'#39
      
        '                   group by CGYGUSES.CLBH,CGYGUSES.ZLBH,CGYGUSES' +
        '.SIZE '
      
        '            ) PreOrder on PreOrder.ZLBH=S2.ZLBH and PreOrder.CLB' +
        'H=S2.CLBH and PreOrder.SIZE=S2.SIZE  '
      'order by S2.ZLBH')
    UpdateObject = Qry_ToPO_RY2Upd
    Left = 352
    Top = 304
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftString
        Name = 'CSBH'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object StringField17: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField18: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object FloatField5: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField11: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField12: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Qry_ToPO_RY2UseYG: TCurrencyField
      FieldName = 'UseYG'
      DisplayFormat = '##,#0.0'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DDRQ'
    end
    object CurrencyField14: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object Qry_ToPO_RY2DDZT: TStringField
      FieldName = 'DDZT'
    end
    object Qry_ToPO_RY2Size: TStringField
      FieldName = 'Size'
    end
    object Qry_ToPO_RY2BuyNo: TStringField
      FieldName = 'BuyNo'
    end
    object Qry_ToPO_RY2DDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object Qry_ToPO_RY2Ordermode: TStringField
      FieldName = 'Ordermode'
      FixedChar = True
      Size = 3
    end
    object Qry_ToPO_RY2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Qry_ToPO_RY2DDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
  end
  object Pop_ToPO2: TPopupMenu
    AutoHotkeys = maManual
    Left = 313
    Top = 336
    object E2: TMenuItem
      Caption = 'Excel'
      OnClick = E2Click
    end
    object M2: TMenuItem
      Caption = 'Modify'
      OnClick = M2Click
    end
    object PO2: TMenuItem
      Caption = 'Transfer to PO'
      Enabled = False
      OnClick = PO2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object QUseStock2: TMenuItem
      Caption = 'Quickly use stock'
      Enabled = False
      OnClick = QUseStock2Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 137
    Top = 271
  end
  object Qry_ToPO1Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 216
    Top = 368
  end
  object Qry_ToPO2Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 312
    Top = 368
  end
  object Pop_ToPO_RY2: TPopupMenu
    AutoHotkeys = maManual
    Left = 353
    Top = 336
    object RY_Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = RY_Modify2Click
    end
    object RY_UseStock2: TMenuItem
      Caption = 'UseStock'
      Enabled = False
      OnClick = RY_UseStock2Click
    end
    object RY_Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = RY_Save2Click
    end
    object RY_Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = RY_Cancel2Click
    end
  end
  object Qry_ToPO_RY1Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 248
    Top = 368
  end
  object Qry_ToPO_RY2Upd: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 352
    Top = 368
  end
  object KCZKSQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      '')
    UpdateObject = UpdKCZKS
    Left = 424
    Top = 272
  end
  object UpdKCZKS: TUpdateSQL
    Left = 424
    Top = 304
  end
end
