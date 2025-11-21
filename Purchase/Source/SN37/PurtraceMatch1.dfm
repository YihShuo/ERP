object PurtraceMatch: TPurtraceMatch
  Left = 335
  Top = 190
  Width = 1380
  Height = 648
  Caption = 'PurtraceMatch'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 729
    Top = 57
    Height = 552
  end
  object Label14: TLabel
    Left = 293
    Top = 22
    Width = 151
    Height = 13
    Caption = 'Uppers or Stitching = 0  ->'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label15: TLabel
    Left = 452
    Top = 22
    Width = 28
    Height = 13
    Caption = 'Data'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1364
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 7
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
    end
    object Label5: TLabel
      Left = 189
      Top = 6
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 179
      Top = 33
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label8: TLabel
      Left = 616
      Top = 32
      Width = 67
      Height = 16
      Caption = 'OrderExcel'
    end
    object Label9: TLabel
      Left = 368
      Top = 6
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#:'
    end
    object Label22: TLabel
      Left = 309
      Top = 33
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
    end
    object Label20: TLabel
      Left = 490
      Top = 33
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Location'
    end
    object Label19: TLabel
      Left = 796
      Top = 32
      Width = 71
      Height = 16
      Caption = 'Material KPI'
    end
    object Button1: TButton
      Left = 995
      Top = 22
      Width = 74
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1075
      Top = 21
      Width = 81
      Height = 34
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object BuyNoEdit: TEdit
      Left = 79
      Top = 3
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DDBHEdit: TEdit
      Left = 259
      Top = 3
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 80
      Top = 30
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 203
      Top = 29
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object PlandateCK: TCheckBox
      Left = 3
      Top = 34
      Width = 73
      Height = 17
      Caption = 'PlanDate'
      Color = clYellow
      ParentColor = False
      TabOrder = 6
    end
    object OrderCombo: TComboBox
      Left = 686
      Top = 27
      Width = 94
      Height = 24
      Style = csDropDownList
      Color = clYellow
      ItemHeight = 16
      TabOrder = 7
    end
    object ArticleEdit: TEdit
      Left = 445
      Top = 2
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object CancelCK: TCheckBox
      Left = 551
      Top = 4
      Width = 146
      Height = 17
      Caption = 'Show Order Cancel'
      TabOrder = 9
    end
    object SupplierEdit: TEdit
      Left = 368
      Top = 29
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object LocCB: TComboBox
      Left = 562
      Top = 28
      Width = 52
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 11
      Items.Strings = (
        ''
        'VN'
        'TW')
    end
    object ComboBox1: TComboBox
      Left = 870
      Top = 28
      Width = 94
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 12
      OnChange = ComboBox1Change
      Items.Strings = (
        'Uppers'
        'Stitching'
        'Bottom'
        'Packing')
    end
    object Button3: TButton
      Left = 962
      Top = 28
      Width = 13
      Height = 22
      Enabled = False
      TabOrder = 13
      Visible = False
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 704
      Top = 6
      Width = 97
      Height = 17
      Caption = 'Show Alert'
      TabOrder = 14
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 57
    Width = 729
    Height = 552
    Align = alLeft
    Caption = 'LeftPanel'
    TabOrder = 1
    object DDZlDBGrid: TDBGridEh
      Left = 1
      Top = 89
      Width = 727
      Height = 462
      Align = alClient
      DataSource = DDZLDS
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ReadOnly = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DDZlDBGridCellClick
      OnGetCellParams = DDZlDBGridGetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footer.FieldName = 'ZLBH'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #35330#21934'|ZLBH'
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'BuyNo'
          Footers = <>
          Title.Caption = 'Buy'#21029'|BuyNo'
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Title.Caption = #38795#21517'|ShoeName'
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Title.Caption = 'SKU#|ARTICLE'
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'APlanDate'
          Footers = <>
          Title.Caption = #19978#32218#26085'|PlanDate'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'ML'
          Footers = <>
          Title.Caption = #22238#35206#20132#26399'ETA|Uppers('#38754#26009') '
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'FML'
          Footers = <>
          Title.Caption = #22238#35206#20132#26399'ETA|Stitching('#37341#36554#21103#26009')'
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'DL'
          Footers = <>
          Title.Caption = #22238#35206#20132#26399'ETA|Bottom('#24213#32068#20214')'
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'FGL'
          Footers = <>
          Title.Caption = #22238#35206#20132#26399'ETA|Packing( '#21253#35037')'
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          Title.Caption = #20986#36008#26085'|ShipDate'
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.FieldName = 'Pairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #38617#25976'|Pairs'
          Width = 41
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 727
      Height = 88
      Align = alTop
      Alignment = taRightJustify
      TabOrder = 1
      object UpperLabel: TLabel
        Left = 5
        Top = 2
        Width = 135
        Height = 13
        Caption = 'Uppers=A / C /F /K /B '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object AcessoriesLabel: TLabel
        Left = 5
        Top = 23
        Width = 175
        Height = 13
        Caption = 'Stitching=E / G / I / L / M /N '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object ReinformceLabel: TLabel
        Left = 5
        Top = 44
        Width = 123
        Height = 13
        Caption = 'Assembly=D /  H / O '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BottomLabel: TLabel
        Left = 4
        Top = 66
        Width = 75
        Height = 13
        Caption = 'Bottom=J / P'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 149
        Top = 2
        Width = 70
        Height = 13
        Caption = 'P21(<>PRS)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 184
        Top = 22
        Width = 96
        Height = 13
        Caption = 'D01/ /D02 /D11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 157
        Top = 42
        Width = 90
        Height = 13
        Caption = 'D01 /D02 /D11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsStrikeOut]
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 293
        Top = 2
        Width = 202
        Height = 13
        Caption = 'Uppers and Stitching > PlanDate ->'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 492
        Top = 2
        Width = 28
        Height = 13
        Caption = 'Data'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 293
        Top = 22
        Width = 151
        Height = 13
        Caption = 'Uppers or Stitching = 0  ->'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 456
        Top = 22
        Width = 28
        Height = 13
        Caption = 'Data'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 293
        Top = 43
        Width = 161
        Height = 13
        Caption = 'Uppers and Stitching = 0  ->'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 456
        Top = 44
        Width = 28
        Height = 13
        Caption = 'Data'
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 98
        Top = 66
        Width = 63
        Height = 13
        Caption = 'P21(=PRS)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 180
        Top = 65
        Width = 147
        Height = 16
        Caption = 'Upper and Bottom KPI%:'
      end
      object Label21: TLabel
        Left = 414
        Top = 63
        Width = 83
        Height = 16
        BiDiMode = bdLeftToRight
        Caption = 'Material KPI%'
        ParentBiDiMode = False
      end
      object OrderExcelBtn: TButton
        Left = 588
        Top = 1
        Width = 75
        Height = 41
        Caption = 'OrderExcel'
        TabOrder = 0
        OnClick = OrderExcelBtnClick
      end
      object NoETDBtn: TButton
        Left = 587
        Top = 42
        Width = 75
        Height = 41
        Caption = 'No ETA List'
        TabOrder = 1
        OnClick = NoETDBtnClick
      end
      object OS: TEdit
        Left = 333
        Top = 61
        Width = 49
        Height = 24
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 502
        Top = 60
        Width = 47
        Height = 24
        TabOrder = 3
      end
    end
  end
  object RightPanel: TPanel
    Left = 732
    Top = 57
    Width = 632
    Height = 552
    Align = alClient
    TabOrder = 2
    object MainClassPage: TPageControl
      Left = 1
      Top = 1
      Width = 630
      Height = 550
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Uppers'
        object DBDetGrid_ML: TDBGridEh
          Left = 0
          Top = 0
          Width = 622
          Height = 519
          Align = alClient
          DataSource = DDZLDet_MLDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = NoNeedPopu
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBDetGrid_MLGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26009#34399'|CLBH'
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = #21934#20301'|DWBH'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              Title.Caption = #25505#21312'|CQDH'
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = #35069#20196#29992#37327'|CLSL'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footers = <>
              Title.Caption = #25505#36092#25976#37327'|CGQty'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footers = <>
              Title.Caption = #20132#36008#25976#37327'|RKQty'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'CGDate'
              Footers = <>
              Title.Caption = #25505#36092#26085#26399'|CGDate'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'YQDate'
              Footers = <>
              Title.Caption = #35201#27714#20132#26399'|YQDate'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = #22238#35206#20132#26399'|ETD'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'ETADate'
              Footers = <>
              Title.Caption = #21040#36948#20132#26399'|ETA'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = #25505#36092#21934#34399'|CGNO'
            end
            item
              DisplayFormat = 'YYYY/MM/DD'
              EditButtons = <>
              FieldName = 'RKDate'
              Footers = <>
              Title.Caption = #20837#24235#26085#26399'|RKDate'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              Title.Caption = #20837#24235#21934#34399'|RKNO'
            end
            item
              EditButtons = <>
              FieldName = 'APlanDate'
              Footers = <>
              Title.Caption = #29983#29986#19978#32218'|APlanDate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              Title.Caption = #35330#21934#20132#36008#26085'|ShipDate'
            end
            item
              EditButtons = <>
              FieldName = 'orderdate'
              Footers = <>
              Title.Caption = #19979#21934#26085'|orderdate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'indate'
              Footers = <>
              Title.Caption = #25289#21934#26085'|indate'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'cldate'
              Footers = <>
              Title.Caption = #29992#37327#35336#31639'|cldate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = #20986#36008#22283#21029'|ywsm'
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH'
              Footers = <>
              Title.Caption = #24288#21830'ID|ZSDH'
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830'|zsywjc'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'ProdLeadTime'
              Footers = <>
              Title.Caption = 'LT Time|ProdLeadTime'
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser'
              Footers = <>
              Title.Caption = #25505#36092'ID|Purchaser'
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'USERName'
              Footers = <>
              Title.Caption = #25505#36092#21729'|USERName'
              Width = 55
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Stitching'
        ImageIndex = 1
        object DBDetGrid_FML: TDBGridEh
          Left = 0
          Top = 0
          Width = 730
          Height = 528
          Align = alClient
          DataSource = DDZLDet_FMLDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = NoNeedPopu
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBDetGrid_FMLGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26009#34399'|CLBH'
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = #21934#20301'|DWBH'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              Title.Caption = #25505#21312'|CQDH'
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = #35069#20196#29992#37327'|CLSL'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footers = <>
              Title.Caption = #25505#36092#25976#37327'|CGQty'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footers = <>
              Title.Caption = #20132#36008#25976#37327'|RKQty'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'CGDate'
              Footers = <>
              Title.Caption = #25505#36092#26085#26399'|CGDate'
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'YQDate'
              Footers = <>
              Title.Caption = #35201#27714#20132#26399'|YQDate'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = #22238#35206#20132#26399'|ETD'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'ETADate'
              Footers = <>
              Title.Caption = #21040#36948#20132#26399'|ETA'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = #25505#36092#21934#34399'|CGNO'
            end
            item
              DisplayFormat = 'YYYY/MM/DD'
              EditButtons = <>
              FieldName = 'RKDate'
              Footers = <>
              Title.Caption = #20837#24235#26085#26399'|RKDate'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              Title.Caption = #20837#24235#21934#34399'|RKNO'
            end
            item
              EditButtons = <>
              FieldName = 'APlanDate'
              Footers = <>
              Title.Caption = #29983#29986#19978#32218'|APlanDate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              Title.Caption = #35330#21934#20132#36008#26085'|ShipDate'
            end
            item
              EditButtons = <>
              FieldName = 'orderdate'
              Footers = <>
              Title.Caption = #19979#21934#26085'|orderdate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'indate'
              Footers = <>
              Title.Caption = #25289#21934#26085'|indate'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'cldate'
              Footers = <>
              Title.Caption = #29992#37327#35336#31639'|cldate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = #20986#36008#22283#21029'|ywsm'
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH'
              Footers = <>
              Title.Caption = #24288#21830'ID|ZSDH'
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830'|zsywjc'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'ProdLeadTime'
              Footers = <>
              Title.Caption = 'LT Time|ProdLeadTime'
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser'
              Footers = <>
              Title.Caption = #25505#36092'ID|Purchaser'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'USERName'
              Footers = <>
              Title.Caption = #25505#36092#21729'|USERName'
              Width = 52
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Assembly'
        ImageIndex = 2
        object DBDetGrid_FGL: TDBGridEh
          Left = 0
          Top = 0
          Width = 730
          Height = 528
          Align = alClient
          DataSource = DDZLDet_FGLDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = NoNeedPopu
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBDetGrid_FGLGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26009#34399'|CLBH'
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = #21934#20301'|DWBH'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              Title.Caption = #25505#21312'|CQDH'
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = #35069#20196#29992#37327'|CLSL'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footers = <>
              Title.Caption = #25505#36092#25976#37327'|CGQty'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footers = <>
              Title.Caption = #20132#36008#25976#37327'|RKQty'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'CGDate'
              Footers = <>
              Title.Caption = #25505#36092#26085#26399'|CGDate'
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'YQDate'
              Footers = <>
              Title.Caption = #35201#27714#20132#26399'|YQDate'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = #22238#35206#20132#26399'|ETD'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'ETADate'
              Footers = <>
              Title.Caption = #21040#36948#20132#26399'|ETA'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = #25505#36092#21934#34399'|CGNO'
            end
            item
              DisplayFormat = 'YYYY/MM/DD'
              EditButtons = <>
              FieldName = 'RKDate'
              Footers = <>
              Title.Caption = #20837#24235#26085#26399'|RKDate'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              Title.Caption = #20837#24235#21934#34399'|RKNO'
            end
            item
              EditButtons = <>
              FieldName = 'APlanDate'
              Footers = <>
              Title.Caption = #29983#29986#19978#32218'|APlanDate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              Title.Caption = #35330#21934#20132#36008#26085'|ShipDate'
            end
            item
              EditButtons = <>
              FieldName = 'orderdate'
              Footers = <>
              Title.Caption = #19979#21934#26085'|orderdate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'indate'
              Footers = <>
              Title.Caption = #25289#21934#26085'|indate'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'cldate'
              Footers = <>
              Title.Caption = #29992#37327#35336#31639'|cldate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = #20986#36008#22283#21029'|ywsm'
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH'
              Footers = <>
              Title.Caption = #24288#21830'ID|ZSDH'
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830'|zsywjc'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'ProdLeadTime'
              Footers = <>
              Title.Caption = 'LT Time|ProdLeadTime'
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser'
              Footers = <>
              Title.Caption = #25505#36092'ID|Purchaser'
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'USERName'
              Footers = <>
              Title.Caption = #25505#36092#21729'|USERName'
              Width = 52
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Bottom'
        ImageIndex = 3
        object DBDetGrid_DL: TDBGridEh
          Left = 0
          Top = 0
          Width = 730
          Height = 528
          Align = alClient
          DataSource = DDZLDet_DLDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = NoNeedPopu
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBDetGrid_DLGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = #26009#34399'|CLBH'
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = #21934#20301'|DWBH'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
              Title.Caption = #25505#21312'|CQDH'
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = #35069#20196#29992#37327'|CLSL'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footers = <>
              Title.Caption = #25505#36092#25976#37327'|CGQty'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footers = <>
              Title.Caption = #20132#36008#25976#37327'|RKQty'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'CGDate'
              Footers = <>
              Title.Caption = #25505#36092#26085#26399'|CGDate'
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'YQDate'
              Footers = <>
              Title.Caption = #35201#27714#20132#26399'|YQDate'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = #22238#35206#20132#26399'|ETD'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'ETADate'
              Footers = <>
              Title.Caption = #21040#36948#20132#26399'|ETA'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = #25505#36092#21934#34399'|CGNO'
            end
            item
              DisplayFormat = 'YYYY/MM/DD'
              EditButtons = <>
              FieldName = 'RKDate'
              Footers = <>
              Title.Caption = #20837#24235#26085#26399'|RKDate'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              Title.Caption = #20837#24235#21934#34399'|RKNO'
            end
            item
              EditButtons = <>
              FieldName = 'APlanDate'
              Footers = <>
              Title.Caption = #29983#29986#19978#32218'|APlanDate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              Title.Caption = #35330#21934#20132#36008#26085'|ShipDate'
            end
            item
              EditButtons = <>
              FieldName = 'orderdate'
              Footers = <>
              Title.Caption = #19979#21934#26085'|orderdate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'indate'
              Footers = <>
              Title.Caption = #25289#21934#26085'|indate'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'cldate'
              Footers = <>
              Title.Caption = #29992#37327#35336#31639'|cldate'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = #20986#36008#22283#21029'|ywsm'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH'
              Footers = <>
              Title.Caption = #24288#21830'ID|ZSDH'
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = #24288#21830'|zsywjc'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'ProdLeadTime'
              Footers = <>
              Title.Caption = 'LT Time|ProdLeadTime'
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser'
              Footers = <>
              Title.Caption = #25505#36092'ID|SamplePurchaser'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'USERName'
              Footers = <>
              Title.Caption = #25505#36092#21729'|USERName'
              Width = 46
            end>
        end
      end
    end
  end
  object DDZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select #RYPurchase.ZLBH,#RYPurchase.BuyNO,#RYPurchase.KHPO,#RYPu' +
        'rchase.XieMing,#RYPurchase.ARTICLE,#RYPurchase.Pairs,#RYPurchase' +
        '.APlanDate,#RYPurchase.ShipDate,null as ReadyDate1,null as Ready' +
        'Date2'
      
        '       ,Min(Case when CG_ML.ZLBH is not null then  Case when Min' +
        '_EDT_ML<>'#39#39' then Max_EDT_ML else Min_EDT_ML  end   else '#39'X'#39' end)' +
        ' as ML '
      
        '       ,Min(Case when CG_FML.ZLBH is not null then Case when Min' +
        '_EDT_FML<>'#39#39' then Max_EDT_FML else Min_EDT_FML  end else '#39'X'#39' end' +
        ') as FML '
      
        '       ,Min(Case when CG_FGL.ZLBH is not null then  Case when Mi' +
        'n_EDT_FGL<>'#39#39' then Max_EDT_FGL else Min_EDT_FGL  end  else '#39'X'#39' e' +
        'nd) as FGL '
      
        '       ,Min(Case when CG_DL.ZLBH is not null then Case when Min_' +
        'EDT_DL<>'#39#39' then Max_EDT_DL else Min_EDT_FGL  end  else '#39'X'#39' end) ' +
        'as DL '
      'from #RYPurchase'
      'left join ('
      
        '   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'#39#39')) as M' +
        'in_EDT_ML,MAX(IsNull(Convert(varchar,ETADate,111),'#39#39')) as Max_ED' +
        'T_ML'
      '   from  #RYPurchase A'
      
        '   where   (LEFT(A.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'B'#39')  or LEFT(A.C' +
        'LBH,3)='#39'P21'#39')  and IsNull(UseStock,0.0)<CLSL'
      '   Group by ZLBH'
      ') CG_ML on  CG_ML.ZLBH=#RYPurchase.ZLBH '
      'left join ('
      
        '   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'#39#39')) as M' +
        'in_EDT_FML,MAX(IsNull(Convert(varchar,ETADate,111),'#39#39')) as Max_E' +
        'DT_FML'
      '   from  #RYPurchase B'
      
        '   where (LEFT(B.CLBH,1) in ('#39'E'#39','#39'G'#39','#39'I'#39','#39'L'#39','#39'M'#39','#39'N'#39')  or  LEFT(' +
        'B.CLBH,3)  in ('#39'D01'#39','#39'D02'#39','#39'D11'#39'))  and IsNull(UseStock,0.0)<CLS' +
        'L'
      '   Group by ZLBH'
      ') CG_FML on  CG_FML.ZLBH=#RYPurchase.ZLBH '
      'left join ('
      
        '   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'#39#39')) as M' +
        'in_EDT_FGL,MAX(IsNull(Convert(varchar,ETADate,111),'#39#39')) as Max_E' +
        'DT_FGL'
      '   from  #RYPurchase C'
      
        '   where LEFT(C.CLBH,1) in ('#39'D'#39','#39'H'#39','#39'O'#39','#39'U'#39') and LEFT(C.CLBH,3) ' +
        ' not in ('#39'D01'#39','#39'D02'#39','#39'D11'#39')   and IsNull(UseStock,0.0)<CLSL'
      '   Group by ZLBH'
      ') CG_FGL on  CG_FGL.ZLBH=#RYPurchase.ZLBH '
      'left join ('
      
        '   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'#39#39')) as M' +
        'in_EDT_DL,MAX(IsNull(Convert(varchar,ETADate,111),'#39#39')) as Max_ED' +
        'T_DL'
      '   from  #RYPurchase D'
      
        '   where LEFT(D.CLBH,1) in ('#39'J'#39','#39'P'#39') and LEFT(D.CLBH,3) not in  ' +
        '('#39'P21'#39')  and IsNull(UseStock,0.0)<CLSL'
      '   Group by  ZLBH'
      ') CG_DL on  CG_DL.ZLBH=#RYPurchase.ZLBH '
      
        'Group by #RYPurchase.ZLBH,#RYPurchase.BuyNO,#RYPurchase.KHPO,#RY' +
        'Purchase.XieMing,#RYPurchase.ARTICLE,#RYPurchase.Pairs,#RYPurcha' +
        'se.APlanDate,#RYPurchase.ShipDate'
      'Order by #RYPurchase.APlanDate')
    Left = 196
    Top = 248
    object DDZLQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object DDZLQryBuyNo: TStringField
      FieldName = 'BuyNo'
      FixedChar = True
      Size = 10
    end
    object DDZLQryKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object DDZLQryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object DDZLQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object DDZLQryPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object DDZLQryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DDZLQryAPlanDate: TDateTimeField
      FieldName = 'APlanDate'
    end
    object DDZLQryReadyDate1: TIntegerField
      FieldName = 'ReadyDate1'
    end
    object DDZLQryReadyDate2: TIntegerField
      FieldName = 'ReadyDate2'
    end
    object DDZLQryML: TStringField
      FieldName = 'ML'
      FixedChar = True
      Size = 30
    end
    object DDZLQryFML: TStringField
      FieldName = 'FML'
      FixedChar = True
      Size = 30
    end
    object DDZLQryDL: TStringField
      FieldName = 'DL'
      FixedChar = True
      Size = 30
    end
    object DDZLQryFGL: TStringField
      FieldName = 'FGL'
      FixedChar = True
      Size = 30
    end
  end
  object DDZLDS: TDataSource
    DataSet = DDZLQry
    Left = 196
    Top = 212
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#RYPurchase'#39') is not null    '
      'begin drop table #RYPurchase end '
      ''
      'Select * into #RYPurchase from ( '
      
        'select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,' +
        'DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article' +
        ',XXZL.XieMing,DDZL.Pairs,'
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        case when DDZLTW.DDZT<>'#39'C'#39' then isnull(sum(ZLZLS2.CLSL),' +
        '0) else 0 end as CLSL,'
      
        '        convert(varchar,CGZL.YQDate,111) as YQDate,convert(varch' +
        'ar,CGZL.CFMDate,111) as CFMDate,case when CLZL.CQDH='#39'VN'#39' then co' +
        'nvert(varchar,CGZL.CFMDate,111) else convert(varchar,CGZL.CFMDat' +
        'e,111) end  as ETADate,'
      '        convert(varchar,CGZl.CGDate,111) as CGDate,'
      '        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,'
      
        '        RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,min(SCZLDate.ADate) as ' +
        'APlanDate,DDZL.ShipDate      '
      '        ,convert(smalldatetime,ddzl.userdate,111) as indate'
      
        '        ,convert(smalldatetime,max(zlzls2.userdate),111) as clda' +
        'te'
      '        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate'
      
        '        ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as z' +
        'sywjc'
      '        ,MaterialMOQ.ProdLeadTime   '
      'from ZLZLS2 with (nolock)  '
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39' and DDZL.BUYNO like '#39'%'#39' and DDZL.DDBH  like '#39'%'#39' and' +
        ' DDZL.Article like '#39'%'#39' '
      
        'inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL_Excel.DDBH' +
        ' and DDZL_Excel.DFL='#39'234'#39' '
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH'
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH '
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and' +
        ' CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='#39'VA12'#39' '
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and' +
        ' XXZL.SheHao=DDZLTW.SheHao'
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH '
      'left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      'left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH '
      
        'Left join CLZLFilter on CLZLFilter.CLDH=ZLZLS2.CLBH and CLZLFilt' +
        'er.GSBH='#39'VA12'#39' '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPr' +
        'ice '
      '           from CGZLSS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.G' +
        'SBH='#39'VA12'#39' and DDZL.BUYNO like '#39'%'#39' and DDZL.DDBH  like '#39'%'#39' and D' +
        'DZL.Article like '#39'%'#39' '
      
        '           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL' +
        '_Excel.DDBH and DDZL_Excel.DFL='#39'234'#39' '
      
        '           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.C' +
        'GNO and CGZLS.CLBH=CGZLSS.CLBH '
      
        '           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CG' +
        'NO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and CGZLSS.ZLBH  like '#39'%'#39' '
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH '
      '           union all'
      
        '           select YWDD.YSBH as ZLBH,YWBZPO.CLBH,sum(YWBZPO.Qty) ' +
        'as CGQty,getdate() as CFMDate,max(CGZL.CGDate) as CGDate'
      
        '                  ,max(CGZL.CGNO) as CGNO,getdate() as YQDate,0 ' +
        'as USPrice,0 as VNPrice'
      
        '           from (select YWBZPO.DDBH,YWBZPO.CLBH,sum(CTS) as Qty ' +
        'from YWBZPO,YWDD where YWBZPO.ddbh=YWDD.DDBH and YWDD.YSBH  like' +
        ' '#39'%'#39'  group by YWBZPO.DDBH,YWBZPO.CLBH'
      
        '                 union all select DDBH,CLBH,sum(CTS) as Qty from' +
        ' YWBZPOE where ddbh  like '#39'%'#39'  group by DDBH,CLBH )ywbzpo'
      '           left join YWDD on YWDD.DDBH=YWBZPO.DDBH'
      '           left join DDZL on DDZL.DDBH=YWDD.YSBH'
      
        '           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL' +
        '_Excel.DDBH and DDZL_Excel.DFL='#39'234'#39' '
      '           left join CGZL on CGZL.CGNO=YWDD.CGNO'
      '           where DDZL.DDBH  like '#39'%'#39' and DDZL.Article like '#39'%'#39' '
      '           and YWDD.GSBH='#39'VA12'#39
      '           and DDZL.BuyNO like '#39'%'#39
      '           and YWBZPO.CLBH like '#39'%'#39
      '           group by YWDD.YSBH,YWBZPO.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate, '
      
        '                  max(kcrks.usprice) as usprice,max(kcrks.vnpric' +
        'e) as vnprice '
      '           from  KCRKS with (nolock)  '
      
        '           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH' +
        '='#39'VA12'#39' and DDZL.BUYNO like '#39'%'#39' and DDZL.DDBH  like '#39'%'#39' and DDZL' +
        '.Article like '#39'%'#39' '
      
        '           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL' +
        '_Excel.DDBH and DDZL_Excel.DFL='#39'234'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CGBH  like '#39'%'#39' '
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      
        'left join (select HG_INVS.CGBH as ZLBH ,HG_INVS.CLBH,sum(HG_INVS' +
        '.Qty ) as HGQty, '
      
        '                  max(HG_INV.DOCNO) as DOCNO,max(HG_INV.USERDate' +
        ') as HGDate '
      '           from  HG_INVS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH=HG_INVS.CGBH and DDZL.GS' +
        'BH='#39'VA12'#39' and DDZL.BUYNO like '#39'%'#39' and DDZL.DDBH  like '#39'%'#39' and DD' +
        'ZL.Article like '#39'%'#39' '
      
        '           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL' +
        '_Excel.DDBH and DDZL_Excel.DFL='#39'234'#39' '
      
        '           left join HG_INV with (nolock)  on HG_INV.RKNO=HG_INV' +
        'S.RKNO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and HG_INVS.CGBH  like '#39'%'#39' '
      '           group by HG_INVS.CGBH,HG_INVS.CLBH ) HGINV'
      
        '                 on HGINV.ZLBH=ZLZLS2.ZLBH and HGINV.CLBH=ZLZLS2' +
        '.CLBH'
      
        'left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zsz' +
        'l.zsdh  '
      'left join ('
      
        #9#9'   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,L' +
        'ocation from ('
      
        #9#9'   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_' +
        'Leadtime,A.Location from ('
      
        #9#9#9'   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,' +
        'Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring' +
        '(Season,1,2) DESC,USERDATE desc) '
      #9#9#9'   as  rn from '
      #9#9#9'  ('
      
        #9#9#9'  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH' +
        ',ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USE' +
        'RDATE '
      #9#9#9'  from MaterialMOQ with (nolock)'
      
        #9#9#9'  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ' +
        '.CLBH  and IsNull(CLZL_LS.JHDH,'#39#39')<>'#39#39' ) MaterialMOQ'
      #9#9#9'  where 1=1'
      
        #9#9'   ) A where A.rn=1 and A.CLBH in (select distinct CLBH from Z' +
        'LZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='#39'VA12'#39' and ' +
        'DDZL.BUYNO like '#39'%'#39' and DDZL.Article like '#39'%'#39' '
      
        '                                       and DDZL.DDBH in (Select ' +
        'DDBH from DDZL_Excel where DFL='#39'234'#39') '
      
        '                                       and ZLZLS2.ZLBH  like '#39'%'#39 +
        ' '
      
        '                                       and ZLZLS2.CLBH not like ' +
        #39'W%'#39' and ZLZLS2.CLBH like '#39'%'#39' and ZLZLS2.CLSL<>0 and ZLZLS2.ZMLB' +
        '='#39'N'#39') '
      '    ) MatMOQ'
      #9#9') MaterialMOQ on MaterialMOQ.CLBH=ZLZLS2.CLBH '
      '       where DDZL.GSBH='#39'VA12'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH  like '#39'%'#39' '
      '       and DDZL.BuyNO like '#39'%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and ZLZLS2.CLSL<>0'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      '       and CLZLFilter.CLDH is null '
      '       and DDZL.DDZT<>'#39'C'#39' '
      
        'group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.C' +
        'LBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.C' +
        'GQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate, '
      '         ddzl.ddrq,lbzls.ywsm '
      '         ,MaterialMOQ.ProdLeadTime'
      ') ZLZLS2 where 1=1  ')
    Left = 164
    Top = 244
  end
  object DDZLDet_MLDS: TDataSource
    DataSet = DDZLDet_ML
    Left = 268
    Top = 213
  end
  object DDZLDet_ML: TQuery
    DatabaseName = 'DB'
    DataSource = DDZLDS
    SQL.Strings = (
      '   Select A.*,zszl_dev.SamplePurchaser,BUsers.USERName    '
      '   from  #RYPurchase A'
      
        '   left join zszl_dev on zszl_dev.zsdh=A.ZSDH and zszl_dev.GSBH=' +
        #39'VA12'#39
      '   left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser'
      
        '   where ((LEFT(A.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and LEFT(A.CLBH,3' +
        ') not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') ) or (LEFT(A.CLBH,1)='#39'P'#39' and ' +
        'A.ZSDH='#39'M027'#39') ) ')
    Left = 268
    Top = 241
    object DDZLDet_MLBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object DDZLDet_MLZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object DDZLDet_MLDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object DDZLDet_MLKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_MLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object DDZLDet_MLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DDZLDet_MLZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DDZLDet_MLDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DDZLDet_MLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLDet_MLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object DDZLDet_MLPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object DDZLDet_MLCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object DDZLDet_MLCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_MLCGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_MLRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_MLUseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_MLCGDate: TStringField
      FieldName = 'CGDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_MLYQDate: TStringField
      FieldName = 'YQDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_MLCFMDate: TStringField
      FieldName = 'CFMDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_MLETADate: TStringField
      FieldName = 'ETADate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_MLCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object DDZLDet_MLRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DDZLDet_MLRKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object DDZLDet_MLAPlanDate: TDateTimeField
      FieldName = 'APlanDate'
    end
    object DDZLDet_MLShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DDZLDet_MLindate: TDateTimeField
      FieldName = 'indate'
    end
    object DDZLDet_MLcldate: TDateTimeField
      FieldName = 'cldate'
    end
    object DDZLDet_MLorderdate: TDateTimeField
      FieldName = 'orderdate'
    end
    object DDZLDet_MLywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object DDZLDet_MLZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object DDZLDet_MLzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object DDZLDet_MLProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object DDZLDet_MLSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object DDZLDet_MLUSERName: TStringField
      FieldName = 'USERName'
      FixedChar = True
      Size = 30
    end
  end
  object DDZLDet_FMLDS: TDataSource
    DataSet = DDZLDet_FML
    Left = 308
    Top = 213
  end
  object DDZLDet_FGLDS: TDataSource
    DataSet = DDZLDet_FGL
    Left = 348
    Top = 213
  end
  object DDZLDet_DLDS: TDataSource
    DataSet = DDZLDet_DL
    Left = 388
    Top = 213
  end
  object DDZLDet_FML: TQuery
    DatabaseName = 'DB'
    DataSource = DDZLDS
    SQL.Strings = (
      '   Select A.*,zszl_dev.SamplePurchaser,BUsers.USERName    '
      '   from  #RYPurchase A'
      
        '   left join zszl_dev on zszl_dev.zsdh=A.ZSDH and zszl_dev.GSBH=' +
        #39'VA12'#39
      '   left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser'
      
        '   where ((LEFT(A.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and LEFT(A.CLBH,3' +
        ') not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') ) or (LEFT(A.CLBH,1)='#39'P'#39' and ' +
        'A.ZSDH='#39'M027'#39') ) ')
    Left = 308
    Top = 241
    object StringField1: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField10: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField11: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.00'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_FMLCGDate: TStringField
      FieldName = 'CGDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_FMLYQDate: TStringField
      FieldName = 'YQDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_FMLCFMDate: TStringField
      FieldName = 'CFMDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_FMLETADate: TStringField
      FieldName = 'ETADate'
      FixedChar = True
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField13: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'RKDate'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'APlanDate'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'indate'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'cldate'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'orderdate'
    end
    object StringField14: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object StringField16: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object DDZLDet_FMLSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object DDZLDet_FMLUSERName: TStringField
      FieldName = 'USERName'
      FixedChar = True
      Size = 30
    end
  end
  object DDZLDet_FGL: TQuery
    DatabaseName = 'DB'
    DataSource = DDZLDS
    SQL.Strings = (
      '   Select A.*,zszl_dev.SamplePurchaser,BUsers.USERName    '
      '   from  #RYPurchase A'
      
        '   left join zszl_dev on zszl_dev.zsdh=A.ZSDH and zszl_dev.GSBH=' +
        #39'VA12'#39
      '   left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser'
      
        '   where ((LEFT(A.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and LEFT(A.CLBH,3' +
        ') not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') ) or (LEFT(A.CLBH,1)='#39'P'#39' and ' +
        'A.ZSDH='#39'M027'#39') ) ')
    Left = 348
    Top = 241
    object StringField17: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField18: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField19: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object StringField20: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object StringField21: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object StringField22: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField23: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object StringField24: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField25: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField26: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField27: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object FloatField2: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.00'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_FGLCGDate: TStringField
      FieldName = 'CGDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_FGLYQDate: TStringField
      FieldName = 'YQDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_FGLCFMDate: TStringField
      FieldName = 'CFMDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_FGLETADate: TStringField
      FieldName = 'ETADate'
      FixedChar = True
      Size = 30
    end
    object StringField28: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField29: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'RKDate'
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'APlanDate'
    end
    object DateTimeField15: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DateTimeField16: TDateTimeField
      FieldName = 'indate'
    end
    object DateTimeField17: TDateTimeField
      FieldName = 'cldate'
    end
    object DateTimeField18: TDateTimeField
      FieldName = 'orderdate'
    end
    object StringField30: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object StringField31: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object StringField32: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object DDZLDet_FGLSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object DDZLDet_FGLUSERName: TStringField
      FieldName = 'USERName'
      FixedChar = True
      Size = 30
    end
  end
  object DDZLDet_DL: TQuery
    DatabaseName = 'DB'
    DataSource = DDZLDS
    SQL.Strings = (
      '   Select A.*,zszl_dev.SamplePurchaser,BUsers.USERName    '
      '   from  #RYPurchase A'
      
        '   left join zszl_dev on zszl_dev.zsdh=A.ZSDH and zszl_dev.GSBH=' +
        #39'VA12'#39
      '   left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser'
      
        '   where ((LEFT(A.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and LEFT(A.CLBH,3' +
        ') not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') ) or (LEFT(A.CLBH,1)='#39'P'#39' and ' +
        'A.ZSDH='#39'M027'#39') ) ')
    Left = 388
    Top = 241
    object StringField33: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField34: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField35: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object StringField36: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object StringField37: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object StringField38: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField39: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object StringField40: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField41: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField42: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField43: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object FloatField3: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.00'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '#0.00'
    end
    object DDZLDet_DLCGDate: TStringField
      FieldName = 'CGDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_DLYQDate: TStringField
      FieldName = 'YQDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_DLCFMDate: TStringField
      FieldName = 'CFMDate'
      FixedChar = True
      Size = 30
    end
    object DDZLDet_DLETADate: TStringField
      FieldName = 'ETADate'
      FixedChar = True
      Size = 30
    end
    object StringField44: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField45: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DateTimeField22: TDateTimeField
      FieldName = 'RKDate'
    end
    object DateTimeField23: TDateTimeField
      FieldName = 'APlanDate'
    end
    object DateTimeField24: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DateTimeField25: TDateTimeField
      FieldName = 'indate'
    end
    object DateTimeField26: TDateTimeField
      FieldName = 'cldate'
    end
    object DateTimeField27: TDateTimeField
      FieldName = 'orderdate'
    end
    object StringField46: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object StringField47: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object StringField48: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object DDZLDet_DLSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object DDZLDet_DLUSERName: TStringField
      FieldName = 'USERName'
      FixedChar = True
      Size = 30
    end
  end
  object NoNeedPopu: TPopupMenu
    Left = 268
    Top = 274
    object Noneedpurchase1: TMenuItem
      Caption = 'No need purchase - Add'
      OnClick = Noneedpurchase1Click
    end
    object NoneedpurchaseList1: TMenuItem
      Caption = 'No need purchase - Show List'
      OnClick = NoneedpurchaseList1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object OpenDialog: TOpenDialog
    FileName = '*.xlsx'
    Filter = 'CSV|*.csv|EXCEL|*.xls|EXCEL|*.xlsx'
    Left = 592
    Top = 40
  end
end
