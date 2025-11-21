object MaterialReadyTime1: TMaterialReadyTime1
  Left = 498
  Top = 126
  Width = 1386
  Height = 769
  Caption = 'MaterialReadyTime'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 730
    ActivePage = TabSheet8
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet8: TTabSheet
      Caption = 'VATTU'
      ImageIndex = 7
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 177
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 312
          Height = 37
          Caption = 'Vat Tu Mat OK SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 680
          Top = 24
          Width = 41
          Height = 37
          Caption = 'TB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 456
          Top = 88
          Width = 266
          Height = 37
          Caption = 'WareHouse Memo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 336
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object Memo1: TMemo
          Left = 728
          Top = 80
          Width = 545
          Height = 81
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object Edit11: TEdit
          Left = 728
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button1: TButton
          Left = 1056
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 1056
          Top = 48
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 4
          OnClick = Button2Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 177
        Width = 641
        Height = 518
        Align = alLeft
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridEh1CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'PreparationDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'memo2'
            Footers = <>
            Title.Caption = 'WareHouse Memo'
            Width = 147
          end>
      end
      object DBGridEh11: TDBGridEh
        Left = 641
        Top = 177
        Width = 721
        Height = 518
        Align = alClient
        DataSource = DataSource11
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Class'
            Footers = <>
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = 'Parts'
            Width = 284
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'MaterialDES'
            Footers = <>
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 146
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'MAY'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 169
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 0
          Top = 16
          Width = 337
          Height = 37
          Caption = 'May Phu lieu OK SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 680
          Top = 24
          Width = 41
          Height = 37
          Caption = 'TB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 456
          Top = 88
          Width = 266
          Height = 37
          Caption = 'WareHouse Memo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit2KeyPress
        end
        object Memo2: TMemo
          Left = 725
          Top = 77
          Width = 545
          Height = 84
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object Edit12: TEdit
          Left = 728
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 1056
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 1056
          Top = 48
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 4
          OnClick = Button4Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 169
        Width = 649
        Height = 527
        Align = alLeft
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridEh2CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'S_material'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'memo2'
            Footers = <>
            Title.Caption = 'WareHouse Memo'
            Width = 164
          end>
      end
      object DBGridEh12: TDBGridEh
        Left = 649
        Top = 169
        Width = 468
        Height = 527
        Align = alClient
        DataSource = DataSource12
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Class'
            Footers = <>
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = 'Parts'
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'MaterialDES'
            Footers = <>
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 147
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Go'
      ImageIndex = 8
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label15: TLabel
          Left = 64
          Top = 24
          Width = 275
          Height = 37
          Caption = 'Insole_Send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit9: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit9KeyPress
        end
      end
      object DBGridEh9: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource9
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'insole_send'
            Footers = <>
            Title.Caption = 'Insole_send'
          end>
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Bao Bi'
      ImageIndex = 9
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label16: TLabel
          Left = 88
          Top = 24
          Width = 244
          Height = 37
          Caption = 'lace_send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit10: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit10KeyPress
        end
      end
      object DBGridEh10: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource10
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'lace_send'
            Footers = <>
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'lamination_send'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 333
          Height = 37
          Caption = 'lamination_send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 24
          Top = 40
          Width = 236
          Height = 37
          Caption = '(GIA CONG - di)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit3KeyPress
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'lamination_send'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'lamination_get'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 8
          Width = 308
          Height = 37
          Caption = 'lamination_get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 16
          Top = 40
          Width = 328
          Height = 37
          Caption = '(GIA CONG - Quay lai)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit4KeyPress
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'lamination_get'
            Footers = <>
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'BaoHe_send'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 48
          Top = 8
          Width = 283
          Height = 37
          Caption = 'BaoHe_send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 72
          Top = 40
          Width = 172
          Height = 37
          Caption = '(BaoHe - di)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit5KeyPress
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'BaoHe_send'
            Footers = <>
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'BaoHe_get'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 72
          Top = 8
          Width = 258
          Height = 37
          Caption = 'BaoHe_get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 72
          Top = 40
          Width = 264
          Height = 37
          Caption = '(BaoHe - Quay lai)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit6KeyPress
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'BaoHe_get'
            Footers = <>
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'LiMao_Send'
      ImageIndex = 5
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 64
          Top = 8
          Width = 278
          Height = 37
          Caption = 'LiMao_Send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 80
          Top = 40
          Width = 162
          Height = 37
          Caption = '(LiMao - di)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit7: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit7KeyPress
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource7
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'LiMao_Send'
            Footers = <>
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'LiMao_Get'
      ImageIndex = 6
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 72
          Top = 8
          Width = 255
          Height = 37
          Caption = 'LiMao_Get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 72
          Top = 40
          Width = 254
          Height = 37
          Caption = '(LiMao - Quay lai)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit8: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit8KeyPress
        end
      end
      object DBGridEh8: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource8
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'LiMao_Get'
            Footers = <>
          end>
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'kietphong_Send'
      ImageIndex = 10
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label21: TLabel
          Left = 16
          Top = 24
          Width = 325
          Height = 37
          Caption = 'kietphong_send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit13: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit13KeyPress
        end
      end
      object DBGridEh13: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource13
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'kietphong_Send'
            Footers = <>
            Width = 142
          end>
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'kietphong_Get'
      ImageIndex = 11
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label22: TLabel
          Left = 32
          Top = 24
          Width = 307
          Height = 37
          Caption = 'kietphong_Get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit14: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit14KeyPress
        end
      end
      object DBGridEh14: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource14
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'kietphong_Get'
            Footers = <>
          end>
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Amico_Send'
      ImageIndex = 12
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label23: TLabel
          Left = 64
          Top = 24
          Width = 276
          Height = 37
          Caption = 'Amico_send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit15: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit15KeyPress
        end
      end
      object DBGridEh15: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource15
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Amico_Send'
            Footers = <>
          end>
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Amico_Get'
      ImageIndex = 13
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label24: TLabel
          Left = 80
          Top = 24
          Width = 258
          Height = 37
          Caption = 'Amico_Get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit16: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit16KeyPress
        end
      end
      object DBGridEh16: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource16
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Amico_Get'
            Footers = <>
          end>
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Laser Thang Kim_Send'
      ImageIndex = 14
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label25: TLabel
          Left = 22
          Top = 23
          Width = 427
          Height = 37
          Caption = 'LaserThang Kim_Send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit17: TEdit
          Left = 457
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit17KeyPress
        end
      end
      object DBGridEh17: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource17
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 191
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'Laser_send'
            Footers = <>
            Width = 122
          end>
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Laser Thang Kim_Get'
      ImageIndex = 15
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label26: TLabel
          Left = 22
          Top = 23
          Width = 404
          Height = 37
          Caption = 'LaserThang Kim_Get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit18: TEdit
          Left = 445
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit18KeyPress
        end
      end
      object DBGridEh18: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource18
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 205
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Laser_get'
            Footers = <>
            Width = 102
          end>
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'DAJU_Send'
      ImageIndex = 16
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label27: TLabel
          Left = 64
          Top = 24
          Width = 275
          Height = 37
          Caption = 'DAJU_Send SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit19: TEdit
          Left = 344
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit19KeyPress
        end
      end
      object DBGridEh19: TDBGridEh
        Left = 0
        Top = 80
        Width = 1117
        Height = 616
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource19
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'DAJU_Send'
            Footers = <>
            Width = 150
          end>
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'DAJU_Get'
      ImageIndex = 17
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1548
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label28: TLabel
          Left = 70
          Top = 23
          Width = 252
          Height = 37
          Caption = 'DAJU_Get SCAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit20: TEdit
          Left = 333
          Top = 17
          Width = 305
          Height = 48
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit20KeyPress
        end
      end
      object DBGridEh20: TDBGridEh
        Left = 0
        Top = 80
        Width = 1548
        Height = 481
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource20
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 205
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'DAJU_Get'
            Footers = <>
            Width = 150
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 184
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,PreparationDate,memo2 ' +
        'from shoetest')
    Left = 40
    Top = 232
    object Query1testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query1Pending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1PreparationDate: TDateTimeField
      FieldName = 'PreparationDate'
    end
    object Query1memo2: TMemoField
      FieldName = 'memo2'
      BlobType = ftMemo
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 112
    Top = 184
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,S_material,memo2 from ' +
        'shoetest')
    Left = 112
    Top = 232
    object StringField1: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField2: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1S_material: TDateTimeField
      FieldName = 'S_material'
    end
    object Query2memo2: TMemoField
      FieldName = 'memo2'
      BlobType = ftMemo
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 184
    Top = 184
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,lamination_send from s' +
        'hoetest')
    Left = 184
    Top = 232
    object StringField3: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField3: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1lamination_send: TDateTimeField
      FieldName = 'lamination_send'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 264
    Top = 192
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,lamination_get from sh' +
        'oetest')
    Left = 264
    Top = 240
    object StringField5: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField5: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField6: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1lamination_get: TDateTimeField
      FieldName = 'lamination_get'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 344
    Top = 192
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,BaoHe_send from shoete' +
        'st')
    Left = 344
    Top = 240
    object StringField7: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField7: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField8: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query5BaoHe_send: TDateTimeField
      FieldName = 'BaoHe_send'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 424
    Top = 192
  end
  object Query6: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,BaoHe_get from shoetes' +
        't')
    Left = 424
    Top = 240
    object StringField9: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField9: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField10: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query6BaoHe_get: TDateTimeField
      FieldName = 'BaoHe_get'
    end
  end
  object DataSource7: TDataSource
    DataSet = Query7
    Left = 504
    Top = 192
  end
  object Query7: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,LiMao_Send from shoete' +
        'st')
    Left = 504
    Top = 240
    object StringField11: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField12: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField11: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField12: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query7LiMao_Send: TDateTimeField
      FieldName = 'LiMao_Send'
    end
  end
  object DataSource8: TDataSource
    DataSet = Query8
    Left = 576
    Top = 192
  end
  object Query8: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,LiMao_Get from shoetes' +
        't')
    Left = 576
    Top = 240
    object StringField13: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField13: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField14: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query8LiMao_Get: TDateTimeField
      FieldName = 'LiMao_Get'
    end
  end
  object DataSource9: TDataSource
    DataSet = Query9
    Left = 656
    Top = 192
  end
  object Query9: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,insole_send from shoet' +
        'est')
    Left = 656
    Top = 240
    object StringField15: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField15: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField16: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query9insole_send: TDateTimeField
      FieldName = 'insole_send'
    end
  end
  object DataSource10: TDataSource
    DataSet = Query10
    Left = 744
    Top = 192
  end
  object Query10: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,lace_send from shoetes' +
        't')
    Left = 744
    Top = 240
    object StringField17: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField18: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField17: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField18: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query10lace_send: TDateTimeField
      FieldName = 'lace_send'
    end
  end
  object DataSource11: TDataSource
    DataSet = Query11
    Left = 913
    Top = 345
  end
  object Query11: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, is' +
        'null(Status,'#39#39') Status,ETA,Material,MaterialDES,Memo,ywsm from ('
      
        'select  '#39'C'#39' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcod' +
        'e SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl' +
        '.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,'
      
        'case when  kcrkstemp.qty is not null or PurReceiveDate is not nu' +
        'll then '#39'Arrive'#39' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>' +
        '0) then '#39'UseStock'#39' end '#39'Status'#39', '
      
        'case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is n' +
        'ot null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ' +
        #39'OK'#39' else  convert(varchar, CGZLSS1.ETA, 111) end '#39'ETA'#39','
      
        'Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,C' +
        'GZLSs1.Memo,ywsm from ('
      
        'select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) a' +
        's CSBH,Sum(CLSL) as CLSL,ywsm  from ('
      
        'SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE' +
        ',ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLS' +
        'L,bwzl.ywsm'
      'FROM shoetestplan'
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join CLZL on CLZL.CLDH=ypzls.CLBH '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao'
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'WHERE  clzl.clzmlb = '#39'N'#39' and  shoetestplan.groups = '#39'23SCR1'#39
      'union all '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsd' +
        'h as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL,bwzl.ywsm'
      'FROM shoetestplan'
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left join CLZL on CLZL.CLDH=clzhzl.CLDH1 '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      
        'WHERE  clzl.clzmlb = '#39'N'#39'   and CLZHZL.SYL>0  and  shoetestplan.g' +
        'roups = '#39'23SCR1'#39
      'union all '
      
        'Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CL' +
        'ZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL,ywsm'
      ' from ( '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL,bwzl.yws' +
        'm'
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      
        'WHERE    CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and  shoetestplan.' +
        'groups = '#39'23SCR1'#39' ) clzhzl2'
      'left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0 '
      ')  YPZLS '
      'Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL,ywsm'
      ') Temp_YPZL '
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH '
      
        'left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =' +
        'Temp_YPZL.YPDH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clb' +
        'h=Temp_YPZL.CLBH '
      'left join( '
      
        #9#9'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Q' +
        'ty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.c' +
        'gdate,'
      
        #9#9'Case when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate' +
        ' ='#39#39'))  and (MaterialMOQ.Location='#39'VN'#39') then Min(CGZLS.CFMDate)+' +
        '1'
      
        '        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.C' +
        'IDate <>'#39#39')) and (MaterialMOQ.Location='#39'VN'#39') then Min(CGZLInvoic' +
        'e.CIDate)+1'
      
        '        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDat' +
        'e ='#39#39')) and (MaterialMOQ.Location<>'#39'VN'#39') then Min(CGZLS.CFMDate)' +
        '+5'
      
        '        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.C' +
        'IDate <>'#39#39')) and (MaterialMOQ.Location<>'#39'VN'#39') then Min(CGZLInvoi' +
        'ce.CIDate)+5'
      
        '        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDat' +
        'e ='#39#39')) and (MaterialMOQ.Location Is null) then Min(CGZLS.CFMDat' +
        'e)+5'
      
        '        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.C' +
        'IDate <>'#39#39')) and (MaterialMOQ.Location IS null) then Min(CGZLInv' +
        'oice.CIDate)+5'
      
        '        end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy'#39' as useType,'#39#39' ' +
        'as stock_memo,CGZLS.Memo'
      '      '#9'from CGZLSS'
      #9'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        #9'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLS' +
        'S.CLBH'
      #9'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        #9'left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZ' +
        'LInvoiceS.CGNO=CGZLSS.CGNO'
      #9'left join CGZLInvoice on CGZLInvoiceS.cino=CGZLInvoice.cino'
      
        #9'left join (select season,CLBH,Location from MaterialMOQ where 1' +
        ' = 1'
      
        'Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=' +
        'CGZLS.CLBH and MaterialMOQ.Season=CGZL.SEASON'
      
        #9'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Locatio' +
        'n,cgzl.cgdate,CGZLS.Memo,CGZLInvoice.CIDate  )CGZLSS1 on CGZLSS1' +
        '.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH'
      ''
      'left join '
      #9'( '
      
        #9'select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoe' +
        'testplan '
      #9'left join kcrks on kcrks.CGBH=shoetestplan.ypdh '
      
        #9')kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=' +
        'Temp_YPZL.YPDH '
      'left join zszl on zszl.zsdh=Temp_YPZL.CSBH '
      
        'left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZL' +
        'InvoiceS.CGNO=CGZLSS.CGNO'
      'where '
      
        '   ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39')) ' +
        'or '
      
        '  (LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'L'#39') and  LEFT(Tem' +
        'p_YPZL.CLBH,3) not in ('#39'A48'#39')  and (clzlfilter_DFL.DFL is null) ' +
        ') or '
      '  (clzlfilter_DFL.DFL='#39'1'#39') or '
      
        '  (LEFT(Temp_YPZL.CLBH,1)='#39'P'#39' and Temp_YPZL.CSBH in ('#39'M027'#39','#39'V19' +
        '2'#39')) ) '
      
        'and zszlfilter.zsdh is null  and clzlfilter.cldh is null and lef' +
        't(Temp_YPZL.csbh,3) <>'#39'JNG'#39' '
      
        ' )main   group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,S' +
        'upplierName,isnull(Status,'#39#39') ,Material,MaterialDES,Memo,PurRece' +
        'iveDate,ywsm')
    Left = 913
    Top = 409
    object Query5Class: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object Query5Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query5Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query5SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query5Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query5SO: TStringField
      FieldName = 'SO'
      FixedChar = True
      Size = 15
    end
    object Query5Supplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 6
    end
    object Query5SupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
    object Query5Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 8
    end
    object Query5ETA: TStringField
      FieldName = 'ETA'
      FixedChar = True
      Size = 30
    end
    object Query5Material: TStringField
      FieldName = 'Material'
      FixedChar = True
      Size = 15
    end
    object Query5MaterialDES: TStringField
      FieldName = 'MaterialDES'
      FixedChar = True
      Size = 200
    end
    object Query5Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 250
    end
    object Query11ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object DataSource12: TDataSource
    DataSet = Query12
    Left = 105
    Top = 329
  end
  object Query12: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, is' +
        'null(Status,'#39#39') Status,ETA,Material,MaterialDES,Memo,ywsm from ('
      
        'select  '#39'S'#39' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcod' +
        'e SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl' +
        '.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,'
      
        'case when  kcrkstemp.qty is not null or PurReceiveDate is not nu' +
        'll then '#39'Arrive'#39' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>' +
        '0) then '#39'UseStock'#39' end '#39'Status'#39', '
      
        'case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is n' +
        'ot null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ' +
        #39'OK'#39' else  convert(varchar, CGZLSS1.ETA, 111) end '#39'ETA'#39', '
      
        'Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,C' +
        'GZLSs1.Memo,ywsm from ('
      
        'select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) a' +
        's CSBH,Sum(CLSL) as CLSL,ywsm  from ('
      
        'SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE' +
        ',ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLS' +
        'L,bwzl.ywsm'
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join CLZL on CLZL.CLDH=ypzls.CLBH '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'WHERE  clzl.clzmlb = '#39'N'#39' and  shoetestplan.groups = '#39'23SCR1'#39
      'union all '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsd' +
        'h as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL,bwzl.ywsm'
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left join CLZL on CLZL.CLDH=clzhzl.CLDH1 '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      
        'WHERE  clzl.clzmlb = '#39'N'#39'   and CLZHZL.SYL>0  and  shoetestplan.g' +
        'roups = '#39'23SCR1'#39
      'union all '
      
        'Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CL' +
        'ZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL,ywsm'
      ' from ( '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL,bwzl.yws' +
        'm'
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      
        'WHERE    CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and  shoetestplan.' +
        'groups = '#39'23SCR1'#39' ) clzhzl2'
      'left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0 '
      ')  YPZLS '
      'Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL,ywsm'
      ') Temp_YPZL '
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH '
      
        'left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =' +
        'Temp_YPZL.YPDH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clb' +
        'h=Temp_YPZL.CLBH '
      'left join( '
      
        #9#9'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Q' +
        'ty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.c' +
        'gdate,'
      
        #9#9'Case when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate' +
        ' ='#39#39'))  and (MaterialMOQ.Location='#39'VN'#39') then Min(CGZLS.CFMDate)+' +
        '1'
      
        '        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.C' +
        'IDate <>'#39#39')) and (MaterialMOQ.Location='#39'VN'#39') then Min(CGZLInvoic' +
        'e.CIDate)+1'
      
        '        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDat' +
        'e ='#39#39')) and (MaterialMOQ.Location<>'#39'VN'#39') then Min(CGZLS.CFMDate)' +
        '+5'
      
        '        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.C' +
        'IDate <>'#39#39')) and (MaterialMOQ.Location<>'#39'VN'#39') then Min(CGZLInvoi' +
        'ce.CIDate)+5'
      
        '        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDat' +
        'e ='#39#39')) and (MaterialMOQ.Location Is null) then Min(CGZLS.CFMDat' +
        'e)+5'
      
        '        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.C' +
        'IDate <>'#39#39')) and (MaterialMOQ.Location IS null) then Min(CGZLInv' +
        'oice.CIDate)+5'
      
        '        end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy'#39' as useType,'#39#39' ' +
        'as stock_memo,CGZLS.Memo'
      '      '#9'from CGZLSS'
      #9'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      
        #9'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLS' +
        'S.CLBH '
      #9'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        '  left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CG' +
        'ZLInvoiceS.CGNO=CGZLSS.CGNO'
      '  left join CGZLInvoice on CGZLInvoiceS.cino=CGZLInvoice.cino'
      
        #9'left join (select season,CLBH,Location from MaterialMOQ where 1' +
        ' = 1'
      
        'Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=' +
        'CGZLS.CLBH and MaterialMOQ.Season=CGZL.SEASON'
      
        #9'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Locatio' +
        'n,cgzl.cgdate,CGZLS.Memo,CGZLInvoice.CIDate  )CGZLSS1 on CGZLSS1' +
        '.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH'
      ''
      'left join '
      #9'( '
      
        #9'select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoe' +
        'testplan '
      #9'left join kcrks on kcrks.CGBH=shoetestplan.ypdh '
      
        #9')kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=' +
        'Temp_YPZL.YPDH '
      'left join zszl on zszl.zsdh=Temp_YPZL.CSBH '
      
        'left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZL' +
        'InvoiceS.CGNO=CGZLSS.CGNO'
      ''
      'where'
      
        '   ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Phu May' +
        #39')) or '
      
        '    ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT De'#39')) or' +
        ' '
      
        '    (LEFT(Temp_YPZL.CLBH,1) in ('#39'B'#39','#39'D'#39','#39'M'#39','#39'N'#39','#39'E'#39')  and (clzlf' +
        'ilter_DFL.DFL is null) ) or '
      '    (clzlfilter_DFL.DFL='#39'2'#39') or '
      
        '    (LEFT(Temp_YPZL.CLBH,3)  in ('#39'O02'#39','#39'J05'#39','#39'J04'#39','#39'A48'#39','#39'G03'#39'))' +
        '  or '
      
        '    (LEFT(Temp_YPZL.CLBH,1) in ('#39'P'#39','#39'G'#39')  and csbh in ('#39'V097'#39','#39'V' +
        '194'#39','#39'A104'#39','#39'A088'#39','#39'K110'#39','#39'V162'#39','#39'A159'#39'))) and '
      
        '    zszlfilter.zsdh is null  and clzlfilter.cldh is null and lef' +
        't(csbh,3) <>'#39'JNG'#39' '
      
        ' )main   group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,S' +
        'upplierName,isnull(Status,'#39#39') ,Material,MaterialDES,Memo,PurRece' +
        'iveDate,ywsm'
      ' order by Status')
    Left = 105
    Top = 377
    object StringField19: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object StringField20: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object StringField21: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object StringField22: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField23: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'SO'
      FixedChar = True
      Size = 15
    end
    object StringField25: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 6
    end
    object StringField26: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
    object StringField27: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 8
    end
    object StringField28: TStringField
      FieldName = 'ETA'
      FixedChar = True
      Size = 30
    end
    object StringField29: TStringField
      FieldName = 'Material'
      FixedChar = True
      Size = 15
    end
    object StringField30: TStringField
      FieldName = 'MaterialDES'
      FixedChar = True
      Size = 200
    end
    object StringField31: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 250
    end
    object Query12ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object DataSource13: TDataSource
    DataSet = Query13
    Left = 824
    Top = 192
  end
  object Query13: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,kietphong_Send from sh' +
        'oetest')
    Left = 824
    Top = 240
    object StringField32: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField33: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField19: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField20: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query13kietphong_Send: TDateTimeField
      FieldName = 'kietphong_Send'
    end
  end
  object DataSource14: TDataSource
    DataSet = Query14
    Left = 912
    Top = 192
  end
  object Query14: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,kietphong_Get from sho' +
        'etest')
    Left = 912
    Top = 240
    object StringField34: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField35: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField21: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField22: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query14kietphong_Get: TDateTimeField
      FieldName = 'kietphong_Get'
    end
  end
  object DataSource15: TDataSource
    DataSet = Query15
    Left = 992
    Top = 192
  end
  object Query15: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Amico_Send from shoete' +
        'st')
    Left = 992
    Top = 240
    object StringField36: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField37: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField23: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField24: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query15Amico_Send: TDateTimeField
      FieldName = 'Amico_Send'
    end
  end
  object DataSource16: TDataSource
    DataSet = Query16
    Left = 1080
    Top = 192
  end
  object Query16: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Amico_Get from shoetes' +
        't')
    Left = 1080
    Top = 240
    object StringField38: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField39: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField25: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField26: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query16Amico_Get: TDateTimeField
      FieldName = 'Amico_Get'
    end
  end
  object tempqry: TQuery
    DatabaseName = 'dB'
    Left = 184
    Top = 464
  end
  object Query17: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Laser_send from shoete' +
        'st')
    Left = 284
    Top = 386
    object Query17testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query17Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query17TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query17Pending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query17Laser_send: TDateTimeField
      FieldName = 'Laser_send'
    end
  end
  object DataSource17: TDataSource
    DataSet = Query17
    Left = 284
    Top = 351
  end
  object DataSource18: TDataSource
    DataSet = Query18
    Left = 340
    Top = 351
  end
  object Query18: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Laser_get from shoetes' +
        't')
    Left = 340
    Top = 383
    object Query18testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query18Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query18TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query18Pending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query18Laser_get: TDateTimeField
      FieldName = 'Laser_get'
    end
  end
  object DataSource19: TDataSource
    DataSet = Query19
    Left = 396
    Top = 351
  end
  object Query19: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,DAJU_Send from shoetes' +
        't')
    Left = 396
    Top = 383
    object StringField40: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField41: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField27: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField28: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query19DAJU_Send: TDateTimeField
      FieldName = 'DAJU_Send'
    end
  end
  object Query20: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select testno,Article,TBReceive,Pending_P,DAJU_Get from shoetest')
    Left = 452
    Top = 383
    object StringField42: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField43: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField29: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField30: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query20DAJU_Get: TDateTimeField
      FieldName = 'DAJU_Get'
    end
  end
  object DataSource20: TDataSource
    DataSet = Query20
    Left = 452
    Top = 351
  end
end
