object SupplierKPI: TSupplierKPI
  Left = 195
  Top = 71
  Width = 1300
  Height = 671
  Caption = 'SupplierKPI'
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 73
    Align = alTop
    TabOrder = 0
    object lbl3: TLabel
      Left = 6
      Top = 13
      Width = 39
      Height = 13
      Caption = 'Season:'
    end
    object btn3: TButton
      Left = 489
      Top = 6
      Width = 73
      Height = 27
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = btn3Click
    end
    object BBTT1: TBitBtn
      Left = 383
      Top = 7
      Width = 15
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = BBTT1Click
    end
    object ckbsel: TCheckBox
      Left = 568
      Top = 8
      Width = 73
      Height = 17
      Caption = 'ckbsel'
      TabOrder = 2
      Visible = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1282
      Height = 72
      Align = alTop
      TabOrder = 3
      object Shape1: TShape
        Left = 8
        Top = 4
        Width = 273
        Height = 39
        Brush.Color = clBlack
        Pen.Color = clWhite
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 287
        Top = 14
        Width = 61
        Height = 16
        Caption = 'Purchaser'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 17
        Top = 13
        Width = 62
        Height = 20
        Caption = 'Season'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 156
        Top = 13
        Width = 49
        Height = 20
        Caption = 'Stage'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 25
        Top = 52
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label9: TLabel
        Left = 132
        Top = 52
        Width = 7
        Height = 13
        Caption = '~'
      end
      object Label10: TLabel
        Left = 267
        Top = 48
        Width = 81
        Height = 16
        Caption = 'Vendor name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 867
        Top = 16
        Width = 54
        Height = 16
        Caption = 'ColumnE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 867
        Top = 40
        Width = 53
        Height = 16
        Caption = 'CloumnF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 939
        Top = 16
        Width = 55
        Height = 16
        Caption = 'ColumnN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 939
        Top = 40
        Width = 54
        Height = 16
        Caption = 'ColumnT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 1011
        Top = 16
        Width = 54
        Height = 16
        Caption = 'ColumnV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 1011
        Top = 40
        Width = 53
        Height = 16
        Caption = 'ColumnX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 1083
        Top = 16
        Width = 63
        Height = 16
        Caption = 'ColumnAC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 437
        Top = 9
        Width = 68
        Height = 25
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn3Click
      end
      object Edit2: TEdit
        Left = 350
        Top = 10
        Width = 61
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 411
        Top = 10
        Width = 15
        Height = 25
        Caption = '...'
        TabOrder = 2
        OnClick = BBTT1Click
      end
      object CheckBox1: TCheckBox
        Left = 672
        Top = 8
        Width = 73
        Height = 17
        Caption = 'ckbsel'
        TabOrder = 3
        Visible = False
      end
      object Edit1: TEdit
        Left = 89
        Top = 10
        Width = 56
        Height = 24
        CharCase = ecUpperCase
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Edit3: TEdit
        Left = 208
        Top = 10
        Width = 57
        Height = 24
        CharCase = ecUpperCase
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object CheckBox2: TCheckBox
        Left = 8
        Top = 48
        Width = 17
        Height = 17
        Caption = 'CheckBox2'
        TabOrder = 6
      end
      object DTP1: TDateTimePicker
        Left = 51
        Top = 48
        Width = 83
        Height = 21
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 7
      end
      object DTP2: TDateTimePicker
        Left = 142
        Top = 48
        Width = 83
        Height = 21
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 8
      end
      object Button2: TButton
        Left = 517
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Excel'
        TabOrder = 9
        OnClick = Button2Click
      end
      object Edit4: TEdit
        Left = 350
        Top = 46
        Width = 155
        Height = 21
        TabOrder = 10
      end
      object Button3: TButton
        Left = 520
        Top = 41
        Width = 72
        Height = 25
        Caption = 'ExcelKPI'
        TabOrder = 11
        OnClick = Button3Click
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 1284
    Height = 559
    ActivePage = Tab_ETDDelay
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Tab_ETDDelay: TTabSheet
      Caption = 'Over Lead Time'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 417
        Height = 528
        Align = alLeft
        Caption = 'pnl2'
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 415
          Height = 526
          Hint = 'Click Right Button Export To Excel'
          Align = alClient
          DataSource = DS_ETD_Supplier
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = Pop_ETD_Supplier
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ZSBH'
              Footers = <
                item
                  FieldName = 'ZSBH'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Supplier|ID'
              Title.TitleButton = True
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier|Name'
              Title.TitleButton = True
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'PurCount'
              Footers = <
                item
                  FieldName = 'PurCount'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Pur. Order'
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'delayTime'
              Footers = <
                item
                  FieldName = 'delayTime'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Delay|Times'
              Title.TitleButton = True
              Width = 32
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'DelayPercent'
              Footers = <>
              Title.Caption = 'Delay|%'
              Title.TitleButton = True
              Width = 31
            end
            item
              Color = clGreen
              EditButtons = <>
              FieldName = 'StandardPeriod'
              Footers = <>
              Title.Caption = 'LeadTime(Range)|Sample'
              Title.TitleButton = True
              Width = 47
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'DelayPeriod'
              Footers = <>
              Title.Caption = 'LeadTime(Range)|Actually'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'AvgStandardDays'
              Footers = <>
              Title.Caption = 'LeadTime(Avg)|Sample'
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'AvgDays'
              Footers = <>
              Title.Caption = 'LeadTime(Avg)|Actually'
              Title.TitleButton = True
              Width = 51
            end>
        end
      end
      object Panel3: TPanel
        Left = 417
        Top = 0
        Width = 859
        Height = 528
        Align = alClient
        Caption = 'pnl3'
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 857
          Height = 526
          Hint = 'Click Right Button Export To Excel'
          Align = alClient
          DataSource = DS_ETD_Delay
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = Pop_ETD_Delay
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'purpose'
              Footers = <>
              Title.Caption = 'Stage'
              Title.TitleButton = True
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat. ID'
              Title.TitleButton = True
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = 'Material'
              Title.TitleButton = True
              Width = 300
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <
                item
                  FieldName = 'Qty'
                  ValueType = fvtSum
                end>
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
              Title.TitleButton = True
            end
            item
              Color = clGreen
              EditButtons = <>
              FieldName = 'SampleMatLeadTime'
              Footers = <>
              Title.Caption = 'LeadTime|Sample'
              Title.TitleButton = True
              Width = 40
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'RealLeadtime'
              Footers = <>
              Title.Caption = 'LeadTime|Actually'
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'CGdate'
              Footers = <>
              Title.Caption = 'Purchase Date'
              Title.TitleButton = True
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Title.Caption = 'ETD'
              Title.TitleButton = True
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <
                item
                  FieldName = 'CGNO'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Pur NO'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'INV_ETA'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Status'
              Footers = <>
              Width = 55
            end>
        end
      end
    end
    object Tab_ETA: TTabSheet
      Caption = 'ETA Delay'
      ImageIndex = 1
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 528
        Align = alLeft
        Caption = 'pnl2'
        TabOrder = 0
        object DBGridEh8: TDBGridEh
          Left = 1
          Top = 1
          Width = 423
          Height = 526
          Hint = 'Click Right Button Export To Excel'
          Align = alClient
          DataSource = DS_ETA_Supplier
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = Pop_ETD_Supplier
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ZSBH'
              Footers = <
                item
                  FieldName = 'ZSBH'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Supplier|ID'
              Title.TitleButton = True
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier|Name'
              Title.TitleButton = True
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'PurCount'
              Footers = <
                item
                  FieldName = 'PurCount'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Pur. Order'
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'ETDType_Delaytimes'
              Footers = <>
              Title.Caption = 'ETDType_Delay|Times'
              Width = 42
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'ETDType_Delay'
              Footers = <>
              Title.Caption = 'ETDType_Delay|%'
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'delayTime'
              Footers = <
                item
                  FieldName = 'delayTime'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Delay|Times'
              Title.TitleButton = True
              Width = 32
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'DelayPercent'
              Footers = <>
              Title.Caption = 'Delay|%'
              Title.TitleButton = True
              Width = 31
            end
            item
              Color = clGreen
              EditButtons = <>
              FieldName = 'StandardPeriod'
              Footers = <>
              Title.Caption = 'LeadTime(Range)|Sample'
              Title.TitleButton = True
              Width = 47
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'DelayPeriod'
              Footers = <>
              Title.Caption = 'LeadTime(Range)|Actually'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'AvgStandardDays'
              Footers = <>
              Title.Caption = 'LeadTime(Avg)|Sample'
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'AvgDays'
              Footers = <>
              Title.Caption = 'LeadTime(Avg)|Actually'
              Title.TitleButton = True
              Width = 51
            end>
        end
      end
      object pnl3: TPanel
        Left = 425
        Top = 0
        Width = 851
        Height = 528
        Align = alClient
        Caption = 'pnl3'
        TabOrder = 1
        object dbgrdh2: TDBGridEh
          Left = 1
          Top = 42
          Width = 849
          Height = 485
          Hint = 'Click Right Button Export To Excel'
          Align = alClient
          DataSource = DS_ETA_Delay
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = Pop_ETA_Delay
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = dbgrdh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'purpose'
              Footers = <>
              Title.Caption = 'Stage'
              Title.TitleButton = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = 'Material'
              Title.TitleButton = True
              Width = 300
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <
                item
                  FieldName = 'Qty'
                  ValueType = fvtSum
                end>
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'INV_ETA'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ETD'
              Footers = <>
              Title.Caption = 'N74 First ETD'
            end
            item
              EditButtons = <>
              FieldName = 'CGdate'
              Footers = <>
              Title.Caption = 'Purchase Date'
              Title.TitleButton = True
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Title.Caption = 'Invoice    ETA'
              Title.TitleButton = True
              Width = 61
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'RealLeadtime'
              Footers = <>
              Title.Caption = 'Real Leadtime'
              Title.TitleButton = True
              Width = 81
            end
            item
              Color = clGreen
              EditButtons = <>
              FieldName = 'StandandLeadtime'
              Footers = <>
              Title.Caption = 'Standand Leadtime'
              Title.TitleButton = True
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'SampleMatLeadTime'
              Footers = <>
              Title.Caption = 'Material LeadTime'
              Title.TitleButton = True
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'Transport'
              Footers = <>
              Title.Caption = 'Transport Way'
              Title.TitleButton = True
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'TransportLeadtime'
              Footers = <>
              Title.Caption = 'Transport Leadtime'
              Title.TitleButton = True
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <
                item
                  FieldName = 'CGNO'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Pur NO'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat. ID'
              Title.TitleButton = True
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'RealETA'
              Footers = <>
              Title.Caption = 'N74 ETD'
            end
            item
              EditButtons = <>
              FieldName = 'Status'
              Footers = <>
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'us'
              Footers = <>
            end>
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 849
          Height = 41
          Align = alTop
          Caption = 'Red : InvoiceETA>N74 first ETD'
          TabOrder = 1
        end
      end
    end
    object Tab_NGRank: TTabSheet
      Caption = 'NG Rank'
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 376
        Top = 0
        Height = 536
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 376
        Height = 536
        Align = alLeft
        TabOrder = 0
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 374
          Height = 534
          Align = alClient
          DataSource = DS_SupplierNG
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_SupplierNG
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ZSDH'
              Footers = <>
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'zsjc'
              Footers = <>
              Title.TitleButton = True
              Width = 93
            end
            item
              EditButtons = <>
              FieldName = 'ETACount'
              Footers = <>
              Title.Caption = 'Material|Receive(ETA)'
              Title.TitleButton = True
              Width = 70
            end
            item
              Color = clTeal
              EditButtons = <>
              FieldName = 'NG_Time'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Material|NG'
              Title.TitleButton = True
              Width = 30
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'NGPercent'
              Footers = <>
              Title.Caption = 'Material|%'
              Title.TitleButton = True
              Width = 29
            end
            item
              EditButtons = <>
              FieldName = 'USAmountAll'
              Footers = <>
              Title.Caption = 'Amount|US Total'
              Title.TitleButton = True
              Visible = False
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'USAmount'
              Footers = <>
              Title.Caption = 'Amount|US'
              Title.TitleButton = True
              Visible = False
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'VNAmount'
              Footers = <>
              Title.Caption = 'Amount|VN'
              Title.TitleButton = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'DiffMonthETACount'
              Footers = <>
              Title.Caption = 'Last month'
              Visible = False
              Width = 32
            end>
        end
      end
      object Panel14: TPanel
        Left = 379
        Top = 0
        Width = 905
        Height = 536
        Align = alClient
        TabOrder = 1
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 1
          Width = 903
          Height = 534
          Align = alClient
          DataSource = DS_SupplierNGMat
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_SupplierNGMat
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              Title.TitleButton = True
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.TitleButton = True
              Width = 262
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.TitleButton = True
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'NG_Date'
              Footers = <>
              Title.TitleButton = True
              Width = 65
            end
            item
              Color = clFuchsia
              EditButtons = <>
              FieldName = 'NG_Reason'
              Footers = <>
              Title.TitleButton = True
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'Result'
              Footers = <>
              Title.TitleButton = True
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = 'PUR NO'
            end
            item
              EditButtons = <>
              FieldName = 'USPrice'
              Footers = <>
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice'
              Footers = <>
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'REMARK'
              Footers = <>
              Title.TitleButton = True
              Width = 187
            end
            item
              EditButtons = <>
              FieldName = 'zsjc'
              Footers = <>
              Width = 86
            end>
        end
      end
    end
    object Tab_SupplierStyle: TTabSheet
      Caption = 'Supplier Style'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 536
        Align = alClient
        Caption = 'pnl1'
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 561
          Top = 1
          Height = 534
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 307
          Height = 534
          Align = alLeft
          Caption = 'pnl2'
          TabOrder = 0
          object DBGrid2: TDBGridEh
            Left = 1
            Top = 23
            Width = 305
            Height = 262
            Align = alClient
            Color = clWhite
            DataSource = DS_SupplierStyle
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
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            PopupMenu = Pop_SupplierStyle
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Style'
                Footers = <
                  item
                    FieldName = 'Style'
                    ValueType = fvtCount
                  end>
                Title.TitleButton = True
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'Cnt'
                Footers = <
                  item
                    FieldName = 'Cnt'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Supplier'
                Title.TitleButton = True
                Width = 43
              end
              item
                DisplayFormat = '##.0'
                EditButtons = <>
                FieldName = 'Mat_Qty'
                Footers = <>
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'Mat_Cnt'
                Footers = <
                  item
                    FieldName = 'Mat_Cnt'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Material Item'
                Title.TitleButton = True
                Width = 42
              end>
          end
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 305
            Height = 22
            Align = alTop
            TabOrder = 1
            object Label1: TLabel
              Left = 7
              Top = 2
              Width = 88
              Height = 16
              Caption = 'Total supplier: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 98
              Top = 0
              Width = 37
              Height = 20
              AutoSize = False
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'Cnt'
              DataSource = DS_SupplierTotal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object DBGridEh7: TDBGridEh
            Left = 1
            Top = 306
            Width = 305
            Height = 227
            Align = alBottom
            DataSource = DS_SupplierCountry
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            PopupMenu = Pop_SupplierCountry
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Times New Roman'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Country'
                Footers = <>
                Title.TitleButton = True
                Width = 83
              end
              item
                DisplayFormat = '##.0'
                EditButtons = <>
                FieldName = 'PurQty'
                Footers = <
                  item
                    FieldName = 'PurQty'
                    ValueType = fvtSum
                  end>
                Title.TitleButton = True
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'SupplierCnt'
                Footers = <>
                Title.TitleButton = True
                Width = 60
              end>
          end
          object Panel8: TPanel
            Left = 1
            Top = 285
            Width = 305
            Height = 21
            Align = alBottom
            TabOrder = 3
            object Label5: TLabel
              Left = 5
              Top = 4
              Width = 98
              Height = 16
              Caption = 'Supplier Country'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit4: TDBEdit
              Left = 106
              Top = 4
              Width = 143
              Height = 18
              AutoSize = False
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'Style'
              DataSource = DS_SupplierStyle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object pnl6: TPanel
          Left = 308
          Top = 1
          Width = 253
          Height = 534
          Align = alLeft
          TabOrder = 1
          object Panel16: TPanel
            Left = 1
            Top = 1
            Width = 251
            Height = 22
            Align = alTop
            TabOrder = 0
            object Label3: TLabel
              Left = 6
              Top = 1
              Width = 90
              Height = 16
              Caption = 'Supplier Style='
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 99
              Top = 1
              Width = 143
              Height = 18
              AutoSize = False
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'Style'
              DataSource = DS_SupplierStyle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 23
            Width = 251
            Height = 510
            Align = alClient
            DataSource = DS_Supplier
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            PopupMenu = Pop_Supplier
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Country'
                Footers = <>
                Title.Caption = 'Supplier|Country'
                Title.TitleButton = True
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'zsjc'
                Footers = <
                  item
                    FieldName = 'zsjc'
                    ValueType = fvtCount
                  end>
                Title.TitleButton = True
                Width = 109
              end
              item
                DisplayFormat = '##.0'
                EditButtons = <>
                FieldName = 'PurQty'
                Footers = <
                  item
                    FieldName = 'PurQty'
                    ValueType = fvtSum
                  end>
                Title.TitleButton = True
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'Cnt'
                Footers = <>
                Title.Caption = 'Material Item'
                Title.TitleButton = True
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'ZSDH'
                Footers = <>
                Title.TitleButton = True
              end>
          end
        end
        object Panel9: TPanel
          Left = 564
          Top = 1
          Width = 719
          Height = 534
          Align = alClient
          Caption = 'Panel8'
          TabOrder = 2
          object DBGridEh6: TDBGridEh
            Left = 1
            Top = 28
            Width = 717
            Height = 505
            Align = alClient
            DataSource = DS_SupplierMat
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            PopupMenu = Pop_SupplierMat
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Times New Roman'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <
                  item
                    FieldName = 'CLBH'
                    ValueType = fvtCount
                  end>
                Title.TitleButton = True
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Title.TitleButton = True
                Width = 282
              end
              item
                DisplayFormat = '##.0'
                EditButtons = <>
                FieldName = 'Purqty'
                Footers = <
                  item
                    FieldName = 'Purqty'
                    ValueType = fvtSum
                  end>
                Title.Caption = 'Purchase Q'#39'ty'
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                Title.Caption = 'Unit'
                Title.TitleButton = True
                Width = 40
              end>
          end
          object Panel10: TPanel
            Left = 1
            Top = 1
            Width = 717
            Height = 27
            Align = alTop
            TabOrder = 1
            object Label4: TLabel
              Left = 6
              Top = 2
              Width = 53
              Height = 16
              Caption = 'Supplier:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 62
              Top = 1
              Width = 235
              Height = 17
              AutoSize = False
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'zsjc'
              DataSource = DS_SupplierMat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Memo'
      ImageIndex = 4
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1276
        Height = 528
        Align = alClient
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = 14822282
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Lines.Strings = (
          '---------------------------------------------------'
          #31243#24335#20027#35201#21151#33021#35498#26126
          ''
          #20027#35201#29992#26044#27604#36611#20986#21508#24288#21830#30340#20132#36008#26178#38291#33287#24179#22343#33391#21697#29575#30340#20801#25910
          ''
          '---------------------------------------------------'
          #36039#26009#31721#36984#35498#26126
          'Season: '#23395#21029
          'Stage: '#38283#30332#38542#27573
          'Purchaser: '#25505#36092#20154#21729
          ''
          '---------------------------------------------------'
          #20171#38754#20998#21029#35498#26126
          'ETD Delay: '#20986#36008#26085#24310#36978
          'ETA Delay: '#25910#36008#26085#24310#36978
          'NG_Rank: NG_'#31561#32026
          'SupplierStyle: '#20379#25033#21830#39006#21029
          ''
          '---------------------------------------------------'
          #37325#40670#27396#20301#35498#26126
          'Supplier'#8594'ID: '#20379#25033#21830#32232#34399
          'Supplier'#8594'Name: '#20379#25033#21830#21517#31281
          'PurOrder: '#25505#36092#35330#36092#26178#38291
          'Delay'#8594'Times: '#24310#36978#26178#38291
          'Delay'#8594'%: '#24310#36978#30334#20998#27604
          'LeadTime(Range)'#8594'Sample: '#38928#20272#26448#26009#20132#36008#28310#20633#26178#38291
          'LeadTime(Range)'#8594'Actuallay: '#23526#38555#38928#20272#20132#36008#26178#38291
          'LeadTime(AVG)'#8594'Sample: '#24179#22343#26448#26009#20132#36008#26178#38291
          'LeadTime(AVG)'#8594'Actually: '#23526#38555#24179#22343#20132#36008#26178#38291
          'Purchase Date: '#25505#36092#26178#38291
          'ETD: '#25910#36008#26085
          'Pur No: '#25505#36092#21934#34399
          ''
          '---------------------------------------------------')
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DevRequest'
      ImageIndex = 5
      object DBGridEh9: TDBGridEh
        Left = 0
        Top = 0
        Width = 1284
        Height = 536
        Align = alClient
        DataSource = DS_MatRecieve
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Season'
            Footer.FieldName = 'Season'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'SampleNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PurchaseNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialDescription'
            Footers = <>
            Width = 570
          end
          item
            EditButtons = <>
            FieldName = 'SupplierNO'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'SupplierDescription'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ReceiveDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Shipdate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KPIDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SamplePurchaser'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Requested ETD'
      ImageIndex = 6
      object DBGridEh10: TDBGridEh
        Left = 292
        Top = 0
        Width = 992
        Height = 536
        Align = alClient
        DataSource = DS_Ship_Delay
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        PopupMenu = Pop_Ship_Delay
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'Purpose'
            Footers = <>
            Title.Caption = 'Stage'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = 'Pur NO'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Sample NO'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material|ID'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'Material|Name'
            Width = 234
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Invoice'
            Footers = <>
            Width = 90
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Width = 80
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ShippingDate'
            Footers = <>
            Width = 80
          end>
      end
      object DBGridEh11: TDBGridEh
        Left = 0
        Top = 0
        Width = 292
        Height = 536
        Align = alLeft
        DataSource = DS_Ship_Supplier
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        PopupMenu = Pop_Ship_Supplier
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Supplier|ID'
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'PurCount'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Pur. Order'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Times'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Delay|Times'
            Width = 32
          end
          item
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'DelayPercent'
            Footers = <>
            Title.Caption = 'Delay|%'
            Width = 31
          end>
      end
    end
  end
  object Qry_ETA_Delay: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ETA_Supplier
    SQL.Strings = (
      ''
      
        'select CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLInvoiceS' +
        '.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLInvoiceS.Qty,CGzl.CGdate,CGZLInvoi' +
        'ce.ETA,isnull(MaterialMOQ.SampleLeadtime,0) as SampleMatLeadTime' +
        ' '
      
        '       ,Transportation.Transport,isnull(Transportation.Transport' +
        'Leadtime,0) as TransportLeadtime '
      
        '       ,cast(CGZLInvoice.ETA As Int)-cast(CGzl.CGdate As Int) as' +
        '  RealLeadtime '
      
        '       ,isnull(MaterialMOQ.SampleLeadtime,0)+isnull(Transportati' +
        'on.TransportLeadtime,0) as StandandLeadtime ,CGZLInvoice.ETA AS ' +
        'INV_ETA,CGZLS.CFMDate as RealETA,'
      
        '       CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3' +
        ' THEN '#39'OK'#39' ELSE '#39'NOT OK'#39' END AS Status, min(ETDTemp.ETD)  ETD'
      'from CGzl '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH '
      'left join CGZLS on CGZLS.CGNO=CGzl.CGNO '
      
        'left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZL' +
        'S.CLBH=CGZLInvoiceS.CLBH '
      'left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO '
      'left join CLZl ON CGZLInvoiceS.CLBH=CLZL.CLDH '
      
        'LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLBH and Mater' +
        'ialMOQ.season=CGZL.Season '
      
        'Left Join Transportation on CGZLInvoice.Transport=Transportation' +
        '.Transport '
      'LEFT JOIN ('
      '  SELECT ETDTemp.* FROM ETDTemp'
      '  LEFT JOIN ('
      
        '    SELECT CGNO, CLBH, Article, MIN(UserDate) AS UserDate FROM E' +
        'TDTemp'
      '    GROUP BY CGNO, CLBH, Article'
      
        '  ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLB' +
        'H = ETDTemp.CLBH AND ETDTemp2.Article = ETDTemp.Article AND ETDT' +
        'emp2.UserDate = ETDTemp.UserDate'
      '  WHERE ETDTemp2.CGNO IS NOT NULL'
      
        ') AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZL' +
        'S.CLBH'
      'where 1=1  '
      '   and CGZL.Season='#39'21S'#39
      '   and CGZL.purpose='#39'SMS'#39
      '      and ZSZL.ZSDH=:ZSBH '
      
        '     group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLI' +
        'nvoiceS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLInvoiceS.Qty,CGzl.CGdate,CG' +
        'ZLInvoice.ETA,isnull(MaterialMOQ.SampleLeadtime,0)'
      
        '   ,Transportation.Transport,isnull(Transportation.TransportLead' +
        'time,0)'
      '   ,cast(CGZLInvoice.ETA As Int)-cast(CGzl.CGdate As Int)'
      
        '   ,isnull(MaterialMOQ.SampleLeadtime,0)+isnull(Transportation.T' +
        'ransportLeadtime,0) ,CGZLInvoice.ETA,CGZLS.CFMDate, ETDTemp.User' +
        'Date'
      '')
    Left = 100
    Top = 295
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZSBH'
        ParamType = ptUnknown
        Size = 7
      end>
    object Qry_ETA_DelayZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_ETA_DelayCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_ETA_DelayYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_ETA_DelayDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ETA_DelayQty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Qry_ETA_DelayCGdate: TDateTimeField
      FieldName = 'CGdate'
    end
    object Qry_ETA_DelayETA: TDateTimeField
      FieldName = 'ETA'
    end
    object Qry_ETA_DelaySampleMatLeadTime: TIntegerField
      FieldName = 'SampleMatLeadTime'
    end
    object Qry_ETA_DelayTransport: TStringField
      FieldName = 'Transport'
      FixedChar = True
      Size = 10
    end
    object Qry_ETA_DelayTransportLeadtime: TIntegerField
      FieldName = 'TransportLeadtime'
    end
    object Qry_ETA_DelayRealLeadtime: TIntegerField
      FieldName = 'RealLeadtime'
    end
    object Qry_ETA_DelayStandandLeadtime: TIntegerField
      FieldName = 'StandandLeadtime'
    end
    object Qry_ETA_DelayCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ETA_DelaySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Qry_ETA_Delaypurpose: TStringField
      FieldName = 'purpose'
      FixedChar = True
      Size = 15
    end
    object Qry_ETA_DelayINV_ETA: TDateTimeField
      FieldName = 'INV_ETA'
    end
    object Qry_ETA_DelayRealETA: TDateTimeField
      FieldName = 'RealETA'
    end
    object Qry_ETA_DelayStatus: TStringField
      FieldName = 'Status'
      Size = 5
    end
    object Qry_ETA_DelayETD: TDateTimeField
      FieldName = 'ETD'
    end
  end
  object DS_ETA_Delay: TDataSource
    DataSet = Qry_ETA_Delay
    Left = 100
    Top = 263
  end
  object DS_ETA_Supplier: TDataSource
    DataSet = Qry_ETA_Supplier
    Left = 48
    Top = 264
  end
  object Pop_ETA_Supplier: TPopupMenu
    Left = 48
    Top = 329
    object Menu_ETA_Supplier: TMenuItem
      Caption = 'Excel'
      OnClick = Menu_ETA_SupplierClick
    end
  end
  object Pop_ETA_Delay: TPopupMenu
    Left = 100
    Top = 328
    object Menu_ETA_Delay: TMenuItem
      Caption = 'Excel'
      OnClick = Menu_ETA_DelayClick
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 827
    Top = 24
  end
  object Qry_ETD_Supplier: TQuery
    OnCalcFields = Qry_ETD_SupplierCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty,d' +
        'elayTime.DelayPeriod,delayTime.StandardPeriod ,delayTime.AvgDays' +
        ',delayTime.AvgStandardDays ,count(CGZLS.CLBH) AS PurCount,(delay' +
        'Time/count(CGZLS.CLBH)*100) AS DelayPercent'
      'from CGZL'
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      'left join CGZLS on CGZLS.CGNO=CGzl.CGNO'
      'left join (                 '
      
        '           select CGZL.ZSBH,count(*) as delayTime ,sum(CGZLInvoi' +
        'ceS.Qty) as DelayQty'
      
        '                  ,AVG(cast(CGZLInvoice.ETA As Int) -cast(CGzl.C' +
        'Gdate As Int)) as AvgDays'
      
        '                  ,AVG(isnull(MaterialMOQ.SampleLeadtime,0)) as ' +
        'AvgStandardDays'
      
        '                  ,LTRIM(STR(MIN(cast(CGZLS.CFMDate As Int) -cas' +
        't(CGzl.CGdate As Int))))+'#39'-'#39'+LTRIM(STR(MAX(cast(CGZLS.CFMDate As' +
        ' Int) -cast(CGzl.CGdate As Int)))) as DelayPeriod'
      
        '                  ,LTRIM(STR(MIN(MaterialMOQ.SampleLeadtime)))+'#39 +
        '-'#39'+LTRIM(STR(MAX(MaterialMOQ.SampleLeadtime))) as StandardPeriod'
      '           from CGzl'
      '           left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      '           left join CGZLS on CGZLS.CGNO=CGzl.CGNO '
      
        '           left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CG' +
        'NO AND CGZLS.CLBH=CGZLInvoiceS.CLBH'
      
        '           left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoi' +
        'ce.CINO '
      
        '           LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLB' +
        'H'
      
        '           Left Join Transportation on CGZLInvoice.Transport=Tra' +
        'nsportation.Transport'
      
        '           where CGZLInvoice.ETA is not null and cast(CGZLInvoic' +
        'e.ETA As Int) -cast(CGzl.CGdate As Int)>isnull(MaterialMOQ.Sampl' +
        'eLeadtime,0)+isnull(Transportation.TransportLeadtime,0)'
      '                 and CGZL.Season='#39'FW11'#39'   '
      '            group by CGZL.ZSBH  '
      '          ) delayTime on delayTime.ZSBH=CGZL.ZSBH'
      'where CGZL.Season='#39'FW11'#39' and cgzl.purpose<>'#39'PDT'#39
      
        'group by CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty' +
        ' ,delayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDa' +
        'ys ,delayTime.AvgStandardDays')
    Left = 48
    Top = 176
    object StringField1: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'delayTime'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'DelayQty'
      currency = False
    end
    object IntegerField2: TIntegerField
      FieldName = 'AvgDays'
    end
    object Qry_ETD_SupplierPurCount: TIntegerField
      FieldName = 'PurCount'
    end
    object Qry_ETD_SupplierAvgStandardDays: TIntegerField
      FieldName = 'AvgStandardDays'
    end
    object Qry_ETD_SupplierDelayPercent_: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DelayPercent_'
      Calculated = True
    end
    object Qry_ETD_SupplierDelayPercent: TIntegerField
      FieldName = 'DelayPercent'
    end
    object Qry_ETD_SupplierDelayPeriod: TStringField
      FieldName = 'DelayPeriod'
      FixedChar = True
      Size = 21
    end
    object Qry_ETD_SupplierStandardPeriod: TStringField
      FieldName = 'StandardPeriod'
      FixedChar = True
      Size = 21
    end
  end
  object DS_ETD_Supplier: TDataSource
    DataSet = Qry_ETD_Supplier
    Left = 48
    Top = 144
  end
  object Pop_ETD_Supplier: TPopupMenu
    Left = 48
    Top = 209
    object Menu_ETD_Supplier: TMenuItem
      Caption = 'Excel'
      OnClick = Menu_ETD_SupplierClick
    end
  end
  object Qry_ETD_Delay: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ETD_Supplier
    SQL.Strings = (
      ''
      
        'select CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,C' +
        'LZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate as ETA,is' +
        'null(MaterialMOQ.SampleLeadtime,0) as SampleMatLeadTime '
      
        '       ,cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int) as  ' +
        'RealLeadtime ,CGZLInvoice_1.ETA AS INV_ETA'
      'from CGzl '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH '
      'left join CGZLS on CGZLS.CGNO=CGzl.CGNO '
      
        'left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1,Invoice_Customs from CGZLInvoiceS GROUP BY CGNO,CLBH,Invoic' +
        'e_Customs ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and' +
        ' CGZLS.CGNO=CGZLInvoiceS_1.CGNO '
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1  '
      ''
      'left join CLZl ON CGZLS.CLBH=CLZL.CLDH '
      
        'LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLBH and Mater' +
        'ialMOQ.season=CGZL.Season'
      
        'where CGZLS.CFMDate is not null and cast(CGZLS.CFMDate As Int) -' +
        'cast(CGzl.CGdate As Int)>isnull(MaterialMOQ.SampleLeadtime,0) '
      '  and CGZL.cglx=6 and CGZL.GSBH='#39'CDC'#39' '
      '   and CGZL.Season='#39'20H'#39
      '   and CGZL.purpose='#39'CR1'#39
      '      and ZSZL.ZSDH='#39'A070'#39
      
        '      group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZL' +
        'S.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate ,' +
        'isnull(MaterialMOQ.SampleLeadtime,0) '
      
        ',cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int),CGZLInvoice' +
        '_1.ETA'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 96
    Top = 176
    object StringField3: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField4: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField5: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CGdate'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ETA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'SampleMatLeadTime'
    end
    object IntegerField5: TIntegerField
      FieldName = 'RealLeadtime'
    end
    object StringField8: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object StringField10: TStringField
      FieldName = 'purpose'
      FixedChar = True
      Size = 15
    end
    object Qry_ETD_DelayINV_ETA: TDateTimeField
      FieldName = 'INV_ETA'
    end
    object Qry_ETD_DelayStatus: TStringField
      FieldName = 'Status'
      Size = 5
    end
  end
  object DS_ETD_Delay: TDataSource
    DataSet = Qry_ETD_Delay
    Left = 96
    Top = 144
  end
  object Pop_ETD_Delay: TPopupMenu
    Left = 96
    Top = 209
    object Menu_ETD_Delay: TMenuItem
      Caption = 'Excel'
      OnClick = Menu_ETD_DelayClick
    end
  end
  object Qry_SupplierNG: TQuery
    AfterScroll = Qry_SupplierNGAfterScroll
    OnCalcFields = Qry_SupplierNGCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '               select ZSZL.ZSDH,ZSZL.zsjc,count(*) as ETACount,c' +
        'ount(*) as NG_Time'
      '                      ,count(*) as DiffMonthETACount'
      
        '                      ,sum(isnull(CGZLS.USPrice,0)*CGZLS.Qty) as' +
        ' USAmountAll'
      
        '                      ,sum(isnull(CGZLS.USPrice,0)*CGZLS.Qty) as' +
        ' USAmount'
      
        '                      ,sum(isnull(CGZLS.VNPrice,0)*CGZLS.Qty) as' +
        ' VNAmount,1 AS ORDERBY'
      '                      ,(count(*)*100/count(*))  as NGPercent'
      '               FROM MaterialNG'
      '               LEFT JOIN CGZL  ON MaterialNG.cgno=cgzl.cgno'
      '               LEFT JOIN CGZLS ON CGZLS.cgno=cgzl.cgno'
      
        '               LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH            ' +
        '         '
      '               WHERE   CGZL.GSBH='#39'R&D'#39
      '                       and CGZL.SEASON='#39'FW11'#39
      '                       and 1=2'
      '               group by ZSZL.ZSDH,ZSZL.zsjc')
    Left = 328
    Top = 239
    object StringField7: TStringField
      DisplayLabel = 'Supplier|ID'
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object StringField11: TStringField
      DisplayLabel = 'Supplier|Name'
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Qry_SupplierNGNG_Time: TIntegerField
      FieldName = 'NG_Time'
    end
    object Qry_SupplierNGORDERBY: TIntegerField
      FieldName = 'ORDERBY'
    end
    object Qry_SupplierNGETACount: TIntegerField
      FieldName = 'ETACount'
    end
    object Qry_SupplierNGNGPercent_: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NGPercent_'
      Calculated = True
    end
    object Qry_SupplierNGUSAmount: TCurrencyField
      FieldName = 'USAmount'
      currency = False
    end
    object Qry_SupplierNGVNAmount: TCurrencyField
      FieldName = 'VNAmount'
      currency = False
    end
    object Qry_SupplierNGUSAmountAll: TCurrencyField
      FieldName = 'USAmountAll'
      currency = False
    end
    object Qry_SupplierNGNGPercent: TIntegerField
      FieldName = 'NGPercent'
    end
    object Qry_SupplierNGDiffMonthETACount: TIntegerField
      FieldName = 'DiffMonthETACount'
    end
  end
  object Qry_SupplierNGMat: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '               select ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,M' +
        'aterialNG.NG_Reason,MaterialNG.REMARK,MaterialNG.Result,Material' +
        'NG.NG_Date'
      
        '                      ,CGZLS.CGNO,CGZLS.USPrice,CGZLS.VNPrice,CG' +
        'ZLS.Qty'
      '               FROM MaterialNG'
      '               LEFT JOIN CGZL  ON MaterialNG.cgno=cgzl.cgno'
      '               LEFT JOIN CGZLS ON CGZLS.cgno=cgzl.cgno'
      
        '               LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH            ' +
        '         '
      '               LEFT JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH'
      '               WHERE   CGZL.GSBH='#39'R&D'#39
      '                       and CGZL.SEASON='#39'FW11'#39
      '                       and 1=2')
    Left = 360
    Top = 239
    object StringField12: TStringField
      DisplayLabel = 'Material|ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField13: TStringField
      DisplayLabel = 'Material|Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField14: TStringField
      DisplayLabel = 'Material|Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_SupplierNGMatNG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object Qry_SupplierNGMatNG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object Qry_SupplierNGMatResult: TStringField
      FieldName = 'Result'
      FixedChar = True
    end
    object Qry_SupplierNGMatREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 50
    end
    object Qry_SupplierNGMatzsjc: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Qry_SupplierNGMatCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_SupplierNGMatUSPrice: TCurrencyField
      FieldName = 'USPrice'
      currency = False
    end
    object Qry_SupplierNGMatVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      currency = False
    end
    object Qry_SupplierNGMatQty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
  end
  object DS_SupplierNG: TDataSource
    DataSet = Qry_SupplierNG
    Left = 328
    Top = 207
  end
  object DS_SupplierNGMat: TDataSource
    DataSet = Qry_SupplierNGMat
    Left = 360
    Top = 207
  end
  object Pop_SupplierNG: TPopupMenu
    Left = 327
    Top = 273
    object MenuPop_SupplierNG: TMenuItem
      Caption = 'Excel'
      OnClick = MenuPop_SupplierNGClick
    end
  end
  object Pop_SupplierNGMat: TPopupMenu
    Left = 359
    Top = 273
    object MenuPop_SupplierNGMat: TMenuItem
      Caption = 'Excel'
      OnClick = MenuPop_SupplierNGMatClick
    end
  end
  object Qry_SupplierTotal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '          select count(ZSZL_Master.ZSDH) as Cnt'
      '          from ZSZL ZSZL_Master '
      
        '          where exists (select cgno from CGZL where CGZL.ZSBH = ' +
        'ZSZL_Master.ZSDH '
      '                        and CGZL.CGLX='#39'6'#39
      '                       and CGZL.SEASON='#39'FW11'#39'   )')
    Left = 72
    Top = 455
    object Qry_SupplierTotalCnt: TIntegerField
      FieldName = 'Cnt'
    end
  end
  object Qry_SupplierStyle: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '    select Style,count(ZSDH) as Cnt ,count(ZSDH) as  Mat_Cnt,sum' +
        '(cgzls.qty) as Mat_Qty from ZSZL'
      '    left join  cgzls on CGZLS.cgno=ZSZL.style'
      '     where 1=2 '
      '    group by style,ZSDH')
    Left = 112
    Top = 455
    object Qry_SupplierStyleStyle: TStringField
      FieldName = 'Style'
      FixedChar = True
    end
    object Qry_SupplierStyleCnt: TIntegerField
      FieldName = 'Cnt'
    end
    object Qry_SupplierStyleMat_Cnt: TIntegerField
      FieldName = 'Mat_Cnt'
    end
    object Qry_SupplierStyleMat_Qty: TCurrencyField
      DisplayLabel = 'Purchase Qty'
      FieldName = 'Mat_Qty'
      currency = False
    end
  end
  object Qry_SupplierCountry: TQuery
    DatabaseName = 'DB'
    DataSource = DS_SupplierStyle
    SQL.Strings = (
      
        '     select ZSZL.Country,sum(cgzls.qty) as PurQty ,COUNT(*) AS S' +
        'upplierCnt'
      '            FROM CGZL,CGZLS,ZSZL WHERE '
      '                  CGZLS.cgno=cgzl.cgno '
      '                    and CGZL.GSBH='#39'R&D'#39'  '
      '                    and CGZL.SEASON='#39'fw11'#39
      '                    and cgzls.qty>0'
      '                    and CGZL.ZSBH=ZSZL.ZSDH'
      '                    and 1=2'
      '            group by ZSZL.Country')
    Left = 154
    Top = 455
    object Qry_SupplierCountryCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object Qry_SupplierCountrySupplierCnt: TIntegerField
      DisplayLabel = 'Supplier'
      FieldName = 'SupplierCnt'
    end
  end
  object Qry_Supplier: TQuery
    DatabaseName = 'DB'
    DataSource = DS_SupplierStyle
    SQL.Strings = (
      
        '     select ZSZL.Country,ZSZL.ZSDH,ZSZL.zsjc,count(CGZLS.CLBH) a' +
        's Cnt ,sum(cgzls.qty) as PurQty'
      '            FROM CGZL,CGZLS,ZSZL WHERE '
      '                  CGZLS.cgno=cgzl.cgno '
      '                    and CGZL.GSBH='#39'R&D'#39'  '
      '                    and CGZL.SEASON='#39'fw11'#39
      '                    and cgzls.qty>0'
      '                    and CGZL.ZSBH=ZSZL.ZSDH'
      '                    and 1=2'
      '            group by ZSZL.Country,ZSZL.ZSDH,ZSZL.zsjc')
    Left = 186
    Top = 455
    object Qry_SupplierZSDH: TStringField
      DisplayLabel = 'Supplier|ID'
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Qry_Supplierzsjc: TStringField
      DisplayLabel = 'Supplier|Name'
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Qry_SupplierCnt: TIntegerField
      FieldName = 'Cnt'
    end
    object Qry_SupplierPurQty: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object Qry_SupplierCountry2: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
  end
  object Qry_SupplierMat: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Supplier
    SQL.Strings = (
      
        '               select ZSZL.ZSDH,ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,C' +
        'LZL.DWBH,SUM(cgzls.qty) as Purqty '
      '               FROM CGZL'
      '               LEFT JOIN CGZLS ON CGZLS.cgno=cgzl.cgno'
      
        '               LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH            ' +
        '         '
      '               LEFT JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH'
      '               WHERE   CGZL.GSBH='#39'R&D'#39
      '                       and CGZL.SEASON='#39'FW11'#39'  '
      '                       and cgzls.qty>0'
      '                       AND 1=2 '
      
        '               group by ZSZL.ZSDH,ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM' +
        ',CLZL.DWBH')
    Left = 218
    Top = 455
    object Qry_SupplierMatZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Qry_SupplierMatzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Qry_SupplierMatCLBH: TStringField
      DisplayLabel = 'Material|ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_SupplierMatYWPM: TStringField
      DisplayLabel = 'Material|Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_SupplierMatDWBH: TStringField
      DisplayLabel = 'Material|Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_SupplierMatPurqty: TCurrencyField
      FieldName = 'Purqty'
      currency = False
    end
  end
  object DS_SupplierMat: TDataSource
    DataSet = Qry_SupplierMat
    Left = 218
    Top = 487
  end
  object DS_Supplier: TDataSource
    DataSet = Qry_Supplier
    Left = 186
    Top = 487
  end
  object DS_SupplierCountry: TDataSource
    DataSet = Qry_SupplierCountry
    Left = 154
    Top = 487
  end
  object DS_SupplierStyle: TDataSource
    DataSet = Qry_SupplierStyle
    Left = 112
    Top = 487
  end
  object DS_SupplierTotal: TDataSource
    DataSet = Qry_SupplierTotal
    Left = 72
    Top = 487
  end
  object Pop_SupplierStyle: TPopupMenu
    Left = 111
    Top = 521
    object MenuPop_SupplierStyle: TMenuItem
      Caption = 'Excel'
      OnClick = MenuPop_SupplierStyleClick
    end
  end
  object Pop_SupplierCountry: TPopupMenu
    Left = 154
    Top = 521
    object MenuPop_SupplierCountry: TMenuItem
      Caption = 'Excel'
      OnClick = MenuPop_SupplierCountryClick
    end
  end
  object Pop_Supplier: TPopupMenu
    Left = 186
    Top = 521
    object MenuPop_Supplier: TMenuItem
      Caption = 'Excel'
      OnClick = MenuPop_SupplierClick
    end
  end
  object Pop_SupplierMat: TPopupMenu
    Left = 218
    Top = 521
    object MenuPop_SupplierMat: TMenuItem
      Caption = 'Excel'
      OnClick = MenuPop_SupplierMatClick
    end
  end
  object Qry_ETA_Supplier: TQuery
    OnCalcFields = Qry_ETD_SupplierCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty,d' +
        'elayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDays,' +
        'delayTime.AvgStandardDays,count(CGZLInvoiceS.CLBH) AS PurCount '
      
        '       ,(delayTime.delayTime*100/count(CGZLS.CLBH)) AS DelayPerc' +
        'ent,isnull(ETDnotOK.ETDnook,0) ETDType_Delaytimes,  isnull(ETDno' +
        'tOK.ETDnook,0)*100/count(CGZLS.CLBH) as ETDType_Delay'
      'from CGZL '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH '
      
        'left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=' +
        #39'CDC'#39' '
      'left join CGZLS on CGZLS.CGNO=CGzl.CGNO '
      
        'left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZL' +
        'S.CLBH=CGZLInvoiceS.CLBH  '
      'left join (    '
      
        '           select CGZL.ZSBH,count(*) as delayTime ,sum(CGZLS.Qty' +
        ') as DelayQty '
      
        '                 ,AVG(cast(CGZLS.CFMDate As Int) -cast(CGzl.CGda' +
        'te As Int)) as AvgDays'
      
        '                 ,AVG(isnull(MaterialMOQ.SampleLeadtime,0)) as A' +
        'vgStandardDays'
      
        '                 ,LTRIM(STR(MIN(cast(CGZLS.CFMDate As Int) -cast' +
        '(CGzl.CGdate As Int))))+'#39'-'#39'+LTRIM(STR(MAX(cast(CGZLS.CFMDate As ' +
        'Int) -cast(CGzl.CGdate As Int)))) as DelayPeriod '
      
        '                 ,LTRIM(STR(MIN(MaterialMOQ.SampleLeadtime)))+'#39'-' +
        #39'+LTRIM(STR(MAX(MaterialMOQ.SampleLeadtime))) as StandardPeriod '
      '           from CGzl '
      '           left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH '
      '           left join CGZLS on CGZLS.CGNO=CGzl.CGNO '
      
        '           LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLB' +
        'H and MaterialMOQ.season=CGZL.Season '
      '           LEFT JOIN ('
      '               SELECT ETDTemp.* FROM ETDTemp'
      '                     LEFT JOIN ('
      
        '                    SELECT CGNO, CLBH, Article, MIN(UserDate) AS' +
        ' UserDate FROM ETDTemp GROUP BY CGNO, CLBH, Article) ETDTemp2 ON' +
        ' ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLBH = ETDTemp.CLBH A' +
        'ND ETDTemp2.Article = ETDTemp.Article AND ETDTemp2.UserDate = ET' +
        'DTemp.UserDate'
      '               WHERE ETDTemp2.CGNO IS NOT NULL'
      
        '           ) ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLB' +
        'H = CGZLS.CLBH'
      
        '           where CGZL.cglx=6 and CGZL.GSBH='#39'CDC'#39'  and CGZLS.CFMD' +
        'ate is not null and cast(CGZLS.CFMDate As Int) -cast(CGzl.CGdate' +
        ' As Int)>isnull(MaterialMOQ.SampleLeadtime,0) '
      '           and MaterialMOQ.SampleLeadtime IS NOT NULL'
      '              and CGZL.Season='#39'21S'#39
      '              and CGZL.purpose='#39'SMS'#39
      '                 group by CGZL.ZSBH '
      '          ) delayTime on delayTime.ZSBH=CGZL.ZSBH '
      '          '
      'left join (select ZSBH,isnull(count(*),0)ETDnook from ('
      
        'select CGZL.ZSBH,CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.User' +
        'Date) <= 3 THEN '#39'OK'#39' ELSE '#39'NOT OK'#39' END AS Status'
      'from CGzl '
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH '
      'left join CGZLS on CGZLS.CGNO=CGzl.CGNO '
      
        'left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZL' +
        'S.CLBH=CGZLInvoiceS.CLBH '
      'LEFT JOIN ('
      '  SELECT ETDTemp.* FROM ETDTemp'
      '  LEFT JOIN ('
      
        '    SELECT CGNO, CLBH, Article, MIN(UserDate) AS UserDate FROM E' +
        'TDTemp'
      '    GROUP BY CGNO, CLBH, Article'
      
        '  ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLB' +
        'H = ETDTemp.CLBH AND ETDTemp2.Article = ETDTemp.Article AND ETDT' +
        'emp2.UserDate = ETDTemp.UserDate'
      '  WHERE ETDTemp2.CGNO IS NOT NULL'
      
        ') AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZL' +
        'S.CLBH'
      'where DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) > 3 '
      '   and CGZL.Season='#39'21S'#39
      '   and CGZL.purpose='#39'SMS'#39
      
        '     group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLI' +
        'nvoiceS.CLBH'
      
        '     ,CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 ' +
        'THEN '#39'OK'#39' ELSE '#39'NOT OK'#39' END)ETDnook'
      'group by ZSBH)   ETDnotOK on ETDnotOK.ZSBH=CGZL.ZSBH        '
      
        'where CGZL.cglx=6 and CGZL.GSBH='#39'CDC'#39' and delayTime.delayTime is' +
        ' not null  '
      '   and CGZL.Season='#39'21S'#39
      '   and CGZL.purpose='#39'SMS'#39
      
        'group by CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty' +
        ',delayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDay' +
        's,delayTime.AvgStandardDays ,  ETDnotOK.ETDnook')
    Left = 48
    Top = 296
    object StringField15: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField16: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'delayTime'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'DelayQty'
      currency = False
    end
    object IntegerField6: TIntegerField
      FieldName = 'AvgDays'
    end
    object IntegerField7: TIntegerField
      FieldName = 'PurCount'
    end
    object IntegerField8: TIntegerField
      FieldName = 'AvgStandardDays'
    end
    object IntegerField9: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DelayPercent_'
      Calculated = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'DelayPercent'
    end
    object StringField17: TStringField
      FieldName = 'DelayPeriod'
      FixedChar = True
      Size = 21
    end
    object StringField18: TStringField
      FieldName = 'StandardPeriod'
      FixedChar = True
      Size = 21
    end
    object Qry_ETA_SupplierETDType_Delaytimes: TIntegerField
      FieldName = 'ETDType_Delaytimes'
    end
    object Qry_ETA_SupplierETDType_Delay: TIntegerField
      FieldName = 'ETDType_Delay'
    end
  end
  object q_excelKPI: TQuery
    DatabaseName = 'dB'
    DataSource = DS_ETD_Supplier
    Left = 611
    Top = 39
  end
  object Qry_MatRecieve: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select cgzl.Season,ypzl.kfjd as Stage,shoetest.Article,ypzl.ypdh' +
        ' as SampleNO,cgzlss.cgno as PurchaseNO,'
      'cgzlss.clbh as MaterialNO,clzl.ywpm as MaterialDescription,'
      
        'cgzl.ZSBH as SupplierNO,zszl.zsywjc as SupplierDescription,zszl.' +
        'zsjc as SupplierName,kcrks.userdate as ReceiveDate,shoetest.Ship' +
        'date,DATEDIFF(day ,kcrks.userdate,shoetest.shipdate) as KPIDate,' +
        'zszl_dev.SamplePurchaser'
      ' from shoetest'
      'left join ypzl on ypzl.ypdh=shoetest.ypdh'
      'left join cgzlss on cgzlss.zlbh=shoetest.ypdh'
      
        'left join kcrks on kcrks.DOCNO=cgzlss.cgno and kcrks.clbh=cgzlss' +
        '.clbh'
      'left join cgzl on cgzlss.cgno=cgzl.cgno'
      'left join zszl on zszl.zsdh=cgzl.ZSBH'
      'left join clzl on clzl.cldh=cgzlss.clbh'
      
        'left join (select * from zszl_dev where gsbh='#39'CDC'#39')zszl_dev on z' +
        'szl_dev.zsdh=cgzl.ZSBH'
      'where 1=2')
    Left = 393
    Top = 239
    object Qry_MatRecieveSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Qry_MatRecieveStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Qry_MatRecieveArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Qry_MatRecieveSampleNO: TStringField
      FieldName = 'SampleNO'
      FixedChar = True
      Size = 15
    end
    object Qry_MatRecievePurchaseNO: TStringField
      FieldName = 'PurchaseNO'
      FixedChar = True
      Size = 11
    end
    object Qry_MatRecieveMaterialNO: TStringField
      FieldName = 'MaterialNO'
      FixedChar = True
      Size = 15
    end
    object Qry_MatRecieveMaterialDescription: TStringField
      FieldName = 'MaterialDescription'
      FixedChar = True
      Size = 200
    end
    object Qry_MatRecieveSupplierNO: TStringField
      FieldName = 'SupplierNO'
      FixedChar = True
      Size = 6
    end
    object Qry_MatRecieveSupplierDescription: TStringField
      FieldName = 'SupplierDescription'
      FixedChar = True
    end
    object Qry_MatRecieveSupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
    object Qry_MatRecieveReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
    end
    object Qry_MatRecieveShipdate: TDateTimeField
      FieldName = 'Shipdate'
    end
    object Qry_MatRecieveKPIDate: TIntegerField
      FieldName = 'KPIDate'
    end
    object Qry_MatRecieveSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
  end
  object DS_MatRecieve: TDataSource
    DataSet = Qry_MatRecieve
    Left = 393
    Top = 207
  end
  object DS_Ship_Supplier: TDataSource
    DataSet = Qry_Ship_Supplier
    Left = 331
    Top = 351
  end
  object Qry_Ship_Supplier: TQuery
    DatabaseName = 'DB'
    Left = 331
    Top = 383
    object Qry_Ship_SupplierZSBH: TStringField
      FieldName = 'ZSBH'
      Size = 6
    end
    object Qry_Ship_SupplierZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
    object Qry_Ship_SupplierTimes: TIntegerField
      FieldName = 'Times'
    end
    object Qry_Ship_SupplierPurCount: TIntegerField
      FieldName = 'PurCount'
    end
    object Qry_Ship_SupplierDelayPercent: TIntegerField
      FieldName = 'DelayPercent'
    end
  end
  object DS_Ship_Delay: TDataSource
    DataSet = Qry_Ship_Delay
    Left = 363
    Top = 351
  end
  object Qry_Ship_Delay: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Ship_Supplier
    Left = 363
    Top = 383
    object Qry_Ship_DelaySeason: TStringField
      FieldName = 'Season'
    end
    object Qry_Ship_DelayPurpose: TStringField
      FieldName = 'Purpose'
      Size = 15
    end
    object Qry_Ship_DelayCGNO: TStringField
      FieldName = 'CGNO'
      Size = 11
    end
    object Qry_Ship_DelayYPDH: TStringField
      FieldName = 'YPDH'
      Size = 15
    end
    object Qry_Ship_DelayCLBH: TStringField
      FieldName = 'CLBH'
      Size = 15
    end
    object Qry_Ship_DelayYWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Qry_Ship_DelayQty: TFloatField
      FieldName = 'Qty'
    end
    object Qry_Ship_DelayDWBH: TStringField
      FieldName = 'DWBH'
      Size = 4
    end
    object Qry_Ship_DelayInvoice: TStringField
      FieldName = 'Invoice'
      Size = 30
    end
    object Qry_Ship_DelayETA: TDateTimeField
      FieldName = 'ETA'
    end
    object Qry_Ship_DelayShippingDate: TDateTimeField
      FieldName = 'ShippingDate'
    end
    object Qry_Ship_DelaySDays: TIntegerField
      FieldName = 'SDays'
    end
  end
  object Pop_Ship_Supplier: TPopupMenu
    Left = 331
    Top = 415
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object Pop_Ship_Delay: TPopupMenu
    Left = 363
    Top = 415
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 451
    Top = 239
  end
  object q_excelKPI_2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ETD_Supplier
    Left = 649
    Top = 41
  end
  object q_excelKPI_3: TQuery
    DatabaseName = 'DB'
    DataSource = DS_ETD_Supplier
    Left = 681
    Top = 41
  end
  object q_excelKPI_CGDet: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select CGZLS.CGNO '
      '       ,CGZLS.CLBH '
      '       ,CGZLInvoiceS_1.Invoice_Customs '
      
        '       ,CGZLS.Qty ,(cgzls.Qty - isnull(CGZLInvoiceS_1.Qty,0)) as' +
        ' Qty_not '
      '       ,CGZLS.YQDate '
      '       ,CGZLS.CFMDate '
      '       ,CGZLS.CFMDate as old_CFMDate'
      '       ,CGZLS.USERDate '
      '       ,CGZLS.USERID '
      '       ,CGZLS.Memo '
      '       ,CGZLS.USPrice '
      '       ,CGZLS.VNPrice '
      '       ,CGZLS.Article_All '
      
        '       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,CLZ' +
        'L.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH'
      
        '       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reas' +
        'on '
      '       ,MaterialNG.NG_Reason as old_NG_Reason'
      '       ,MaterialNG.NG_ETD'
      '       ,MaterialNG.NG_ETA'
      '       ,MaterialNG.Result'
      '       ,MaterialNG.NG_Date'
      '       ,MaterialNG.NG_Date as old_NG_Date'
      '       ,CGZL_color.visually'
      '       ,CGZL_color.spectro'
      '       ,CGZL_color.spectro_file'
      '       ,CGZL_color.result'
      '       ,CGZL_color.userdate'
      '       ,CGZL_color.userid'
      #9'      ,CGZL_color.remark remark'
      
        '       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_wind' +
        'ow '
      
        '       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,Mate' +
        'rialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice' +
        '_1.invoice,'#39#39') as invoice ,RKACC.USPrice as RKUSPrice,RKACC.VNPr' +
        'ice as RKVNPrice,BUSERS.USERNAME as SamplePurchaser_Name  '
      '       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  '
      
        '       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Si' +
        'ze'
      
        '       ,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl' +
        '_color2.DateA4Comfirm'
      
        '       ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl' +
        '_color2.PC_Confirm,cgzl_color2.shippedDate'
      
        '       ,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signe' +
        'r,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_col' +
        'or2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_col' +
        'or2.color2remark,cgzls.ETA'
      
        '       ,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber' +
        ',CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate,CGZLInvoiceS_1.CheckRe' +
        'sult,CGZLS.DelayReason'
      'from CGZLS  '
      'inner join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'inner join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH'
      'inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=' +
        #39'CDC'#39
      'left join BUSERS on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      
        'left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CG' +
        'NO=MaterialNG.CGNO '
      
        'left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH an' +
        'd CGZLS.CGNO=SampleLeatherQC.CGNO '
      
        'left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.S' +
        'EASON=MaterialMOQ.Season   '
      'left join cgzl_color2  on CGZLS.CLBH=cgzl_color2.CLBH'
      
        'left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1,Invoice_Customs, qty, CheckResult from CGZLInvoiceS GROUP B' +
        'Y CGNO,CLBH,Invoice_Customs, qty, CheckResult ) CGZLInvoiceS_1 o' +
        'n CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.C' +
        'GNO'
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1  '
      
        'left join cgzl_color on cgzl_color.cgno=cgzls.cgno and cgzl_colo' +
        'r.clbh=cgzls.clbh'
      
        'left join KCRKS RKACC  on RKACC.DOCNO=cgzls.cgno and RKACC.clbh=' +
        'cgzls.clbh '
      
        'inner join CGZLSS on CGZL.CGNO=CGZLSs.CGNO and cgzlss.CLBH = CGZ' +
        'LS.CLBH  '
      
        'Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH   Left join KFXXZL  on K' +
        'FXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing'
      
        'Left join xxzlkf  on  KFXXZL.XieXing=xxzlkf.XieXing  and KFXXZL.' +
        'SheHao=xxzlkf.SheHao'
      'where 1=2'
      
        'group by CGZLS.CGNO,CGZLS.CLBH,CGZLInvoiceS_1.Invoice_Customs,CL' +
        'ZL_FLEX.CLDHFLEX'
      ',CGZLS.Qty,CGZLS.YQDate,CGZLS.CFMDate'
      ',CGZLS.CFMDate,CGZLS.USERDate,CGZLS.USERID'
      ',CGZLS.Memo,CGZLS.USPrice,CGZLS.VNPrice,CGZLS.Article_All'
      
        ',ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.C' +
        'GDate,CGZL.ZSBH'
      ',MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason'
      ',MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA'
      
        ',MaterialNG.Result,MaterialNG.NG_Date,MaterialNG.NG_Date,CGZL_co' +
        'lor.visually'
      ',CGZL_color.spectro,CGZL_color.spectro_file'
      ',CGZL_color.result,CGZL_color.userdate'
      ',CGZL_color.userid,CGZL_color.remark'
      ',MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window'
      
        ',MaterialNG.Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZ' +
        'LInvoice_1.ETA'
      
        ',isnull(CGZLInvoice_1.invoice,'#39#39') ,RKACC.USPrice,RKACC.VNPrice,B' +
        'USERS.USERNAME'
      ',MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality'
      ',SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size'
      
        ',cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2' +
        '.DateA4Comfirm'
      
        ',cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2' +
        '.PC_Confirm'
      
        ',cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,' +
        'cgzl_color2.Signer,cgzl_color2.DCName'
      
        ',cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_' +
        'color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgz' +
        'ls.ETA,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber,' +
        ' CGZLInvoiceS_1.Qty,CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate,CGZ' +
        'LInvoiceS_1.CheckResult,CGZLS.DelayReason'
      'order by CGZLS.CGNO DESC'
      '')
    Left = 724
    Top = 44
    object q_excelKPI_CGDetSEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object q_excelKPI_CGDetPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object q_excelKPI_CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object q_excelKPI_CGDetCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object q_excelKPI_CGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object q_excelKPI_CGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object q_excelKPI_CGDetMatRemark: TStringField
      FieldName = 'MatRemark'
      Size = 80
    end
    object q_excelKPI_CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
      currency = False
    end
    object q_excelKPI_CGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object q_excelKPI_CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/mm/dd'
    end
    object q_excelKPI_CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object q_excelKPI_CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object q_excelKPI_CGDetArticle_All: TStringField
      FieldName = 'Article_All'
      FixedChar = True
      Size = 255
    end
    object q_excelKPI_CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object q_excelKPI_CGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object q_excelKPI_CGDetInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
    end
    object q_excelKPI_CGDetACCUS: TCurrencyField
      DisplayLabel = 'US Amount'
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetACCVN: TCurrencyField
      DisplayLabel = 'VN Amount'
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      currency = False
    end
    object q_excelKPI_CGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      currency = False
    end
    object q_excelKPI_CGDetUSPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'USPrice_'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetVNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNPrice_'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetCharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object q_excelKPI_CGDetZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object q_excelKPI_CGDetZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object q_excelKPI_CGDetNG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object q_excelKPI_CGDetNG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object q_excelKPI_CGDetNG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object q_excelKPI_CGDetResult: TStringField
      FieldName = 'Result'
      FixedChar = True
    end
    object q_excelKPI_CGDetFile_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDetFile_Size: TFloatField
      FieldName = 'File_Size'
    end
    object q_excelKPI_CGDetINV_ETA: TDateTimeField
      FieldName = 'INV_ETA'
    end
    object q_excelKPI_CGDetNG_Remark: TStringField
      FieldName = 'NG_Remark'
      Size = 50
    end
    object q_excelKPI_CGDetNG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object q_excelKPI_CGDetRKUSPrice: TCurrencyField
      FieldName = 'RKUSPrice'
      currency = False
    end
    object q_excelKPI_CGDetRKVNPrice: TCurrencyField
      FieldName = 'RKVNPrice'
      currency = False
    end
    object q_excelKPI_CGDetold_NG_Date: TDateTimeField
      FieldName = 'old_NG_Date'
    end
    object q_excelKPI_CGDetold_NG_Reason: TStringField
      FieldName = 'old_NG_Reason'
      FixedChar = True
    end
    object q_excelKPI_CGDetold_CFMDate: TDateTimeField
      FieldName = 'old_CFMDate'
    end
    object q_excelKPI_CGDetQC_skin: TCurrencyField
      FieldName = 'QC_skin'
      DisplayFormat = '##%'
      currency = False
    end
    object q_excelKPI_CGDetSkin_Size: TCurrencyField
      FieldName = 'Skin_Size'
      currency = False
    end
    object q_excelKPI_CGDetSkin_Quality: TCurrencyField
      FieldName = 'Skin_Quality'
      DisplayFormat = '##%'
      currency = False
    end
    object q_excelKPI_CGDetQC_File_Name: TStringField
      FieldName = 'QC_File_Name'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDetQC_File_Size: TFloatField
      FieldName = 'QC_File_Size'
    end
    object q_excelKPI_CGDetC_window: TStringField
      FieldName = 'C_window'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDetLab: TStringField
      FieldName = 'Lab'
      FixedChar = True
      Size = 4
    end
    object q_excelKPI_CGDetLab_reason: TStringField
      FieldName = 'Lab_reason'
      FixedChar = True
      Size = 200
    end
    object q_excelKPI_CGDetInvoice_Customs: TStringField
      FieldName = 'Invoice_Customs'
      FixedChar = True
      Size = 100
    end
    object q_excelKPI_CGDetSoftness: TStringField
      FieldName = 'Softness'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDetvisually: TStringField
      FieldName = 'visually'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetspectro: TStringField
      FieldName = 'spectro'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetspectro_file: TStringField
      FieldName = 'spectro_file'
      FixedChar = True
      Size = 30
    end
    object q_excelKPI_CGDetresult_1: TStringField
      FieldName = 'result_1'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetSamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object q_excelKPI_CGDetUSERDate_1: TDateTimeField
      FieldName = 'USERDate_1'
    end
    object q_excelKPI_CGDetremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object q_excelKPI_CGDetA4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDettrackingA4Comfirm: TStringField
      FieldName = 'trackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDetDateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object q_excelKPI_CGDetColorWindow: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object q_excelKPI_CGDetDateColorWindow: TDateTimeField
      FieldName = 'DateColorWindow'
    end
    object q_excelKPI_CGDetPC_Confirm: TStringField
      FieldName = 'PC_Confirm'
      FixedChar = True
    end
    object q_excelKPI_CGDetshippedDate: TDateTimeField
      FieldName = 'shippedDate'
    end
    object q_excelKPI_CGDetsignedDate: TDateTimeField
      FieldName = 'signedDate'
    end
    object q_excelKPI_CGDetSigner: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetDCName: TStringField
      FieldName = 'DCName'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetPRO: TStringField
      FieldName = 'PRO'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetSenter: TStringField
      FieldName = 'Senter'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
    object q_excelKPI_CGDetSharedDC: TStringField
      FieldName = 'SharedDC'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetUpdater: TStringField
      FieldName = 'Updater'
      FixedChar = True
      Size = 10
    end
    object q_excelKPI_CGDetcolor2remark: TStringField
      FieldName = 'color2remark'
      FixedChar = True
      Size = 60
    end
    object q_excelKPI_CGDetAWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
      Size = 60
    end
    object q_excelKPI_CGDetETA: TDateTimeField
      FieldName = 'ETA'
    end
    object q_excelKPI_CGDetReturnDate: TDateTimeField
      FieldName = 'ReturnDate'
    end
    object q_excelKPI_CGDetReturnQuantity: TCurrencyField
      FieldName = 'ReturnQuantity'
      DisplayFormat = '#,##0.0'
    end
    object q_excelKPI_CGDetSerialNumber: TStringField
      FieldName = 'SerialNumber'
      FixedChar = True
      Size = 40
    end
    object q_excelKPI_CGDetQty_not: TFloatField
      FieldName = 'Qty_not'
      DisplayFormat = '#,##0.0'
    end
    object q_excelKPI_CGDetCommitedETD: TDateTimeField
      FieldName = 'CommitedETD'
    end
    object q_excelKPI_CGDetMaterial_ETA: TDateTimeField
      FieldName = 'Material_ETA'
      ReadOnly = True
    end
    object q_excelKPI_CGDetLateETA: TStringField
      FieldKind = fkCalculated
      FieldName = 'LateETA'
      ReadOnly = True
      Calculated = True
    end
    object q_excelKPI_CGDetProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      ReadOnly = True
    end
    object q_excelKPI_CGDetsampleorder: TStringField
      FieldName = 'sampleorder'
      ReadOnly = True
    end
    object q_excelKPI_CGDetFlexCode: TStringField
      FieldName = 'FlexCode'
      FixedChar = True
      Size = 15
    end
    object q_excelKPI_CGDetPurReceiveDate: TDateTimeField
      FieldName = 'PurReceiveDate'
    end
    object q_excelKPI_CGDetRFCDeadlineDate: TDateTimeField
      FieldName = 'RFCDeadlineDate'
    end
    object q_excelKPI_CGDetCheckResult: TStringField
      FieldName = 'CheckResult'
      FixedChar = True
      Size = 15
    end
    object q_excelKPI_CGDetDelayReason: TStringField
      FieldName = 'DelayReason'
      FixedChar = True
      Size = 150
    end
  end
end
