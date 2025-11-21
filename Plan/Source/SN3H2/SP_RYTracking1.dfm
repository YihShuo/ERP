object SP_RYTracking: TSP_RYTracking
  Left = 318
  Top = 258
  Width = 1505
  Height = 675
  Caption = 'RY Tracking'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1489
    Height = 636
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Schedule Status'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1481
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 144
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 329
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 1078
          Top = 16
          Width = 19
          Height = 16
          Alignment = taRightJustify
          Caption = 'RY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 492
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Process'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 741
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 934
          Top = 16
          Width = 27
          Height = 16
          Alignment = taRightJustify
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_P: TDateTimePicker
          Left = 55
          Top = 12
          Width = 74
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DTP_PChange
        end
        object CB_Building_P: TComboBox
          Left = 203
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          OnChange = CB_Building_PChange
        end
        object CB_Lean_P: TComboBox
          Left = 364
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 2
        end
        object Button1: TButton
          Left = 1236
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
        object ED_RY_P: TEdit
          Left = 1102
          Top = 12
          Width = 105
          Height = 24
          TabOrder = 4
        end
        object CB_Process_P: TComboBox
          Left = 547
          Top = 12
          Width = 158
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 5
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'IN'
            'EP'
            'THEU'
            'CHUYEN IN')
        end
        object CB_Supplier_P: TComboBox
          Left = 796
          Top = 12
          Width = 117
          Height = 24
          Style = csDropDownList
          DropDownCount = 10
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 6
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'TY XUAN'
            'TIEN HUNG'
            'BAO HE'
            'HAI AN'
            'O2 PARTNER LLC'
            'LI MAO'
            'CHEN TAI'
            'WEI SHENG'
            'COLORTECH'
            'JIA HUA')
        end
        object Button3: TButton
          Left = 704
          Top = 12
          Width = 22
          Height = 22
          Caption = 'VN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 1311
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button4Click
        end
        object ED_SKU_P: TEdit
          Left = 966
          Top = 12
          Width = 91
          Height = 24
          TabOrder = 9
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 48
        Width = 1481
        Height = 557
        Align = alClient
        DataSource = DS_P
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        HorzScrollBar.Tracking = True
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ReadOnly = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnColEnter = DBGridEh1ColEnter
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Building'
            Footers = <>
            HideDuplicates = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Lean'
            Footers = <>
            HideDuplicates = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            HideDuplicates = True
            Title.Caption = 'Plan Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CuttingDie'
            Footers = <>
            HideDuplicates = True
            Title.Caption = 'Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            HideDuplicates = True
            Title.Caption = 'SKU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'BuyNo'
            Footers = <>
            Title.Caption = 'BUY'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'RY'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 60
          end
          item
            DisplayFormat = 'MM/dd'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Caption = 'GAC'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'EstLaunchDate'
            Footers = <>
            Title.Caption = 'Processing|Launch Date|Estimated'
            Title.TitleButton = True
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ActLaunchDate'
            Footers = <>
            Title.Caption = 'Processing|Launch Date|Actual'
            Width = 70
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'InputRate'
            Footer.Alignment = taRightJustify
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Processing|Input'
            Width = 60
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'OutputRate'
            Footer.Alignment = taRightJustify
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Processing|Output'
            Width = 60
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'MatchedPairs'
            Footers = <>
            Title.Caption = 'Processing|Matched'
            Width = 70
          end
          item
            AlwaysShowEditButton = True
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'EditButton'
            Footers = <>
            Title.Caption = 'Processing| '
            Visible = False
            Width = 17
            OnEditButtonClick = DBGridEh1Columns11EditButtonClick
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Estimated Workload'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1481
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 150
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Process'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 407
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_EWT: TDateTimePicker
          Left = 55
          Top = 12
          Width = 74
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button2: TButton
          Left = 606
          Top = 11
          Width = 75
          Height = 25
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
        object CB_Process_EWT: TComboBox
          Left = 205
          Top = 12
          Width = 158
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 2
          Text = 'IN'
          Items.Strings = (
            'IN'
            'EP'
            'THEU'
            'CHUYEN IN')
        end
        object CB_Supplier_EWT: TComboBox
          Left = 462
          Top = 12
          Width = 117
          Height = 24
          Style = csDropDownList
          DropDownCount = 10
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'TY XUAN'
          Items.Strings = (
            'TY XUAN'
            'TIEN HUNG'
            'BAO HE'
            'HAI AN'
            'O2 PARTNER LLC'
            'LI MAO'
            'CHEN TAI'
            'WEI SHENG'
            'COLORTECH'
            'JIA HUA')
        end
        object Button5: TButton
          Left = 362
          Top = 12
          Width = 22
          Height = 22
          Caption = 'VN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button3Click
        end
      end
      object Chart_EWT: TChart
        Left = 0
        Top = 48
        Width = 1481
        Height = 557
        AllowPanning = pmHorizontal
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          ' ')
        BottomAxis.ExactDateTime = False
        BottomAxis.Grid.Visible = False
        BottomAxis.Increment = 300.000000000000000000
        BottomAxis.MinorTicks.Visible = False
        BottomAxis.Ticks.Visible = False
        LeftAxis.ExactDateTime = False
        LeftAxis.Grid.Color = 14869218
        LeftAxis.Grid.Style = psSolid
        LeftAxis.MinorTicks.Visible = False
        LeftAxis.Title.Angle = 0
        Legend.Alignment = laBottom
        Legend.Color = 15790320
        Legend.ColorWidth = 30
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -16
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = [fsBold]
        Legend.Frame.Visible = False
        Legend.ShadowSize = 0
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 0
        Legend.Visible = False
        View3D = False
        OnGetAxisLabel = Chart_EWTGetAxisLabel
        Align = alClient
        BevelOuter = bvNone
        BevelWidth = 0
        PopupMenu = PopupMenu2
        TabOrder = 1
        object Series_EWT_EstInput: TBarSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 8
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clBlack
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Transparent = True
          Marks.Visible = True
          SeriesColor = 6968388
          Title = 'EstInput'
          OnClick = Series_EWT_EstInputClick
          BarPen.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Daily Capacity'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1481
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label13: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 270
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Process'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 527
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 147
          Top = 20
          Width = 9
          Height = 16
          Alignment = taRightJustify
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_TC1: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button7: TButton
          Left = 726
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button7Click
        end
        object CB_Process_TC: TComboBox
          Left = 325
          Top = 12
          Width = 158
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 2
          Text = 'IN'
          Items.Strings = (
            'IN'
            'EP'
            'THEU'
            'CHUYEN IN')
        end
        object CB_Supplier_TC: TComboBox
          Left = 582
          Top = 12
          Width = 117
          Height = 24
          Style = csDropDownList
          DropDownCount = 10
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'TY XUAN'
          Items.Strings = (
            'TY XUAN'
            'TIEN HUNG'
            'BAO HE'
            'HAI AN'
            'O2 PARTNER LLC'
            'LI MAO'
            'CHEN TAI'
            'WEI SHENG'
            'COLORTECH'
            'JIA HUA')
        end
        object Button8: TButton
          Left = 482
          Top = 12
          Width = 22
          Height = 22
          Caption = 'VN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button3Click
        end
        object DTP_TC2: TDateTimePicker
          Left = 159
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object Chart_TC: TChart
        Left = 0
        Top = 48
        Width = 1481
        Height = 557
        AllowPanning = pmHorizontal
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          ' ')
        BottomAxis.ExactDateTime = False
        BottomAxis.Grid.Visible = False
        BottomAxis.Increment = 300.000000000000000000
        BottomAxis.MinorTicks.Visible = False
        BottomAxis.Ticks.Visible = False
        LeftAxis.ExactDateTime = False
        LeftAxis.Grid.Color = 14869218
        LeftAxis.Grid.Style = psSolid
        LeftAxis.MinorTicks.Visible = False
        LeftAxis.Title.Angle = 0
        Legend.Alignment = laBottom
        Legend.Color = 15790320
        Legend.ColorWidth = 30
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -16
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = [fsBold]
        Legend.Frame.Visible = False
        Legend.ShadowSize = 0
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 0
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        BevelWidth = 0
        PopupMenu = PopupMenu2
        TabOrder = 1
        object Series_TC_Input: TBarSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 8
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clBlack
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Transparent = True
          Marks.Visible = True
          SeriesColor = 6968388
          Title = 'Input'
          OnClick = Series_TC_InputClick
          OnGetMarkText = Series_TC_InputGetMarkText
          BarPen.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series_TC_Output: TBarSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 8
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clRed
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Transparent = True
          Marks.Visible = True
          SeriesColor = 8421631
          Title = 'Output'
          OnClick = Series_TC_OutputClick
          OnGetMarkText = Series_TC_OutputGetMarkText
          BarPen.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object ToolTip: TPanel
        Left = 56
        Top = 95
        Width = 200
        Height = 26
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWhite
        TabOrder = 2
        Visible = False
        object TT_Content: TLabel
          Left = 2
          Top = 2
          Width = 72
          Height = 18
          Align = alLeft
          Caption = 'TT_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object Q_P: TQuery
    AfterOpen = Q_PAfterOpen
    AfterScroll = Q_PAfterScroll
    DatabaseName = 'DB'
    Left = 24
    Top = 216
    object Q_PBuilding: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object Q_PLean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_PPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Q_PCuttingDie: TStringField
      FieldName = 'CuttingDie'
      Size = 30
    end
    object Q_PARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_PBuyNo: TStringField
      FieldName = 'BuyNo'
      Size = 10
    end
    object Q_PDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Q_PPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_PShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Q_PCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
    object Q_PInputRate: TStringField
      FieldName = 'InputRate'
      Size = 15
    end
    object Q_POutputRate: TStringField
      FieldName = 'OutputRate'
      Size = 15
    end
    object Q_PParts: TStringField
      FieldName = 'Parts'
      Size = 200
    end
    object Q_PMatchedPairs: TIntegerField
      FieldName = 'MatchedPairs'
    end
    object Q_PInputPairs: TIntegerField
      FieldName = 'InputPairs'
    end
    object Q_POutputPairs: TIntegerField
      FieldName = 'OutputPairs'
    end
    object Q_PInput: TStringField
      FieldName = 'Input'
      Size = 200
    end
    object Q_POutput: TStringField
      FieldName = 'Output'
      Size = 200
    end
    object Q_PSeq: TFloatField
      FieldName = 'Seq'
    end
    object Q_PEstLaunchDate: TStringField
      FieldName = 'EstLaunchDate'
      Size = 15
    end
    object Q_PActLaunchDate: TDateTimeField
      FieldName = 'ActLaunchDate'
    end
  end
  object DS_P: TDataSource
    DataSet = Q_P
    Left = 24
    Top = 184
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 56
    Top = 216
  end
  object PopupMenu2: TPopupMenu
    Left = 56
    Top = 248
    object Excel1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 24
    Top = 248
  end
end
