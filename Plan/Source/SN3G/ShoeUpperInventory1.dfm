object ShoeUpperInventory: TShoeUpperInventory
  Left = 354
  Top = 193
  Width = 1307
  Height = 724
  Caption = 'Shoe Upper Inventory'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1291
    Height = 685
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnChanging = PC1Changing
    object TabSheet1: TTabSheet
      Caption = 'Component Delivery'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
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
        object Label5: TLabel
          Left = 156
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
        object Label6: TLabel
          Left = 341
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
        object Label7: TLabel
          Left = 500
          Top = 16
          Width = 31
          Height = 16
          Alignment = taRightJustify
          Caption = 'Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_C: TDateTimePicker
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
          OnChange = DTP_CChange
        end
        object CB_Building_C: TComboBox
          Left = 215
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 1
          OnChange = CB_Building_CChange
        end
        object CB_Lean_C: TComboBox
          Left = 376
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
        end
        object Button2: TButton
          Left = 632
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
          OnClick = Button2Click
        end
        object CB_Time_C: TComboBox
          Left = 536
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 4
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            '09:30'
            '13:30'
            '16:30')
        end
      end
      object PC2: TPageControl
        Left = 0
        Top = 48
        Width = 1283
        Height = 606
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'Unconfirmed'
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 41
            Width = 1275
            Height = 534
            Align = alClient
            DataSource = DS_C
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
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
            HorzScrollBar.Tracking = True
            ParentFont = False
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleImages = ImageList1
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnDrawColumnCell = DBGridEh2DrawColumnCell
            OnTitleBtnClick = DBGridEh2TitleBtnClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CheckStatus'
                Footers = <>
                Title.Caption = ' '
                Title.ImageIndex = 0
                Title.TitleButton = True
                Width = 21
                OnUpdateData = DBGridEh2Columns0UpdateData
              end
              item
                DisplayFormat = 'hh:MM'
                EditButtons = <>
                FieldName = 'Date'
                Footer.Alignment = taRightJustify
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Time'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Building'
                Footers = <>
                ReadOnly = True
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'Lean'
                Footers = <>
                ReadOnly = True
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'BUYNO'
                Footers = <>
                Title.Caption = 'BUY'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'ZLBH'
                Footers = <>
                Title.Caption = 'RY'
                Width = 100
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'schedule_date'
                Footers = <>
                Title.Caption = 'Assembly Date'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Type'
                Footers = <>
                KeyList.Strings = (
                  'Ready'
                  'Others')
                PickList.Strings = (
                  'Dong Doi'
                  'Khac')
                ReadOnly = True
                Width = 80
              end
              item
                Alignment = taLeftJustify
                DisplayFormat = 'TC :  #T'
                EditButtons = <>
                FieldName = 'TotalCycles'
                Footers = <>
                Title.Caption = 'Status|Total'
                Width = 75
              end
              item
                Alignment = taLeftJustify
                DisplayFormat = 'HT :  #T'
                EditButtons = <>
                FieldName = 'CompletedCycles'
                Footers = <>
                Title.Caption = 'Status|Completed'
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'Cycle'
                Footers = <>
                ReadOnly = True
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Remark'
                Footers = <>
                ReadOnly = True
                Width = 250
              end
              item
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'User ID'
                Width = 60
              end
              item
                DisplayFormat = 'yyyy/MM/dd hh:mm'
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'User Date'
                Width = 110
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1275
            Height = 41
            Align = alTop
            TabOrder = 1
            object Button3: TButton
              Left = 11
              Top = 9
              Width = 75
              Height = 25
              Caption = 'Confirm'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button3Click
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Confirmed'
          ImageIndex = 1
          object Splitter1: TSplitter
            Left = 248
            Top = 41
            Height = 534
          end
          object DBGridEh3: TDBGridEh
            Left = 251
            Top = 41
            Width = 1024
            Height = 534
            Align = alClient
            DataSource = DS_C2
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
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
            HorzScrollBar.Tracking = True
            ParentFont = False
            PopupMenu = PopupMenu1
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleImages = ImageList1
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            OnDrawColumnCell = DBGridEh3DrawColumnCell
            OnTitleBtnClick = DBGridEh3TitleBtnClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CheckStatus'
                Footers = <>
                Title.Caption = ' '
                Title.ImageIndex = 0
                Title.TitleButton = True
                Width = 20
              end
              item
                DisplayFormat = 'hh:MM'
                EditButtons = <>
                FieldName = 'Date'
                Footer.Alignment = taRightJustify
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Time'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Building'
                Footers = <>
                ReadOnly = True
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'Lean'
                Footers = <>
                ReadOnly = True
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'BUYNO'
                Footers = <>
                Title.Caption = 'BUY'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'ZLBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'RY'
                Width = 100
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'schedule_date'
                Footers = <>
                Title.Caption = 'Assembly Date'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Type'
                Footers = <>
                KeyList.Strings = (
                  'Ready'
                  'Others')
                PickList.Strings = (
                  'Dong Doi'
                  'Khac')
                ReadOnly = True
                Width = 80
              end
              item
                Alignment = taLeftJustify
                DisplayFormat = 'TC :  #T'
                EditButtons = <>
                FieldName = 'TotalCycles'
                Footers = <>
                Title.Caption = 'Status|Total'
                Width = 75
              end
              item
                Alignment = taLeftJustify
                DisplayFormat = 'HT :  #T'
                EditButtons = <>
                FieldName = 'CompletedCycles'
                Footers = <>
                Title.Caption = 'Status|Completed'
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'Cycle'
                Footers = <>
                ReadOnly = True
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Remark'
                Footers = <>
                ReadOnly = True
                Width = 250
              end
              item
                EditButtons = <>
                FieldName = 'ConfirmID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'SQ Confirmation|ID'
                Width = 60
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ConfirmDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'SQ Confirmation|Date'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'User ID'
                Width = 60
              end
              item
                DisplayFormat = 'yyyy/MM/dd hh:mm'
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'User Date'
                Width = 110
              end>
          end
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 41
            Width = 248
            Height = 534
            Align = alLeft
            DataSource = DS_C1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
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
            HorzScrollBar.Tracking = True
            ParentFont = False
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ListNo'
                Footer.Alignment = taRightJustify
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'List No'
                Width = 90
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Ready'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 60
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Others'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 60
              end>
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1275
            Height = 41
            Align = alTop
            TabOrder = 2
            object Button5: TButton
              Left = 11
              Top = 9
              Width = 118
              Height = 25
              Caption = 'Generate List No'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button5Click
            end
            object Button4: TButton
              Left = 129
              Top = 9
              Width = 75
              Height = 25
              Caption = 'Excel'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button4Click
            end
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Upper WIP'
      ImageIndex = 3
      object Label17: TLabel
        Left = 0
        Top = 48
        Width = 1283
        Height = 25
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'WIP Pairs For Each Production Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlBottom
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1283
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
          Left = 156
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
        object Label15: TLabel
          Left = 341
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
        object DTP_W: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 45536.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 45536.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MinDate = 45536.000000000000000000
          ParentFont = False
          TabOrder = 0
          OnChange = DTP_WChange
        end
        object CB_Building_W: TComboBox
          Left = 215
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 1
          OnChange = CB_Building_WChange
        end
        object CB_Lean_W: TComboBox
          Left = 376
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
        end
        object Button7: TButton
          Left = 504
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
          OnClick = Button7Click
        end
        object Button9: TButton
          Left = 579
          Top = 11
          Width = 118
          Height = 25
          Caption = 'Closing Inventory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          WordWrap = True
          OnClick = Button9Click
        end
      end
      object DBGridEh11: TDBGridEh
        Left = 0
        Top = 298
        Width = 1283
        Height = 356
        Align = alClient
        DataSource = DS_W
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        HorzScrollBar.Tracking = True
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
            Width = 60
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
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = 'Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'RY'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Cycle'
            Footers = <>
            Title.Caption = 'WIP|Cycle'
            Width = 80
          end
          item
            DisplayFormat = '###,###,##0'
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.DisplayFormat = '###,###,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'WIP|Pairs'
            Width = 70
          end>
      end
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 73
        Width = 1283
        Height = 225
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 2
        object BarChart_W: TChart
          Left = 0
          Top = 0
          Width = 1283
          Height = 225
          AllowPanning = pmHorizontal
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          MarginBottom = 10
          MarginLeft = 1
          MarginRight = 1
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          OnClickSeries = BarChart_WClickSeries
          OnClickBackground = BarChart_WClickBackground
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
          Legend.Visible = False
          View3D = False
          Align = alClient
          BevelOuter = bvNone
          BevelWidth = 0
          PopupMenu = PopupMenu2
          TabOrder = 0
          object Series_W: TBarSeries
            Cursor = crHandPoint
            Marks.Arrow.Visible = False
            Marks.ArrowLength = 8
            Marks.BackColor = clYellow
            Marks.Font.Charset = DEFAULT_CHARSET
            Marks.Font.Color = clBlack
            Marks.Font.Height = -11
            Marks.Font.Name = 'Arial'
            Marks.Font.Style = [fsBold]
            Marks.Frame.Visible = False
            Marks.Style = smsValue
            Marks.Visible = True
            SeriesColor = 6968388
            Title = 'DaysSeries'
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Completed Upper'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1283
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
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 156
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
          Left = 341
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
          Left = 504
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
        object DTP_U: TDateTimePicker
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
          OnChange = DTP_UChange
        end
        object CB_Building_U: TComboBox
          Left = 215
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
          OnChange = CB_Building_UChange
        end
        object CB_Lean_U: TComboBox
          Left = 376
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
          Left = 904
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
        object ED_RY_U: TEdit
          Left = 528
          Top = 12
          Width = 105
          Height = 24
          TabOrder = 4
          OnChange = ED_RY_UChange
        end
        object CB_U: TCheckBox
          Left = 656
          Top = 16
          Width = 225
          Height = 17
          Caption = 'Show All Data Related To The RY'
          Enabled = False
          TabOrder = 5
          OnClick = CB_UClick
        end
      end
      object PC3: TPageControl
        Left = 0
        Top = 48
        Width = 1283
        Height = 606
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 1
        OnChanging = PC3Changing
        object TabSheet5: TTabSheet
          Caption = 'Stock - In'
          object Splitter2: TSplitter
            Left = 1072
            Top = 0
            Height = 575
            Align = alRight
          end
          object Panel14: TPanel
            Left = 1075
            Top = 0
            Width = 200
            Height = 575
            Align = alRight
            BevelOuter = bvNone
            Caption = 'Panel14'
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 200
              Height = 65
              Align = alTop
              TabOrder = 0
              object BUIC1: TBitBtn
                Left = 8
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Modify Current'
                Caption = 'Modify'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BUIC1Click
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
            end
            object DBGridEh5: TDBGridEh
              Left = 0
              Top = 65
              Width = 200
              Height = 510
              Align = alClient
              DataSource = DS_UIC
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              HorzScrollBar.Tracking = True
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Cycle'
                  Footer.Alignment = taRightJustify
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Width = 60
                end
                item
                  DisplayFormat = '###,###,##0'
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 80
                end>
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1072
            Height = 575
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1072
              Height = 65
              Align = alTop
              TabOrder = 0
              object BUI1: TBitBtn
                Left = 8
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Insert one New Record'
                Caption = 'Insert'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                OnClick = BUI1Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                Layout = blGlyphTop
                NumGlyphs = 2
              end
              object BUI2: TBitBtn
                Left = 56
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Delete one Record'
                Caption = 'Delete'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = BUI2Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333FF33333333333330003333333333333777333333333333
                  300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                  3300377777733333337733333333333333003333333333333377333333333333
                  3333333333333333333F333333333333330033333F33333333773333C3333333
                  330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                  333333377F33333333FF3333C333333330003333733333333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                Layout = blGlyphTop
                NumGlyphs = 2
              end
              object BUI3: TBitBtn
                Left = 104
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Modify Current'
                Caption = 'Modify'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BUI3Click
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
              object BUI4: TBitBtn
                Left = 152
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Save Current'
                Caption = 'Save'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = BUI4Click
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
              object BUI5: TBitBtn
                Left = 200
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Cancel'
                Caption = 'Cancel'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BUI5Click
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
              object BUI6: TBitBtn
                Left = 280
                Top = 8
                Width = 57
                Height = 49
                Caption = 'Excel'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnClick = BUI6Click
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
              Top = 65
              Width = 1072
              Height = 510
              Align = alClient
              DataSource = DS_UI
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              HorzScrollBar.Tracking = True
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
              OnGetCellParams = DBGridEh1GetCellParams
              Columns = <
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'RKNO'
                  Footer.Alignment = taRightJustify
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'List No'
                  Width = 100
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'Building'
                  Footers = <>
                  ReadOnly = True
                  Width = 60
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'Lean'
                  Footers = <>
                  ReadOnly = True
                  Width = 60
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'DAOMH'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Cutting Die'
                  Width = 150
                end
                item
                  EditButtons = <>
                  FieldName = 'RY'
                  Footers = <>
                  ReadOnly = True
                  Width = 100
                  OnEditButtonClick = DBGridEh1Columns4EditButtonClick
                end
                item
                  Color = cl3DLight
                  DisplayFormat = 'yyyy/MM/dd'
                  EditButtons = <>
                  FieldName = 'PlanDate'
                  Footers = <>
                  ReadOnly = True
                  Width = 80
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'Article'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'SKU'
                  Width = 120
                end
                item
                  Color = cl3DLight
                  DisplayFormat = 'yyyy/MM/dd'
                  EditButtons = <>
                  FieldName = 'ShipDate'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'GAC'
                  Width = 80
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'country'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Country'
                  Width = 150
                end
                item
                  Color = cl3DLight
                  DisplayFormat = '###,###,##0'
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  ReadOnly = True
                  Width = 60
                end
                item
                  Color = cl3DLight
                  DisplayFormat = '###,###,##0'
                  EditButtons = <>
                  FieldName = 'LackPairs'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Shortage'
                  Width = 65
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'UserID'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'User ID'
                  Width = 70
                end
                item
                  Color = cl3DLight
                  DisplayFormat = 'yyyy/MM/dd hh:mm'
                  EditButtons = <>
                  FieldName = 'UserDate'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'User Date'
                  Width = 110
                end>
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Stock - Out'
          ImageIndex = 1
          object Splitter3: TSplitter
            Left = 1072
            Top = 0
            Height = 575
            Align = alRight
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 1072
            Height = 575
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 1072
              Height = 65
              Align = alTop
              TabOrder = 0
              object BUO1: TBitBtn
                Left = 8
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Insert one New Record'
                Caption = 'Insert'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                OnClick = BUO1Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                Layout = blGlyphTop
                NumGlyphs = 2
              end
              object BUO2: TBitBtn
                Left = 56
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Delete one Record'
                Caption = 'Delete'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = BUO2Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333FF33333333333330003333333333333777333333333333
                  300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                  3300377777733333337733333333333333003333333333333377333333333333
                  3333333333333333333F333333333333330033333F33333333773333C3333333
                  330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                  333333377F33333333FF3333C333333330003333733333333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                Layout = blGlyphTop
                NumGlyphs = 2
              end
              object BUO3: TBitBtn
                Left = 104
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Modify Current'
                Caption = 'Modify'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BUO3Click
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
              object BUO4: TBitBtn
                Left = 152
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Save Current'
                Caption = 'Save'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = BUO4Click
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
              object BUO5: TBitBtn
                Left = 200
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Cancel'
                Caption = 'Cancel'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BUO5Click
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
              object BUO6: TBitBtn
                Left = 280
                Top = 8
                Width = 57
                Height = 49
                Caption = 'Excel'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnClick = BUO6Click
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
              Left = 0
              Top = 65
              Width = 1072
              Height = 510
              Align = alClient
              DataSource = DS_UO
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              HorzScrollBar.Tracking = True
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
              OnGetCellParams = DBGridEh6GetCellParams
              Columns = <
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'LLNO'
                  Footer.Alignment = taRightJustify
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'List No'
                  Width = 100
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'Building'
                  Footers = <>
                  ReadOnly = True
                  Width = 60
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'Lean'
                  Footers = <>
                  ReadOnly = True
                  Width = 60
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'DAOMH'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Cutting Die'
                  Width = 150
                end
                item
                  EditButtons = <>
                  FieldName = 'RY'
                  Footers = <>
                  ReadOnly = True
                  Width = 100
                  OnEditButtonClick = DBGridEh6Columns4EditButtonClick
                end
                item
                  Color = cl3DLight
                  DisplayFormat = 'yyyy/MM/dd'
                  EditButtons = <>
                  FieldName = 'PlanDate'
                  Footers = <>
                  ReadOnly = True
                  Width = 80
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'Article'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'SKU'
                  Width = 120
                end
                item
                  Color = cl3DLight
                  DisplayFormat = 'yyyy/MM/dd'
                  EditButtons = <>
                  FieldName = 'ShipDate'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'GAC'
                  Width = 80
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'country'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Country'
                  Width = 150
                end
                item
                  Color = cl3DLight
                  DisplayFormat = '###,###,##0'
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  ReadOnly = True
                  Width = 60
                end
                item
                  Color = cl3DLight
                  EditButtons = <>
                  FieldName = 'UserID'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'User ID'
                  Width = 70
                end
                item
                  Color = cl3DLight
                  DisplayFormat = 'yyyy/MM/dd hh:mm'
                  EditButtons = <>
                  FieldName = 'UserDate'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'User Date'
                  Width = 110
                end>
            end
          end
          object Panel10: TPanel
            Left = 1075
            Top = 0
            Width = 200
            Height = 575
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 200
              Height = 65
              Align = alTop
              TabOrder = 0
              object BUOC1: TBitBtn
                Left = 8
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Modify Current'
                Caption = 'Modify'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BUOC1Click
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
            end
            object DBGridEh7: TDBGridEh
              Left = 0
              Top = 65
              Width = 200
              Height = 510
              Align = alClient
              DataSource = DS_UOC
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              HorzScrollBar.Tracking = True
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Cycle'
                  Footer.Alignment = taRightJustify
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Width = 60
                end
                item
                  DisplayFormat = '###,###,##0'
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footer.DisplayFormat = '###,###,##0'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 80
                end>
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Inventory'
          ImageIndex = 2
          object Splitter4: TSplitter
            Left = 1072
            Top = 65
            Height = 510
            Align = alRight
          end
          object Splitter7: TSplitter
            Left = 217
            Top = 65
            Height = 510
            Visible = False
          end
          object DBGridEh8: TDBGridEh
            Left = 220
            Top = 65
            Width = 852
            Height = 510
            Align = alClient
            DataSource = DS_I
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Tracking = True
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Building'
                Footers = <>
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'Lean'
                Footers = <>
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                Title.Caption = 'Cutting Die'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'RY'
                Footer.Alignment = taRightJustify
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Date'
                Footers = <>
                Title.Caption = 'Plan Date'
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 120
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Pairs'
                Footers = <>
                Width = 60
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'TotalInPairs'
                Footers = <>
                Title.Caption = 'Total Stock-In'
                Width = 75
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'TodayInPairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Today Stock-In'
                Width = 75
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'LackPairs'
                Footers = <>
                Title.Caption = 'Shortage'
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'CompletedDate'
                Footers = <>
                Title.Caption = 'Completion Date'
                Width = 75
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'StockPairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'In Stock'
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'ShipDate'
                Footers = <>
                Title.Caption = 'GAC'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'country'
                Footers = <>
                Title.Caption = 'Country'
                Width = 150
              end>
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 1275
            Height = 65
            Align = alTop
            TabOrder = 1
            object BI1: TBitBtn
              Left = 8
              Top = 8
              Width = 57
              Height = 49
              Caption = 'Excel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = BI1Click
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
            object BI2: TButton
              Left = 65
              Top = 8
              Width = 62
              Height = 49
              Caption = 'Closing Inventory'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = BI2Click
            end
            object RG_I: TRadioGroup
              Left = 144
              Top = 2
              Width = 137
              Height = 56
              Caption = ' Sorting '
              ItemIndex = 0
              Items.Strings = (
                'By Plan Date'
                'By Stock-In Date')
              TabOrder = 2
              OnClick = RG_IClick
            end
            object CB_I: TCheckBox
              Left = 304
              Top = 25
              Width = 233
              Height = 17
              Caption = 'Show Total Inventory For Each Lean'
              Enabled = False
              TabOrder = 3
              OnClick = CB_IClick
            end
          end
          object DBGridEh9: TDBGridEh
            Left = 1075
            Top = 65
            Width = 200
            Height = 510
            Align = alRight
            DataSource = DS_IC
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Tracking = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Cycle'
                Footer.Alignment = taRightJustify
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 60
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 80
              end>
          end
          object DBGridEh13: TDBGridEh
            Left = 0
            Top = 65
            Width = 217
            Height = 510
            Align = alLeft
            DataSource = DS_ITI
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Visible = False
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
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 60
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 60
              end>
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Prod. Plan Tracking'
      ImageIndex = 2
      object PC5: TPageControl
        Left = 0
        Top = 0
        Width = 1283
        Height = 654
        ActivePage = TabSheet14
        Align = alClient
        TabOrder = 0
        object TabSheet13: TTabSheet
          Caption = 'Daily Plan'
          object Label16: TLabel
            Left = 0
            Top = 48
            Width = 1275
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Available Pairs Of Remaining Inventory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlBottom
          end
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 73
            Width = 1275
            Height = 225
            HorzScrollBar.Tracking = True
            Align = alTop
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object BarChart_PC: TChart
              Left = 0
              Top = 0
              Width = 1275
              Height = 225
              AllowPanning = pmHorizontal
              AllowZoom = False
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              MarginLeft = 1
              MarginRight = 1
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              OnClickSeries = BarChart_PCClickSeries
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
              Legend.Visible = False
              View3D = False
              Align = alClient
              BevelOuter = bvNone
              BevelWidth = 0
              PopupMenu = PopupMenu3
              TabOrder = 0
              object Series_PC: TBarSeries
                Cursor = crHandPoint
                Marks.Arrow.Visible = False
                Marks.ArrowLength = 8
                Marks.BackColor = clYellow
                Marks.Font.Charset = DEFAULT_CHARSET
                Marks.Font.Color = clBlack
                Marks.Font.Height = -11
                Marks.Font.Name = 'Arial'
                Marks.Font.Style = [fsBold]
                Marks.Frame.Visible = False
                Marks.Style = smsValue
                Marks.Visible = True
                SeriesColor = 6968388
                Title = 'DaysSeries'
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
          object DBGridEh10: TDBGridEh
            Left = 0
            Top = 318
            Width = 1275
            Height = 305
            Align = alClient
            DataSource = DS_PC
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Tracking = True
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
            OnGetCellParams = DBGridEh10GetCellParams
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
                Width = 60
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
                FieldName = 'AssemblyTime'
                Footers = <>
                Title.Caption = 'Time'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                Title.Caption = 'Cutting Die'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'RY'
                Footer.Alignment = taRightJustify
                Footer.DisplayFormat = '###,###,###'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Cycle'
                Footers = <>
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'RequiredPairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Pairs|Required'
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'OSPairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Pairs|Outsourced'
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Pairs|In Stock'
                Width = 80
              end
              item
                Alignment = taRightJustify
                EditButtons = <>
                FieldName = 'Status'
                Footer.Alignment = taRightJustify
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Pairs|Status'
                Width = 80
              end>
          end
          object Panel17: TPanel
            Left = 0
            Top = 298
            Width = 1275
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object CB_OS_Unmatched: TCheckBox
              Left = 16
              Top = 0
              Width = 201
              Height = 17
              Caption = 'Show Only Unmatched Cycles'
              TabOrder = 0
              OnClick = CB_OS_UnmatchedClick
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 1275
            Height = 48
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Label8: TLabel
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
            object Label9: TLabel
              Left = 430
              Top = 16
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
            object Label10: TLabel
              Left = 609
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
            object Label11: TLabel
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
            object Label12: TLabel
              Left = 268
              Top = 16
              Width = 62
              Height = 16
              Alignment = taRightJustify
              Caption = 'Plan Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DTP_PC1: TDateTimePicker
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
              OnChange = DTP_PC1Change
            end
            object CB_Building_PC: TComboBox
              Left = 483
              Top = 12
              Width = 105
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 0
              ParentFont = False
              TabOrder = 1
              OnChange = CB_Building_PCChange
            end
            object CB_Lean_PC: TComboBox
              Left = 644
              Top = 12
              Width = 105
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 0
              ParentFont = False
              TabOrder = 2
            end
            object Button6: TButton
              Left = 948
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
              OnClick = Button6Click
            end
            object DTP_PC2: TDateTimePicker
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
              TabOrder = 4
              OnChange = DTP_PC1Change
            end
            object CB_Plan_PC: TComboBox
              Left = 335
              Top = 12
              Width = 74
              Height = 24
              Style = csDropDownList
              ItemHeight = 16
              ItemIndex = 0
              TabOrder = 5
              Text = '1-Day'
              Items.Strings = (
                '1-Day'
                '3-Day')
            end
            object CB_OS_PC: TCheckBox
              Left = 771
              Top = 16
              Width = 158
              Height = 17
              Caption = 'Outsourcing Lean Only'
              Checked = True
              State = cbChecked
              TabOrder = 6
              OnClick = DTP_PC1Change
            end
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Monthly Plan'
          ImageIndex = 1
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1275
            Height = 48
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label19: TLabel
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
            object Label22: TLabel
              Left = 150
              Top = 16
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
            object LB_PC2_Building: TLabel
              Left = 922
              Top = 16
              Width = 48
              Height = 16
              Caption = 'Building'
              Visible = False
            end
            object LB_PC2_Lean: TLabel
              Left = 976
              Top = 16
              Width = 30
              Height = 16
              Caption = 'Lean'
              Visible = False
            end
            object LB_PC2_Month: TLabel
              Left = 880
              Top = 16
              Width = 36
              Height = 16
              Caption = 'Month'
              Visible = False
            end
            object IMG_HG: TImage
              Left = 1016
              Top = 14
              Width = 21
              Height = 21
              AutoSize = True
              Picture.Data = {
                07544269746D61702E060000424D2E0600000000000036040000280000001500
                0000150000000100080000000000F8010000120B0000120B0000000100000000
                0000000000006F242200DE484300DD484300DC484300DF48440080221F00FF43
                3D003A131200C3423E00FFE8E700FFD3D200C83C380040110F00A3393600FFFF
                FF00A4343000FFFCFC00FCF6F600FBF5F500FDF8F800FFE7E600A3393500FFDF
                DE00F9918D00F7817E00FBA8A600FFDFDF00FFD0CF00FF5B5500FF7E7A00FFDC
                DB00A7383500FCDDDC00F9837F00FC524C00FE443E00FE464000FA595300FCA4
                A100FCD8D700B7343000F59F9C00F5C7C500F7BBB900F9807C00FB615C00FB92
                8E00F2C6C500FBC1BF00F8898500AD3532002F0D0C0072272500C1535000F192
                8F00F6CDCC00FDCDCC00F8CCCB00EC807D00AB464300692624002E0E0D007824
                2100E5565200F1C5C400FABAB800E54B46005A1C1A002C0D0C00B6454100E672
                6F00F5AFAC00FAE2E200FCE3E200F69E9B00E1635E00A73E3B002A0E0D00F6BC
                BB00F9EAEA00FFFEFE00FFF3F300FEFEFE00F9DCDB00F7A4A100A6353200A33A
                3600FEE4E400FDCCCB00FDF2F200A3333000FBF1F000F7BCBA00FC807C00FB5F
                5A00F88E8B00F5CCCA00FEFDFD00FFD9D800FC645F00FF8A8600FFDEDD00FFD6
                D500FF6F6B00FF8E8A00FFDDDD00A23330004F1C1A00D2443F00FFC5C200FFB6
                B300FFB3B000FFBAB800FFB8B600DA433E00591D1B0020080800000000000000
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
                000000000000750D0D0D0D0D0D0D0D0D0D0D7500000000000000000000000607
                070707070707070707070600000000000000000000006C6D6E6F707070707071
                7273740000000000000000000000005767681D1D1D1D1D696A6B000000000000
                000000000000000E1C1D07070707071E1F5B0000000000000000000000000057
                63640707070707656610000000000000000000000000000E0F5C5D5E5F606162
                0A5B00000000000000000000000000570F0F5158595A0F0F0A5B000000000000
                00000000000000334F5051520A0F535455560000000000000000000000000045
                464748490A4A4B4C4D4E0000000000000000000000000000003F40410A424344
                0000000000000000000000000000003435363738393A3B3C3D3E000000000000
                00000000000000292A2B2C2D2E2F303132330000000000000000000000000020
                21222324072526272810000000000000000000000000000E1C1D07070707071E
                1F100000000000000000000000000016171819191919191A1B10000000000000
                000000000000000E11121313131313141510000000000000000000000000000E
                0F0F0F0F0F0F0F0F0A1000000000000000000000000008090A0A0A0A0A0A0A0A
                0B0C0D0000000000000000000000060707070707070707070707060000000000
                0000000000000102030303030204020402050100000000000000}
              Transparent = True
              Visible = False
            end
            object IMG_Tips: TImage
              Left = 847
              Top = 14
              Width = 20
              Height = 20
              Cursor = crHandPoint
              AutoSize = True
              Picture.Data = {
                0A544A504547496D61676512060000FFD8FFE000104A46494600010101012C01
                2C0000FFDB004300010101010101010101010101010101010101010101010101
                0101010101010101010101010101010101010101010101010101010101010101
                0101010101010101FFDB00430101010101010101010101010101010101010101
                0101010101010101010101010101010101010101010101010101010101010101
                01010101010101010101010101FFC00011080014001403011100021101031101
                FFC4001700010101010000000000000000000000000A080409FFC40025100002
                0202020202010500000000000000040503060207010809141213150A16212224
                FFC40017010101010100000000000000000000000008060705FFC40025110003
                0002030001040301010000000000010203040506111207131422320021912331
                FFDA000C03010002110311003F00C3E557CAAEDDEC2EDDB9EA0D4173B06BED01
                AFAC0EAA50415274726376A1A98E9569F67B4305B28A59884B2C59B3AED7739B
                F1B82DF598301A66937F9197F197C67ABD0EAF136BB6C48676F33A11CA272A29
                54D625505278D8F3A0654BA2B28C8BF5F50D3D24D9663F23273BE75B0DBEC327
                5FAFC9AE26A712B4C7031EAD36CE69B147BDDD0AB34999498C7BF1E3CBB82E7F
                1901020BE758BAF3A9BB6DAFFB4373D6BBB3616C3761A3D40AD25EEACE8DA422
                8F3CB9D8BC5A4BCA0ABDD2B471DC0819807A6D131D1368429C930881A803D764
                5707916F367C633F8E626C351838316B6CEB5C2C99265D8FF583F6EBDE4E1DD1
                0BB23869D90C99D5515A6ED3914CBD2EAF077D89BAC8C2D8E565D1658139E546
                8D8D2049CBFAEDD43262CE15590ABCD850292C43A0573D07F2D9AAB7F75E53DA
                B7DD8D06B9DB081D1D4BB7838E33E2B6C66A85C9CF86E098786193D105E08DE0
                E485F9E5F105C0CD4617E40C626799839BFC5BB3D1EFAD8BA485F61ABBC53331
                1FA0698E95A550E25989FCDE2F26F341FBC9A4CC03960379E2BCFB036DA89DF6
                B68E1E7CA8F8D909DF49669A4DC644D7AFC52AB45ED0FEB45A28254292371869
                BD91ACFB73CE8B296A58F67D73788940085BFAE58C2B065873B740A9132B1016
                114C48D6AED642006F2E4D43393354A56044F01ABC9E7095692DB6BF65C5C6E5
                2953AEC8D3B66B3613D279090FB534B4E0F065B4B225D3C809B2565552A0ABAF
                60EB5D766616F8EADD263363B25C45194A8D16AFDC0493D56AAD378D3B4A7E6A
                D3A4D812191BA3D7FF00D415633C3D9DD68D0F15D575AEB1D72D2CB29AB4A3AC
                23BCBD59AD6ED65709B9DF9F421CA67E315BA0925315078B39C328B7C9ACDC2D
                032561E1363997C27046D7EFF7071298D91BCDAD32A8A9068E1E3E346975C5C2
                8970A6948BD72E8E66195635C7F6E28C41BBF94ACCB99A7D60C84BC753AE4C74
                66A8A64DAF4489C8CAA852DE12893C745F6CACD59DBC2945EC493D28F18DD83E
                DA69F336BD0B22D4563F7ABAAC83992760AE16D2275A8E631901893341EE0981
                6C2655999071243EF2C343E64FB849B0C28797FC8DA1E2FB54D5E704B64FD9C7
                21C2A7D43215A5824DFC83E1FCCC5421E8F8A2375D30278FC6F846DB7FAF6CFC
                52D287DCD229E9CCC50CD2459D01EBD2FA733F43B1E9197BED4F496FCB5F423A
                F5BF755D8B7E5A93BAAFED9D70831F42E14A3D7273AC4BB09E28864F7088E4ED
                C478083CC9CE6BC8E6015C03C71EB0CD63072CC5CCEFF16F37DEE8F670D1E2D6
                37D5EC2FFF004C4CC4A552142096B6294AC9A2EFFF00945F4D273F934CB80C36
                7E7FC5751B5C0B6D6F3A4B3F0E40264633A4DAC8080B3C80D3A2D517BFC0F4B4
                4FD55C292A4D4F8CBE96EA4EDE76267A3EDF63799ABAACD3CA9C6AF3D01592EA
                35784A470136604A4626FAC6F107101922C9D61FF4E79F219A24DF09B042FC87
                CC36BC5B40337553C25C8A2A22B5E0F5589A743DCA6B644F49DF6828B44EC0F4
                8C3B0719E15C6F5FC836E71760F946332CC5635499A09FF7E28E64EDE5BAE98C
                CA3F5FAB29E8FF001DFD1E8F51D6951AF50A855E5754A755158C9ABD5E4C2E02
                2D56B44C38C211C7870E3F9E79FED24F3C99484144492924CB2912CB2E629CDC
                CCAD8E55F3736F4C9CBCAA35AF7B317A528E7B2CC4FF00800E95540550140014
                98B8B8F858F1C5C58A431E08B38C66A151114740003FD24F64924924927F9FFF
                D9}
              OnClick = IMG_TipsClick
            end
            object IMG_CHECK: TImage
              Left = 1042
              Top = 17
              Width = 15
              Height = 15
              AutoSize = True
              Picture.Data = {
                07544269746D617006030000424D060300000000000036000000280000000F00
                00000F0000000100180000000000D0020000120B0000120B0000000000000000
                0000FFFFFFFFFFFFFFFFFFFCFFFCC8F7C882ED8258E7584AE44A56E65680EC80
                C5F7C5FBFEFBFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFECFCEC6EEA6E37E1
                3737E1373AE23A3BE23B3AE23A37E13737E1376BE96BEAFCEAFFFFFFFFFFFF00
                0000FFFFFFF3FDF356E65635E1353BE23B3BE23B3BE23B3BE23B3BE23B3BE23B
                3BE23B36E13652E552F1FDF1FFFFFF006E00FDFFFD78EB7834E1343BE23B3BE2
                3B34E13432E13235E1353BE23B3BE23B3BE23B3BE23B34E13471EA71FDFFFD00
                7600D5F9D534E1343BE23B3BE23B2FE02F72EA72BCF5BC63E86330E0303BE23B
                3BE23B3BE23B3BE23B33E133CFF8CF0041008CEE8C35E1353BE23B2FE02F72EA
                72F7FEF7FFFFFFEFFDEF64E8642FE02F3BE23B3BE23B3BE23B35E13584ED8400
                7A0058E65839E23934E13473EB73F7FEF7FFFFFFFAFEFAFFFFFFF0FDF064E864
                2FE02F3BE23B3BE23B3AE23A57E657006D004AE44A3AE23A33E133D3F8D3FFFF
                FFC9F7C958E758DAFADAFFFFFFEFFDEF62E8622FE02F3BE23B3BE23B4AE44A00
                42005AE75A39E23936E1366CE96C9DF09D45E4452CE02C4BE44BD9F9D9FFFFFF
                EEFCEE63E86335E1353AE23A57E657006A008EEE8E35E1353CE23C34E1342FE0
                2F38E2383CE23C32E1324AE44AD9F9D9FFFFFFD6F9D635E13535E13586ED8600
                3000D7F9D734E1343BE23B3BE23B3BE23B3BE23B3BE23B3BE23B33E1334DE54D
                B4F4B481EC8135E13533E133D2F8D2000000FEFFFE7CEC7C33E1333BE23B3BE2
                3B3BE23B3BE23B3BE23B3CE23C37E13731E13134E13434E13475EB75FDFFFD00
                0000FFFFFFF5FEF55BE75B35E1353BE23B3BE23B3BE23B3BE23B3BE23B3BE23B
                3BE23B35E13556E656F3FDF3FFFFFF000100FFFFFFFFFFFFEFFDEF74EB7437E1
                3737E1373AE23A3BE23B3AE23A37E13737E13771EA71EDFCEDFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFEFFFECDF7CD88ED8859E7594BE44B59E75986ED86
                CAF7CAFDFFFDFFFFFFFFFFFFFFFFFF616E64}
              Transparent = True
              Visible = False
            end
            object IMG_LACK: TImage
              Left = 1060
              Top = 17
              Width = 15
              Height = 15
              AutoSize = True
              Picture.Data = {
                07544269746D617026050000424D260500000000000036040000280000000F00
                00000F0000000100080000000000F0000000120B0000120B0000000100000000
                0000000000004141FF004242FF004343FF009E9EF700C7C7F400C5C5F400C0C0
                F400BBBBF400B5B5F500AAAAF6005656FD00B3B3F500F0F0F0008B8BF9005353
                FE00C6C6F4009494F8004444FF008A8AF900EEEEF0009B9BF700E0E0F200A0A0
                F7008181FA00E5E5F100EFEFF000E8E8F100A5A5F6004B4BFE00D6D6F200C3C3
                F4006262FC00A9A9F6004646FF00B6B6F500C9C9F3007070FB004D4DFE00ACAC
                F600B4B4F5005959FD0000000000000000000000000000000000000000000000
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
                0000000000010101010101010101000000000000010101010101010101010100
                0000000101010302010101010101010100000101012627282901010101010101
                0100010122230D0D2420010F17250101010001011D1E0D0D1A1F20100D210101
                010001010218190D0D1A1B0D0D1C01010100010101030E160D0D0D0D0D170101
                0100010101011213140D0D0D0D1501010100010101010F100D0D0D0D0D110101
                0100010101020C0D0D0D0D0D0D0E01010100010101010405060708090A0B0101
                0100000101010203030202010101010100000000010101010101010101010100
                000000000001010101010101010100000000}
              Transparent = True
              Visible = False
            end
            object IMG_WARNING: TImage
              Left = 1080
              Top = 16
              Width = 21
              Height = 18
              AutoSize = True
              Picture.Data = {
                07544269746D6170E6050000424DE60500000000000036040000280000001500
                0000120000000100080000000000B0010000120B0000120B0000000100000000
                0000000000002119D600241CDB00716CE800C6C4F600A29FF000312ADD003730
                DE00F3F2FD00FFFFFF00726DE800241BDB00433CE000817CEA002E26DD006A64
                E600EEEEFC00544EE300D2D1F800403AE000B0ADF200FDFDFF002A22DC009490
                EE00E9E8FC00231BDA007772E900C8C7F600625CE500ABA8F1003B34DF009691
                EE005F59E5009591EE00E7E7FB002922DC00FBFBFF00C3C0F500271FDB004F49
                E200362EDE00241AD90000000000000000000000000000000000000000000000
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
                0000000202020202020202020202020202020202020229000000020202020202
                0202021627280202020202020202020000001902020202020202021A24252602
                0202020202020200000000020202020202020221092223020202020202020000
                00000000020202020202021E1F20020202020202020200000000000002020202
                0202021C091D0202020202020200000000000000190202020202021A091B0202
                0202020202000000000000000002020202020217091802020202020200000000
                0000000000000202020202140915160202020202000000000000000000000202
                0202021209091302020202000000000000000000000000020202021009091102
                0202020000000000000000000000000002020E0909090F020202000000000000
                000000000000000002020C0909090D0202000000000000000000000000000000
                0002070809090A020B0000000000000000000000000000000002020304050602
                0000000000000000000000000000000000000202020202000000000000000000
                0000000000000000000000020202020000000000000000000000000000000000
                000000010202000000000000000000000000}
              Transparent = True
              Visible = False
            end
            object DTP_PC3: TDateTimePicker
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
              OnChange = DTP_PC3Change
            end
            object CB_Building_PC2: TComboBox
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
              OnChange = CB_Building_PC2Change
            end
            object CB_Lean_PC2: TComboBox
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
            object Button10: TButton
              Left = 668
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
              OnClick = Button10Click
            end
            object Button11: TButton
              Left = 743
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Clear'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Button11Click
            end
            object CB_OS_PC2: TCheckBox
              Left = 491
              Top = 16
              Width = 158
              Height = 17
              Caption = 'Outsourcing Lean Only'
              TabOrder = 4
              OnClick = CB_OS_PC2Click
            end
          end
          object StringGrid1: TStringGrid
            Left = 0
            Top = 48
            Width = 1275
            Height = 575
            Hint = 'Double-click on the cell to get detailed information.'
            Align = alClient
            Color = clBtnFace
            ColCount = 2
            Ctl3D = False
            DefaultColWidth = 170
            DefaultRowHeight = 180
            DefaultDrawing = False
            RowCount = 4
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = PopupMenu8
            TabOrder = 1
            OnDblClick = StringGrid1DblClick
            OnDrawCell = StringGrid1DrawCell
            OnExit = StringGrid1Exit
            OnKeyDown = StringGrid1KeyDown
            OnMouseDown = StringGrid1MouseDown
            OnMouseMove = StringGrid1MouseMove
            OnSelectCell = StringGrid1SelectCell
            ColWidths = (
              170
              170)
          end
          object ImageBox: TPanel
            Left = 1040
            Top = 470
            Width = 225
            Height = 120
            BevelOuter = bvNone
            BorderWidth = 1
            Color = clBlack
            TabOrder = 2
            Visible = False
            object ShoeImage: TImage
              Left = 21
              Top = 1
              Width = 183
              Height = 118
              Cursor = crSizeNWSE
              Align = alClient
              PopupMenu = PopupMenu9
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
              Left = 204
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
        object TabSheet15: TTabSheet
          Caption = 'Shortfall'
          ImageIndex = 2
          object Panel21: TPanel
            Left = 0
            Top = 0
            Width = 1275
            Height = 48
            Align = alTop
            TabOrder = 0
            object Label26: TLabel
              Left = 166
              Top = 16
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
            object Label27: TLabel
              Left = 345
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
            object Label28: TLabel
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
            object Label29: TLabel
              Left = 504
              Top = 16
              Width = 95
              Height = 16
              Alignment = taRightJustify
              Caption = 'Statistical Mode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 759
              Top = 16
              Width = 135
              Height = 16
              Caption = 'Count After             Days'
            end
            object CB_Building_PC3: TComboBox
              Left = 219
              Top = 12
              Width = 105
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 0
              ParentFont = False
              TabOrder = 0
              OnChange = CB_Building_PC3Change
            end
            object CB_Lean_PC3: TComboBox
              Left = 380
              Top = 12
              Width = 105
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 0
              ParentFont = False
              TabOrder = 1
            end
            object Button12: TButton
              Left = 1092
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
              TabOrder = 2
              OnClick = Button12Click
            end
            object DTP_PC4: TDateTimePicker
              Left = 55
              Top = 12
              Width = 90
              Height = 24
              Date = 45600.518432453700000000
              Format = 'yyyy/MM/dd'
              Time = 45600.518432453700000000
              TabOrder = 3
              OnChange = DTP_PC4Change
            end
            object Button13: TButton
              Left = 1167
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
              TabOrder = 4
              OnClick = Button13Click
            end
            object CB_ITP_PC3: TCheckBox
              Left = 920
              Top = 16
              Width = 145
              Height = 17
              Caption = 'Include Today'#39's Plan'
              TabOrder = 5
            end
            object CB_Mode_PC3: TComboBox
              Left = 604
              Top = 12
              Width = 133
              Height = 24
              Style = csDropDownList
              ItemHeight = 16
              ItemIndex = 0
              TabOrder = 6
              Text = 'Assigned Cycles'
              Items.Strings = (
                'Assigned Cycles'
                'Assigned Pairs')
            end
            object ED_Days_PC3: TEdit
              Left = 828
              Top = 12
              Width = 29
              Height = 24
              TabOrder = 7
              Text = '3'
              OnKeyPress = ED_Days_PC3KeyPress
            end
          end
          object DBGridEh12: TDBGridEh
            Left = 0
            Top = 48
            Width = 1275
            Height = 575
            Align = alClient
            DataSource = DS_PC3
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            SortLocal = True
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'building_no'
                Footers = <>
                Title.Caption = 'Building'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'lean_no'
                Footers = <>
                Title.Caption = 'Lean'
                Width = 70
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'schedule_date'
                Footers = <>
                Title.Caption = 'Plan Date|Start'
                Width = 80
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'PlanEndDate'
                Footers = <>
                Title.Caption = 'Plan Date|End'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                Title.Caption = 'Cutting Die'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 100
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
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'ShipDate'
                Footers = <>
                Title.Caption = 'GAC'
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'TotalPairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Pairs'
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'CompletedPairs'
                Footer.DisplayFormat = '###,###,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Completed'
                Width = 80
              end
              item
                DisplayFormat = '###,###,##0'
                EditButtons = <>
                FieldName = 'Shortage'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footer.DisplayFormat = '###,###,##0'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clRed
                Footer.Font.Height = -13
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'DelayDays'
                Footers = <>
                Title.Caption = 'Delay Days'
                Title.TitleButton = True
                Width = 50
              end>
          end
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Inventory Status'
      ImageIndex = 5
      object Splitter9: TSplitter
        Left = 0
        Top = 248
        Width = 1283
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter11: TSplitter
        Left = 0
        Top = 451
        Width = 1283
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel22: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label31: TLabel
          Left = 21
          Top = 16
          Width = 29
          Height = 16
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_IS: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 45536.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 45536.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button14: TButton
          Left = 172
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
          OnClick = Button14Click
        end
      end
      object Panel23: TPanel
        Left = 0
        Top = 48
        Width = 1283
        Height = 200
        Align = alTop
        TabOrder = 1
        object Label32: TLabel
          Left = 1
          Top = 1
          Width = 1281
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '  [ SHIPPED TO TY DAT TODAY ] :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object Splitter8: TSplitter
          Left = 281
          Top = 21
          Height = 178
        end
        object DBGridEh14: TDBGridEh
          Left = 284
          Top = 21
          Width = 998
          Height = 178
          Align = alClient
          DataSource = DS_ISTD2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Lean'
              Footers = <>
              HideDuplicates = True
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'DAOMH'
              Footers = <>
              Title.Caption = 'Cutting Die'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              Title.Caption = 'SKU'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = 'RY'
              Width = 100
            end
            item
              DisplayFormat = '###,###,##0T'
              EditButtons = <>
              FieldName = 'Cycles'
              Footer.DisplayFormat = '###,###,##0T'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              DisplayFormat = '###,###,##0'
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.DisplayFormat = '###,###,##0'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 60
            end>
        end
        object DBGridEh15: TDBGridEh
          Left = 1
          Top = 21
          Width = 280
          Height = 178
          Align = alLeft
          DataSource = DS_ISTD1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
          Columns = <
            item
              DisplayFormat = 'hh:mm'
              EditButtons = <>
              FieldName = 'Date'
              Footers = <>
              HideDuplicates = True
              Title.Caption = 'Time'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Status'
              Footers = <>
              Width = 80
            end
            item
              DisplayFormat = '###,###,##0T'
              EditButtons = <>
              FieldName = 'Cycles'
              Footer.DisplayFormat = '###,###,##0T'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              DisplayFormat = '###,###,##0'
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.DisplayFormat = '###,###,##0'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 60
            end>
        end
      end
      object Panel24: TPanel
        Left = 0
        Top = 251
        Width = 1283
        Height = 200
        Align = alTop
        TabOrder = 2
        object Label33: TLabel
          Left = 1
          Top = 1
          Width = 1281
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '  [ WIP IN TY DAT ] :'
        end
        object Splitter10: TSplitter
          Left = 281
          Top = 21
          Height = 178
        end
        object DBGridEh16: TDBGridEh
          Left = 1
          Top = 21
          Width = 280
          Height = 178
          Align = alLeft
          DataSource = DS_ISTD3
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Lean'
              Footers = <>
              Width = 130
            end
            item
              DisplayFormat = '###,##0T'
              EditButtons = <>
              FieldName = 'Cycles'
              Footer.DisplayFormat = '###,##0T'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              DisplayFormat = '###,###,##0'
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.DisplayFormat = '###,###,##0'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 60
            end>
        end
        object DBGridEh17: TDBGridEh
          Left = 284
          Top = 21
          Width = 998
          Height = 178
          Align = alClient
          DataSource = DS_ISTD4
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DAOMH'
              Footers = <>
              HideDuplicates = True
              Title.Caption = 'Cutting Die'
              Width = 211
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              HideDuplicates = True
              Title.Caption = 'SKU'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = 'RY'
              Width = 100
            end
            item
              DisplayFormat = '###,###,##0T'
              EditButtons = <>
              FieldName = 'Cycles'
              Footer.DisplayFormat = '###,###,##0T'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              DisplayFormat = '###,###,##0'
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.DisplayFormat = '###,###,##0'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 60
            end>
        end
      end
      object Panel25: TPanel
        Left = 0
        Top = 454
        Width = 1283
        Height = 200
        Align = alClient
        TabOrder = 3
        object Label34: TLabel
          Left = 1
          Top = 1
          Width = 1281
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '  [ UPPER INVENTORY IN TY XUAN ] :'
          Layout = tlCenter
        end
        object Splitter12: TSplitter
          Left = 281
          Top = 21
          Height = 178
        end
        object DBGridEh18: TDBGridEh
          Left = 284
          Top = 21
          Width = 998
          Height = 178
          Align = alClient
          DataSource = DS_ISTD6
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DAOMH'
              Footers = <>
              HideDuplicates = True
              Title.Caption = 'Cutting Die'
              Width = 211
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              HideDuplicates = True
              Title.Caption = 'SKU'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = 'RY'
              Width = 100
            end
            item
              DisplayFormat = '###,###,##0T'
              EditButtons = <>
              FieldName = 'Cycles'
              Footer.DisplayFormat = '###,###,##0T'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              DisplayFormat = '###,###,##0'
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.DisplayFormat = '###,###,##0'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 60
            end>
        end
        object DBGridEh19: TDBGridEh
          Left = 1
          Top = 21
          Width = 280
          Height = 178
          Align = alLeft
          DataSource = DS_ISTD5
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Lean'
              Footers = <>
              Width = 130
            end
            item
              DisplayFormat = '###,##0T'
              EditButtons = <>
              FieldName = 'Cycles'
              Footer.DisplayFormat = '###,##0T'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 50
            end
            item
              DisplayFormat = '###,###,##0'
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.DisplayFormat = '###,###,##0'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 60
            end>
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Trend Chart'
      ImageIndex = 4
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label18: TLabel
          Left = 21
          Top = 16
          Width = 29
          Height = 16
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
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
        object DTP_IT1: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 45536.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 45536.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MinDate = 45536.000000000000000000
          ParentFont = False
          TabOrder = 0
        end
        object Button8: TButton
          Left = 276
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
          OnClick = Button8Click
        end
        object DTP_IT2: TDateTimePicker
          Left = 159
          Top = 12
          Width = 90
          Height = 24
          Date = 45536.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 45536.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MinDate = 45536.000000000000000000
          ParentFont = False
          TabOrder = 2
        end
      end
      object PC4: TPageControl
        Left = 0
        Top = 48
        Width = 1283
        Height = 606
        ActivePage = TabSheet11
        Align = alClient
        TabOrder = 1
        OnChanging = PC4Changing
        object TabSheet11: TTabSheet
          Caption = 'Outsourced Upper'
          object Splitter5: TSplitter
            Left = 0
            Top = 342
            Width = 1275
            Height = 1
            Cursor = crVSplit
            Align = alBottom
            Color = clGray
            ParentColor = False
          end
          object LineChart_IT1: TChart
            Left = 0
            Top = 0
            Width = 1275
            Height = 342
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
              'Outsourced Upper Trend')
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
            PopupMenu = PopupMenu4
            TabOrder = 0
            object Series_IT1_CompIn: TBarSeries
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
              Title = 'O/S Components'#12288
              OnClick = Series_IT1_CompInClick
              OnGetMarkText = Series_IT1_CompInGetMarkText
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
            object Series_IT1_UpperOut: TBarSeries
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
              Title = 'Returned Uppers'
              OnClick = Series_IT1_UpperOutClick
              OnGetMarkText = Series_IT1_UpperOutGetMarkText
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
            object Series_IT1_WIP: TLineSeries
              Cursor = crHandPoint
              Marks.Arrow.Visible = False
              Marks.ArrowLength = 8
              Marks.BackColor = clYellow
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clGreen
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = [fsBold]
              Marks.Frame.Visible = False
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 182289
              Title = 'Work In Progress'
              OnClick = Series_IT1_WIPClick
              OnGetMarkText = Series_IT1_WIPGetMarkText
              Dark3D = False
              LinePen.Width = 3
              Pointer.Brush.Color = 6274304
              Pointer.HorizSize = 3
              Pointer.InflateMargins = False
              Pointer.Style = psRectangle
              Pointer.VertSize = 3
              Pointer.Visible = True
              XValues.DateTime = True
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
          object LineChart_IT3: TChart
            Left = 0
            Top = 375
            Width = 1275
            Height = 200
            AllowPanning = pmHorizontal
            AllowZoom = False
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 0
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              '')
            Title.Visible = False
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
            Align = alBottom
            BevelOuter = bvNone
            BevelWidth = 0
            PopupMenu = PopupMenu5
            TabOrder = 1
            object Series_IT3_Blank: TBarSeries
              Marks.Arrow.Visible = False
              Marks.ArrowLength = 8
              Marks.Frame.Visible = False
              Marks.Style = smsValue
              Marks.Transparent = True
              Marks.Visible = True
              SeriesColor = clBtnFace
              Title = 'Blank'
              OnGetMarkText = Series_IT3_BlankGetMarkText
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
            object Series_IT3_LT: TLineSeries
              Cursor = crHandPoint
              Marks.Arrow.Visible = False
              Marks.ArrowLength = 8
              Marks.BackColor = clYellow
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clBlack
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = [fsBold]
              Marks.Frame.Visible = False
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 6968388
              Title = 'LeadTime'
              OnClick = Series_IT3_LTClick
              OnGetMarkText = Series_IT3_LTGetMarkText
              OnGetPointerStyle = Series_IT3_LTGetPointerStyle
              Dark3D = False
              LinePen.Width = 2
              Pointer.Brush.Color = 6274304
              Pointer.HorizSize = 5
              Pointer.InflateMargins = False
              Pointer.Style = psRectangle
              Pointer.VertSize = 5
              Pointer.Visible = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
          object Panel19: TPanel
            Left = 0
            Top = 343
            Width = 1275
            Height = 32
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object Label24: TLabel
              Left = 0
              Top = 0
              Width = 243
              Height = 19
              Align = alClient
              Alignment = taCenter
              Caption = 'Average Outsourced Lead Time '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Upper Inventory'
          ImageIndex = 1
          object Splitter6: TSplitter
            Left = 0
            Top = 324
            Width = 1384
            Height = 1
            Cursor = crVSplit
            Align = alBottom
            Color = clGray
            ParentColor = False
          end
          object LineChart_IT2: TChart
            Left = 0
            Top = 0
            Width = 1384
            Height = 324
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
              'Upper Inventory Trend')
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
            OnAfterDraw = LineChart_IT2AfterDraw
            Align = alClient
            BevelOuter = bvNone
            BevelWidth = 0
            PopupMenu = PopupMenu6
            TabOrder = 0
            object Series_IT2_StockIn: TBarSeries
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
              Title = 'Stock-In'
              OnClick = Series_IT2_StockInClick
              OnGetMarkText = Series_IT1_CompInGetMarkText
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
            object Series_IT2_StockOut: TBarSeries
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
              Title = 'Stock-Out'#12288
              OnClick = Series_IT2_StockOutClick
              OnGetMarkText = Series_IT1_UpperOutGetMarkText
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
            object Series_IT2_Inventory: TLineSeries
              Cursor = crHandPoint
              Marks.Arrow.Visible = False
              Marks.ArrowLength = 8
              Marks.BackColor = clYellow
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clGreen
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = [fsBold]
              Marks.Frame.Visible = False
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 182289
              Title = 'Inventory'
              OnClick = Series_IT2_InventoryClick
              OnGetMarkText = Series_IT1_WIPGetMarkText
              Dark3D = False
              LinePen.Width = 3
              Pointer.Brush.Color = 6274304
              Pointer.HorizSize = 3
              Pointer.InflateMargins = False
              Pointer.Style = psRectangle
              Pointer.VertSize = 3
              Pointer.Visible = True
              XValues.DateTime = True
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
          object LineChart_IT4: TChart
            Left = 0
            Top = 357
            Width = 1384
            Height = 200
            AllowPanning = pmHorizontal
            AllowZoom = False
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 0
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              '')
            Title.Visible = False
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
            Align = alBottom
            BevelOuter = bvNone
            BevelWidth = 0
            PopupMenu = PopupMenu7
            TabOrder = 1
            object Series_IT4_Blank: TBarSeries
              Marks.Arrow.Visible = False
              Marks.ArrowLength = 8
              Marks.Frame.Visible = False
              Marks.Style = smsValue
              Marks.Transparent = True
              Marks.Visible = True
              SeriesColor = clBtnFace
              Title = 'Blank'
              OnGetMarkText = Series_IT4_BlankGetMarkText
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
            object Series_IT4_LT: TLineSeries
              Cursor = crHandPoint
              Marks.Arrow.Visible = False
              Marks.ArrowLength = 8
              Marks.BackColor = clYellow
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clBlack
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = [fsBold]
              Marks.Frame.Visible = False
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 6968388
              Title = 'LeadTime'
              OnGetMarkText = Series_IT4_LTGetMarkText
              OnGetPointerStyle = Series_IT4_LTGetPointerStyle
              Dark3D = False
              LinePen.Width = 2
              Pointer.Brush.Color = 6274304
              Pointer.HorizSize = 5
              Pointer.InflateMargins = False
              Pointer.Style = psRectangle
              Pointer.VertSize = 5
              Pointer.Visible = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
          object Panel20: TPanel
            Left = 0
            Top = 325
            Width = 1384
            Height = 32
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object Label25: TLabel
              Left = 0
              Top = 0
              Width = 197
              Height = 19
              Align = alClient
              Alignment = taCenter
              Caption = 'Average Stock Lead Time '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
          end
        end
      end
      object ToolTip: TPanel
        Left = 56
        Top = 112
        Width = 137
        Height = 95
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWhite
        TabOrder = 2
        Visible = False
        object TT_StockOut: TLabel
          Left = 2
          Top = 42
          Width = 129
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = 'TT_StockOut'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
        object TT_Date: TLabel
          Left = 2
          Top = 2
          Width = 129
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = 'TT_Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
        object TT_StockIn: TLabel
          Left = 2
          Top = 22
          Width = 129
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = 'TT_StockIn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
        object TT_Inventory: TLabel
          Left = 2
          Top = 62
          Width = 129
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = 'TT_Inventory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
      end
    end
  end
  object Q_UI: TQuery
    AfterOpen = Q_UIAfterOpen
    DatabaseName = 'DB'
    UpdateObject = U_UI
    Left = 116
    Top = 320
    object Q_UIRKNO: TStringField
      FieldName = 'RKNO'
      Size = 11
    end
    object Q_UIBuilding: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object Q_UILean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_UIDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_UIRY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Q_UIPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Q_UIArticle: TStringField
      FieldName = 'Article'
    end
    object Q_UIShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Q_UIcountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object Q_UIUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Q_UIUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Q_UIYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Q_UIDate: TDateTimeField
      FieldName = 'Date'
    end
    object Q_UIPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_UILackPairs: TIntegerField
      FieldName = 'LackPairs'
    end
  end
  object DS_UI: TDataSource
    DataSet = Q_UI
    Left = 116
    Top = 288
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 276
    Top = 320
  end
  object DS_C: TDataSource
    DataSet = Q_C
    Left = 20
    Top = 288
  end
  object Q_C: TQuery
    AfterOpen = Q_CAfterOpen
    DatabaseName = 'DB'
    UpdateObject = U_C
    Left = 20
    Top = 320
    object Q_CListNo: TStringField
      FieldName = 'ListNo'
      Size = 11
    end
    object Q_CBuilding: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object Q_CLean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_CDate: TDateTimeField
      FieldName = 'Date'
    end
    object Q_CPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_CRemark: TStringField
      FieldName = 'Remark'
      Size = 150
    end
    object Q_CConfirmID: TStringField
      FieldName = 'ConfirmID'
      Size = 10
    end
    object Q_CConfirmDate: TDateTimeField
      FieldName = 'ConfirmDate'
    end
    object Q_CUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Q_CUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Q_CCycle: TStringField
      FieldName = 'Cycle'
    end
    object Q_CCheckStatus: TBooleanField
      FieldName = 'CheckStatus'
    end
    object Q_CZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Q_CBUYNO: TStringField
      FieldName = 'BUYNO'
      Size = 10
    end
    object Q_CARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_CType: TStringField
      FieldName = 'Type'
    end
    object Q_CTotalCycles: TIntegerField
      FieldName = 'TotalCycles'
    end
    object Q_CCompletedCycles: TIntegerField
      FieldName = 'CompletedCycles'
    end
    object Q_Cschedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
  end
  object DS_C2: TDataSource
    DataSet = Q_C2
    Left = 52
    Top = 352
  end
  object Q_C2: TQuery
    AfterOpen = Q_C2AfterOpen
    DatabaseName = 'DB'
    DataSource = DS_C1
    SQL.Strings = (
      
        'SELECT CAST(0 AS BIT) AS CheckStatus, ListNo, Building, Lean, Da' +
        'te, BUYNO, ARTICLE, ZLBH, Pairs, Remark, ConfirmID, ConfirmDate,' +
        ' UserID, UserDate,'
      
        'CASE WHEN MinCycle = MaxCycle THEN MinCycle ELSE MinCycle + '#39' - ' +
        #39' + MaxCycle END AS Cycle FROM ('
      
        '  SELECT CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, CAST(CAST' +
        '(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '#39' BUY'#39' AS BUY' +
        'NO, DDZL.ARTICLE, CD.ZLBH, CDL.Pairs, '
      
        '  CAST([dbo].fSignsToNoSigns(CDL.Remark) AS VARCHAR(50)) AS Rema' +
        'rk, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate,'
      
        '  '#39'T'#39' + CAST(MIN(CASE WHEN CD.ZLBH = CD.DDBH THEN 1 ELSE CAST(RI' +
        'GHT(CD.DDBH, 3) AS INT) END) AS VARCHAR) AS MinCycle,'
      
        '  '#39'T'#39' + CAST(MAX(CASE WHEN CD.ZLBH = CD.DDBH THEN 1 ELSE CAST(RI' +
        'GHT(CD.DDBH, 3) AS INT) END) AS VARCHAR) AS MaxCycle FROM CycleD' +
        'ispatchList AS CDL'
      '  LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo'
      '  LEFT JOIN DDZL ON DDZL.DDBH = CD.ZLBH'
      
        '  WHERE CDL.ConfirmDate IS NOT NULL AND ISNULL(CDL.PrintNo, '#39#39') ' +
        '= :PrintNo'
      
        '  GROUP BY CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, DDZL.BU' +
        'YNO, DDZL.ARTICLE, CD.ZLBH, CDL.Pairs, CDL.Remark, CDL.ConfirmID' +
        ', CDL.ConfirmDate, CDL.UserID, CDL.UserDate'
      ') AS CDL'
      'ORDER BY Building, Lean, UserDate')
    UpdateObject = U_C2
    Left = 52
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PrintNo'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'ListNo'
      Size = 11
    end
    object StringField2: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Date'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField4: TStringField
      FieldName = 'Remark'
      Size = 150
    end
    object StringField5: TStringField
      FieldName = 'ConfirmID'
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ConfirmDate'
    end
    object StringField6: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField7: TStringField
      FieldName = 'Cycle'
    end
    object Q_C2ZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Q_C2CheckStatus: TBooleanField
      FieldName = 'CheckStatus'
    end
    object Q_C2BUYNO: TStringField
      FieldName = 'BUYNO'
      Size = 10
    end
    object Q_C2ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_C2Type: TStringField
      FieldName = 'Type'
    end
    object Q_C2TotalCycles: TIntegerField
      FieldName = 'TotalCycles'
    end
    object Q_C2CompletedCycles: TIntegerField
      FieldName = 'CompletedCycles'
    end
    object Q_C2schedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
  end
  object U_C: TUpdateSQL
    Left = 20
    Top = 352
  end
  object ImageList1: TImageList
    Left = 20
    Top = 384
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      000000000000000000000000000000000000000000000000000000000000E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E3000000000000000000000000000000000000000000E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000006969
      6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      6900696969006969690069696900696969006969690069696900696969006969
      690069696900E3E3E30000000000000000000000000000000000000000006969
      6900696969006969690069696900696969006969690069696900696969006969
      690069696900E3E3E30000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      E003E00300000000E003E00300000000E003E00300000000E003E00300000000
      E003E00300000000E003E00300000000E003E00300000000E003E00300000000
      E003E00300000000E003E00300000000E003E00300000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object DS_C1: TDataSource
    DataSet = Q_C1
    Left = 52
    Top = 288
  end
  object Q_C1: TQuery
    AfterOpen = Q_C1AfterOpen
    AfterScroll = Q_C1AfterScroll
    DatabaseName = 'DB'
    Left = 52
    Top = 320
    object Q_C1PrintNo: TStringField
      FieldName = 'PrintNo'
      Size = 11
    end
    object Q_C1ListNo: TStringField
      FieldName = 'ListNo'
      Size = 11
    end
    object Q_C1Date: TStringField
      FieldName = 'Date'
      Size = 10
    end
    object Q_C1Ready: TIntegerField
      FieldName = 'Ready'
    end
    object Q_C1Others: TIntegerField
      FieldName = 'Others'
    end
  end
  object U_C2: TUpdateSQL
    Left = 52
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 52
    Top = 448
    object Delete1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Delete'
      Visible = False
      OnClick = Delete1Click
    end
  end
  object U_UI: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE KCRK_Upper'
      'SET'
      '  Building = :Building,'
      '  Lean = :Lean,'
      '  RY = :RY,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      
        'INSERT INTO KCRK_Upper (RKNO, Date, Building, Lean, RY, UserID, ' +
        'UserDate, YN)'
      
        'VALUES (:RKNO, :Date, :Building, :Lean, :RY, :UserID, GetDate(),' +
        ' '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM KCRK_Upper'
      'WHERE'
      '  RKNO = :OLD_RKNO')
    Left = 116
    Top = 352
  end
  object DS_UIC: TDataSource
    DataSet = Q_UIC
    Left = 116
    Top = 384
  end
  object Q_UIC: TQuery
    DatabaseName = 'DB'
    DataSource = DS_UI
    SQL.Strings = (
      'SELECT KCRKS_Upper.RKNO, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs,'
      
        'CASE WHEN KCRK_Upper.RY = KCRKS_Upper.DDBH THEN '#39'T1'#39' ELSE '#39'T'#39' + ' +
        'CAST(CAST(RIGHT(KCRKS_Upper.DDBH, 3) AS INT) AS VARCHAR) END AS ' +
        'Cycle FROM KCRKS_Upper'
      'LEFT JOIN KCRK_Upper ON KCRK_Upper.RKNO = KCRKS_Upper.RKNO'
      'WHERE KCRKS_Upper.RKNO = :RKNO')
    Left = 116
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RKNO'
        ParamType = ptUnknown
      end>
    object Q_UICRKNO: TStringField
      FieldName = 'RKNO'
      Size = 11
    end
    object Q_UICDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Q_UICPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_UICCycle: TStringField
      FieldName = 'Cycle'
      Size = 5
    end
  end
  object DS_UO: TDataSource
    DataSet = Q_UO
    Left = 148
    Top = 288
  end
  object Q_UO: TQuery
    AfterOpen = Q_UOAfterOpen
    DatabaseName = 'DB'
    UpdateObject = U_UO
    Left = 148
    Top = 320
    object StringField8: TStringField
      FieldName = 'LLNO'
      Size = 11
    end
    object StringField9: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object StringField11: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'PlanDate'
    end
    object StringField13: TStringField
      FieldName = 'Article'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'ShipDate'
    end
    object StringField14: TStringField
      FieldName = 'country'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField16: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'Date'
    end
    object Q_UOPairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object U_UO: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE KCLL_Upper'
      'SET'
      '  RY = :RY,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      
        'INSERT INTO KCLL_Upper (LLNO, Date, Building, Lean, RY, UserID, ' +
        'UserDate, YN)'
      
        'VALUES (:LLNO, :Date, :Building, :Lean, :RY, :UserID, GetDate(),' +
        ' '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM KCLL_Upper'
      'WHERE'
      '  LLNO = :OLD_LLNO')
    Left = 148
    Top = 352
  end
  object DS_UOC: TDataSource
    DataSet = Q_UOC
    Left = 148
    Top = 384
  end
  object Q_UOC: TQuery
    DatabaseName = 'DB'
    DataSource = DS_UO
    SQL.Strings = (
      'SELECT KCLLS_Upper.LLNO, KCLLS_Upper.DDBH, KCLLS_Upper.Pairs,'
      
        'CASE WHEN SMDD.YSBH = SMDD.DDBH THEN '#39'T1'#39' ELSE '#39'T'#39' + CAST(CAST(R' +
        'IGHT(SMDD.DDBH, 3) AS INT) AS VARCHAR) END AS Cycle FROM KCLLS_U' +
        'pper'
      
        'LEFT JOIN SMDD ON SMDD.DDBH = KCLLS_Upper.DDBH AND SMDD.GXLB = '#39 +
        'A'#39
      'WHERE KCLLS_Upper.LLNO = :LLNO')
    Left = 148
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LLNO'
        ParamType = ptUnknown
      end>
    object StringField17: TStringField
      FieldName = 'LLNO'
      Size = 11
    end
    object StringField18: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object IntegerField2: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField21: TStringField
      FieldName = 'Cycle'
      Size = 5
    end
  end
  object DS_I: TDataSource
    DataSet = Q_I
    Left = 180
    Top = 288
  end
  object Q_I: TQuery
    AfterOpen = Q_UOAfterOpen
    DatabaseName = 'DB'
    Left = 180
    Top = 320
    object StringField23: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object StringField25: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object StringField26: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object StringField27: TStringField
      FieldName = 'Article'
    end
    object Q_IPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_ITotalInPairs: TIntegerField
      FieldName = 'TotalInPairs'
    end
    object Q_ITodayInPairs: TIntegerField
      FieldName = 'TodayInPairs'
    end
    object Q_IShipDate: TStringField
      FieldName = 'ShipDate'
      Size = 10
    end
    object Q_IDate: TStringField
      FieldName = 'Date'
      Size = 10
    end
    object StringField28: TStringField
      FieldName = 'country'
      Size = 50
    end
    object Q_ILackPairs: TIntegerField
      FieldName = 'LackPairs'
    end
    object Q_ICompletedDate: TStringField
      FieldName = 'CompletedDate'
      Size = 10
    end
    object Q_IStockPairs: TIntegerField
      FieldName = 'StockPairs'
    end
    object Q_IZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Q_IMinCycle: TIntegerField
      FieldName = 'MinCycle'
    end
    object Q_IMaxCycle: TIntegerField
      FieldName = 'MaxCycle'
    end
  end
  object DS_IC: TDataSource
    DataSet = Q_IC
    Left = 180
    Top = 352
  end
  object Q_IC: TQuery
    DatabaseName = 'DB'
    DataSource = DS_I
    Left = 180
    Top = 384
    object StringField29: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object IntegerField3: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField32: TStringField
      FieldName = 'Cycle'
      Size = 5
    end
  end
  object Q_PC: TQuery
    OnCalcFields = Q_PCCalcFields
    DatabaseName = 'DB'
    OnFilterRecord = Q_PCFilterRecord
    Left = 212
    Top = 320
    object Q_PCBuilding: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object Q_PCLean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Q_PCPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Q_PCDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_PCRY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Q_PCARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_PCCycle: TStringField
      FieldName = 'Cycle'
      Size = 15
    end
    object Q_PCAssemblyTime: TStringField
      FieldName = 'AssemblyTime'
    end
    object Q_PCRequiredPairs: TIntegerField
      FieldName = 'RequiredPairs'
    end
    object Q_PCOSPairs: TIntegerField
      FieldName = 'OSPairs'
    end
    object Q_PCPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Q_PCStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 10
      Calculated = True
    end
  end
  object DS_PC: TDataSource
    DataSet = Q_PC
    Left = 212
    Top = 288
  end
  object DS_W: TDataSource
    DataSet = Q_W
    Left = 84
    Top = 288
  end
  object Q_W: TQuery
    OnCalcFields = Q_PCCalcFields
    DatabaseName = 'DB'
    Left = 84
    Top = 320
    object StringField19: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object StringField20: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'PlanDate'
    end
    object StringField22: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object StringField30: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object StringField31: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_WRYPairs: TIntegerField
      FieldName = 'RYPairs'
    end
    object StringField33: TStringField
      FieldName = 'Cycle'
      Size = 15
    end
    object IntegerField5: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 20
    Top = 416
  end
  object PopupMenu2: TPopupMenu
    Left = 84
    Top = 352
    object Excel_W: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel_WClick
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 212
    Top = 352
    object Excel_PC: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel_PCClick
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 276
    Top = 352
    object Excel_WT: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel_WTClick
    end
  end
  object PopupMenu5: TPopupMenu
    Left = 276
    Top = 384
    object Excel_LT: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel_LTClick
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 276
    Top = 416
    object Excel_IT: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel_ITClick
    end
  end
  object PopupMenu7: TPopupMenu
    Left = 276
    Top = 448
    object Excel_LT2: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel_LT2Click
    end
  end
  object DS_PC3: TDataSource
    DataSet = Q_PC3
    Left = 212
    Top = 384
  end
  object Q_PC3: TQuery
    DatabaseName = 'DB'
    Left = 212
    Top = 416
    object Q_PC3building_no: TStringField
      FieldName = 'building_no'
      Size = 10
    end
    object Q_PC3lean_no: TStringField
      FieldName = 'lean_no'
      Size = 10
    end
    object Q_PC3DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Q_PC3schedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Q_PC3DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_PC3ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_PC3TotalPairs: TIntegerField
      FieldName = 'TotalPairs'
    end
    object Q_PC3CompletedPairs: TIntegerField
      FieldName = 'CompletedPairs'
    end
    object Q_PC3Shortage: TIntegerField
      FieldName = 'Shortage'
    end
    object Q_PC3ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Q_PC3PlanEndDate: TDateTimeField
      FieldName = 'PlanEndDate'
    end
    object Q_PC3DelayDays: TIntegerField
      FieldName = 'DelayDays'
    end
  end
  object PopupMenu8: TPopupMenu
    Left = 276
    Top = 480
    object BOM1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'RY BOM'
      OnClick = BOM1Click
    end
  end
  object PopupMenu9: TPopupMenu
    Left = 276
    Top = 512
    object Copy1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Copy'
      OnClick = Copy1Click
    end
  end
  object DS_ITI: TDataSource
    DataSet = Q_ITI
    Left = 180
    Top = 416
  end
  object Q_ITI: TQuery
    AfterOpen = Q_UOAfterOpen
    DatabaseName = 'DB'
    Left = 180
    Top = 448
    object StringField34: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object StringField35: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS_ISTD1: TDataSource
    DataSet = Q_ISTD1
    Left = 244
    Top = 288
  end
  object Q_ISTD1: TQuery
    DatabaseName = 'DB'
    Left = 244
    Top = 320
    object DateTimeField9: TDateTimeField
      FieldName = 'Date'
    end
    object Q_ISTD1Status: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object Q_ISTD1Cycles: TIntegerField
      FieldName = 'Cycles'
    end
    object IntegerField8: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS_ISTD2: TDataSource
    DataSet = Q_ISTD2
    Left = 244
    Top = 352
  end
  object Q_ISTD2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ISTD1
    Left = 244
    Top = 384
    object StringField36: TStringField
      FieldName = 'Lean'
      Size = 15
    end
    object StringField41: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object StringField42: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField43: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object IntegerField6: TIntegerField
      FieldName = 'Cycles'
    end
    object IntegerField7: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS_ISTD3: TDataSource
    DataSet = Q_ISTD3
    Left = 244
    Top = 416
  end
  object Q_ISTD3: TQuery
    DatabaseName = 'DB'
    Left = 244
    Top = 448
    object StringField37: TStringField
      FieldName = 'Lean'
      Size = 15
    end
    object IntegerField9: TIntegerField
      FieldName = 'Cycles'
    end
    object IntegerField10: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS_ISTD4: TDataSource
    DataSet = Q_ISTD4
    Left = 244
    Top = 480
  end
  object Q_ISTD4: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ISTD3
    Left = 244
    Top = 512
    object StringField38: TStringField
      FieldName = 'Lean'
      Size = 15
    end
    object StringField39: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object StringField40: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField44: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object IntegerField11: TIntegerField
      FieldName = 'Cycles'
    end
    object IntegerField12: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS_ISTD5: TDataSource
    DataSet = Q_ISTD5
    Left = 244
    Top = 544
  end
  object Q_ISTD5: TQuery
    DatabaseName = 'DB'
    Left = 244
    Top = 576
    object StringField45: TStringField
      FieldName = 'Lean'
      Size = 15
    end
    object IntegerField13: TIntegerField
      FieldName = 'Cycles'
    end
    object IntegerField14: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS_ISTD6: TDataSource
    DataSet = Q_ISTD6
    Left = 244
    Top = 608
  end
  object Q_ISTD6: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ISTD5
    Left = 244
    Top = 640
    object StringField46: TStringField
      FieldName = 'Lean'
      Size = 15
    end
    object StringField47: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object StringField48: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField49: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object IntegerField15: TIntegerField
      FieldName = 'Cycles'
    end
    object IntegerField16: TIntegerField
      FieldName = 'Pairs'
    end
  end
end
