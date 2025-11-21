object ProductionPlanTracking: TProductionPlanTracking
  Left = 338
  Top = 203
  Width = 1555
  Height = 730
  Caption = 'ProductionPlanTracking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1539
    Height = 691
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Monthly Plan'
      object Splitter4: TSplitter
        Left = 0
        Top = 453
        Width = 1531
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        OnMoved = Splitter4Moved
      end
      object Panel4: TPanel
        Left = 0
        Top = 455
        Width = 1531
        Height = 205
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Splitter1: TSplitter
          Left = 612
          Top = 27
          Width = 2
          Height = 178
          Color = clBtnFace
          MinSize = 1
          ParentColor = False
          OnCanResize = Splitter1CanResize
        end
        object Splitter2: TSplitter
          Left = 919
          Top = 27
          Width = 2
          Height = 178
          Color = clBtnFace
          MinSize = 1
          ParentColor = False
          OnCanResize = Splitter2CanResize
        end
        object Splitter3: TSplitter
          Left = 1226
          Top = 27
          Width = 2
          Height = 178
          Color = clBtnFace
          MinSize = 1
          ParentColor = False
          OnCanResize = Splitter3CanResize
        end
        object Splitter5: TSplitter
          Left = 305
          Top = 27
          Width = 2
          Height = 178
          Color = clBtnFace
          MinSize = 1
          ParentColor = False
          OnCanResize = Splitter5CanResize
        end
        object Panel5: TPanel
          Left = 329
          Top = 27
          Width = 283
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 0
          object LB_Cutting: TLabel
            Left = 0
            Top = 0
            Width = 279
            Height = 18
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Cutting'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Min_Cutting: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000101010000000000000000000000000000000000000000000000
              000000000000000000003FFF00003FFF00000000000000000000000000000000
              000000000000000000000000000000000000}
            Transparent = True
            OnClick = Min_CuttingClick
          end
          object Dot_Cutting: TImage
            Left = 18
            Top = 0
            Width = 18
            Height = 18
            Picture.Data = {
              07544269746D61704E010000424D4E0100000000000076000000280000001200
              0000120000000100040000000000D8000000120B0000120B0000100000000000
              0000FFFFFF00000000000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0001111000000000000000000011221100000000000000000112222110000000
              0000000001222222100000000000000001222222100000000000000001122221
              1000000000000000001122110000000000000000000111100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Transparent = True
            Visible = False
          end
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 18
            Width = 279
            Height = 156
            Align = alClient
            DataSource = DS_Cutting
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnColEnter = DBGridEhColEnter
            OnDrawColumnCell = MatDBGridEhDrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'Indicator'
                Footers = <>
                Title.Caption = ' '
                Width = 11
              end
              item
                EditButtons = <>
                FieldName = 'Seq'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Zone'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Material ID'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = 'Material Name'
                Width = 100
              end
              item
                ButtonStyle = cbsEllipsis
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ArrivalDate'
                Footers = <>
                Title.Caption = 'Arrival Date'
                Width = 65
                OnEditButtonClick = DBGridEh1Columns3EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'DayDiff'
                Footers = <>
                Title.Caption = 'Lead Days'
                Width = 55
              end
              item
                DisplayFormat = '###,##0.0'
                EditButtons = <>
                FieldName = 'Usage'
                Footers = <>
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Unit'
                Footers = <>
                Width = 30
              end>
          end
        end
        object Panel6: TPanel
          Left = 636
          Top = 27
          Width = 283
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 1
          object LB_Stitching: TLabel
            Left = 0
            Top = 0
            Width = 279
            Height = 18
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Stitching'
            Color = 11184895
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Min_Stitching: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000101010000000000000000000000000000000000000000000000
              000000000000000000003FFF00003FFF00000000000000000000000000000000
              000000000000000000000000000000000000}
            Transparent = True
            OnClick = Min_StitchingClick
          end
          object Dot_Stitching: TImage
            Left = 18
            Top = 0
            Width = 18
            Height = 18
            Picture.Data = {
              07544269746D61704E010000424D4E0100000000000076000000280000001200
              0000120000000100040000000000D8000000120B0000120B0000100000000000
              0000FFFFFF00000000000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0001111000000000000000000011221100000000000000000112222110000000
              0000000001222222100000000000000001222222100000000000000001122221
              1000000000000000001122110000000000000000000111100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Transparent = True
            Visible = False
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 18
            Width = 279
            Height = 156
            Align = alClient
            DataSource = DS_Stitching
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnColEnter = DBGridEhColEnter
            OnDrawColumnCell = MatDBGridEhDrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'Indicator'
                Footers = <>
                Title.Caption = ' '
                Width = 11
              end
              item
                EditButtons = <>
                FieldName = 'Seq'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Zone'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Material ID'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = 'Material Name'
                Width = 100
              end
              item
                ButtonStyle = cbsEllipsis
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ArrivalDate'
                Footers = <>
                Title.Caption = 'Arrival Date'
                Width = 65
                OnEditButtonClick = DBGridEh2Columns3EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'DayDiff'
                Footers = <>
                Title.Caption = 'Lead Days'
                Width = 55
              end
              item
                DisplayFormat = '###,##0.0'
                EditButtons = <>
                FieldName = 'Usage'
                Footers = <>
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Unit'
                Footers = <>
                Width = 30
              end>
          end
        end
        object Panel7: TPanel
          Left = 943
          Top = 27
          Width = 283
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 2
          object LB_Assembly: TLabel
            Left = 0
            Top = 0
            Width = 279
            Height = 18
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assembly'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Min_Assembly: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000101010000000000000000000000000000000000000000000000
              000000000000000000003FFF00003FFF00000000000000000000000000000000
              000000000000000000000000000000000000}
            Transparent = True
            OnClick = Min_AssemblyClick
          end
          object Dot_Assembly: TImage
            Left = 18
            Top = 0
            Width = 18
            Height = 18
            Picture.Data = {
              07544269746D61704E010000424D4E0100000000000076000000280000001200
              0000120000000100040000000000D8000000120B0000120B0000100000000000
              0000FFFFFF00000000000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0001111000000000000000000011221100000000000000000112222110000000
              0000000001222222100000000000000001222222100000000000000001122221
              1000000000000000001122110000000000000000000111100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Transparent = True
            Visible = False
          end
          object DBGridEh3: TDBGridEh
            Left = 0
            Top = 18
            Width = 279
            Height = 156
            Align = alClient
            DataSource = DS_Assembly
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnColEnter = DBGridEhColEnter
            OnDrawColumnCell = MatDBGridEhDrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'Indicator'
                Footers = <>
                Title.Caption = ' '
                Width = 11
              end
              item
                EditButtons = <>
                FieldName = 'Seq'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Zone'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Material ID'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = 'Material Name'
                Width = 100
              end
              item
                ButtonStyle = cbsEllipsis
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ArrivalDate'
                Footers = <>
                Title.Caption = 'Arrival Date'
                Width = 65
                OnEditButtonClick = DBGridEh3Columns3EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'DayDiff'
                Footers = <>
                Title.Caption = 'Lead Days'
                Width = 55
              end
              item
                DisplayFormat = '###,##0.0'
                EditButtons = <>
                FieldName = 'Usage'
                Footers = <>
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'Unit'
                Footers = <>
                Width = 30
              end>
          end
        end
        object Panel8: TPanel
          Left = 1250
          Top = 27
          Width = 282
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 3
          object LB_Bottom: TLabel
            Left = 0
            Top = 0
            Width = 278
            Height = 18
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Bottom'
            Color = clLime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Min_Bottom: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000101010000000000000000000000000000000000000000000000
              000000000000000000003FFF00003FFF00000000000000000000000000000000
              000000000000000000000000000000000000}
            Transparent = True
            OnClick = Min_BottomClick
          end
          object Dot_Bottom: TImage
            Left = 18
            Top = 0
            Width = 18
            Height = 18
            Picture.Data = {
              07544269746D61704E010000424D4E0100000000000076000000280000001200
              0000120000000100040000000000D8000000120B0000120B0000100000000000
              0000FFFFFF00000000000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0001111000000000000000000011221100000000000000000112222110000000
              0000000001222222100000000000000001222222100000000000000001122221
              1000000000000000001122110000000000000000000111100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Transparent = True
            Visible = False
          end
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 18
            Width = 278
            Height = 156
            Align = alClient
            DataSource = DS_Bottom
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnColEnter = DBGridEhColEnter
            OnDrawColumnCell = MatDBGridEhDrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'Indicator'
                Footers = <>
                Title.Caption = ' '
                Width = 11
              end
              item
                EditButtons = <>
                FieldName = 'Seq'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Zone'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Material ID'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = 'Material Name'
                Width = 100
              end
              item
                ButtonStyle = cbsEllipsis
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ArrivalDate'
                Footers = <>
                Title.Caption = 'Arrival Date'
                Width = 65
                OnEditButtonClick = DBGridEh4Columns3EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'DayDiff'
                Footers = <>
                Title.Caption = 'Lead Days'
                Width = 55
              end
              item
                DisplayFormat = '###,##0.0'
                EditButtons = <>
                FieldName = 'Usage'
                Footers = <>
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Unit'
                Footers = <>
                Width = 30
              end>
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1531
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label6: TLabel
            Left = 517
            Top = 5
            Width = 17
            Height = 16
            Caption = 'RY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 693
            Top = 5
            Width = 27
            Height = 16
            Caption = 'SKU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 879
            Top = 5
            Width = 62
            Height = 16
            Caption = 'Plan Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ED_RY: TEdit
            Left = 539
            Top = 2
            Width = 134
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object ED_SKU: TEdit
            Left = 725
            Top = 2
            Width = 134
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object ED_PlanDate: TEdit
            Left = 946
            Top = 2
            Width = 134
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
        end
        object Panel11: TPanel
          Left = 614
          Top = 27
          Width = 22
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 11184895
          TabOrder = 5
          object PB_Stitching: TPaintBox
            Left = 0
            Top = 0
            Width = 18
            Height = 174
            Align = alClient
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            OnPaint = PB_StitchingPaint
          end
          object Max_Stitching: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Align = alCustom
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000000000000000000000000003FF800003FF80000301B0000301B
              0000301B0000301B0000301B0000301B0000301B00003FFB00003FFB00000003
              00000FFF00000FFF00000000000000000000}
            Transparent = True
            OnClick = Max_StitchingClick
          end
        end
        object Panel10: TPanel
          Left = 307
          Top = 27
          Width = 22
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = clWhite
          TabOrder = 6
          object PB_Cutting: TPaintBox
            Left = 0
            Top = 0
            Width = 18
            Height = 174
            Align = alClient
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            OnPaint = PB_CuttingPaint
          end
          object Max_Cutting: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Align = alCustom
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000000000000000000000000003FF800003FF80000301B0000301B
              0000301B0000301B0000301B0000301B0000301B00003FFB00003FFB00000003
              00000FFF00000FFF00000000000000000000}
            Transparent = True
            OnClick = Max_CuttingClick
          end
        end
        object Panel12: TPanel
          Left = 921
          Top = 27
          Width = 22
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = clRed
          TabOrder = 7
          object PB_Assembly: TPaintBox
            Left = 0
            Top = 0
            Width = 18
            Height = 174
            Align = alClient
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            OnPaint = PB_AssemblyPaint
          end
          object Max_Assembly: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Align = alCustom
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000000000000000000000000003FF800003FF80000301B0000301B
              0000301B0000301B0000301B0000301B0000301B00003FFB00003FFB00000003
              00000FFF00000FFF00000000000000000000}
            Transparent = True
            OnClick = Max_AssemblyClick
          end
        end
        object Panel13: TPanel
          Left = 1228
          Top = 27
          Width = 22
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = clLime
          TabOrder = 8
          object PB_Bottom: TPaintBox
            Left = 0
            Top = 0
            Width = 18
            Height = 174
            Align = alClient
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            OnPaint = PB_BottomPaint
          end
          object Max_Bottom: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Align = alCustom
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000000000000000000000000003FF800003FF80000301B0000301B
              0000301B0000301B0000301B0000301B0000301B00003FFB00003FFB00000003
              00000FFF00000FFF00000000000000000000}
            Transparent = True
            OnClick = Max_BottomClick
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 27
          Width = 22
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = clWhite
          TabOrder = 9
          object PB_Process: TPaintBox
            Left = 0
            Top = 0
            Width = 18
            Height = 174
            Align = alClient
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            OnPaint = PB_ProcessPaint
          end
          object Max_Process: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Align = alCustom
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000000000000000000000000003FF800003FF80000301B0000301B
              0000301B0000301B0000301B0000301B0000301B00003FFB00003FFB00000003
              00000FFF00000FFF00000000000000000000}
            Transparent = True
            OnClick = Max_ProcessClick
          end
        end
        object Panel15: TPanel
          Left = 22
          Top = 27
          Width = 283
          Height = 178
          Align = alLeft
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 10
          object LB_Process: TLabel
            Left = 0
            Top = 0
            Width = 279
            Height = 18
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Second Process'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Min_Process: TImage
            Left = 0
            Top = 0
            Width = 18
            Height = 18
            Cursor = crHandPoint
            Picture.Data = {
              07544269746D617086000000424D86000000000000003E000000280000001200
              000012000000010001000000000048000000120B0000120B0000020000000000
              0000FFFFFF000101010000000000000000000000000000000000000000000000
              000000000000000000003FFF00003FFF00000000000000000000000000000000
              000000000000000000000000000000000000}
            Transparent = True
            OnClick = Min_ProcessClick
          end
          object Dot_Process: TImage
            Left = 18
            Top = 0
            Width = 18
            Height = 18
            Picture.Data = {
              07544269746D61704E010000424D4E0100000000000076000000280000001200
              0000120000000100040000000000D8000000120B0000120B0000100000000000
              0000FFFFFF00000000000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0001111000000000000000000011221100000000000000000112222110000000
              0000000001222222100000000000000001222222100000000000000001122221
              1000000000000000001122110000000000000000000111100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Transparent = True
            Visible = False
          end
          object DBGridEh6: TDBGridEh
            Left = 0
            Top = 18
            Width = 279
            Height = 156
            Align = alClient
            DataSource = DS_Process
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnColEnter = DBGridEhColEnter
            OnDrawColumnCell = MatDBGridEhDrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'Indicator'
                Footers = <>
                Title.Caption = ' '
                Width = 11
              end
              item
                EditButtons = <>
                FieldName = 'Seq'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Zone'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'Material ID'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.Caption = 'Material Name'
                Width = 100
              end
              item
                ButtonStyle = cbsEllipsis
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ArrivalDate'
                Footers = <>
                Title.Caption = 'Arrival Date'
                Width = 65
                OnEditButtonClick = DBGridEh6Columns6EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'DayDiff'
                Footers = <>
                Title.Caption = 'Lead Days'
                Width = 55
              end
              item
                DisplayFormat = '###,##0.0'
                EditButtons = <>
                FieldName = 'Usage'
                Footers = <>
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Unit'
                Footers = <>
                Width = 30
              end>
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 68
        Width = 1531
        Height = 385
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object StringGrid1: TStringGrid
          Left = 0
          Top = 0
          Width = 1531
          Height = 385
          Hint = 'Double-click on the cell to get detailed information.'
          Align = alClient
          Color = clBtnFace
          ColCount = 2
          Ctl3D = False
          DefaultColWidth = 170
          DefaultRowHeight = 16
          DefaultDrawing = False
          RowCount = 4
          FixedRows = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Unicode MS'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnDrawCell = StringGrid1DrawCell
          OnExit = StringGrid1Exit
          OnKeyDown = StringGrid1KeyDown
          OnMouseMove = StringGrid1MouseMove
          OnMouseWheelDown = StringGrid1MouseWheelDown
          OnMouseWheelUp = StringGrid1MouseWheelUp
          OnSelectCell = StringGrid1SelectCell
          ColWidths = (
            170
            170)
        end
        object ImageBox: TPanel
          Left = 1300
          Top = 255
          Width = 220
          Height = 120
          BevelOuter = bvNone
          BorderWidth = 1
          Color = clBlack
          TabOrder = 1
          Visible = False
          object ShoeImage: TImage
            Left = 21
            Top = 1
            Width = 178
            Height = 118
            Cursor = crSizeNWSE
            Align = alClient
            Proportional = True
            Stretch = True
            OnClick = ShoeImageClick
          end
          object LB_Left: TLabel
            Left = 1
            Top = 1
            Width = 20
            Height = 118
            Cursor = crHandPoint
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = '<'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            OnClick = LB_LeftClick
          end
          object LB_Right: TLabel
            Left = 199
            Top = 1
            Width = 20
            Height = 118
            Cursor = crHandPoint
            Align = alRight
            Alignment = taCenter
            AutoSize = False
            Caption = '>'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            OnClick = LB_RightClick
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1531
        Height = 68
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label19: TLabel
          Left = 23
          Top = 10
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
        object Label22: TLabel
          Left = 158
          Top = 10
          Width = 48
          Height = 16
          Alignment = taRightJustify
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 337
          Top = 10
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
        object Label1: TLabel
          Left = 878
          Top = 10
          Width = 58
          Height = 16
          Caption = 'Cell Color'
        end
        object IMG_DOT: TImage
          Left = 0
          Top = 0
          Width = 15
          Height = 15
          AutoSize = True
          Picture.Data = {
            07544269746D6170EE000000424DEE0000000000000076000000280000000F00
            00000F000000010004000000000078000000120B0000120B0000100000000000
            0000C0C0C000C4C4C400C2C2C200F0F0F0000000FF000303FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000033333333333333000333333344443300003333344444430000133334444
            4430000013334444443000000133444454300000002334444330000000023333
            3330000000002333333000000000013333301000000000133330000000000001
            3330020000000000033000200000000000300000100000000000}
          Visible = False
        end
        object Label11: TLabel
          Left = 854
          Top = 42
          Width = 82
          Height = 16
          Caption = 'Column Width'
        end
        object GB1: TGroupBox
          Left = 21
          Top = 30
          Width = 792
          Height = 33
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          object Label2: TLabel
            Left = 7
            Top = 11
            Width = 66
            Height = 16
            Caption = 'Lead Days'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Shape1: TShape
            Left = 120
            Top = 12
            Width = 15
            Height = 15
          end
          object Label3: TLabel
            Left = 138
            Top = 13
            Width = 54
            Height = 13
            Caption = '>= 21 Days'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape2: TShape
            Left = 210
            Top = 12
            Width = 15
            Height = 15
            Brush.Color = 11184895
          end
          object Label4: TLabel
            Left = 228
            Top = 13
            Width = 60
            Height = 13
            Caption = '11 - 20 Days'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape3: TShape
            Left = 300
            Top = 12
            Width = 15
            Height = 15
            Brush.Color = clRed
          end
          object Label5: TLabel
            Left = 318
            Top = 13
            Width = 54
            Height = 13
            Caption = '<= 10 Days'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 379
            Top = 11
            Width = 265
            Height = 16
            Caption = '|  Show red mark when the status update after'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object ED_Days: TEdit
            Left = 77
            Top = 9
            Width = 28
            Height = 21
            AutoSize = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '21'
            OnExit = ED_DaysExit
          end
          object DTP2: TDateTimePicker
            Left = 648
            Top = 9
            Width = 86
            Height = 21
            Date = 45710.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 45710.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = DTP2Change
          end
          object DTP3: TDateTimePicker
            Left = 733
            Top = 9
            Width = 55
            Height = 21
            Date = 45710.000000000000000000
            Format = 'HH:mm'
            Time = 45710.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Kind = dtkTime
            ParentFont = False
            TabOrder = 2
            OnChange = DTP3Change
          end
        end
        object DTP1: TDateTimePicker
          Left = 63
          Top = 6
          Width = 74
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          DateMode = dmUpDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DTP1Change
        end
        object CB_Building: TComboBox
          Left = 211
          Top = 6
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
          OnChange = CB_BuildingChange
        end
        object CB_Lean: TComboBox
          Left = 372
          Top = 6
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
          Left = 508
          Top = 5
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
        object Button2: TButton
          Left = 583
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Clear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button2Click
        end
        object CB_Mode: TComboBox
          Left = 941
          Top = 6
          Width = 164
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 3
          TabOrder = 5
          Text = 'MATERIAL STATUS'
          OnChange = CB_ModeChange
          Items.Strings = (
            'NONE'
            'CUTTING DIE'
            'SKU'
            'MATERIAL STATUS')
        end
        object Button3: TButton
          Left = 664
          Top = 5
          Width = 193
          Height = 25
          Caption = 'Update Material Arrival Status'
          TabOrder = 6
          OnClick = Button3Click
        end
        object CB_Width: TComboBox
          Left = 941
          Top = 38
          Width = 108
          Height = 24
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 8
          Text = 'FIT SCREEN'
          Items.Strings = (
            'FIT SCREEN')
        end
        object Button6: TButton
          Left = 1048
          Top = 37
          Width = 57
          Height = 24
          Caption = 'Refresh'
          TabOrder = 9
          OnClick = Button6Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Shipping Plan'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1531
        Height = 49
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 15
          Top = 17
          Width = 32
          Height = 16
          Caption = 'As Of'
        end
        object DTP4: TDateTimePicker
          Left = 52
          Top = 13
          Width = 96
          Height = 24
          Date = 45761.360185416670000000
          Format = 'yyyy/MM/dd'
          Time = 45761.360185416670000000
          TabOrder = 1
        end
        object Button4: TButton
          Left = 178
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 253
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button5Click
        end
        object CB_Short: TCheckBox
          Left = 354
          Top = 16
          Width = 145
          Height = 17
          Caption = 'Only show short RYs'
          TabOrder = 3
          OnClick = CB_ShortClick
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 49
        Width = 1531
        Height = 611
        Align = alClient
        DataSource = DS_Shortage
        EvenRowColor = clWindow
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnColumnMoved = DBGridEh5ColumnMoved
        OnColWidthsChanged = DBGridEh5ColWidthsChanged
        OnDrawColumnCell = DBGridEh5DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Building'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26847#21029'|Building'
            Title.TitleButton = True
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'Lean'
            Footers = <>
            Title.Caption = #32218#21029'|Lean'
            Title.TitleButton = True
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            Title.Caption = #25490#31243#26085#26399'|Plan Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = #22411#39636'|Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = #22411#34399'|SKU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            Title.Caption = #22283#23478'|Country'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'BuyNo'
            Footers = <>
            Title.Caption = 'BUY '#21029'|BUY'
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|RY'
            Width = 100
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Caption = #21407#22987#20132#26399'|GAC'
            Width = 80
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'SPDate'
            Footers = <>
            Title.Caption = #35037#27331#26085#26399'|Estimate'
            Width = 80
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'SBDate'
            Footers = <>
            Title.Caption = #35037#27331#26085#26399'|Actual'
            Width = 80
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'Shortage'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25104#21697#20489#27424#25976'|Shortage'
            Width = 70
          end>
      end
      object Filter_Building: TBitBtn
        Left = 103
        Top = 77
        Width = 26
        Height = 25
        Cancel = True
        TabOrder = 2
        OnClick = Filter_BuildingClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B000000010000000000005C5C5C000A0A
          0A00010101007B7B7B000C0C0C001F1F1F006060600062626200616161001414
          1400323232002C2C2C0016161600BCBCBC00F0F0F000B6B6B600080808004040
          4000C1C1C1003131310015151500C4C4C400ABABAB001D1D1D0038383800D1D1
          D100BDBDBD0028282800DDDDDD00CCCCCC0024242400D6D6D600EDEDED00ADAD
          AD003F3F3F00CECECE002E2E2E00A6A6A60082828200020202006C6C6C00E7E7
          E700EEEEEE005252520093939300858585000D0D0D0058585800555555000707
          07009797970003030300E5E5E500C2C2C2000E0E0E006B6B6B007E7E7E000000
          0000D3D3D300B8B8B800040404009595950080808000D2D2D200969696004444
          44001B1B1B00BABABA00888888001E1E1E0048484800B2B2B200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E0E0E0E44
          274546470E0E0E0E0E0E0E0E0E0E0E3E02414202430E0E0E0E0E0E0E0E0E0E3E
          023F3B3C400E0E0E0E0E0E0E0E0E0E3E023F3B3C400E0E0E0E0E0E0E0E0E0E3E
          023F3B3C400E0E0E0E0E0E0E0E0E0E3E023F3B3C400E0E0E0E0E0E0E0E0E0E38
          393A3B3C3D0E0E0E0E0E0E0E0E0E203033343536370E0E0E0E0E0E0E0E0E2D2E
          2F0E293031322A0E0E0E0E0E0E262728290E0E2A2B102C0E0E0E0E20210C2219
          0E0E0E0E23241B250E0E0E1A141B1C0E0E0E0E0E0E1D1E091F0E121314150E0E
          0E0E0E0E0E0E161718190B0C0D0E0E0E0E0E0E0E0E0E0E0F1011040506070707
          0707070707070708090A00010202020202020202020202020103}
      end
      object Filter_Lean: TBitBtn
        Left = 204
        Top = 77
        Width = 26
        Height = 25
        Cancel = True
        TabOrder = 3
        OnClick = Filter_LeanClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B000000010000000000005C5C5C000A0A
          0A00010101007B7B7B000C0C0C001F1F1F006060600062626200616161001414
          1400323232002C2C2C0016161600BCBCBC00F0F0F000B6B6B600080808004040
          4000C1C1C1003131310015151500C4C4C400ABABAB001D1D1D0038383800D1D1
          D100BDBDBD0028282800DDDDDD00CCCCCC0024242400D6D6D600EDEDED00ADAD
          AD003F3F3F00CECECE002E2E2E00A6A6A60082828200020202006C6C6C00E7E7
          E700EEEEEE005252520093939300858585000D0D0D0058585800555555000707
          07009797970003030300E5E5E500C2C2C2000E0E0E006B6B6B007E7E7E000000
          0000D3D3D300B8B8B800040404009595950080808000D2D2D200969696004444
          44001B1B1B00BABABA00888888001E1E1E0048484800B2B2B200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E0E0E0E44
          274546470E0E0E0E0E0E0E0E0E0E0E3E02414202430E0E0E0E0E0E0E0E0E0E3E
          023F3B3C400E0E0E0E0E0E0E0E0E0E3E023F3B3C400E0E0E0E0E0E0E0E0E0E3E
          023F3B3C400E0E0E0E0E0E0E0E0E0E3E023F3B3C400E0E0E0E0E0E0E0E0E0E38
          393A3B3C3D0E0E0E0E0E0E0E0E0E203033343536370E0E0E0E0E0E0E0E0E2D2E
          2F0E293031322A0E0E0E0E0E0E262728290E0E2A2B102C0E0E0E0E20210C2219
          0E0E0E0E23241B250E0E0E1A141B1C0E0E0E0E0E0E1D1E091F0E121314150E0E
          0E0E0E0E0E0E161718190B0C0D0E0E0E0E0E0E0E0E0E0E0F1011040506070707
          0707070707070708090A00010202020202020202020202020103}
      end
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 24
    Top = 202
  end
  object Q_Cutting: TQuery
    AfterOpen = Q_CuttingAfterOpen
    AfterScroll = Q_CuttingAfterScroll
    DatabaseName = 'DB'
    Left = 349
    Top = 606
    object Q_Cuttingschedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Q_CuttingARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_CuttingDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Q_CuttingCLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Q_CuttingYWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Q_CuttingArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Q_CuttingDayDiff: TIntegerField
      FieldName = 'DayDiff'
    end
    object Q_CuttingUsage: TFloatField
      FieldName = 'Usage'
    end
    object Q_CuttingUnit: TStringField
      FieldName = 'Unit'
      Size = 4
    end
    object Q_CuttingSupplier: TStringField
      FieldName = 'Supplier'
      Size = 50
    end
    object Q_CuttingSupID: TStringField
      FieldName = 'SupID'
      Size = 6
    end
    object Q_CuttingUpdateTime: TDateTimeField
      FieldName = 'UpdateTime'
    end
    object Q_CuttingIndicator: TStringField
      FieldName = 'Indicator'
      Size = 1
    end
    object Q_CuttingSeq: TIntegerField
      FieldName = 'Seq'
    end
    object Q_CuttingCQDH: TStringField
      FieldName = 'CQDH'
      Size = 4
    end
    object Q_CuttingMatStatus: TDateTimeField
      FieldName = 'MatStatus'
    end
  end
  object DS_Cutting: TDataSource
    DataSet = Q_Cutting
    Left = 349
    Top = 574
  end
  object DS_Stitching: TDataSource
    DataSet = Q_Stitching
    Left = 655
    Top = 574
  end
  object Q_Stitching: TQuery
    AfterOpen = Q_StitchingAfterOpen
    AfterScroll = Q_StitchingAfterScroll
    DatabaseName = 'DB'
    Left = 655
    Top = 606
    object DateTimeField1: TDateTimeField
      FieldName = 'schedule_date'
    end
    object StringField1: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField2: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object IntegerField1: TIntegerField
      FieldName = 'DayDiff'
    end
    object FloatField1: TFloatField
      FieldName = 'Usage'
    end
    object StringField5: TStringField
      FieldName = 'Unit'
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'Supplier'
      Size = 50
    end
    object Q_StitchingSupID: TStringField
      FieldName = 'SupID'
      Size = 6
    end
    object Q_StitchingUpdateTime: TDateTimeField
      FieldName = 'UpdateTime'
    end
    object Q_StitchingIndicator: TStringField
      FieldName = 'Indicator'
      Size = 1
    end
    object Q_StitchingSeq: TIntegerField
      FieldName = 'Seq'
    end
    object Q_StitchingCQDH: TStringField
      FieldName = 'CQDH'
      Size = 4
    end
    object Q_StitchingMatStatus: TDateTimeField
      FieldName = 'MatStatus'
    end
  end
  object DS_Assembly: TDataSource
    DataSet = Q_Assembly
    Left = 962
    Top = 574
  end
  object Q_Assembly: TQuery
    AfterOpen = Q_AssemblyAfterOpen
    AfterScroll = Q_AssemblyAfterScroll
    DatabaseName = 'DB'
    Left = 962
    Top = 606
    object DateTimeField3: TDateTimeField
      FieldName = 'schedule_date'
    end
    object StringField7: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField8: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object IntegerField2: TIntegerField
      FieldName = 'DayDiff'
    end
    object FloatField2: TFloatField
      FieldName = 'Usage'
    end
    object StringField11: TStringField
      FieldName = 'Unit'
      Size = 4
    end
    object StringField12: TStringField
      FieldName = 'Supplier'
      Size = 50
    end
    object Q_AssemblySupID: TStringField
      FieldName = 'SupID'
      Size = 6
    end
    object Q_AssemblyUpdateTime: TDateTimeField
      FieldName = 'UpdateTime'
    end
    object Q_AssemblyIndicator: TStringField
      FieldName = 'Indicator'
      Size = 1
    end
    object Q_AssemblySeq: TIntegerField
      FieldName = 'Seq'
    end
    object Q_AssemblyCQDH: TStringField
      FieldName = 'CQDH'
      Size = 4
    end
    object Q_AssemblyMatStatus: TDateTimeField
      FieldName = 'MatStatus'
    end
  end
  object DS_Bottom: TDataSource
    DataSet = Q_Bottom
    Left = 1270
    Top = 574
  end
  object Q_Bottom: TQuery
    AfterOpen = Q_BottomAfterOpen
    AfterScroll = Q_BottomAfterScroll
    DatabaseName = 'DB'
    Left = 1270
    Top = 606
    object DateTimeField5: TDateTimeField
      FieldName = 'schedule_date'
    end
    object StringField13: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField14: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object StringField15: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object IntegerField3: TIntegerField
      FieldName = 'DayDiff'
    end
    object FloatField3: TFloatField
      FieldName = 'Usage'
    end
    object StringField17: TStringField
      FieldName = 'Unit'
      Size = 4
    end
    object StringField18: TStringField
      FieldName = 'Supplier'
      Size = 50
    end
    object Q_BottomSupID: TStringField
      FieldName = 'SupID'
      Size = 6
    end
    object Q_BottomUpdateTime: TDateTimeField
      FieldName = 'UpdateTime'
    end
    object Q_BottomIndicator: TStringField
      FieldName = 'Indicator'
      Size = 1
    end
    object Q_BottomSeq: TIntegerField
      FieldName = 'Seq'
    end
    object Q_BottomCQDH: TStringField
      FieldName = 'CQDH'
      Size = 4
    end
    object Q_BottomMatStatus: TDateTimeField
      FieldName = 'MatStatus'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 234
    object ShowMaterial: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Load detailed material information'
      Checked = True
      OnClick = ShowMaterialClick
    end
    object ShowImage: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Load shoe image'
      Checked = True
      OnClick = ShowImageClick
    end
    object ShowGreen: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Show green when the material has arrived at the warehouse'
      Checked = True
      OnClick = ShowGreenClick
    end
    object PopSplitter1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 
        '----------------------------------------------------------------' +
        '---'
      Enabled = False
    end
    object ExporttoExcel1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Export to Excel'
      OnClick = ExporttoExcel1Click
    end
  end
  object Q_Shortage: TQuery
    DatabaseName = 'DB'
    OnFilterRecord = Q_ShortageFilterRecord
    Left = 56
    Top = 202
    object Q_ShortageBuilding: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object Q_ShortageLean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_ShortagePlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Q_ShortageDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_ShortageARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_ShortageDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Q_ShortageShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Q_ShortageSPDate: TDateTimeField
      FieldName = 'SPDate'
    end
    object Q_ShortageShortage: TIntegerField
      FieldName = 'Shortage'
    end
    object Q_ShortagePairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_ShortageCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
    object Q_ShortageSBDate: TDateTimeField
      FieldName = 'SBDate'
    end
    object Q_ShortageBuyNo: TStringField
      FieldName = 'BuyNo'
      Size = 10
    end
  end
  object DS_Shortage: TDataSource
    DataSet = Q_Shortage
    Left = 56
    Top = 171
  end
  object DS_Process: TDataSource
    DataSet = Q_Process
    Left = 42
    Top = 574
  end
  object Q_Process: TQuery
    AfterOpen = Q_CuttingAfterOpen
    AfterScroll = Q_CuttingAfterScroll
    DatabaseName = 'DB'
    Left = 42
    Top = 606
    object DateTimeField7: TDateTimeField
      FieldName = 'schedule_date'
    end
    object StringField19: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField20: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object StringField21: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object StringField22: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object IntegerField4: TIntegerField
      FieldName = 'DayDiff'
    end
    object FloatField4: TFloatField
      FieldName = 'Usage'
    end
    object StringField23: TStringField
      FieldName = 'Unit'
      Size = 4
    end
    object StringField24: TStringField
      FieldName = 'Supplier'
      Size = 50
    end
    object StringField25: TStringField
      FieldName = 'SupID'
      Size = 6
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'UpdateTime'
    end
    object StringField26: TStringField
      FieldName = 'Indicator'
      Size = 1
    end
    object IntegerField5: TIntegerField
      FieldName = 'Seq'
    end
    object StringField27: TStringField
      FieldName = 'CQDH'
      Size = 4
    end
    object Q_ProcessMatStatus: TDateTimeField
      FieldName = 'MatStatus'
    end
  end
end
