object F_PreArrange: TF_PreArrange
  Left = 224
  Top = 218
  Width = 1463
  Height = 748
  Caption = 'F_PreArrange'
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1447
    Height = 709
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object Splitter5: TSplitter
      Left = 1
      Top = 276
      Width = 1445
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 279
      Width = 1445
      Height = 429
      ActivePage = TabSheet2
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'SCHEDULE'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1437
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label6: TLabel
            Left = 297
            Top = 14
            Width = 35
            Height = 17
            Alignment = taRightJustify
            Caption = '100%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
          end
          object ComboBox3: TComboBox
            Left = 8
            Top = 8
            Width = 161
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 0
            Text = 'ComboBox3'
            OnChange = ComboBox3Change
          end
          object Button2: TButton
            Left = 184
            Top = 8
            Width = 99
            Height = 28
            Caption = 'EXCEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Edit1: TEdit
            Left = 1192
            Top = 8
            Width = 65
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'DepNo'
            Visible = False
          end
          object Edit2: TEdit
            Left = 1256
            Top = 8
            Width = 65
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = 'GXLB'
            Visible = False
          end
          object EditC: TEdit
            Left = 848
            Top = 8
            Width = 89
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'DepID_C'
            Visible = False
          end
          object EditS: TEdit
            Left = 936
            Top = 8
            Width = 89
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'DepID_S'
            Visible = False
          end
          object EditA: TEdit
            Left = 1024
            Top = 8
            Width = 89
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = 'DepID_A'
            Visible = False
          end
          object TrackBar1: TTrackBar
            Left = 345
            Top = 14
            Width = 150
            Height = 17
            Ctl3D = True
            Max = 200
            ParentCtl3D = False
            Position = 100
            TabOrder = 7
            ThumbLength = 15
            TickStyle = tsNone
            OnChange = TrackBar1Change
          end
          object Button15: TButton
            Left = 335
            Top = 14
            Width = 17
            Height = 17
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = Button15Click
          end
          object Button14: TButton
            Left = 488
            Top = 14
            Width = 17
            Height = 17
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = Button14Click
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 41
          Width = 1437
          Height = 358
          Align = alClient
          TabOrder = 1
          object Splitter3: TSplitter
            Left = 1292
            Top = 1
            Height = 356
            Align = alRight
          end
          object StringGrid2: TStringGrid
            Left = 1295
            Top = 1
            Width = 141
            Height = 356
            Align = alRight
            ColCount = 2
            DefaultColWidth = 90
            DefaultRowHeight = 32
            FixedColor = clSkyBlue
            RowCount = 14
            FixedRows = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
            ParentFont = False
            TabOrder = 0
            OnDblClick = StringGrid2DblClick
            OnDrawCell = StringGrid2DrawCell
            OnMouseDown = StringGrid2MouseDown
            RowHeights = (
              32
              32
              32
              32
              32
              32
              32
              32
              32
              32
              32
              32
              32
              32)
          end
          object StringGrid1: TStringGrid
            Left = 1
            Top = 1
            Width = 1291
            Height = 356
            Align = alClient
            ColCount = 10
            Ctl3D = True
            DefaultColWidth = 70
            DefaultRowHeight = 40
            FixedColor = clSkyBlue
            RowCount = 12
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goThumbTracking]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = PopupMenu2
            TabOrder = 1
            OnDblClick = StringGrid1DblClick
            OnDragDrop = StringGrid1DragDrop
            OnDragOver = StringGrid1DragOver
            OnDrawCell = StringGrid1DrawCell
            OnEndDrag = StringGrid1EndDrag
            OnKeyDown = StringGrid1KeyDown
            OnKeyPress = StringGrid1KeyPress
            OnMouseDown = StringGrid1MouseDown
            OnMouseMove = StringGrid1MouseMove
            OnMouseUp = StringGrid1MouseUp
            OnSelectCell = StringGrid1SelectCell
            ColWidths = (
              70
              70
              70
              70
              70
              70
              70
              70
              70
              70)
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'DETAIL'
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 1439
          Height = 411
          Align = alClient
          DataSource = DataSource2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          FooterColor = 16774636
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = #24494#36575#27491#40657#39636
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = #24494#36575#27491#40657#39636
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DDBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'DAOMH'
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'XTMH'
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'DepName'
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'RPlanDate'
              Footers = <>
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'ROrder'
              Footers = <>
              Width = 50
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'BUYNO'
        ImageIndex = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1437
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 16
            Top = 10
            Width = 41
            Height = 20
            Caption = 'YSBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label5: TLabel
            Left = 170
            Top = 8
            Width = 48
            Height = 20
            Caption = 'Article'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Edit4: TEdit
            Left = 64
            Top = 8
            Width = 97
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = Edit4KeyPress
          end
          object Button11: TButton
            Left = 387
            Top = 8
            Width = 86
            Height = 25
            Caption = 'UPDATE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button11Click
          end
          object Button12: TButton
            Left = 296
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button12Click
          end
          object Button13: TButton
            Left = 473
            Top = 8
            Width = 86
            Height = 25
            Caption = 'EXCEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button13Click
          end
          object Edit5: TEdit
            Left = 224
            Top = 8
            Width = 73
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = Edit5KeyPress
          end
        end
        object StringGrid3: TStringGrid
          Left = 0
          Top = 41
          Width = 1437
          Height = 336
          Align = alClient
          ColCount = 18
          DefaultRowHeight = 19
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goThumbTracking]
          TabOrder = 1
          OnDrawCell = StringGrid3DrawCell
          OnMouseDown = StringGrid3MouseDown
          OnSelectCell = StringGrid3SelectCell
          OnSetEditText = StringGrid3SetEditText
          OnTopLeftChanged = StringGrid3TopLeftChanged
        end
        object StringGrid4: TStringGrid
          Left = 0
          Top = 377
          Width = 1437
          Height = 22
          Align = alBottom
          Color = 16774636
          ColCount = 18
          Ctl3D = True
          DefaultRowHeight = 19
          Enabled = False
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          ScrollBars = ssNone
          TabOrder = 2
        end
        object Button6: TButton
          Left = 767
          Top = 64
          Width = 15
          Height = 18
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = Button6Click
        end
        object Button10: TButton
          Left = 1027
          Top = 63
          Width = 15
          Height = 19
          Caption = #9660
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnClick = Button10Click
        end
        object Button7: TButton
          Left = 832
          Top = 63
          Width = 15
          Height = 19
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 897
          Top = 63
          Width = 15
          Height = 19
          Caption = #9660
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 962
          Top = 63
          Width = 15
          Height = 19
          Caption = #9660
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = Button9Click
        end
        object MonthCalendar1: TMonthCalendar
          Left = 760
          Top = 165
          Width = 288
          Height = 188
          Align = alCustom
          BorderWidth = 1
          CalColors.BackColor = 14745324
          CalColors.MonthBackColor = 14745324
          Date = 43014.527489293980000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          ShowToday = False
          TabOrder = 8
          Visible = False
          OnClick = MonthCalendar1Click
        end
        object ListBox1: TListBox
          Left = 1060
          Top = 187
          Width = 52
          Height = 155
          Align = alCustom
          Color = 14745324
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ItemHeight = 15
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnClick = ListBox1Click
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1445
      Height = 275
      Align = alTop
      Color = clWindow
      TabOrder = 1
      object ScrollBox1: TScrollBox
        Left = 1
        Top = 1
        Width = 1443
        Height = 273
        Align = alClient
        TabOrder = 0
        OnClick = ScrollBox1Click
        object Panel5: TPanel
          Left = 0
          Top = 41
          Width = 1075
          Height = 228
          Align = alLeft
          Caption = 'Panel5'
          TabOrder = 0
          object Splitter2: TSplitter
            Left = 378
            Top = 1
            Height = 226
          end
          object Splitter1: TSplitter
            Left = 197
            Top = 1
            Height = 226
          end
          object DBGridEh1: TDBGridEh
            Left = 200
            Top = 1
            Width = 178
            Height = 226
            Align = alLeft
            DataSource = DataSource1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            FooterColor = 16774636
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #24494#36575#27491#40657#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = #24494#36575#27491#40657#39636
            TitleFont.Style = []
            VertScrollBar.VisibleMode = sbNeverShowEh
            OnCellClick = DBGridEh1CellClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'LEANNO'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Orders'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 50
              end>
          end
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 1
            Width = 196
            Height = 226
            Align = alLeft
            DataSource = DataSource4
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            FooterColor = 16774636
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #24494#36575#27491#40657#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = #24494#36575#27491#40657#39636
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'BUY'
                Footers = <>
                Title.Caption = 'BUYNO'
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Orders'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 50
              end>
          end
          object DBGridEh3: TDBGridEh
            Left = 381
            Top = 1
            Width = 693
            Height = 226
            Align = alClient
            DataSource = DataSource3
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            FooterColor = 16774636
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = #24494#36575#27491#40657#39636
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            PopupMenu = PopupMenu1
            ReadOnly = True
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = #24494#36575#27491#40657#39636
            TitleFont.Style = []
            OnCellClick = DBGridEh3CellClick
            OnColWidthsChanged = DBGridEh3ColWidthsChanged
            OnKeyPress = DBGridEh3KeyPress
            Columns = <
              item
                EditButtons = <>
                FieldName = 'YSBH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.TitleButton = True
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'GXLB'
                Footers = <>
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'XieXing'
                Footers = <>
                Title.TitleButton = True
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'SheHao'
                Footers = <>
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Title.TitleButton = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.TitleButton = True
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'ShipDate'
                Footers = <>
                Title.TitleButton = True
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                Title.TitleButton = True
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'XTMH'
                Footers = <>
                Title.TitleButton = True
                Width = 80
              end>
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1439
          Height = 41
          Align = alTop
          TabOrder = 1
          object Label1: TLabel
            Left = 128
            Top = 10
            Width = 51
            Height = 20
            Caption = 'Month'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label2: TLabel
            Left = 16
            Top = 10
            Width = 34
            Height = 20
            Caption = 'Year'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label3: TLabel
            Left = 392
            Top = 10
            Width = 41
            Height = 20
            Caption = 'YSBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object ComboBox1: TComboBox
            Left = 56
            Top = 7
            Width = 65
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 0
            Text = '2017'
            OnChange = ComboBox1Change
          end
          object ComboBox2: TComboBox
            Left = 184
            Top = 7
            Width = 49
            Height = 28
            DropDownCount = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 1
            Text = '7'
            OnChange = ComboBox2Change
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12')
          end
          object Button1: TButton
            Left = 240
            Top = 8
            Width = 121
            Height = 25
            Caption = 'Order Import'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button3: TButton
            Left = 955
            Top = 8
            Width = 82
            Height = 25
            Caption = 'EXCEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 536
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = Button4Click
          end
          object Edit3: TEdit
            Left = 440
            Top = 8
            Width = 97
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = Edit3KeyPress
          end
        end
      end
    end
  end
  object ScrollBox2: TScrollBox
    Left = 1104
    Top = 50
    Width = 152
    Height = 154
    BorderStyle = bsNone
    TabOrder = 1
    Visible = False
    object ImageLoad: TImage
      Left = 0
      Top = 0
      Width = 152
      Height = 154
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765BD420000FFD8FFE000104A46494600010101006000
        600000FFE110DC4578696600004D4D002A000000080004013B00020000000A00
        00084A8769000400000001000008549C9D000100000008000010CCEA1C000700
        00080C0000003E000000001CEA00000008000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000E5BCB5E5AEB6E699A8
        0000059003000200000014000010A29004000200000014000010B69291000200
        00000339360000929200020000000339360000EA1C00070000080C0000089600
        0000001CEA000000080000000000000000000000000000000000000000000000
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
        000000000000000000000000000000323031373A31313A32352030383A35393A
        343900323031373A31313A32352030383A35393A3439000000355FB65B686600
        00FFE10B1C687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
        2F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D30
        4D7043656869487A7265537A4E54637A6B633964273F3E0D0A3C783A786D706D
        65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F223E3C7264
        663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F
        72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E3C72
        64663A4465736372697074696F6E207264663A61626F75743D22757569643A66
        616635626464352D626133642D313164612D616433312D643333643735313832
        6631622220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64
        632F656C656D656E74732F312E312F222F3E3C7264663A446573637269707469
        6F6E207264663A61626F75743D22757569643A66616635626464352D62613364
        2D313164612D616433312D6433336437353138326631622220786D6C6E733A78
        6D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
        223E3C786D703A437265617465446174653E323031372D31312D32355430383A
        35393A34392E3935363C2F786D703A437265617465446174653E3C2F7264663A
        4465736372697074696F6E3E3C7264663A4465736372697074696F6E20726466
        3A61626F75743D22757569643A66616635626464352D626133642D313164612D
        616433312D6433336437353138326631622220786D6C6E733A64633D22687474
        703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E3C
        64633A63726561746F723E3C7264663A53657120786D6C6E733A7264663D2268
        7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
        73796E7461782D6E7323223E3C7264663A6C693EE5BCB5E5AEB6E699A83C2F72
        64663A6C693E3C2F7264663A5365713E0D0A0909093C2F64633A63726561746F
        723E3C2F7264663A4465736372697074696F6E3E3C2F7264663A5244463E3C2F
        783A786D706D6574613E0D0A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020203C3F787061636B657420656E643D2777273F3EFF
        DB00430007050506050407060506080707080A110B0A09090A150F100C111815
        1A19181518171B1E27211B1D251D1718222E222528292B2C2B1A202F332F2A32
        272A2B2AFFDB0043010708080A090A140B0B142A1C181C2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2AFFC00011080139013903012200021101031101FFC4001F
        0000010501010101010100000000000000000102030405060708090A0BFFC400
        B5100002010303020403050504040000017D0102030004110512213141061351
        6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
        2728292A3435363738393A434445464748494A535455565758595A6364656667
        68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
        A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
        E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
        010101010000000000000102030405060708090A0BFFC400B511000201020404
        0304070504040001027700010203110405213106124151076171132232810814
        4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
        3738393A434445464748494A535455565758595A636465666768696A73747576
        7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
        B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
        E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F43BABA95673
        CEE2DC92D9C939A87EDB2FFB3FAD17BFEBFF000FEB55EBD7A3469CA9A6D1E755
        AB3536932C7DB65FF67F5A3EDB2FFB3FAD57A2B5F614BF94CFDB54EE58FB6CBF
        ECFEB47DB65FF67F5AAF451EC297F287B6A9DCB1F6D97FD9FD68FB6CBFECFEB5
        5E8A3D852FE50F6D53B963EDB2FF00B3FAD1F6D97FD9FD6ABD147B0A5FCA1EDA
        A772C7DB65FF0067F5A3EDB2FF00B3FAD57A28F614BF943DB54EE58FB6CBFECF
        EB47DB65FF0067F5AAF451EC297F287B6A9DCB1F6D97FD9FD68FB6CBFECFEB55
        E8A3D852FE50F6D53B963EDB2FFB3FAD1F6D97FD9FD6ABD147B0A5FCA1EDAA77
        2C7DB65FF67F5A3EDB2FFB3FAD57A28F614BF943DB54EE58FB6CBFECFEB47DB6
        5FF67F5AAF451EC297F287B6A9DCB1F6D97FD9FD68FB6CBFECFEB55E8A3D852F
        E50F6D53B963EDB2FF00B3FAD1F6D97FD9FD6ABD147B0A5FCA1EDAA772C7DB65
        FF0067F5A3EDB2FF00B3FAD57A28F614BF943DB54EE58FB6CBFECFEB47DB65FF
        0067F5AAF451EC297F287B6A9DCB1F6D97FD9FD68FB6CBFECFEB55E8A3D852FE
        50F6D53B963EDB2FFB3FAD1F6D97FD9FD6ABD147B0A5FCA1EDAA772C7DB65FF6
        7F5A3EDB2FFB3FAD57A28F614BF943DB54EE58FB6CBFECFEB47DB65FF67F5AAF
        451EC297F287B6A9DCBD6B752B4E39DA579057390735E91B8FA9FCEBCC6CBFD7
        FE1FD6BD36BCCC4C631A9689DD424E50BB3CCAF7FD7FE1FD6ABD58BDFF005FF8
        7F5AAF5E9D0FE144E1ADFC461451456C64145145001451450014514500145145
        0014514500145145001451450014514500145145001451450014514500145145
        00145145001451450014514500145145001451450058B2FF005FF87F5AF4DAF3
        2B2FF5FF0087F5AF4DAF2317FC53D2C3FF000CF32BDFF5FF0087F5AAF562F7FD
        7FE1FD6ABD7A343F85138AB7F118514515B19051451400514514005145140051
        45140051451400514514005145140051593E25D464D2F419EE20E25E110FF749
        3D6BCB7ED973F6AFB4F9F279F9CF99B8EECFD6AE31B92E563DA28ACAF0DEA326
        A9A141713F32F28E7D4838CD6AD4EC30A28A290C28A28A0028A28A0028A28A00
        28A28A0028A28A0028A28A0028A28A00B165FEBFF0FEB5E9B5E6565FEBFF000F
        EB5E9B5E462FF8A7A587FE19E657BFEBFF000FEB55EAC5EFFAFF00C3FAD57AF4
        687F0A27156FE230A28A2B6320A28A2800A28A2800A28A2800A28A2800A42400
        49E00EB4B48CA194A9E8460D0079EEA9E38BE92F5C69C521811B0A4AE4B7B9CD
        745E16F121D6E278AE42A5D443276F475F515C0EB5A63E93AACB6AFF00741CA3
        7F794F4351E97A84BA5EA515DC3D636E47F787715B38A6B432E669EA7B1D150D
        ADCC7796B1DC40DBA3914329A9AB13539DF1BFFC8B127FD744FE75E675E99E37
        FF0091624FFAE89FCEBCCEB686C652DCF4CF03FF00C8B11FFD747FE75D1573BE
        07FF0091623FFAE8FF00CEBA2ACE5B9A2D82B9EF14F890E8912436C15EEA5191
        BBA20F535B77573159DAC9713B6D8E352CC6BC8B54D425D53529AEE6EB23703F
        BA3B0A718DD8A4EC741A5F8E2FE3BD45D44A4D03B6188500AFB8C57A10208047
        20F4AF21D174C7D5B558AD53EE93B9DBFBAA3A9AF5E550AA147403029CD24F41
        46E2D14515996145145001451450014514500145145001451450058B2FF5FF00
        87F5AF4DAF32B2FF005FF87F5AF4DAF2317FC53D2C3FF0CF32BDFF005FF87F5A
        AF562F7FD7FE1FD6ABD7A343F85138AB7F118514515B19051451400514514005
        14514005151CF3C56B034D7122C71A0CB331C015996BE27D22F2E3C986F177E7
        03782A0FD09A766235E8A28A4339CF1968DFDA5A5FDA215CDC5B02C31D597B8F
        EB5E695EDB5E5DE2BD1BFB27566312E2DE7CBC7EDEA3F0AD60FA19C975363C09
        ACEC91B4B9DB86CBC24FAF75FEB5DD578A413496F3A4D0B1592360CA47622BD7
        346D4D356D2A1BB4E0B0C3AFF7587514A6BA8E2FA199E37FF91624FF00AE89FC
        EBCCEBD4BC5F6D2DD786A75854B321572075C03CD796D5436265B9E99E07FF00
        91623FFAE8FF00CEBA2AC3F085B496BE1A816652ACE59C03D704F157759D4D34
        9D2A6BB7E4A8C22FF798F4159BD59A2D8E53C77ACEF9174B81B85C3CC47AF61F
        D6B8BA7CD349713BCD331692462CCC7B935B5E13D1BFB5B565695736F061E4F4
        3E82B65EEA32DD9D7783746FECDD2FED132E2E2E40639EAABD87F5AE8E9296B0
        6EECD568145159175E27D22CEE3C89AED77E707602C07D48A37035E8A8E09E2B
        A8166B791648D865594E41A9290C28A28A0028A28A0028A28A0028A28A00B165
        FEBFF0FEB5E9B5E6565FEBFF000FEB5E9B5E462FF8A7A587FE19E657BFEBFF00
        0FEB55EAC5EFFAFF00C3FAD57AF4687F0A27156FE230A28A2B6320A28A2800A2
        8A2800A28A280390F884D30D3ED4267C9321DF8F5C719FD6B80AF68BAB582F6D
        DA0BA8D6589C72AC2B88D67C092C5BA6D218CA9D4C2E7E61F43DEB58C95AC672
        4F733B46F17DF697B62989B9B71FC0E7951EC6BBCD2B5DB1D623CDA4BFBCC7CD
        1370C3F0AF2596292191A399191D4E0AB0C114472BC322C913B23A9C8653822A
        9C53129347B6565F883485D674992DF812AFCD131ECDFF00D7E95CB68BE3A961
        DB0EAEA654E82651F30FA8EF5DD452A4D12CB130747019587422B269C59774CF
        1D974FBC86E0C125B4AB2838DBB0E6BD27C27A64DA5E86B1DD0DB2C8E6464FEE
        E7B7E95B7819CE39A5A6E5740A3612B3FF00B074AFB4FDA3EC107999CE76F7F5
        C74AD1A2A4A12B13C59A64DAA686D1DA8DD2C6E2409FDEC678FAF35B9450B411
        E35169F7935C0823B695A5271B761CD7A8F87F485D1B498EDF832B7CD2B0EEDF
        E78AD3C0CE71CD365952085E595822202CCC7A01552936251B0FACDD575DB1D1
        E3CDDCBFBCC7CB12F2CDF85727AD78EA59B743A429893A19987CC7E83B572324
        AF348D24AECEEC72598E49A6A1DC4E5D8DDD67C5F7DAA6E8A13F66B73C6C43CB
        0F735814E8A292691638519DD8E02A8C935D7E8DE04965DB36AEC624EA2143F3
        1FA9ED5A691446ACBDF0F9A63A75D07CF92241B33EB8E71FA575F50DADAC1656
        EB05AC6B14483855A9AB06EEEE6AB44145145218514514005145140051451401
        62CBFD7FE1FD6BD36BCCACBFD7FE1FD6BD36BC8C5FF14F4B0FFC33CCAF7FD7FE
        1FD6ABD58BDFF5FF0087F5AAF5E8D0FE144E2ADFC461451456C6414514500145
        145001451450014514500676ABA158EB11E2EE21BF1F2CABC32FE35C16B3E10B
        ED2F74B003756E39DE83E651EE2BD3A8AA52689714CF120A5982A824938000EB
        5EB7E1FB596CF40B482E01122A7CC0F6CF38AB4B616693F9C96B0ACB9CEF1180
        7F3AB14E52B828D828A28A82828A28A0028A28A002B37C436B35E6817705B64C
        8C9C01FC5839C569514C4789152AC5581041C10474ADFD1BC1F7DA9ED96706D6
        DCF3B9C7CCC3D857A2B69F66F3F9EF6B0B4BD7798C67F3AB356E7D895133B4AD
        0EC7478F16910DE47CD2B72CDF8D68D145414145145218514514005145140051
        4514005145140162CBFD7FE1FD6BD36BCCACBFD7FE1FD6BD36BC8C5FF14F4B0F
        FC33CCAF7FD7FE1FD6ABD58BDFF5FF0087F5AAF5E8D0FE144E2ADFC461451456
        C6414514500145145001581E21F14C3A23AC09179F70C376DCE028F7ADFAF39F
        1C69B7116B6F7BB19A09D570C070A40031FA66AA2937A93276459FF858773FF3
        E117FDF668FF00858773FF003E117FDF66B8EA2B5E5467CCCEC7FE161DCFFCF8
        45FF007D9A55F8873EE1BEC23DBDF121AE368009381C9A39507333D8349D560D
        62C16EADB20670CA7AA9F4ABD5CCF81F4EB8B1D26492E54A1B870CA8DD4003AF
        E35D3562F466AB60A28A290C28A28A0028A28A0028A28A00A3AB6AB6FA3D835C
        DCE48CE1507563E95C8B7C439F71DB611E3B66435ADE38D3AE2FB498E4B652E6
        DDCB322F5208EBF8579B9041C11835AC629A3393699D8FFC2C3B9FF9F08BFEFB
        347FC2C3B9FF009F08BFEFB35C75155CA89E66763FF0B0EE7FE7C22FFBECD6F7
        87BC530EB72340F179170A376DCE430F6AF30AEA3C0FA6DC4BADA5EEC6582056
        CB11C31208C7EB9A528A48A4DDCF46A28A2B1340A28A2800A28A2800A28A2802
        C597FAFF00C3FAD7A6D799597FAFFC3FAD7A6D7918BFE29E961FF867995EFF00
        AFFC3FAD57AB17BFEBFF000FEB55EBD1A1FC289C55BF88C28A28AD8C828A28A0
        028A28A00291943A9560181EA08A5A28021FB25B7FCFBC5FF7C0A3EC96DFF3EF
        17FDF02A6A29810FD92DBFE7DE2FFBE0502D6DD5815823047421054D58FAC789
        6C34752B2BF9B3F6863393F8FA51AB11B1457011FC42BBFB4832D9C261CF2AA4
        EE03EB5DCDA5D457B6715CDB9DD1CAA194D3716B704D326A28A2A46145145001
        4514500145150DDDD4565672DCDC1DB1C4A598D004D509B5B7624B411927A928
        2B8693E215DFDA498ACE110E785627711F5AE9F47F12D86B002C4FE54FDE190E
        0FE1EB54E2D1374CD2FB25B7FCFBC5FF007C0A3EC96DFF003EF17FDF02A6A291
        443F64B6FF009F78BFEF8152AA8450AA0281D0014B45200A28A2800A28A2800A
        28A2800A28A2802C597FAFFC3FAD7A6D799597FAFF00C3FAD7A6D7918BFE29E9
        61FF00867995EFFAFF00C3FAD57AB17BFEBFF0FEB55EBD1A1FC289C55BF88C28
        A28AD8C828A28A0028A28A0028A28A002A9EA1AA59E97079B7B32C63B2FF0013
        7D077ACDF15EBB268BA7A7D980FB44CC5509190A07535E6973753DE4E66BA95E
        591BAB31CD5C63725CAC747ACF8DAEEF7743A7036B09E3767E76FC7B7E15CC16
        2CC4B1249EA4F7A002CC028249E8077AE9F46F04DDDEED9B5026D613CEDC7CED
        F876FC6B5D228CF567396D6B3DE4EB0DAC4D2C8DD15466BD6B45B16D3746B6B5
        90E5E34F988F53C9A7E9FA5D9E970795650AC63BB7566FA9AB32CA90C4D24AC1
        11016663D8565295CD231B0FA2B9097E20DA2DC958ED257881C6FDC013EF8AE9
        ECAF60D42CE3B9B57DF148320FA7B1A969A1DD32C51451486145155EFAF60D3A
        CE4B9BA7D9146324FAFB0F7A00B15435AB16D4B46B9B58CE1E44F973EA3915CF
        C5F106D1AE42CB692A444E37EE048F7C57591489344B244C1D1C06561DC5559A
        15D33C66E6D67B39DA1BA89A2917AAB0C54618AB02A4823A11DABD8751D2ECF5
        483CABD85641D9BA32FD0D70BACF826EECB74DA7937508E76E3E75FC3BFE15A2
        9A666E2D0BA378DAEECB6C3A8837508E3767E75FC7BD773A7EA967AA41E6D94C
        B20EE3BAFD476AF1E20AB10C0823A83DAA4B6BA9ECE7135ACAD148BD194E2870
        4C149A3DA68AC1F0A6B926B5A7BFDA40F3E160AE40C0607A1ADEAC9AB1A6E145
        14521851451400514514005145140162CBFD7FE1FD6BD36BCCACBFD7FE1FD6BD
        36BC8C5FF14F4B0FFC33CCAF7FD7FE1FD6ABD58BDFF5FF0087F5AAF5E8D0FE14
        4E2ADFC461451456C641451450014514500145145006278A3426D6F4F558582C
        F0B6E4DDD0FA8AE36D7C15ABCF71B26896DD01E6476047E0075AF4DA2A949A44
        B8A663E8FE19B0D1C068D3CD9FBCD20C9FC3D2B628A295EE30AE37C77ACF950A
        E99037CF20DD311D97B0FC6BA8D4AFE2D334F96EE73F2C6B903FBC7B0AF21BCB
        B96FAF25B99CEE92462C6AE0AEEE4C990D7A6F826D65B5F0EA99811E7399141E
        CA718FE59AE23C39A41D635748981F253E794FFB3E9F8D7ABAA8450AA0055180
        07614E6FA0A2BA95354D463D2B4D96EE604AC63851FC47B0AE0FFE13CD57ED3E
        66D83CBCFF00AAD9DBEBD6BA6F1BFF00C8B127FD744FE75E6744126824DDCF62
        D2F508F55D362BB8410B20E54FF09EE2B2BC6D6B2DD78758C209F25C48C07751
        9CFF003A4F03FF00C8B11FFD747FE75D0B28752AC32AC3041EF51B32F7478957
        79E04D67CD85B4C9DBE78C6E849EEBDC7E15CCF88F483A3EAEF0A83E4BFCF11F
        F67D3F0E959F67772D8DE457301C4913061FE15B35CC8C968CF68A2AAE9B7F16
        A7A7C57701F9645C91FDD3DC55AAE73631F58F0CD86B00B489E4CFDA68C60FE3
        EB5C55D782B5782E364312DC213C488C00FC41E95E9B45529344B8A662786342
        6D134F6599834F336E7DBD07A0ADBA28A4DDC7B0514514861451450014514500
        1451450058B2FF005FF87F5AF4DAF32B2FF5FF0087F5AF4DAF2317FC53D2C3FF
        000CF32BDFF5FF0087F5AAF562F7FD7FE1FD6ABD7A343F85138AB7F118514515
        B19051451400514514005145140051451400514535C131B05E1B071F5A00F3EF
        1C6B3F6BBE1A7C0D98ADCE5F1FC4FF00FD6AE50024E0726A5BA8E58AEE54B804
        4AAE43E7AE735D0F82F45FB7EA5F6C9D7305B1C8C8E19FB0FC3AFE55D1A4518E
        ECEB7C2DA3FF0064690A245C5C4DF3CBEDE83F0ADBA28AC1EA6A73BE37FF0091
        624FFAE89FCEBCCEBD33C6FF00F22C49FF005D13F9D799D6B0D8CE5B9E99E07F
        F91623FF00AE8FFCEBA2AE77C0FF00F22C47FF005D1FF9D74559CB7345B189E2
        9D1BFB5F48611AE6E21CBC5EFEA3F1AF2C208383C1AF6EAF37F1A68BF60D4BED
        70262DEE4E4E070AFDC7E3D7F3AB83E84C97525F03EB3F64BE3A7CED88AE0E50
        9FE17FFEBD7A1D78B5AC72CB77125B8265670131D739AF6740446A1B96C73F5A
        535A845E83A8A28ACCB0A28A2800A28A2800A28A2800A28A2800A28A2802C597
        FAFF00C3FAD7A6D799597FAFFC3FAD7A6D7918BFE29E961FF867995EFF00AFFC
        3FAD57AB17BFEBFF000FEB55EBD1A1FC289C55BF88C28A28AD8C828A28A0028A
        28A0028A28A0028A28A0028A28A00CFBDD0F4DD42612DDDA47249FDEE84FD71D
        6ADDBDBC36902C36D1AC51AF4551802A5A298828A28A4339EF1B827C312E0671
        2267F3AF32AF68BAB68AF2D64B7B84DF148BB585729FF0AF2DBED5BBEDD27919
        FF0057E58DD8FF007B3FD2B48C925A9128B6CD0F04023C311646332391F9D743
        50DB5B45676B1DBDBA6C8A35DAAA3B54D50F5652D82A2B8B686EE0686E625963
        6EAAC320D4B452199F65A1E9BA74C65B4B48E393FBDD48FA67A5685145310514
        51486145145001451450014514500145145001451450058B2FF5FF0087F5AF4D
        AF32B2FF005FF87F5AF4DAF2317FC53D2C3FF0CF32BDFF005FF87F5AAF562F7F
        D7FE1FD6ABD7A343F85138AB7F118514515B1905145140051451400514514005
        1451400514514005145140051451400514514005145140051451400514514005
        1451400514514005145140051451400514514005145140162CBFD7FE1FD6BD36
        BCCACBFD7FE1FD6BD36BC8C5FF0014F4B0FF00C33CCAF7FD7FE1FD6BAAB1F086
        9F73A75BDC4935C86962576C32E01201FEED72B7BFEBFF000FEB5DE37FC893FF
        006E03FF0045D6D294A34A1CAED732518BA92BA291F04E9ECBFBBB9B8CFA9653
        FD2B9DD6740B8D1CAB3B2CB0B9C2C8A31CFA11DBBD51B4BDB8B1B859AD646460
        73C1E0FB1F5AF44B854D63C3AC48004F06F19FE138C8FC8D54A552849733BA64
        C630AB17656679A515A7A043613EA0C3556558163246E7DA09C8EFF9D745FDA5
        E145F9443091EBF6627F98AE89D57176516CC634F995DB48E2A8AEE754F0EE9F
        7DA6B5D69A8B1C9B37C662E15C75C63A735CFF0087A5D2626B8FED908410BE5E
        E466F5CF41F4A235D4A0E496DD072A4E3249BDCD1F0FF86ACF50D3E3BCBA6958
        B330F2C1C2F071F5AE66E5163BA95106155C803DB35E9BA5BD93D82B699B45BE
        4EDDAA40CE79E0D62CB73E1413389562DE18EECC2E79EFDAB969D79F3CAE9BFD
        0DE7463CAACD2388A2ADEAAD6AFAA4CD618FB3923660103181D8D74762DE1AB2
        D3EDDEEBC992792352E083260E39E3902BB25539629D9EA73461CCDAB9C8D15D
        EDA0F0E6AECF05B5BC05F6E48116C38F63C5731E22D21748D402C2498255DC99
        EA3D47F9F5A8A75D4A5CAD59953A4E31E64EE8C9AB5A6D97F686A30DAF99E5F9
        848DDB738E33D2AAD6A786FF00E462B4FF0078FF00E826B69B6A0DA3382BC926
        4DAE787BFB1608A4FB579DE6315C797B71C7D4D62D769E38FF008F1B5FFAE87F
        957175961E729D34E45D68A8CEC828A58D1A591638C6E6621540EE4D767A7F83
        AD6183CDD564323E325036D54FC7A9AAA95634D7BC285394F638BA2BBB3E17D1
        6F6DC9B26C7A490CBBC7EA48AE3F53D3A6D2AF9ADA7C12065587465EC6953AF0
        A8ECB71CE94A0AECA94574FA368BA4C9A5457DAA4FB7CC2C36BC81178247D7B5
        6943A3786AF1CC56AD1BC98CE12724FF003A89626316D59E8546849ABDD1C351
        5B1E20D08E8D32189DA4825CED2C39523B1ED4CD0F42975998FCDE5C1191BDF1
        FA0F7AD7DAC3939EFA19FB397372F532ABB96D2EC47847ED1F648BCEFB107DFB
        06776CCE687D07C3B6588AEE4412633FBDB8DAC7DF1915A3A82451F862E12DC8
        30ADA91190720AEDE39EFC57155AEA6E3CB7DCEAA749C53E63CD6BA9F05C3652
        BCE67547B918D8AE01C2FA8FEBF8561E8F0DADC6AB0C57EE12DDB76F667DA07C
        A71CFD715D641E1CD02E988B6944C546488E70D8FCAB7C4548A8F23B9951836F
        991CFF008A63B58B5B61641141406409D03739FD3158D5ABE23D3E0D3354105A
        8609E586F98E79C9A8744B48AFB5982DAE0131C84EE00E3A293FD2B5A724A927
        E46734DD4B1428AED9FC1B666FC38768ED15012BBBE666C9CF3D8631531F0BE8
        B7B6A4D91C678596294B807F322B2FADD334FABCCE0E8A96EADA4B3BB92DE600
        3C6DB4E3A5751A57856D8582DE6AEE4065DFB376D083DCFAD6D3AB182BB328D3
        949D91C9515DCDBE87E1DBFC8B321CAF2C12624FEB599E21D2349D3AC9BECB26
        DBA565FDD9932707DAB28E2632972D9DCD254249735D18365FEBFF000FEB5E9B
        5E6565FEBFF0FEB5E9B5C38BFE29D787FE19E657BFEBFF000FEB5DE37FC893FF
        006E03FF0045D7077BFEBFF0FEB5E856B6FF006BF0B416E1B679B66A9BB19C65
        00CD69376A54D911D6A4CF35AF4AB0FF0046F0CC266F9365B02D9E31F2E6B2EC
        7C176F04E24BCB8370AA721026D07EBC9CD33C51AF42B68F6167207924F96464
        39083B8FAF6ABAB355E4A10269C5D24E5239CD1B469B59B968E2611A20CBC846
        76FA71DEBA46F0D6876385BEBB219871E6CA17F2151F81EE63F26E6D89025DC1
        C0F518C7E9FD69FAAF852E351D664B95B98D219704EE04B2F18E9DFA7A8A752A
        3755C652E5485082F66A495D9B9670DAC1A388EC1C3DBAAB6C60DBB3C9CF3F5C
        D79857A7DA5B4167A59B5B46DD1C2ACB927273D4FEA6BCC29E13790B13B44F42
        F097FC8BB0FF00BCFF00FA11AE0EF3FE3FA7FF00AE8DFCEBB4F065D24BA435BE
        46F8643C67B1E73F9E6A85E7832EA5BF92482E21F2A472DF36432E4F4C639FCE
        A69CE34EB4F99D8738B9D38F29CA5759A7F8315AD84DAA4ED11233B23C0DBF52
        73583716E349D6FCA91BCD16F229620637743D2BBDD56D3FB6745786DA651E68
        5647EAA79C8E9DAB4C4556B9795D93EA451A69DEEAED7428E9BA768306A31496
        1728F70B9D8A270D9E0E78FA66B37C75FEBECFFDD7FE62AEE89E1A5D26E52EEF
        A7469F3B63542768278FC4E2A978EBFD7D9FFBAFFCC5614DA75D59DCD677545D
        D58E52B53C37FF002315A7FBC7FF004135975A9E1BFF00918AD3FDE3FF00A09A
        F42A7C12F43929FC68E83C71FF001E36BFF5D0FF002AE2EBD0BC49A45C6AF6D0
        C76AD1A98DCB1DE48EDF4AE7BFE10AD4BFE7A5B7FDF67FC2B930D5611A693674
        56A7394EE915FC29089BC43096E91867C63AF1FF00D7AD7F1C5CC8B1DADB29C4
        6FB9980EF8C63F9D626933FF0063789145C3002391A2948E9E84FD33CD75BE22
        D14EB36B135BBA89A23942C78607A8FE54AAB51AF194B60A69BA2E2B7397F09D
        C490F88228D1B09306571EBC123F956B78E61063B39BB82C87DFA1FE9FAD49E1
        EF0C4FA7EA02EEF9A3CA2911AA12793C64FE1FCEB37C63A84777A8C76F090C2D
        810CC0FF0011EA3F0C0A2EA7884E1D1059C2835220D27C2F77A9C227775B785B
        EEB30C96F703D2B76CBC230595E413ADEC86489C360003763B7D0D6AED373E1F
        0BA7304325BE216076EDF978FA5737A3F85EF53508EEF52221585C498DE19988
        39ED918ACDD694D49B95BC8BF67185AD1BF9977C6FFF0020CB7FFAEDFF00B29A
        BFE19816DBC3B015032E0C8C40C6493FE181F8550F1BFF00C832DFFEBB7FECA6
        ACF846ED2E7435837664818AB0279C1391F8738FC2A1A7F565EA5AB7B77E8709
        737125D5CC93CC773C8C598D7A037FC893FF006E03FF0045D612782AE4EA0564
        9505AEE3F383962BF4C75AE93518E387C3775141FEAE3B664519CE005C7F4AD6
        BD4849C544CE9425152723CD2BA9F037FC7E5DFF00D731FCEB034ED3A7D52E4C
        16A14B852C771C71FE4D75FE18D12F34AB89DEEC201220036B67BD6F899C7D9B
        8DF532A11973A76D0C5F19FF00C8787FD715FE66AAF863FE464B4FAB7FE826B7
        7C47E1FBED4F5413DA88CA79617E66C73CD646856D259F8BA0B79C01246EC180
        39FE135309C5D0B27AD8728B55AED75367C6B793436F6F6D136D8E6DC5F1D4E3
        1C7D39A8BC0AC76DF2E4E018C819E9F7BFC299E3AFBF63F47FFD969DE04FF97F
        FF00B67FFB356565F54FEBB9A5DFD63FAEC63789FF00E464BBFAAFFE822BAFD4
        A23ADF8608D3CAB99555906719C1E47D78C7D6B92F11853E28B8121213726E23
        B0DA2BB4BE82E9B4C893439A381931B720152B8E9D0FB7E5455768D37D429ABC
        A661F85B43BFB1D49EE2F22F250465402C096248F4FA56678BAE22B8D7488583
        795188D88FEF02723F5AD9BBB7F154D09513C2A30722160A4FE247F5AE46EEC6
        E6C26F2AF21689BB64707E87A1AD68FBF539E4D5FC8CEA7BB0E549DBCC5B2FF5
        FF0087F5AF4DAF32B2FF005FF87F5AF4DAE4C5FF0014E9C3FF000CF32BDFF5FF
        0087F5A726A97F1A2A477D72AAA30AAB330007A75A6DEFFAFF00C3FAD57AF428
        24E946E71556D54762C4BA8DECC8526BCB89148C10F2B107F5AAF4515B2496C6
        4DB7B8E8E592190490BB46EBD194E08FC6AF4BAFEA9346637BD9769FEE9C1FCC
        567D1438C5EAD0D49AD993C57F79045E5C1753C71FF7124207E42A0A28A76485
        763E19E5B7937C123C4FFDE4620FE62B40F88F562B8FB6C98FA0FF000ACCA2A5
        C632DD0D4A4B663A49649A4324CED23B75663927F1AB569AB5FD8C7B2D6EA48D
        3FBB9C81F81E954E8A6E29AB3409B4EE8B336A3797170B3CD752B4AA72ADBC8D
        BF4F4FC2A39EEEE2E8A9B99E598AF4F31CB63F3A8A8A1452D905DB0A96DAE65B
        3B849EDDF64A872AD8071F9D454537AE8C5B1AFF00F0956B3FF3F9FF009093FC
        28FF0084AB59FF009FCFFC849FE15914567ECA9FF2AFB8BF693EEC74D2BCF33C
        D29DCF2316638C6493935A361E21D474E411C336F8C744906E03E9DC5665154E
        3192B344A934EE99B175E29D52EA3D9E708948C1F29704FE3D6B1E8A288C2315
        68A0949CB766969DAFDFE991F976F283172446E3201F6F4A75E788F52BDC0927
        D88A41D918C0247AFAFD0D65D14BD9C2FCD6D47CF2B5AE5DBED66FF528963BD9
        FCC456DC06C5183F80A86CEFAE6C26F36CE6689FBE3A1FA8E86A0A29F2C52B5B
        41733BDEE6D5C78AF54B884C7E6A440F05A35C13F8F6FC2AA2EB9A8AD87D885C
        62DF614D9B17EEFA6719AA1454AA505A2453A937D4B1657F73A74E66B393CB90
        AED27683C7E3F4ABFF00F0956B3FF3F9FF009093FC2B228A6E9C24EED094E4B4
        4CD7FF0084AB59FF009FCFFC849FE1545752BB5D47EDE25C5CE49DFB475C63A6
        3155A8A15382D9039C9EECB77FAA5E6A650DECDE6F979DBF2818CF5E83DA8B0D
        56F34CF33EC33795E66377CA0E719C751EE6AA514F9636E5B682E695EF7D4BF6
        CCDABEBB0FDBE5C99E45123600CF6C71F9576BAEC979A7E908BA34582AC14F96
        9BB62FB0AF3B562AC1949041C820F4AE8ED3C697B0C612E628EE30301B3B4FE3
        5CD5A94A4E2E2AE97437A55229352EBD4974AD57C433EA30A3AC92C4CE03EF84
        0017B9CE0638AD1F1AF95FD9116FFF0059E70D98FA1CFE1FFD6ACF97C7370C84
        41671A3762CE587E5C573F7FA8DCEA571E6DDC85DBF84740A3D00A88D193A8A6
        D28D8A9548A838A77B8965FEBFF0FEB5E9B5E6565FEBFF000FEB5E9B5CD8BFE2
        9D187FE19E657BFEBFF0FEB55EAC5EFF00AFFC3FAD57AF4687F0A27156FE230A
        28A2B6320A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
        0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
        0A28A2800A28A2802C597FAFFC3FAD7A6D799597FAFF00C3FAD7A6D7918BFE29
        E961FF00867995EFFAFF00C3FAD57AB17BFEBFF0FEB55EBD1A1FC289C55BF88C
        28A28AD8C828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A00B165FEBFF0FEB5E9B5E6565FEBFF000FEB5E9B5E462FF8
        A7A587FE19E71756B2B4E78DA57821B3907350FD8A5FF67F5AF4E6FBC7EB4953
        1C4D48C7950E542127767997D8A5FF0067F5A3EC52FF00B3FAD7A6D155F5BAA2
        FABD33CCBEC52FFB3FAD1F6297FD9FD6BD368A3EB7543EAF4CF32FB14BFECFEB
        47D8A5FF0067F5AF4DA28FADD50FABD33CCBEC52FF00B3FAD1F6297FD9FD6BD3
        68A3EB7543EAF4CF32FB14BFECFEB47D8A5FF67F5AF4DA28FADD50FABD33CCBE
        C52FFB3FAD1F6297FD9FD6BD368A3EB7543EAF4CF32FB14BFECFEB47D8A5FF00
        67F5AF4DA28FADD50FABD33CCBEC52FF00B3FAD1F6297FD9FD6BD368A3EB7543
        EAF4CF32FB14BFECFEB47D8A5FF67F5AF4DA28FADD50FABD33CCBEC52FFB3FAD
        1F6297FD9FD6BD368A3EB7543EAF4CF32FB14BFECFEB47D8A5FF0067F5AF4DA2
        8FADD50FABD33CCBEC52FF00B3FAD1F6297FD9FD6BD368A3EB7543EAF4CF32FB
        14BFECFEB47D8A5FF67F5AF4DA28FADD50FABD33CCBEC52FFB3FAD1F6297FD9F
        D6BD368A3EB7543EAF4CF32FB14BFECFEB47D8A5FF0067F5AF4DA28FADD50FAB
        D33CCBEC52FF00B3FAD1F6297FD9FD6BD368A3EB7543EAF4CF32FB14BFECFEB4
        7D8A5FF67F5AF4DA28FADD50FABD33CCBEC52FFB3FAD1F6297FD9FD6BD368A3E
        B7543EAF4CF38B5B595671C6E2DC00B9C939AF48DA7D0FE542FDE1F5A9AB9EA5
        495497348D610505647FFFD9}
      Stretch = True
      Transparent = True
    end
  end
  object ScrollBox3: TScrollBox
    Left = 1272
    Top = 50
    Width = 152
    Height = 154
    BorderStyle = bsNone
    TabOrder = 2
    Visible = False
    object ImageExport: TImage
      Left = 0
      Top = 0
      Width = 152
      Height = 154
      Align = alClient
      Picture.Data = {
        0A544A504547496D61676505450000FFD8FFE000104A46494600010101006000
        600000FFE110DC4578696600004D4D002A000000080004013B00020000000A00
        00084A8769000400000001000008549C9D000100000008000010CCEA1C000700
        00080C0000003E000000001CEA00000008000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000E5BCB5E5AEB6E699A8
        0000059003000200000014000010A29004000200000014000010B69291000200
        00000331340000929200020000000331340000EA1C00070000080C0000089600
        0000001CEA000000080000000000000000000000000000000000000000000000
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
        000000000000000000000000000000323031373A31313A32392031363A31393A
        313600323031373A31313A32392031363A31393A3136000000355FB65B686600
        00FFE10B1C687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
        2F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D30
        4D7043656869487A7265537A4E54637A6B633964273F3E0D0A3C783A786D706D
        65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F223E3C7264
        663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F
        72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E3C72
        64663A4465736372697074696F6E207264663A61626F75743D22757569643A66
        616635626464352D626133642D313164612D616433312D643333643735313832
        6631622220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64
        632F656C656D656E74732F312E312F222F3E3C7264663A446573637269707469
        6F6E207264663A61626F75743D22757569643A66616635626464352D62613364
        2D313164612D616433312D6433336437353138326631622220786D6C6E733A78
        6D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
        223E3C786D703A437265617465446174653E323031372D31312D32395431363A
        31393A31362E3133393C2F786D703A437265617465446174653E3C2F7264663A
        4465736372697074696F6E3E3C7264663A4465736372697074696F6E20726466
        3A61626F75743D22757569643A66616635626464352D626133642D313164612D
        616433312D6433336437353138326631622220786D6C6E733A64633D22687474
        703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E3C
        64633A63726561746F723E3C7264663A53657120786D6C6E733A7264663D2268
        7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
        73796E7461782D6E7323223E3C7264663A6C693EE5BCB5E5AEB6E699A83C2F72
        64663A6C693E3C2F7264663A5365713E0D0A0909093C2F64633A63726561746F
        723E3C2F7264663A4465736372697074696F6E3E3C2F7264663A5244463E3C2F
        783A786D706D6574613E0D0A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020203C3F787061636B657420656E643D2777273F3EFF
        DB00430007050506050407060506080707080A110B0A09090A150F100C111815
        1A19181518171B1E27211B1D251D1718222E222528292B2C2B1A202F332F2A32
        272A2B2AFFDB0043010708080A090A140B0B142A1C181C2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2AFFC0001108013A013903012200021101031101FFC4001F
        0000010501010101010100000000000000000102030405060708090A0BFFC400
        B5100002010303020403050504040000017D0102030004110512213141061351
        6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
        2728292A3435363738393A434445464748494A535455565758595A6364656667
        68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
        A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
        E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
        010101010000000000000102030405060708090A0BFFC400B511000201020404
        0304070504040001027700010203110405213106124151076171132232810814
        4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
        3738393A434445464748494A535455565758595A636465666768696A73747576
        7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
        B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
        E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F4DB9D6EF926
        39B89896E78908FD2A1FEDEBDFF9EF3FFDFD3556F7FD7FE1FD6ABD7AB470F4A5
        4D368F3EA56A919B499A5FDBD7BFF3DE7FFBFA68FEDEBDFF009EF3FF00DFD359
        B456BF55A3DBF333F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF009EF3FF00DF
        D359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF009EF3FF00
        DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF009EF3FF
        00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF009EF3
        FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF009E
        F3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF00
        9EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBDFF
        009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDEBD
        FF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FEDE
        BDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68FE
        DEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA68
        FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFBFA
        68FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7FFB
        FA68FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE7F
        FBFA68FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3DE
        7FFBFA68FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BFF3
        DE7FFBFA68FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9A5FDBD7BF
        F3DE7FFBFA68FEDEBDFF009EF3FF00DFD359B451F55A3DBF30F6F53B9B16DADD
        F3CC3171302BCF3213FA577FBDBD6BCC2CBFD7FE1FD6BD36BCDC44230A9689DD
        464E50BB3CCAF7FD7FE1FD6ABD58BDFF005FF87F5AAF5EA50FE144E0ADFC4614
        51456C6414514500145145001451450014514500145145001451450014514500
        1451450014514500145145001451450014514500145145001451450014514500
        145145001451450058B2FF005FF87F5AF4DAF32B2FF5FF0087F5AF4DAF2317FC
        53D2C3FF000CF32BDFF5FF0087F5AAF562F7FD7FE1FD6ABD7A343F85138AB7F1
        18514515B1905145140051451400514514005145140051451400514514005145
        14005159DAF6A6749D1E6BB550CEB85407A6E3C0AF36FF00849758FB579FFDA1
        36ECE76EEF97FEF9E954A2D92E563D6A8ACED0B533AB68F0DDB2857604381D37
        0E0D68D218514514861451450014514500145145001451450014514500145145
        001451450058B2FF005FF87F5AF4DAF32B2FF5FF0087F5AF4DAF2317FC53D2C3
        FF000CF32BDFF5FF0087F5AAF562F7FD7FE1FD6ABD7A343F85138AB7F1185145
        15B190514514005145140051451400514514005252D35D77A329EE31401C5EA9
        E3D686F5E2D3ADD1E38DB064909F9BE83D2B7BC3DE208B5DB67213CA9E3FF591
        E73F88F6AF33D4AC65D37519AD661F346D807D476353687AABE8FAAC572B9299
        DB228FE253D6B67156D0CF99DF53D7A8A6452A4F0A4B13064750CAC3B834FAC4
        D0E77C71FF0022C49FF5D13F9D799D7A678E3FE45893FEBA27F3AF33ADA1B194
        B73D33C11FF22C47FF005D1FF9D7455CEF823FE4588FFEBA3FF3AE8AB396E68B
        60AC6F10F8862D0AD9094F36793EE479C7E27DAB5A5952085E59582A2296663D
        80AF24D73547D635596E9B2133B6353FC2A3A538C6EC52763A8D2FC7AD35EA45
        A8DBA247236049193F2FD47A576B5E39A6584BA96A50DAC23E691B93E83B9AF6
        245D88AA3B0C513496C28B6C7514515058514514005145140051451400514514
        005145140162CBFD7FE1FD6BD36BCCACBFD7FE1FD6BD36BC8C5FF14F4B0FFC33
        CCAF7FD7FE1FD6ABD58BDFF5FF0087F5AAF5E8D0FE144E2ADFC461451456C641
        451450014514500145145001452330552CC400064927A556B7D4EC6EA5315B5D
        C32C83AAA38269816A8A28A40729E38D1BED76235081732DB8C3E3F893FF00AD
        5E795EDACA1D4AB005586083DC5793F88F483A3EAEF0A83E4BFCF11FF67D3F0E
        95AC1F43392EA74FE04D67CD85B4C9DBE78C6E873DD7B8FC2BB2AF17B3BB96C6
        F22B980E2489830AF5ED3AFA2D4B4F86EE03F2C8B9C7A1EE3F3A5356771C598F
        E38FF91624FF00AE89FCEBCCEBD3FC6913C9E189F62E76B2B1C7619AF30AA86C
        4CB73D33C11FF22C47FF005D1FF9D745581E0B89E2F0C41BC6373330CF704D6A
        EA57F1699A7CD7739F9635CE3FBC7B0ACDEE68B6397F1DEB3E542BA640DF3483
        74D8ECBD87E35C1D4D79772DF5E4B7339DD24AC58D687873483AC6AE90B03E4A
        7CF29FF67D3F1E95B25CA8C9EACEB7C0FA37D92C4EA13AE26B81F267F853FF00
        AFFE15D5D22A8450AA005518007614B5837777354AC828A2AADC6A7636B308AE
        6EE18A43D15DC034865AA29158328652083C820F5A5A0028A28A0028A28A0028
        A28A0028A28A00B165FEBFF0FEB5E9B5E6565FEBFF000FEB5E9B5E462FF8A7A5
        87FE19E657BFEBFF000FEB55EAC5EFFAFF00C3FAD57AF4687F0A27156FE230A2
        8A2B6320A28A2800A28A2800A28A280392F1FDD4F0E9B6F0C44AC7339F308EF8
        1C0AF3F4768DC3C6C5594E41070457B16A3A6DB6AB66D6D789B90F208E0A9F51
        5E7FACF836F74EDD2DA66EADC73951F328F71FE15AC24AD633927B96B46F1CDC
        5B6D875553711F4F347DF1F5F5AEE2CB50B5D46013594CB2A77C1E47D476AF1A
        E9D6A7B3BEB9D3EE04D673344E3BA9EBF5F5A6E09EC252B1ECF58BE28D1BFB63
        496112E6E21F9E2F7F51F8D64E8BE3A867DB0EACA2193A0997EE9FA8ED5D7821
        941520823208EF59D9C59A68D1E26C8C8E51D4AB038208E41AF4DF05D9CF67E1
        F5172A50CB219155BA80718FE55B2F656B24DE73DB44D27F7CA027F3A9E9CA57
        44A8D86BA2C8851D432B0C1046411587FF0008668BF69F3BECED8CE7CBDE76FE
        55BD454DDA286A22C6811142AA8C000700560F8D2CE7BCF0FB7D994B98A41232
        8EA40CE7F9D7414509D986E7892A33B84452CC4E0003926BD4FC2FA37F63E92A
        B22E2E26F9E5F6F41F8569A595AC7379A96D12C9FDF0801FCEA6242A92C40006
        493DAAA52B8946C2D56BDD42D74EB7335ECCB120E993C9FA0EF5CC6B5E3A860D
        D0E92A2693A19987CA3E83BD711797D737F7066BC99A573DD8F4FA7A53506F71
        3958E9B59F1CDC5CEE874A536F1F4F34FDF3F4F4AE4DDDA472F23166639249C9
        349D7A5747A37836F751DB2DDE6D6DCF3961F330F61FE35A691446ACDEF005D4
        F369B710CA4B470B8F2C9ED91C8FF3EB5D6D54D3B4DB6D2ACD6DACD36A0E493C
        963EA6ADD60DDD9AAD105145148614514500145145001451450058B2FF005FF8
        7F5AF4DAF32B2FF5FF0087F5AF4DAF2317FC53D2C3FF000CF32BDFF5FF0087F5
        AAF562F7FD7FE1FD6ABD7A343F85138AB7F118514515B1905145140051451400
        514514005145140185ACF852C356DD205FB3DC1FF96A83AFD477AE0B56F0F5FE
        8EE7ED11EE8B3C4C9CA9FF000AF5AA6BA2C8852450CA46082320D5A9344B8A67
        89D7AD7871268FC3B64B7390E23E87A81DBF4C5247E19D1E2B913A58C61C1C8C
        E4807E9D2B56894AE28C6C14514541614514500145145001597E2449A4F0E5E2
        DB64BF97D07523BFE95A945311E235A9A4787AFF005871F678F6C59E667E147F
        8FE15E8B278674796E4CEF63197272719009FA74AD34458D02A2855030001802
        B473EC428F731746F0A58693B642BF68B81FF2D5C74FA0ED5B945159DEE5EC14
        51452185145140051451400514514005145140162CBFD7FE1FD6BD36BCCACBFD
        7FE1FD6BD36BC8C5FF0014F4B0FF00C33CCAF7FD7FE1FD6ABD58BDFF005FF87F
        5AAF5E8D0FE144E2ADFC461451456C6414514500145145001593ACF88ACB440A
        2E4B3CAE32B1A0E71EA7D2B5ABCD3C716F3C7E2379A407CA9514C67B600008FC
        F3F9D5455D9327646E7FC2C2B3FF009F29FF00EFA147FC2C2B3FF9F29FFEFA15
        C0515AF2223999DFFF00C2C2B3FF009F29FF00EFA14ABF10AC8B00D67381DCE4
        1C579FD147220E667B2D8DF5BEA56697368FBE36EFDC1F43EF566B95F00DBCF0
        E8F349282B1CB2E6307BE0609FF3E95D5562D599A2D828A28A430A28A2800A28
        A2800A28A2802B5F5FDBE9B66F7376FB235EFDC9F41EF5CD37C42B20C42D9CE4
        76390334FF001F5BCF2E91049102D1C5266403B64707FCFAD79E56B18A688949
        A677FF00F0B0ACFF00E7CA7FFBE851FF000B0ACFFE7CA7FF00BE857014557222
        7999DFFF00C2C2B3FF009F29FF00EFA15B3A3788ACB5B0C2D8B24A832D1B8E71
        EA3D6BC9EBA3F03DBCF27889268C1F2A246321ED820803F3C7E552E2921A93B9
        E9745145646814514500145145001451450058B2FF005FF87F5AF4DAF32B2FF5
        FF0087F5AF4DAF2317FC53D2C3FF000CF32BDFF5FF0087F5AAF562F7FD7FE1FD
        6ABD7A343F85138AB7F118514515B190514514005145140054373696F7917977
        50A4C9FDD75CD4D450065FFC237A3FFD03A0FF00BE68FF00846F47FF00A0741F
        F7CD6A514EEC56465FFC237A3FFD03A0FF00BE6957C3BA423065D3A0C8E9F2D6
        9D52D4B57B2D261F32F6609FDD41CB37D051761A171542A855000030001D296B
        8E8FE215B35C8592CA44849C6F0E0903D71FFD7AEB619A3B885268583C6EA195
        8771434D6E09A64945145218514514005145140051454734D1DBC2F34CC12345
        2CCC7B0A007B28752AC032918208EB59ADE1DD21D8B369D064F5F96B064F8856
        CB72563B291E1071BCB8048F5C5749A6EAF65AB43E6594C1FF00BC87865FA8AA
        B344DD320FF846F47FFA0741FF007CD1FF0008DE8FFF0040E83FEF9AD4A295D8
        EC8CBFF846F47FFA0741FF007CD5EB6B4B7B38BCBB585214FEEA2E2A6A28BB00
        A28A290C28A28A0028A28A0028A28A00B165FEBFF0FEB5E9B5E6565FEBFF000F
        EB5E9B5E462FF8A7A587FE19E657BFEBFF000FEB55EAC5EFFAFF00C3FAD57AF4
        687F0A27156FE230A28A2B6320A28A2800A28A2800A28A2800A8AE2E61B485A6
        B995628D7AB31C0ACDF116BABA1D80942092690ED8D4F4FA9F6AF34D4756BCD5
        66F32F6667FEEAF455FA0AB8C6E4B958EAB59F1DE7743A32E3B19DC7F21FE35C
        6CF7135D4CD2DC48D2C8DD598E49A8EB6F46F0B5FEAE4385F22DCFFCB59075FA
        0EF5AD944CF5662A2348E1114B331C000649AF5BD02D25B1D06D6DEE389113E6
        1E9939C547A47872C34750608F7CD8E667E5BF0F4AD5242A92C40006493DAB29
        4AE5C636168AE7A5F1B68F15C98BCC91C038322A656B7609E2B9812681D648DC
        65594F0454D9A2AE49451452185145473CF15B40F35C3AC71A0CB331E00A0092
        B37C41692DF683756F6FCC8C9F28F5C1CE2A845E36D1E5B9117992202702464C
        2D7400865054E41E411DE9EA85A33C4DD1A3728EA5594E08230453E0B89AD665
        96DE468A45E8CA70457AA6AFE1DB0D61499E3D93638993861F5F5AE0B59F0B5F
        E904B95F3EDC7FCB58C74FA8ED5B292666E2D1B7A378EFEEC3ACAFB09D07F31F
        E15D9DBDCC3750ACD6D2ACB1B74653915E2D5734ED5AF74A9BCCB29993FBCBD5
        5BEA29382E8352EE7B151591E1DD7175CD3CCA504734676C8A3A67D47B56BD64
        F42C28A28A430A28A2800A28A2800A28A2802C597FAFFC3FAD7A6D799597FAFF
        00C3FAD7A6D7918BFE29E961FF00867995EFFAFF00C3FAD57AB17BFEBFF0FEB5
        5EBD1A1FC289C55BF88C28A28AD8C828A28A0028A28A0028A28A00E77C61A2CD
        AB69F1BDA0DD340C484FEF03D40F7AE1AD7C3BAADDDC7931D9CA87382D229551
        F89AF5BA2AD49A5625C5339AD1BC1765A7ED96F717538E7E61F229F61DFF001A
        E900C0C0E052D152DB63B582B95F1BEB3F63B016103626B81F3E3F853FFAFF00
        E35D25DDD4565672DCCEDB63894B31AF21D4EFE5D4F5196EE7FBD23703FBA3B0
        AA82BB264EC8AB5E97E068E64F0DA99B215A5668C1FEEFFF00AF35C2689A5BEA
        FAAC56A990A4EE91BFBAA3A9AF5B862482148A250A88A15547602AA6FA0A2BA9
        15EDE43A7D94B7572DB638C64E3BFB571BFF000B0E4FB4FF00C782F919E9BFE6
        C7F2AD9F1BFF00C8B127FD744FE75E6544629AD424DA67B3595E43A85945756C
        DBA3906467B7B56278E6399FC384C392AB2AB4807F77FF00D78A77820FFC5311
        7FD747FE75BD34493C2F14AA191D4AB29EE0D46CCBDD1E295E89E08D67ED9606
        C276CCD6E3E4CFF127FF005BA7E55C56B7A5BE91AACB6AF92A0EE8DBFBCA7A1A
        8B4CD425D335186EE1FBD1B723FBC3B8AD5AE64649D99EC94846460F22A2B4BA
        8AF6D22B981B7472A8653535606C735ACF82ECF50DD2D962D673CF03E46FA8ED
        F8571375E1DD56D2E3C992CE5739C068D4B29FC457ADD156A6D12E299CEF83F4
        59B49D3A46BB1B669D8129FDD03A03EF5D151454B77635A05145148614514500
        145145001451450058B2FF005FF87F5AF4DAF32B2FF5FF0087F5AF4DAF2317FC
        53D2C3FF000CF32BDFF5FF0087F5AAF562F7FD7FE1FD6ABD7A343F85138AB7F1
        18514515B19051451400514514005145140051451400514535C911B15FBD838F
        AD0070DE3BD67CC9574B81BE54C34C4773D87F5AE32A5B97964BA95EE3265672
        5F3EB9E6B67C25A37F6AEAC1E55CDBDBE1DF3D18F615D0AD1463BB3AEF0768DF
        D99A509E65C5C5C80CD9EAABD87F5AE8A9296B06EECD56873BE38FF91624FF00
        AE89FCEBCCEBD33C71FF0022C49FF5D13F9D799D6B0D8CE5B9E99E08FF009162
        3FFAE8FF00CEBA2AE77C11FF0022C47FF5D1FF009D74559CB7345B1CEF8C746F
        ED2D2CCF0AE6E2D8165C7565EE3FAD799D7B6D79878B746FECAD58BC4B8B7B8C
        BA63A29EEB5707D0892EA6AF81359F2E56D2E76F95F2D093D8F71FD6BBBAF16B
        57963BB89EDC912AB8298F5CF15ECE84945DDC3639FAD29AB31C5E83A8A28ACC
        B0A28A2800A28A2800A28A2800A28A2800A28A2802C597FAFF00C3FAD7A6D799
        597FAFFC3FAD7A6D7918BFE29E961FF867995EFF00AFFC3FAD57AB17BFEBFF00
        0FEB55EBD1A1FC289C55BF88C28A28AD8C828A28A0028A28A0028A28A0028A28
        A0028A28A00C3D47C25A5EA5746E258DE3918E58C6D8DDF515A5A7E9D6BA5DA8
        B7B2884699C9EE49F526AD514EEC560A28A290CE77C71FF22C49FF005D13F9D7
        99D7B2EA16316A5612DA5C03B241824751E86B89FF00857B77F6AC7DB21F233F
        7B07763E98C7EB5AC2492D4CE49B66F7823FE4588BFEBA3FF3AE86AB69F63169
        B6115A5B83B231804F53EA6ACD66F565AD82AAEA1A75AEA96A6DEF621226723B
        107D41AB54521987A7784B4BD36E85C451BC9229CA991B3B7E82B728A29DDB10
        51451486145145001451450014514500145145001451450058B2FF005FF87F5A
        F4DAF32B2FF5FF0087F5AF4DAF2317FC53D2C3FF000CF32BDFF5FF0087F5AAF5
        62F7FD7FE1FD6ABD7A343F85138AB7F118514515B19051451400514514005145
        1400514514005145140051451400514514005145140051451400514514005145
        140051451400514514005145140051451400514514005145140162CBFD7FE1FD
        6BD36BCCACBFD7FE1FD6BD36BC8C5FF14F4B0FFC33CCAF7FD7FE1FD6AF685A1F
        F6D34E3ED1E479417F8376739F71E9546F7FD7FE1FD6BA4F02FDFBEFA27FECD5
        D7CCE186528EE7372A957B31DFF0827FD447FF00207FF6555B50F07FD874F9AE
        7EDDE6794BBB6F938CFE3BAA0F12DFDE43E21B98E1BA9E341B30A921007C83B5
        64BEA17B2C6524BB9DD1860AB4A483FAD3A71AD24A4E5F80A6E926D7295E8AD9
        F0E5AE9D7F74D6BA82B798DCC4C1F00FB54DE24F0FAE9652E2CC39B66E1B273B
        1BFC0D6DED62A7C8F733F67270E7460515D5E85E1782E74DFB56A618799F3200
        D8C2FA9FAD62C91594FAF47059A30B569963E5B2586704D11AD1949A5D01D392
        49BEA67515DBDCF832D24B887ECEEF1423779BF3658F4C019E9DEA64F0D68572
        8E96F8665F959A398B153F9E3358FD6E9DAE69F5799C15157B58D2E4D2750681
        F2C87E68DF1F7856C685E14FB6C09757EEC9137291AF561EA4F615B4AAC231E7
        6F4338D394A5CA8E668AEF97C39A04CEF0C414CABF7824E4B2FE19AE6B5FD01B
        47759237325B4870AC7AA9F43510C44272E5D9953A328AB98D45741E16D1ED35
        5FB57DB158F95B36ED6C75DD9FE55AC9E14D32D1E59F509B106E3B15E4DAAA3B
        64F7344F110849C5EE11A3292E6471345767AAF852CDB4F69F4B056445DC1779
        6571F8E7B74AA5A3E9BA15C69714BA85CC71CE4B6E56B80A47271C7D28588838
        F3207464A5CAC2E3C24B67A44D7735D33BA47BD555703F1F5AE66BD4EEE1B797
        4E922B970B6E530CC5B031F5AE79F47F0C88D8ADE4448071FE943FC6B9E8E25D
        9F3DD9B54A0AEB97438DA28A2BD038CD5D2BC3D77ABDB3CD6D242AAAFB089188
        39C03D81F5ABBFF084EA5FF3DED7FEFB6FFE26B5BC11FF002089FF00EBB9FF00
        D056B1751F116AB06A97514576552399D546C5E0062076AE2E7AB2A928C1AD0E
        AE4A718294BA90EA5E19BCD2ECCDCDC49032020611893CFD40AC7ABF77ADEA37
        D6E61BBB93246482576A8FE42AF683A259EB30B86B99239E33F32003047622B7
        5295385EA7E065CAA72B40C2A2B435AD264D1EFBC9625E361BA37C6323D3EA2B
        5F4DF08ADC69AB737D3BC0586EDA00F957D4FF003A72AD08C549BD1895393972
        A4731454970215B8716CCCF103846718247AD6FE95E109EF2259AF64FB3C6C32
        A8065C8FE9553A9182BC85184A4EC8E728AEDCF822CB6FCB73700FA9DA7FA571
        B7707D96F67B7DDBFCA919376319C1C66A69D6854D2239D3943722A2B7F45F0B
        4BA9422E2E643040DF77032CE3D7D856ABF82EC648D85BDE4BBC7424AB01F500
        0A896229C5D9B2A346725748E2EBA2F0FD8E8D73A7BBEA92C493094850F3EC3B
        703B67D7358FA969D36977AD6F718C819561D187AD55AD24BDA47DD76222F925
        AA3BEFF8463467B632C319752A4AB2CA483FAD7035E91A37FC8B16FF00F5C2BC
        DEB9F0B293724DDEC6D5D24A2D22C597FAFF00C3FAD7A6D799597FAFFC3FAD7A
        6D7262FF008A74E1FF00867995EFFAFF00C3FAD749E05FBF7DF44FFD9AB9BBDF
        F5FF0087F5AE93C0BF7EFBE89FFB35744BFDD7FAEE60BFDE0D5D43C4F61A7DF4
        96B710CED2478C944520E403DCFBD63EB5E26B1D474996DADE1996472B82E8A0
        7041EC7DAA7D6FC317DA8EB13DD40F008E4DB80EC41E140F4F6ACABBF0A5FD95
        A49712BC05235DCC158E7F954D28D0F75DF5D0AA92ABAAB6862AB32386462ACA
        72083820D7A3693749AF6860DE421B77C922B2FCAC4771FE7835C3E8DA5C9AB6
        A0B0AE4463991C7F08FF001AECB58D521F0F69F0416A8A5F858E33D028EA4FF9
        EB578AB49A847E22685E29C9EC53F18EA725B5AA58C2ACA275CBB8040DA3F847
        F5F6FAD729A5FF00C85ECFFEBBA7FE842BBCBAB7B6F12E86AD19C6F1BA36EE8D
        E87F91AE1ACA092DB5EB6867429225C20653D8EE14F0F28FB371EAB71564F9D4
        BA1D978BAF26B4D1C7D9DB6196411B30EB8C13C7E55CC7852578FC4500438120
        6561EA3693FCC0AEAFC4FA6DCEA7A6A4568AACE926F20B6323047F5ACFF0D787
        2E6C6F3ED97E151954848C10C413C6491C74FE758D39C2341A7B9A4E3375935B
        09E33B759A4D3FE70ACCEC9EF838E7F0FEB5A9E229DECBC3D39B73B0E15011D8
        1207F2AE73C5DA9A5C6A90C56CC0FD97397073F392323F0C0AE9E4583C43A010
        8F859D0107AEC6EBCFD0D4B4E30A6E5B149A94A6A3B9E736F3C96B711CF0B6D9
        236DCA457A17892213F86EE73C1550E3F020D73D69E0CBCFB627DADE1102B02F
        B5892C3D0715A9E31D423874CFB1020CB3904AE7EEA839CFE63F9D6D5651A956
        1C9A99D38B853973153C09FF002FFF00F6CFFF0066ACEF175DCD36B925BBB7EE
        A00BB1474E54127EBCD68F813FE5FF00FED9FF00ECD591E2AFF919AEBFE01FFA
        02D545278A97A7F91327FB85FD772D69BE2C7D3F4C8ED0DAF9DB0101CCB8E092
        7A63DEB9EA28AEA8D38C5B696E73CA729249F43D2359FF009162E3FEB8579BD7
        A5BA7F6B786F6C2403716E3696EC71DFF1AE34784F56DCDBE1445504EF69060F
        E5CD7161671826A4EDA9D5888CA4D348C6A28A2BD038CEE3C11FF2089FFEBB9F
        FD056A5B9BFF000CA5D4AB7296FE72B91266D893BB3CF3B79E6A2F047FC8227F
        FAEE7FF415AC5D47C3BAACFAA5D4B15A1649267653BD7905891DEBCCE58CAB4B
        99D8EEE692A51E55724F10DD68B3D8C6BA4AC4251202DB212876E0F7C0EF8AC5
        B0BD974EBD8EE6038643C8FEF0EE0D4F77A26A3636E66BBB631C60805B729FE4
        69DA2692FABDF88412B12FCD2381D07A7D4D7647D9C69BD6E8E6973CA7B599DD
        79765E20D3EDE6913CC8F709141EC47507F504561F8C359283FB32D988240331
        1E9D97FAFE55AFA8EB167A17D96D8A8C310362FF00CB34E9BB1FE7BD55F13E8E
        352B11776A034F12E46D19F313AE3FA8AF3E95A334E5B743B6A5DC5A8EFD4E4F
        40B65BBD7AD229395DFB88F5DA0B63F4AEB7C5BA9CBA7E9F1C56CE6396762370
        EA1475C1EDD45723A1DDA596B76D3CA708AF863E808233FAD76FE21D25B57D39
        520651346DB932783EA2BA2BD9568B96C6146EE9494773CFD2F6EA372E97332B
        1392C24209A58835F6A2825625E794066EE4B1E4FEB57D3C2FABBC817EC8579E
        4B3AE07EB5470FA76A787019EDA6E403C12A7D7F0AEB528BF85EA73B525F11E8
        FA8594B3E946CEC645B6C808180FBAA3B0AC5D27C2D75A66A515D0BC4655C865
        008DC0F6AD5D5619B53D1B3A6CE5246DB246EAE573ED91EC6B8D36FE23137978
        D4377AEE7C7E7D2BCEA2A4E0D292476D569493B5CDBF1C44A6CED66C7CEB2150
        7D88CFF4AE32AFEA70EA96FE5A6A8D37CDF322C92EEFC7A9C536DF47D42EE059
        ADAD5E48DB3861DEBBA8A54E9A4D9C951B9CEE91DDE8DFF22C5BFF00D70AF37A
        F4CD2E0921F0FC10CA856458B6953D41AE067D1751B685A69ED2448D065988E9
        5CF869454A777D4DABC5F2C7421B2FF5FF0087F5AF4DAF32B2FF005FF87F5AF4
        DAE7C5FF0014DF0FFC33CCAF7FD7FE1FD69F61AA5E6985CD94DE57998DDF2839
        C74EA3DE997BFEBFF0FEB55EBD0A293A49338EAB6AA368D7FF0084AB59FF009F
        CFFC849FE151DC788B54BAB77827BADF1B8C32F96A323F01599455FB2A6BECAF
        B88F693EE5DB1D62FB4D8DA3B29844AC771F914E4FD48A82EEF2E2FEE0CF7729
        924200C918E3E83A54345572C53BDB52799DAD72ED8EB37FA6C6D1D95C7968C7
        711B54F3F88A920BEB8D435FB39AEDC49279D18DDB42F1B87A0ACEA7C1335BDC
        C732005A370E01E9907349C23AB4B51A93D137A1E83E25D4EE34AB08A6B52BB9
        A50A770C8C609FE95C85DF89B54BC428D71E5A1182B10DBFAF5FD68D57C4377A
        BDB243731C2AAAFBC18D4839C11DC9F5ACAAC2850518FBCB536AB55CA5EEBD02
        ADD86A979A6BEEB39D901EABD54FE15528AE9693566609B4EE8DC93C61AAC919
        5578A327F8963E7F5CD634D34971334B3BB49231CB331C934CA2A634E30F850E
        5394B765BB0D56F34CF33EC33795E66377CA0E719C751EE6A1BABA9AF6E5EE2E
        9F7CAF8DCD8033818EDF4A8A8AAE58DEF6D45CCED60A28A2988D0D3F5CBFD314
        25B4DFBBCE7CB7195FFEB7E15726F176A9346503451E460958F9FD735874566E
        941BBB45AA934AC98514515A106AE95E21BBD22D9E1B68E16567DE4C8A49CE00
        EC47A55DFF0084DB52FF009E16BFF7C37FF155CED1593A34E4EED1A2AB34AC99
        B1A9789AF354B336D711C0A848394520F1F526934DF11DD6956BE45B416E4649
        2CCADB98FBE0D64514FD9439796DA0BDA4AFCD7D49EF6F66D42EDEE6E5B73B9E
        DD00F41ED5A761E2ABFD3ECD2DA3586444FBA6404903D38358B4539538C972B5
        A094E49DD325BAB83777524ED1A4664392B182141AD3D37C4FA869D12C2ACB34
        2B8012419DA3D01AC7A29CA1192B340A524EE99D3CBE38BA64C43691237AB316
        FD38AE6E799EE6E249E4C6F91CBB60772734CA2A614A10F850E55253F899A9A5
        7886F74A4F2E22B2439CF9720C81EB8F4AD63E399B1C58A03EF21FF0AE568A99
        50A72776871AB38AB265ED5757B8D5E5492E96352808023047F3356F4FF145EE
        9B6296B04503226705D589E4E7B1F7AC6A2ADD3838F2B5A094E49F35F53A2FF8
        4DB52FF9E16BFF007C37FF001550DE78B2FAF6CE5B6962B70922ED2555B3FCEB
        0E8A85429A77487ED66FA962CBFD7FE1FD6BD36BCCACBFD7FE1FD6BD36BCEC5F
        F14EEC3FF0CF32BDFF005FF87F5AAF562F7FD7FE1FD6ABD7A343F85138AB7F11
        8514515B19051451400514514005145140051451400514514005145140051451
        4005145140051451400514514005145140051451400514514005145140051451
        400514514005145140162CBFD7FE1FD6BD36BCCACBFD7FE1FD6BD36BC8C5FF00
        14F4B0FF00C33CCAF7FD7FE1FD6ABD58BDFF005FF87F5AAF5E8D0FE144E2ADFC
        461451456C641451450014514500145145001451450014514500145145001451
        4500145145001451450014514500145145001451450014514500145145001451
        4500145145001451450058B2FF005FF87F5AF4DAF32B2FF5FF0087F5AF4DAF23
        17FC53D2C3FF000CF35BA85DE6CAAE4631D6A0FB34BFDDFD457A5BD95AB48CCD
        6D0924E49318E693EC169FF3EB07FDFB14A18A9C22A2920961E3277679AFD9A5
        FEEFEA28FB34BFDDFD457A57D82D3FE7D60FFBF628FB05A7FCFAC1FF007EC55F
        D72A7644FD561DD9E6BF6697FBBFA8A3ECD2FF0077F515E95F60B4FF009F583F
        EFD8A3EC169FF3EB07FDFB147D72A7641F55877679AFD9A5FEEFEA28FB34BFDD
        FD457A57D82D3FE7D60FFBF628FB05A7FCFAC1FF007EC51F5CA9D907D561DD9E
        6BF6697FBBFA8A3ECD2FF77F515E95F60B4FF9F583FEFD8A3EC169FF003EB07F
        DFB147D72A7641F55877679AFD9A5FEEFEA28FB34BFDDFD457A57D82D3FE7D60
        FF00BF628FB05A7FCFAC1FF7EC51F5CA9D907D561DD9E6BF6697FBBFA8A3ECD2
        FF0077F515E95F60B4FF009F583FEFD8A3EC169FF3EB07FDFB147D72A7641F55
        877679AFD9A5FEEFEA28FB34BFDDFD457A57D82D3FE7D60FFBF628FB05A7FCFA
        C1FF007EC51F5CA9D907D561DD9E6BF6697FBBFA8A3ECD2FF77F515E95F60B4F
        F9F583FEFD8A3EC169FF003EB07FDFB147D72A7641F55877679AFD9A5FEEFEA2
        8FB34BFDDFD457A57D82D3FE7D60FF00BF628FB05A7FCFAC1FF7EC51F5CA9D90
        7D561DD9E6BF6697FBBFA8A3ECD2FF0077F515E95F60B4FF009F583FEFD8A3EC
        169FF3EB07FDFB147D72A7641F55877679AFD9A5FEEFEA28FB34BFDDFD457A57
        D82D3FE7D60FFBF628FB05A7FCFAC1FF007EC51F5CA9D907D561DD9E6BF6697F
        BBFA8A3ECD2FF77F515E95F60B4FF9F583FEFD8A3EC169FF003EB07FDFB147D7
        2A7641F55877679AFD9A5FEEFEA28FB34BFDDFD457A57D82D3FE7D60FF00BF62
        8FB05A7FCFAC1FF7EC51F5CA9D907D561DD9E6BF6697FBBFA8A3ECD2FF0077F5
        15E95F60B4FF009F583FEFD8A3EC169FF3EB07FDFB147D72A7641F55877679AF
        D9A5FEEFEA28FB34BFDDFD457A57D82D3FE7D60FFBF628FB05A7FCFAC1FF007E
        C51F5CA9D907D561DD9E6BF6697FBBFA8A3ECD2FF77F515E95F60B4FF9F583FE
        FD8A3EC169FF003EB07FDFB147D72A7641F55877679AFD9A5FEEFEA28FB34BFD
        DFD457A57D82D3FE7D60FF00BF628FB05A7FCFAC1FF7EC51F5CA9D907D561DD9
        E6BF6697FBBFA8A3ECD2FF0077F515E95F60B4FF009F583FEFD8A3EC169FF3EB
        07FDFB147D72A7641F55877679E5AC2E9365970318EB5E9550A595AAC8ACB6D0
        820E41118E2AED7354A8EA4B999BC20A0AC8FFD9}
      Stretch = True
      Transparent = True
    end
  end
  object ScrollBox4: TScrollBox
    Left = 1104
    Top = 208
    Width = 321
    Height = 50
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    Visible = False
    object Image1: TImage
      Left = 16
      Top = 8
      Width = 30
      Height = 30
      Picture.Data = {
        0A544A504547496D61676516050000FFD8FFE000104A46494600010101009600
        960000FFE100224578696600004D4D002A000000080001011200030000000100
        01000000000000FFDB0043000201010201010202020202020202030503030303
        030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
        0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108001E001E030122000211
        01031101FFC4001F000001050101010101010000000000000000010203040506
        0708090A0BFFC400B5100002010303020403050504040000017D010203000411
        05122131410613516107227114328191A1082342B1C11552D1F0243362728209
        0A161718191A25262728292A3435363738393A434445464748494A5354555657
        58595A636465666768696A737475767778797A838485868788898A9293949596
        9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
        D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
        0100030101010101010101010000000000000102030405060708090A0BFFC400
        B511000201020404030407050404000102770001020311040521310612415107
        61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
        1A262728292A35363738393A434445464748494A535455565758595A63646566
        6768696A737475767778797A82838485868788898A92939495969798999AA2A3
        A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
        D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
        3F00FDFCAF11FDBFBE3C5CFECE9FB3B6A5AF69F208B57B8B8B7B2B0E996919F7
        3019FF00A64921FC33DAB93FDAB3F6DEF1A7ECABADB49A87C3A8756F0CCCFB6D
        F59B5D4888727A24C0C7FBA7F624A9EC4D7C5BFB697EDDD7DFB60697A058C9A1
        A68365A1CF2DCB422EBCFF00B448EBE582DC0C6D5F3178CFFAC38EBC7D9F0CF0
        9E271F5E956946F46E9C9A69D97DF73E5F3CE20A187A352945FEF2D649AEA7EA
        9781FC5967E3BF09E91ADD8B79967AC59C57D6EC390D1CB18753F9115B55F98F
        FB397FC154F50F807F06F45F09DCF84D35A5D051E086EDAFCC2DE4962C8ACBB0
        E36A9DBD7B28AFB63F65EF8EBE36F8F5E183AEEB7E0987C1DA4DC206B0FB4DE3
        49757809FBFE5796A56323186620B7503041AF3F39E19C665D294EB46D0BB49D
        D6BDADADF63B32CCFB0D8C4A349DE764DA4B63D2BC47E1FD3FC4DA0DCE9BA9DA
        5AEA1A7DE2793716F73109629A33F795948208233D6BF157E22E95A77897E347
        882C7C13A65D4DA4B6A9711693676CB25CCAD02336D2A39720AA96C7380474C5
        7ECAFC67B4D5352F85BAE5968B35BDB6ADA859BD9DA4F3122382594796B23601
        3F296DD8039C638CE6B80FD93FF632F097ECB1E1ADBA643FDA5AFDD2ECBDD66E
        131713F3CA20E7CB8F2384538E99248CD7770BE7F0CA6156BCD39395928DDA5E
        6DFE071E7D94CF32AB4E941A8DAEDBEBE87C0FFF0004C2D0BC2FE26FDAA6CF4F
        F156976FAA49259CD3692972BBE18AF22C487319382C13CD2323E52A3BE2BF56
        A0C039F9BA719AF9E7E3B7EC53A3DEFC55D27E27784DA1F0FF008BF41BD8F52B
        B55056D7598D1879A92851F2C8C85C09003C91906BE86B462CADBB9DA715CBC5
        59B51CCEB53C5D2BD9AB38BDA2D6AEDE5668DF87F033C0C67869DB7BA6BAAB2D
        FF0013FFD9}
      Stretch = True
    end
    object Image3: TImage
      Left = 128
      Top = 9
      Width = 30
      Height = 30
      Picture.Data = {
        0A544A504547496D61676558050000FFD8FFE000104A46494600010101009600
        960000FFE100224578696600004D4D002A000000080001011200030000000100
        01000000000000FFDB0043000201010201010202020202020202030503030303
        030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
        0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108001E001E030122000211
        01031101FFC4001F000001050101010101010000000000000000010203040506
        0708090A0BFFC400B5100002010303020403050504040000017D010203000411
        05122131410613516107227114328191A1082342B1C11552D1F0243362728209
        0A161718191A25262728292A3435363738393A434445464748494A5354555657
        58595A636465666768696A737475767778797A838485868788898A9293949596
        9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
        D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
        0100030101010101010101010000000000000102030405060708090A0BFFC400
        B511000201020404030407050404000102770001020311040521310612415107
        61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
        1A262728292A35363738393A434445464748494A535455565758595A63646566
        6768696A737475767778797A82838485868788898A92939495969798999AA2A3
        A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
        D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
        3F00FD50F1F7FC14834DF823FB46EA7E09F1AF85F52D1F48B6282DB5A8BFD216
        E11821F35A3C6EF2CB1600A962369E2A0F881FF054BF06F817E375BF86FC95D4
        7C32D62B3CDAF58CE25092B21755112F2CB801320E559BD01AF983FE0A75F117
        C65E21F8D0DA2F8ABC33A7E8B67A3DCCAFA1DFC36EDE76A3687E519B824AB8CF
        EF0A000A91823BD7CCCB1AC5C2A803181C761EBEB5FB264BC1396E330B47158A
        BC54A2D351774E5D25FE67E6598F146368D79D0A1AD9FDAD1D8FB5FF0064BFF8
        283DC7883F696F187883E2078ADB43F09DF698D259E9B712B3416B22CF12C691
        AE0FCE236624AF2D8627802BEFEF0778AB4DF1BF862C758D22EA0D434DD4E15B
        9B6B885B724A8C32187D73F5AFC2B75CF3B55BB7CC81BB8278C13DBB7E35FA55
        FF0004AAF887F10BC77F0CAE17C413E933784F49B782C346F21208EE23645019
        1D61E0285DB82C03139EB5E6F1B70A52C3528E3B0EF9568ADDBA2B7A9D7C2FC4
        13A92742BABB7ADCF35FF82817EC89F12BC5FAB78AFE206B9E2AD0A6F09F87A2
        96F34EB42D309AD6D82E7CA58C47B048DD0B13F37722BE212AC132CACB900805
        48C8232187B7A1EF5FBB979A6437F632C53471CD1CC851D2440C8EA7F8482304
        7B1AF96BE297EC211F8FBF6E4F0E78D266D14784B4DB28A4B9D2FCA2B24B2C0A
        FE58550BE5ECDE636209FE123BD4F09F1B3A149E1F151BC2316D597E1FF04D38
        8385E3566AAD07AB76D7CCFCCF1A55E4BA65D5E436B34B676B2A412DC2A37971
        B481CC6A5C676B3EC6033C7079E307F4CFFE09F3FB19E8FF0009B42B1F1E68DE
        28D7B51B5F196856F32D94A890C082658A757217967030A09E819BD6BD2BE0AF
        EC43F0FF00E0C786FC49A1D9E96BAB695E25BA1757969AA471DD40CA376C8B63
        2E0A264E010719AF5AD2B45B5D0B4CB7B1B1B786CECACE2582DEDE0411C5046A
        02AA228C055550000060002BCBE28E3278F5EC70D1E5879F5FF2D4ECC8785E38
        37ED2ABBB3FFD9}
      Stretch = True
    end
    object Image4: TImage
      Left = 168
      Top = 10
      Width = 39
      Height = 27
      Picture.Data = {
        0A544A504547496D616765D7030000FFD8FFE000104A46494600010101009600
        960000FFDB0043000A07070807060A0808080B0A0A0B0E18100E0D0D0E1D1516
        1118231F2524221F2221262B372F26293429212230413134393B3E3E3E252E44
        49433C48373D3E3BFFDB0043010A0B0B0E0D0E1C10101C3B2822283B3B3B3B3B
        3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B
        3B3B3B3B3B3B3B3B3B3B3B3B3BFFC0001108001E003003012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F5DB
        ED42DB4DB63717520441C0F563E8077AE3EFFC73752315B181614ECF27CCDF97
        41FAD67F8AAFE4BDD6E64663E5DBB18D17B0C753F9D6357AD430B0515296ACF3
        EAE224DB51D0D293C47AC4A72DA84A3FDD3B7F9511F88B5888E575098FFBC777
        F3ACDA2BAFD9C3B239B9E5DCEA2C3C73791305BD85274EEC836B7F81FD2BB0D3
        F51B5D4ED84F6B26F5E84742A7D08AF27AD7F0C5FC965ADC0AAC764EE2275EC7
        2703F5AE4AF85838B947467452C4493B4B545CF1868F2DAEA0F7F1A136F39CB3
        0FE16EE0FD6B9CAF60744910A48A1D5860AB0C822B9DBFF04D85CB17B591ED58
        FF00081B97F2EBFAD6743169454665D5C336F9A27034574F27813500DFBABAB6
        61EAC594FF0023447E04D40B7EF2EAD957D54B13FC8576FB6A76BDCE6F653BDA
        C7315D0F8474796F3514BD7522DEDDB76E3FC4DD80FE75B763E08B1B760F772B
        DCB0FE1FBABF975FD6BA38E3486358E345445180AA300571D7C5C5C5C6074D2C
        334EF23FFFD9}
      Stretch = True
    end
    object Image2: TImage
      Left = 56
      Top = 8
      Width = 61
      Height = 30
      Picture.Data = {
        0A544A504547496D616765D8070000FFD8FFE000104A46494600010101009600
        960000FFE100224578696600004D4D002A000000080001011200030000000100
        01000000000000FFDB0043000201010201010202020202020202030503030303
        030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
        0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108001E003D030122000211
        01031101FFC4001F000001050101010101010000000000000000010203040506
        0708090A0BFFC400B5100002010303020403050504040000017D010203000411
        05122131410613516107227114328191A1082342B1C11552D1F0243362728209
        0A161718191A25262728292A3435363738393A434445464748494A5354555657
        58595A636465666768696A737475767778797A838485868788898A9293949596
        9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
        D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
        0100030101010101010101010000000000000102030405060708090A0BFFC400
        B511000201020404030407050404000102770001020311040521310612415107
        61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
        1A262728292A35363738393A434445464748494A535455565758595A63646566
        6768696A737475767778797A82838485868788898A92939495969798999AA2A3
        A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
        D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
        3F00FDFA32A8AF05FF00828CFED0B75FB3BFECEB26A9A5CC63D6AFB53B4B4B1C
        1C124482693F03144EA7B7CE077AE57F6B1FDB97C7FF00B266BBBB50F85763AC
        7862E64DB65AEDBF88248E19092709327D95BC9931FC25886FE166C103E29FDB
        33F6DED4FF006C697C3EB73E1F87C3767E1FF3D96DA2D45AF45CC92EC1BD98C7
        1E36AA600C1FBEDCD7DAF0CF0A6271788A588A904E8DEEDF327B74B277F2D8F9
        5CF788A861E8D4A34E4FDADAC959AF9EA8FD66F04789ACFC69E15D3F5AD3E459
        2C757B58AF2DD87F124881D7F4615AA5C0EF5F987FB3EFFC158357FD9FFE0C68
        9E119FC1769E214D0617823D426D71AD5E48BCC664529F6770362B040771C840
        78AFB77F65EF8CFE3CF8E7E166D73C4DE02B5F0269F75187D3A29B5592E6F2E8
        1FE3788C11F951FA16259BFBA060B7959CF0CE372E729564942F64F996AAFA59
        5EFB7968776579F61B1A9469B6E564DAB3D3D5EC7AF4843466BE71FDBE7F6A86
        FD9AAE7E1D882668DB56F11C52EA2AA793A6C23FD233F532478FA1F4AE1FF68A
        FF00829078FF00F65EF189D2BC4DF082C45B4EC7EC3A9C1E2591ACF5041DD1CD
        9F0D820946C32E7B8C31F8C3F6C0FDAAB50FDAFBE23596BD7DA4C7A0DBE9FA72
        E9F058477A6ED17E7777937944CB31600E17A46BD48CD7B9C33C1F8AC4E2215F
        1114E8B4DDD4A2EFA3B6CFBDBEED4F333EE24A3428CE9516FDAAB68D35D75E9D
        8FD90B764755656565600861FC42A5DCB5F9C1F0D7FE0B19AE7817C03E1FD06E
        3E1F5AEB979A5595BE9C6F0EBEF1497EE88230FE58B67C33900ED0CDCB719E2B
        ED5FD9F3E21F8F3E297837FB63C5DE0CB1F01C975B5AD34F7D49EFAE8A1CE5A6
        5F262F249E309F3363EF6D3C57CFE69C398ECB97362A2A29BB2F7A3AFA24EFF8
        1EBE5F9E61719A506DB4B5D1E9F3B1DB789FC35A7F8ABC3F79A76AB676B7DA6D
        EC462B9B6B98C490CA87A8653C115F895E29D2ED3C53F1535BB6F06E95792697
        71A8DDBE8F636EB25D4C2CD64768F1F79DB110524E4E39C938CD7EC9FED03A76
        B1ADFC1BD7B4BD02E2DACF58D6ADBFB32D6E2E19963B67B87583CC25416F9448
        58607240E9D6B93FD933F62CF09FEC9BE183068B1B5EEB77712A5FEB170A3ED1
        77839DAA07FAB881E88A7B0DC588DD5EB70B710D3CA28D5ACD394A56518DDA5A
        6EDFE16EA7067D93CF31AB4E92F7631BB72EBE497E3E47C0FF00F04ABD23C2BE
        28FDA9E0B3F1169B69A9DCB69D2DC68AD3E5E382EE22AD9D99DACDE5798C0B03
        B4A6460F23F55043C7F8D7CE7F1C3F620D2EDFE31E91F163C1725BF877C55E1F
        BE5D4F51B700AD96B308E2E030504C733C45C6F5E1893B9493BC7D210A71F424
        57271566B4F32C4C31949BD62938BFB2D6E974B3DF4F9EA6FC3F97CB05465869
        DB47BAEA9ED7F4D8E27F680D03C2BAF7C1CF117FC269A75AEABE1BB2B19AF6F6
        0997F8224662E8D9051C0076B290C0F208AFC55D2B49BBD7FED0D67637971F65
        B77BCB8482369BECB0AFDE91C81908B900BB607A9AFD8CFDAF7E18EADF1BBE10
        BF82B49D46DF48FF0084AAF21B2BDBC95598C168B99A5D8A3EF3B2C5B029207C
        E7278C5697ECF5FB34F857F669F067F62F85EC7C959886BCBD9C892EF51900C6
        F95F0338C9C2801541C000577F0CF124327C24E56739CDAB46ED2496EDF9B7DB
        B6A71E7991CB33C4C63A46315ACADAB6F64BC8F867FE08E7A3785B5FF8C7E246
        D5B4BB5BCF1269F630DF6877537CFF00658F7B25C1453F287CBC187C1600B004
        02777E94471E6315F37DEFEC3FA5FC26FDA5740F89DE027B7D07FD33EC9AE68D
        82B677505D11133C0147EEDC3BA394FF0056C5171B0825BE92846D4AF2F89F32
        A58FC67D728B76925A3FB2D68D7A75D34D7B9E8E4183A984C37D5AA5AF16F55D
        53D53FF873FFD9}
    end
    object Image5: TImage
      Left = 216
      Top = 8
      Width = 89
      Height = 30
      Picture.Data = {
        0A544A504547496D616765B70A0000FFD8FFE000104A46494600010101009600
        960000FFE100224578696600004D4D002A000000080001011200030000000100
        01000000000000FFDB0043000201010201010202020202020202030503030303
        030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
        0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108001E0059030122000211
        01031101FFC4001F000001050101010101010000000000000000010203040506
        0708090A0BFFC400B5100002010303020403050504040000017D010203000411
        05122131410613516107227114328191A1082342B1C11552D1F0243362728209
        0A161718191A25262728292A3435363738393A434445464748494A5354555657
        58595A636465666768696A737475767778797A838485868788898A9293949596
        9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
        D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
        0100030101010101010101010000000000000102030405060708090A0BFFC400
        B511000201020404030407050404000102770001020311040521310612415107
        61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
        1A262728292A35363738393A434445464748494A535455565758595A63646566
        6768696A737475767778797A82838485868788898A92939495969798999AA2A3
        A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
        D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
        3F00FDFA3228EF5E0FFF00051AFDA06EFF0067AFD9B2E354D2666875CD4351B5
        B2B02A70DBB7F9B27E0628A419FF006AB95FDACBF6E5F1F7EC99AEEED43E1658
        EB3E17B8936596BB6FE20923864249C47327D95BC993FD92C55BF8598E40F8A7
        F6CCFDB8B52FDB18F87E2B8F0FC3E19B3F0F99E416F16A2D7A2EA49760DEC4C5
        1EDDAA840183FEB1B9AFB8E17E13C562B1347135609D0BDDBE68BDB5B349DF57
        A33E4F3EE22A142854A14E4D55B592B35F3BB563F58BC07E2BB3F1D78434DD73
        4F93CCB1D66D22BDB76F58E440EBF8E1AB5F78CF5AFCC2FD9E3FE0AB7AB7ECF9
        F06745F08CDE0BB5F1047A146F0C57F36BAD6ACF1191DD10A7D9E40362B04077
        7214702BEDAFD983E35F8FBE3D7851F5CF107806CFC0BA7DC43BF4C4B8D5A4B9
        BBBC27A3BC26DE3F2E2EE0B1DCDD940C337939D70BE3B2E729D68A50BB517CD1
        BB57D1A57BEDBE9A753BB2BE20C2E32D0A6DB9DAED59E8FAEB6B6FE67B1330C5
        7CE5FB67FED543E01FC66F841A3C77490DBEB1ADB4BAC02D802C8C66D7E7FF00
        644970241EF6FED5E7DF1F7FE0A65E3EFD9A7C6ADA278ABE0FD8C0CE58DA5F45
        E2691ECF5141FC71486CC671C654E1973C81C13F16FED69FB4ADFF00ED65F15D
        BC517DA6C7A284B0874EB6B28EECDCADB471976FF58513259E476CED18C81CE2
        BDEE19E0BC5622BC6B62E2BD8B8CACD4A2D36D596CDF577F91E5E79C51429527
        4A837ED135A34D5ACEEF75E47ECF423CB5C7A7155F59D43FB2F4CB8B95866B83
        6F134A218577492ED04ED41C658E3007735F9F9E0CFF0082CE788A1D2B49D25B
        E1A41AE6AAB0C166658B5F9166D4670A1372C4B6AC7748DC8405882D8C9EA7EC
        7F86BE3DF1DF8A3E115D6BDE21F04D9E83E206B779ECBC3F06B3F699A4210948
        E599E28D2291DB031860A08C9CE547CD665C398FCB9278C8A8A6F4F7A377E893
        BDBCED647B981CEB0B8CBAC3C9BB6FA3B2F9B561BF01FF006A5F057ED19A04D7
        DE1BD5E3926B35CDF585D21B7BED388EA2589BE65C1C8DC3284838638AF27F8C
        FF00F052BF09E83FB295EF8F3C25751DF6A77F3CBA5693657916D912F133969A
        30D911A26253C8DCAC8320B8AF813F694F8C577E35FDA1B56F13D9F856EBE17F
        880B343A8D9DADF4AB70B7382B348EDB222AF229C385501FA9DC5989F3011EC5
        007CAA3A60E31FE702BF47CB7C3AC349C3115E4F95F2BE5D1E9AF345C95D34F4
        B4974BAB5D9F138EE34AF14E8D34AEAEB9B55AF4693B5ACAFA3BEA7EE67C38F1
        33F883C1BA1DC5F4D6A356BCD320BBBA8623B76BBC6A5C84C921771E339C71CD
        741BABF25BFE09CBF12FC5BE07F8E3756FE09F06E87E2BF117886D96DE79F50B
        96B692D2D11C3C87CEE42213B0B7CAE4948C0048C1FD5DF38FAC7FF7D7FF0063
        5F9EF136472CAB15EC1C9493574F45F85DB5D95F7B1F6591E6EB1F87F6BCAD35
        A3DDAFBEC93F3B6C43E26F0CE9FE29D02F34ED52CED2FF004DBE88C5736F7318
        921990F50CA7822BF11FC59A5D9F8A3E2BEB56BE0BD2EF24D2EE752BB3A358DB
        AC97537D8D5DDA3C7DE76C44031C9247392719AFD96F8FD61ACEB7F0735ED374
        0B8B5B4D6359B5FECCB4B8B86658EDA4B865804A4A827E4F30B0C0E4A8E9D6B8
        FF00D927F62DF097EC97E1A3068F1B5F6B97512C7A86B370A05C5D60E76281C4
        7103D114F61B8B91BABD4E16E20A793D1AD5E5794A56518DDA5A6EDFE0975387
        3FC9E79955A7457BB18DDB975F24BAF7BF43E03FF8259691E15F15FED5B6765E
        24D36CF549A4B09A7D1BED1978E1BC8B6BEED99DAC4442623703B4A02304647E
        AE24595AF9C7E3C7EC45A537C5AD27E2C782DADFC3BE2EF0F5FA6AB7F0E0AD96
        B3129FDF870A098E6788B8DEBC3127729277AFD1F07FABFC48AE4E2BCDA96678
        88632937AC52717F664B74BA59E8EEBE7A9D1C3F97CF054A786A8968F46BAA7B
        5FCD6AB53CDBF6B1D17C29A97ECFDE289BC69A55B6B1A0E95A74FA8CB6F312AD
        BE28D8A98DC10C9213F2AB29072DD6BF1974CD1EFB51D3EEA686D6EAF23D36DD
        6E6F65861678EDA3C85F324206110B1037360648AFD86FDB1FE106A9FB437C34
        B5F02E9DAA43A35BF882FA36D52EE48CC8E96509F35C44A386919D6200310B8D
        C49C800F45F03FF677F09FECFF00E015F0EF86B4B8EDAC9C66EE49712CFA8BED
        DA5E7723F78C47A8C01C000715E8F0CF1453CA3032D1CE739691BD924ADADFBB
        D76EDA9C39E6433CCB17177518C56F6BB6DEDF25E7F23E2FFF008231E8BE17D5
        FC43E30B9BAD2ED65F186922DE5B1BE989778ED250E8EB1293842193E6600122
        5519238AFBF35E4BC9342BC5D35EDA2D49A1716AF708648525DA761750412A1B
        048041201E457CFF00E13FD8A34DFD9FBF6A3B1F1F780E68748D175813697ADE
        84F9F25566C32C96A403B0099232633F2819DA5400A7E8E48811DFF3AF1B89F1
        D4F1B8F78CA0DB8CD27696F17B38FA5D696D353D3C87073C2E13EAB5524E2DAB
        AEBD53F5B7CCFCBCFDB5FF00634F1C785FC43A36B5AE78AAEBE22F8EFC757EF6
        E96963A4B27CB145B9994EEC2C683680A1154024E4004D7CD16DE1DD42FB4BB7
        BD8ED276B2BCBCFECF86E361F2A4B8C23795BBFBDB5D4E3D0D7EED1B65CB1E7E
        618233C1AF09F825FB06785BE1EFC0AB1F04EBC91F8896CBC427C482E76B5B93
        74B36E81805391B62091919C30DFC61B15F5B93F8853A185F678A8DDC5A4AC92
        D1F35EC924928E892EB77AF6F9DCCF83955C473D09593BBD5B7AE9D5DDBBEB76
        7C83FB14FEC3F67E30F8D1E2FF000978E2EBC5BE0EF1D782C5BEA1A7CDA4DE25
        BC9E533488668DCA36E5DC10ABA1008720F208AFD0AFF85617BFF438F8ABFEFB
        B6FF00E335D42D842977F68F2D3CFDBB3CCDA376DCE719EB8CF38A9ABE373ACF
        F119957F6D574D169BA4ECAF6BEC9B57B1F4B95E4B430547D9415F57AF56AFA5
        FBB4B4B9FFD9}
      Stretch = True
    end
  end
  object DataSource1: TDataSource
    DataSet = QLean
    Left = 221
    Top = 89
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 16
    Top = 358
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'SELECT S.DDBH, S.GXLB, S.Article, S.XieMing, S.Qty, X.DAOMH, X.X' +
        'TMH, B.DepName, S.RPlanDate, S.ROrder FROM SMDD S'
      'LEFT JOIN DDZL D ON D.DDBH = S.YSBH'
      
        'LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHa' +
        'o'
      'LEFT JOIN BDepartment B ON B.ID = S.RDepNO'
      'WHERE B.DepName LIKE :LEANNO AND S.GSBH = '#39'VA12'#39
      'AND MONTH(S.RPlanDate) = '#39'7'#39' AND YEAR(S.RPlanDate) = '#39'2016'#39
      'ORDER BY S.RPlanDate, SUBSTRING(B.DepName, 1, 11)')
    Left = 48
    Top = 358
    ParamData = <
      item
        DataType = ftString
        Name = 'LEANNO'
        ParamType = ptUnknown
        Size = 10
      end>
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1RPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
    end
    object Query1ROrder: TIntegerField
      FieldName = 'ROrder'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER(ORDER BY S.YSBH DESC) AS RecNo, S.YSBH,' +
        ' S.GXLB, D.XieXing, S.XieMing, D.SheHao,'
      
        'CASE WHEN CHARINDEX('#39'/'#39',S.Article)>0 THEN SUBSTRING(S.Article,1,' +
        'CHARINDEX('#39'/'#39',S.Article)-1) ELSE S.Article END AS Article, SUM(S' +
        '.Qty) AS Pairs, D.ShipDate, '
      
        'CONVERT(varchar(2), MONTH(D.ShipDate))+'#39'/'#39'+ CONVERT(varchar(2), ' +
        'DAY(D.ShipDate)) AS ShipDate1, X.DAOMH, REPLACE(X.DAOMH,'#39'LY-'#39','#39#39 +
        ') AS DAOMH1, X.XTMH FROM SMDD S'
      'LEFT JOIN DDZL D ON D.DDBH = S.YSBH'
      
        'LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHa' +
        'o'
      
        'WHERE S.RDepNO = :LEANNO AND D.BUYNO LIKE :BUYNO AND S.GXLB = '#39'A' +
        #39
      
        'GROUP BY S.YSBH, S.GXLB, D.XieXing, S.XieMing, D.SheHao, S.Artic' +
        'le, D.ShipDate, X.DAOMH, X.XTMH'
      'UNION ALL SELECT * FROM ('
      
        'SELECT 1 T1, '#39'1BUY '#24555#36895#35330#21934#39' T2, NULL T3, NULL T4, NULL T5, NULL T6,' +
        ' NULL T7, 0 T8, NULL T9, NULL T10, NULL T11, :IsSLT T12, NULL T1' +
        '3'
      
        'UNION ALL SELECT 2, '#39'2BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 3, '#39'3BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 4, '#39'4BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 5, '#39'5BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 6, '#39'6BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 7, '#39'7BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 8, '#39'8BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 9, '#39'9BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL, 0' +
        ', NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 10, '#39'10BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL,' +
        ' 0, NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 11, '#39'11BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL,' +
        ' 0, NULL, NULL, NULL, :IsSLT, NULL'
      
        'UNION ALL SELECT 12, '#39'12BUY '#24555#36895#35330#21934#39', NULL, NULL, NULL, NULL, NULL,' +
        ' 0, NULL, NULL, NULL, :IsSLT, NULL) AS BUY'
      'WHERE BUY.T12 = '#39'SLT'#39)
    Left = 441
    Top = 90
    ParamData = <
      item
        DataType = ftString
        Name = 'LEANNO'
        ParamType = ptUnknown
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BUYNO'
        ParamType = ptUnknown
        Size = 10
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IsSLT'
        ParamType = ptUnknown
      end>
    object Query2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query2GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object Query2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query2ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query2ShipDate1: TStringField
      FieldName = 'ShipDate1'
      FixedChar = True
      Size = 5
    end
    object Query2DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query2DAOMH1: TStringField
      FieldName = 'DAOMH1'
      FixedChar = True
      Size = 255
    end
    object Query2XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query2RecNo: TFloatField
      FieldName = 'RecNo'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query2
    Left = 409
    Top = 90
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DepName AS '#39'Lean'#39' FROM BDepartment '
      'WHERE GSBH = '#39'VA12'#39'  '
      '     AND ProYN = 1'
      '     AND sumline IS NOT NULL '
      '     AND YN = 1'
      '     AND SUBSTRING(DepName,1,8) = '#39'A1_LEAN1'#39)
    Left = 125
    Top = 314
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    Left = 85
    Top = 481
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT REPLACE(X.DAOMH,'#39'LY-'#39','#39#39') AS LY, D.DDBH AS RY, '#39#39' AS '#39'Mat' +
        'erial/VT'#39', S.Style AS '#39'CHAT LIEU'#39', REPLACE(X.XTMH,'#39'TV-'#39','#39#39') AS '#39 +
        'Last#'#39', CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+'#39'01'#39'))+' +
        #39' Buy'#39' AS BUY, '#39#39' AS BTS, '#39#39' AS '#39'Cut/C'#39', D.ARTICLE AS SKU, '#39#39' AS' +
        ' '#39'Stitching/M'#39', D.Pairs AS '#39'Quantity/SL'#39', '#39#39' AS '#39'Forming/G'#39', D.S' +
        'hipDate AS CSD, D.DDGB AS '#39'Country/N'#39' FROM DDZL D'
      
        'LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHa' +
        'o'
      
        'LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.She' +
        'Hao'
      'LEFT JOIN CLLBZL C ON C.CLLB = X.CLID'
      'WHERE D.DDBH = '#39'Y1707-0457'#39)
    Left = 1309
    Top = 358
    object Query5LY: TStringField
      FieldName = 'LY'
      FixedChar = True
      Size = 255
    end
    object Query5RY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 15
    end
    object Query5MaterialVT: TStringField
      DisplayLabel = #26448#26009'/VT'
      FieldName = 'Material/VT'
      FixedChar = True
      Size = 1
    end
    object Query5CHATLIEU: TStringField
      FieldName = 'CHAT LIEU'
      FixedChar = True
      Size = 15
    end
    object Query5Last: TStringField
      FieldName = 'Last#'
      FixedChar = True
      Size = 255
    end
    object Query5BUY: TStringField
      FieldName = 'BUY'
      FixedChar = True
      Size = 10
    end
    object Query5Process: TStringField
      DisplayLabel = #29305#27530'/DD'
      FieldName = 'Process'
    end
    object Query5CutC: TIntegerField
      DisplayLabel = #35009#26039'/C'
      FieldName = 'Cut/C'
    end
    object Query5SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query5StitchingM: TIntegerField
      FieldName = 'Stitching/M'
    end
    object Query5QuantitySL: TIntegerField
      DisplayLabel = #25976#37327'/SL'
      FieldName = 'Quantity/SL'
    end
    object Query5FormingG: TStringField
      DisplayLabel = #25104#22411'/G'
      FieldName = 'Forming/G'
      FixedChar = True
      Size = 1
    end
    object Query5CSD: TStringField
      FieldName = 'CSD'
    end
    object Query5CountryN: TStringField
      DisplayLabel = #22283#23478'/N'
      FieldName = 'Country/N'
      FixedChar = True
      Size = 4
    end
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 1133
    Top = 314
  end
  object PopupMenu1: TPopupMenu
    MenuAnimation = [maLeftToRight]
    Left = 473
    Top = 90
    object Return: TMenuItem
      Caption = 'RETURN'
      OnClick = ReturnClick
    end
    object AssignTo: TMenuItem
      Caption = 'ASSIGN TO ...'
      object A1LEAN1: TMenuItem
        Caption = 'A1 LEAN1'
        OnClick = A1LEAN1Click
      end
      object A1LEAN2: TMenuItem
        Caption = 'A1 LEAN2'
        OnClick = A1LEAN2Click
      end
      object A1LEAN3: TMenuItem
        Caption = 'A1 LEAN3'
        OnClick = A1LEAN3Click
      end
      object A1LEAN4: TMenuItem
        Caption = 'A1 LEAN4'
        OnClick = A1LEAN4Click
      end
      object A1LEAN5: TMenuItem
        Caption = 'A1 LEAN5'
        OnClick = A1LEAN5Click
      end
      object A12PM1: TMenuItem
        Caption = 'A12 PM'
        OnClick = A12PM1Click
      end
      object A2LEAN1: TMenuItem
        Caption = 'A2 LEAN1'
        OnClick = A2LEAN1Click
      end
      object A2LEAN2: TMenuItem
        Caption = 'A2 LEAN2'
        OnClick = A2LEAN2Click
      end
      object A2LEAN3: TMenuItem
        Caption = 'A2 LEAN3'
        OnClick = A2LEAN3Click
      end
    end
  end
  object PopupMenu2: TPopupMenu
    MenuAnimation = [maLeftToRight]
    Left = 80
    Top = 358
    object ReturnToLean: TMenuItem
      Caption = 'RETURN TO LEAN'
      OnClick = ReturnToLeanClick
    end
    object SPLITTHEORDER: TMenuItem
      Caption = 'SPLIT THE ORDER'
      OnClick = SPLITTHEORDERClick
    end
  end
  object QLean: TQuery
    BeforeScroll = QLeanBeforeScroll
    DatabaseName = 'DB'
    DataSource = DataSource4
    SQL.Strings = (
      
        'SELECT B.LEANNO, ISNULL(S1.NotScheduled,0)+ISNULL(S2.Scheduled,0' +
        ') AS Orders, ISNULL(S1.Pairs,0)+ISNULL(S2.Pairs,0) AS Pairs,'
      
        'ISNULL(CASE WHEN S1.BUYNO IS NOT NULL THEN S1.BUYNO ELSE S2.BUYN' +
        'O END, '#39'NO'#39') AS BUYNO FROM'
      
        '( SELECT DISTINCT SUBSTRING(DepName, 1, CHARINDEX('#39'-'#39', DepName)-' +
        '1) AS LEANNO FROM BDepartment'
      
        '  WHERE GSBH = '#39'VA12'#39' AND (YN = 1 OR YN = 5) AND sumline IS NOT ' +
        'NULL AND ProYN = 1'
      ') AS B'
      'LEFT JOIN'
      
        '( SELECT T.RDepNO, COUNT(T.YSBH) AS NOTScheduled, SUM(T.Qty) AS ' +
        'Pairs, T.BUYNO FROM'
      
        '  ( SELECT S.YSBH, S.RDepNO, SUM(S.Qty) AS Qty, SUBSTRING(D.BUYN' +
        'O,1,6) AS BUYNO FROM SMDD S'
      '    LEFT JOIN DDZL D ON D.DDBH = S.YSBH AND D.GSBH = S.GSBH'
      
        '    WHERE S.GXLB = '#39'A'#39' AND S.GSBH = '#39'VA12'#39' AND D.BUYNO LIKE :BUY' +
        'NO AND ISNULL(D.RYTYPE,'#39#39') <> '#39'SLT'#39' AND D.DDLB = '#39'N'#39' AND D.DDZT ' +
        '= '#39'Y'#39' AND S.RDepNO LIKE '#39'%LEAN%'#39
      '    GROUP BY S.YSBH, S.RDepNO, SUBSTRING(D.BUYNO,1,6)'
      '  ) AS T'
      '  GROUP BY T.RDepNO, T.BUYNO'
      ') AS S1 ON S1.RDepNO = B.LEANNO'
      'LEFT JOIN '
      
        '( SELECT T.LEANNO, COUNT(T.YSBH) AS Scheduled, SUM(T.Qty) AS Pai' +
        'rs, T.BUYNO FROM'
      
        '  ( SELECT S.YSBH, SUBSTRING(B.DepName, 1, 8) AS LEANNO, SUM(S.Q' +
        'ty) AS Qty, SUBSTRING(D.BUYNO,1,6) AS BUYNO FROM SMDD S'
      '    LEFT JOIN DDZL D ON D.DDBH = S.YSBH AND D.GSBH = S.GSBH'
      
        '    LEFT JOIN BDepartment B ON B.ID = S.RDepNO AND B.GSBH = S.GS' +
        'BH'
      
        '    WHERE S.GXLB = '#39'A'#39' AND S.GSBH = '#39'VA12'#39' AND D.BUYNO LIKE :BUY' +
        'NO AND ISNULL(D.RYTYPE,'#39#39') <> '#39'SLT'#39' AND D.DDLB = '#39'N'#39' AND D.DDZT ' +
        '= '#39'Y'#39' AND B.sumline IS NOT NULL'
      
        '    GROUP BY S.YSBH, SUBSTRING(B.DepName, 1, 8), SUBSTRING(D.BUY' +
        'NO,1,6)'
      '  ) AS T'
      '  GROUP BY T.LEANNO, T.BUYNO'
      ') AS S2 ON S2.LEANNO = B.LEANNO'
      
        'GROUP BY B.LEANNO, ISNULL(S1.NotScheduled,0)+ISNULL(S2.Scheduled' +
        ',0), ISNULL(S1.Pairs,0)+ISNULL(S2.Pairs,0), S1.BUYNO, S2.BUYNO'
      'ORDER BY B.LEANNO')
    Left = 253
    Top = 89
    ParamData = <
      item
        DataType = ftString
        Name = 'BUYNO'
        ParamType = ptUnknown
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BUYNO'
        ParamType = ptUnknown
      end>
    object QLeanLEANNO: TStringField
      FieldName = 'LEANNO'
      FixedChar = True
      Size = 16
    end
    object QLeanOrders: TIntegerField
      FieldName = 'Orders'
    end
    object QLeanPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object QLeanBUYNO: TStringField
      FieldName = 'BUYNO'
    end
    object QLeanIsSLT: TStringField
      FieldName = 'IsSLT'
    end
  end
  object PopupMenu3: TPopupMenu
    MenuAnimation = [maLeftToRight]
    Left = 112
    Top = 358
    object ENABLE: TMenuItem
      Caption = 'ENABLE'
      OnClick = EnbleClick
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 144
    Top = 358
  end
  object PopupMenu5: TPopupMenu
    Left = 176
    Top = 358
    object DISABLE: TMenuItem
      Caption = 'DISABLE'
      OnClick = DisableClick
    end
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 117
    Top = 481
  end
  object DSTemp: TDataSource
    Left = 409
    Top = 122
  end
  object QBuyNo: TQuery
    BeforeScroll = QBuyNoBeforeScroll
    AfterScroll = QBuyNoAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT S1.BUY, S1.BUYNO, S2.Orders, S2.Pairs FROM ('
      
        '  SELECT SUBSTRING(DDZL.BUYNO,1,4) + '#39' '#39' + CAST(CAST(SUBSTRING(D' +
        'DZL.BUYNO,5,2) AS INT) AS VARCHAR) + '#39'BUY'#39' AS BUY, SUBSTRING(DDZ' +
        'L.BUYNO,1,6) AS BUYNO, SUM(SMDD.Qty) AS Pairs FROM SMDD'
      
        '  LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.G' +
        'SBH'
      
        '  WHERE SMDD.GSBH = '#39'VA12'#39' AND ISNULL(DDZL.RYTYPE,'#39#39') <> '#39'SLT'#39' A' +
        'ND DDZL.DDLB = '#39'N'#39' AND DDZL.DDZT = '#39'Y'#39' AND SMDD.GXLB = '#39'A'#39' AND S' +
        'MDD.RDepNO IS NOT NULL AND DDZL.BUYNO IS NOT NULL'
      
        '  GROUP BY SUBSTRING(DDZL.BUYNO,1,4), SUBSTRING(DDZL.BUYNO,5,2),' +
        ' SUBSTRING(DDZL.BUYNO,1,6)'
      ') AS S1 LEFT JOIN ('
      
        '  SELECT T.BUYNO, COUNT(T.YSBH) AS Orders, SUM(T.Qty) AS Pairs F' +
        'ROM ('
      
        '    SELECT SUBSTRING(DDZL.BUYNO,1,6) AS BUYNO, SMDD.YSBH, SUM(SM' +
        'DD.Qty) AS Qty FROM SMDD'
      
        '    LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD' +
        '.GSBH'
      
        '    WHERE SMDD.GSBH = '#39'VA12'#39' AND ISNULL(DDZL.RYTYPE,'#39#39') <> '#39'SLT'#39 +
        ' AND DDZL.DDLB = '#39'N'#39' AND DDZL.DDZT = '#39'Y'#39' AND SMDD.GXLB = '#39'A'#39
      '    GROUP BY SMDD.YSBH, SUBSTRING(DDZL.BUYNO,1,6)'
      '  ) AS T     '
      '  GROUP BY T.BUYNO'
      ') AS S2 ON S2.BUYNO = S1.BUYNO LEFT JOIN ('
      '  SELECT T.BUYNO, COUNT(T.YSBH) AS Orders FROM ('
      
        '    SELECT SUBSTRING(DDZL.BUYNO,1,6) AS BUYNO, SMDD.YSBH, SUM(SM' +
        'DD.Qty) AS Pairs FROM SMDD'
      
        #9'LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GS' +
        'BH'
      
        '    WHERE SMDD.GSBH = '#39'VA12'#39' AND ISNULL(DDZL.RYTYPE,'#39#39') <> '#39'SLT'#39 +
        ' AND DDZL.DDLB = '#39'N'#39' AND DDZL.DDZT = '#39'Y'#39' AND SMDD.GXLB = '#39'A'#39' AND' +
        ' SMDD.RPlanDate IS NOT NULL'
      #9'GROUP BY SMDD.YSBH, SUBSTRING(DDZL.BUYNO,1,6)'
      '  ) AS T '
      '  GROUP BY T.BUYNO'
      ') AS S3 ON S3.BUYNO = S1.BUYNO'
      'WHERE S2.Orders > ISNULL(S3.Orders,0)'
      'ORDER BY S1.BUYNO DESC')
    Left = 57
    Top = 90
    object QBuyNoBUY: TStringField
      FieldName = 'BUY'
    end
    object QBuyNoBUYNO: TStringField
      FieldName = 'BUYNO'
    end
    object QBuyNoOrders: TIntegerField
      FieldName = 'Orders'
    end
    object QBuyNoPairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DataSource4: TDataSource
    DataSet = QBuyNo
    Left = 25
    Top = 90
  end
  object Query6: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource4
    SQL.Strings = (
      
        'SELECT SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.Sh' +
        'eHao, SMDD.Article, SUM(SMDD.Qty) AS Pairs, DDZL.ShipDate,'
      
        'XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RP' +
        'lanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate ' +
        'FROM SMDD'
      
        'LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSB' +
        'H'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'LEFT JOIN BDepartment ON BDepartment.ID = SMDD.RDepNO'
      
        'WHERE DDZL.BUYNO LIKE :BUYNO AND SMDD.GSBH = '#39'VA12'#39' AND SMDD.GXL' +
        'B = '#39'A'#39' AND ISNULL(DDZL.RYTYPE,'#39#39') <> '#39'SLT'#39' AND DDZL.DDLB = '#39'N'#39' ' +
        'AND DDZL.DDZT IN ('#39'Y'#39', '#39'S'#39')'
      
        'GROUP BY SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.' +
        'SheHao, SMDD.Article, DDZL.ShipDate, XXZL.DAOMH, XXZL.XTMH, SMDD' +
        '.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, S' +
        'MDD.ROrder, SMDD.PRdate, SMDD.OKdate'
      'ORDER BY SMDD.YSBH')
    Left = 85
    Top = 397
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BUYNO'
        ParamType = ptUnknown
      end>
    object Query6YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query6GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object Query6XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query6XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query6SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query6Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query6Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query6ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query6DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query6XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query6RDepNO: TStringField
      FieldName = 'RDepNO'
      FixedChar = True
      Size = 10
    end
    object Query6DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query6RPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
    end
    object Query6RPlanEdate: TDateTimeField
      FieldName = 'RPlanEdate'
    end
    object Query6ROrder: TIntegerField
      FieldName = 'ROrder'
    end
    object Query6PRdate: TDateTimeField
      FieldName = 'PRdate'
    end
    object Query6OKdate: TDateTimeField
      FieldName = 'OKdate'
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 1309
    Top = 394
    object DELETE: TMenuItem
      Caption = 'DELETE'
      OnClick = DELETEClick
    end
  end
  object PopupMenu7: TPopupMenu
    Left = 1341
    Top = 394
  end
  object Query7: TQuery
    DatabaseName = 'DB'
    Left = 1341
    Top = 358
  end
end
