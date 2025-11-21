object Claim_Report: TClaim_Report
  Left = 236
  Top = 47
  Width = 1372
  Height = 788
  Caption = 'Claim_Report'
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1356
    Height = 60
    Align = alTop
    TabOrder = 0
    object lbl2: TLabel
      Left = 24
      Top = 7
      Width = 42
      Height = 16
      Caption = 'Fac ID:'
    end
    object lbl3: TLabel
      Left = 0
      Top = 36
      Width = 66
      Height = 16
      Caption = 'Fac Name:'
    end
    object lbl4: TLabel
      Left = 147
      Top = 7
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 151
      Top = 36
      Width = 50
      Height = 16
      Caption = 'GPS PO'
    end
    object lbl16: TLabel
      Left = 632
      Top = 8
      Width = 11
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_all: TLabel
      Left = 744
      Top = 7
      Width = 15
      Height = 16
      Caption = 'All'
    end
    object lbl5: TLabel
      Left = 284
      Top = 7
      Width = 19
      Height = 16
      Caption = 'SO'
    end
    object lbl6: TLabel
      Left = 304
      Top = 36
      Width = 55
      Height = 16
      Caption = 'Category'
    end
    object Query_CR: TButton
      Left = 480
      Top = 31
      Width = 72
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Query_CRClick
    end
    object Import: TButton
      Left = 564
      Top = 31
      Width = 72
      Height = 25
      Caption = 'Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ImportClick
    end
    object edt_FacID: TEdit
      Left = 64
      Top = 4
      Width = 80
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edt_FacName: TEdit
      Left = 64
      Top = 32
      Width = 80
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edt_Article: TEdit
      Left = 186
      Top = 4
      Width = 95
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edt_PO: TEdit
      Left = 203
      Top = 32
      Width = 94
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dtp4: TDateTimePicker
      Left = 543
      Top = 3
      Width = 90
      Height = 23
      Date = 44054.656517893520000000
      Time = 44054.656517893520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dtp5: TDateTimePicker
      Left = 642
      Top = 3
      Width = 90
      Height = 23
      Date = 44054.656670879630000000
      Time = 44054.656670879630000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object cbb1: TComboBox
      Left = 416
      Top = 3
      Width = 127
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
      Items.Strings = (
        ''
        'Date Initiated'
        'Completion Date')
    end
    object chk_all: TCheckBox
      Left = 764
      Top = 7
      Width = 21
      Height = 16
      TabOrder = 9
    end
    object edt_SO: TEdit
      Left = 306
      Top = 4
      Width = 105
      Height = 24
      TabOrder = 10
    end
    object edt_Category: TEdit
      Left = 361
      Top = 32
      Width = 105
      Height = 24
      TabOrder = 11
    end
    object btn_Claim_Ana: TButton
      Left = 642
      Top = 31
      Width = 119
      Height = 25
      Caption = 'Claim Analytics'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btn_Claim_AnaClick
    end
  end
  object pnl7: TPanel
    Left = 0
    Top = 60
    Width = 1356
    Height = 689
    Align = alClient
    Caption = 'pnl7'
    TabOrder = 1
    object spl1: TSplitter
      Left = 1
      Top = 351
      Width = 1354
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object pnl2: TPanel
      Left = 1
      Top = 1
      Width = 1354
      Height = 350
      Align = alTop
      TabOrder = 0
      object dbg_CR: TDBGridEh
        Left = 1
        Top = 1
        Width = 1352
        Height = 348
        Align = alClient
        DataSource = ds_CR
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
        PopupMenu = pm1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        OnDrawColumnCell = dbg_CRDrawColumnCell
        OnEditButtonClick = dbg_CREditButtonClick
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Date_Claim_Initiated'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Date Initiated'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'Claim'
            Footers = <>
            Title.Caption = 'Claim #'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'HQ_Claim_Manegement'
            Footers = <>
            Title.Caption = 'CMT'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'Claim_Classification'
            Footers = <>
            Title.Caption = 'Claim Classification'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'Brand'
            Footers = <>
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'Fac_ID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Fac ID'
          end
          item
            EditButtons = <>
            FieldName = 'Factory_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Factory Name'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'SO'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'Current_Stage'
            Footers = <>
            Title.Caption = 'Notes'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Reason'
            Footers = <>
            Title.Caption = 'Claim Reason'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'pri'
            Footers = <>
            Title.Caption = 'Primary'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'Business_Unit'
            Footers = <>
            Title.Caption = 'Business Unit (BU)'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Production_Month'
            Footers = <>
            Title.Caption = 'Production Month'
            Width = 65
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'FOB_Price_SIM'
            Footers = <>
            Title.Caption = 'FOB Price from SIM'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Currency_not_USD'
            Footers = <>
            Title.Caption = 'Currency if not USD'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'GPS_PO_Num'
            Footers = <>
            Title.Caption = 'GPS PO #'
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'PO_Qty'
            Footers = <>
            Title.Caption = 'PO Qty (received)  from SIM'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'WH_Qty'
            Footers = <>
            Title.Caption = 'W/H Qty'
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'A_grades'
            Footers = <>
            Title.Caption = 'A-grades'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'A_grades_After_Repair'
            Footers = <>
            Title.Caption = 'A-grades after repair'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'B_grades'
            Footers = <>
            Title.Caption = 'B-grades'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'C_grades'
            Footers = <>
            Title.Caption = 'C-grades'
            Width = 59
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'aSL_Comm_TAC'
            Footers = <>
            Title.Caption = 'aSL Comm + TAC (USD)'
            Width = 70
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'Reimbursement'
            Footers = <>
            Title.Caption = 'Reimbursement by Manufacturer or Internal BU (USD)'
            Width = 102
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'Total_Cost'
            Footers = <>
            Title.Caption = 'Total Cost (USD)'
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'Total_Cost_Internal'
            Footers = <>
            Title.Caption = 'Total Cost Internal'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'aSIP_eLCS_Claim_Number'
            Footers = <>
            Title.Caption = 'aSIP/eLCS Claim #'
            Width = 71
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Completion_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Completion Date'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'File_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'File Name'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Defect_Cat'
            Footers = <>
            PickList.Strings = (
              'Materials'
              'Workmanship'
              'Mold'
              'Bonding')
            ReadOnly = True
            Title.Caption = 'Defect Cat'
            Width = 61
          end
          item
            DisplayFormat = '#,#.##'
            EditButtons = <>
            FieldName = 'T2T3_Cost'
            Footers = <>
            Title.Caption = 'T2T3 Cost'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'Claim_Pic'
            Footers = <>
          end>
      end
      object Pan_ShowPic: TPanel
        Left = 648
        Top = 80
        Width = 489
        Height = 265
        Color = clWindow
        TabOrder = 1
        Visible = False
        object Image1: TImage
          Left = 1
          Top = 32
          Width = 487
          Height = 232
          Align = alClient
          Stretch = True
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 487
          Height = 31
          Align = alTop
          Caption = 'Claim Picture'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel3: TPanel
            Left = 455
            Top = 2
            Width = 29
            Height = 28
            Caption = 'X'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Panel3Click
          end
        end
      end
    end
    object pnl8: TPanel
      Left = 1
      Top = 354
      Width = 1354
      Height = 334
      Align = alClient
      Caption = 'pnl8'
      TabOrder = 1
      object pnl6: TPanel
        Left = 1
        Top = 1
        Width = 1352
        Height = 31
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object lbl_Art: TLabel
          Left = 8
          Top = 7
          Width = 37
          Height = 16
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 131
          Top = 7
          Width = 19
          Height = 16
          Caption = 'RY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl13: TLabel
          Left = 283
          Top = 7
          Width = 91
          Height = 16
          Caption = 'Inspected Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl14: TLabel
          Left = 466
          Top = 7
          Width = 11
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Query_Inspection: TButton
          Left = 578
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Query_InspectionClick
        end
        object edt_ArticleInspection: TEdit
          Left = 47
          Top = 3
          Width = 72
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edt_RYInspection: TEdit
          Left = 153
          Top = 3
          Width = 104
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chk3: TCheckBox
          Left = 266
          Top = 6
          Width = 17
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dtp2: TDateTimePicker
          Left = 375
          Top = 3
          Width = 89
          Height = 24
          Date = 44054.586810486110000000
          Time = 44054.586810486110000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dtp3: TDateTimePicker
          Left = 479
          Top = 3
          Width = 89
          Height = 24
          Date = 44054.586971238420000000
          Time = 44054.586971238420000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnl_IC: TPanel
        Left = 1
        Top = 32
        Width = 1352
        Height = 301
        Align = alClient
        Caption = 'pnl_IC'
        TabOrder = 1
        object pnl5: TPanel
          Left = 1
          Top = 1
          Width = 1354
          Height = 299
          Align = alLeft
          TabOrder = 0
          object pnl_ProgressBar: TPanel
            Left = 91
            Top = 72
            Width = 345
            Height = 31
            Color = clWindow
            TabOrder = 0
            Visible = False
            object lbl_ProgressBar: TLabel
              Left = 80
              Top = 0
              Width = 172
              Height = 16
              Caption = 'Loading Data, Please Wait ...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ProgressBar: TProgressBar
              Left = 1
              Top = 16
              Width = 342
              Height = 13
              TabOrder = 0
            end
          end
          object DBG_Inspection: TDBGridEh
            Left = 1
            Top = 1
            Width = 1352
            Height = 297
            Align = alClient
            DataSource = DS_Inspection
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
            FrozenCols = 3
            ParentFont = False
            PopupMenu = pm2
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 0
            OnDrawColumnCell = DBG_InspectionDrawColumnCell
            OnEditButtonClick = DBG_InspectionEditButtonClick
            Columns = <
              item
                Color = 16777088
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Width = 54
              end
              item
                Color = 16777088
                EditButtons = <>
                FieldName = 'DDBH'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'RY'
                Width = 80
              end
              item
                Color = 16777088
                EditButtons = <>
                FieldName = 'KHPO'
                Footers = <>
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'report'
                Footers = <>
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'Category'
                Footers = <>
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Footers = <>
                Title.Caption = 'Model Name'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footers = <>
                Title.Caption = 'Order Pairs'
              end
              item
                EditButtons = <>
                FieldName = 'ChkPairs'
                Footers = <>
                Title.Caption = 'Check Pairs'
                Width = 81
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'QCDate'
                Footers = <>
                Title.Caption = 'Inspected Date'
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'QCLevel'
                Footers = <>
                Title.Caption = 'Inspected Level'
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footers = <>
                Title.Caption = 'Inspected Pairs'
                Width = 99
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'CheckQty'
                Footers = <>
                Title.Caption = 'Reality Pairs'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'De_Level'
                Footers = <>
                Title.Caption = 'Defect Level'
                Width = 83
              end
              item
                EditButtons = <>
                FieldName = 'Result'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'InspectorName'
                Footers = <>
                Title.Caption = 'Inspector Name'
                Width = 104
              end
              item
                EditButtons = <>
                FieldName = 'REMARK'
                Footers = <>
                Title.Caption = 'Remark'
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'Ins_Pass'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Inspector Pass'
                Width = 97
              end
              item
                EditButtons = <>
                FieldName = 'QCLevelCus'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Inspect Level'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'QtyCus'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Inspect Pairs'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'Rea_Qty'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Reality Pairs'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'Fai_Qty'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Failed Qty'
              end
              item
                EditButtons = <>
                FieldName = 'ResultCus'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Final Result'
              end
              item
                EditButtons = <>
                FieldName = 'Defect'
                Footers = <>
                Title.Caption = 'Customer AQL Report|Defect'
                Width = 102
              end>
          end
        end
      end
    end
  end
  object pnl_Import: TPanel
    Left = 52
    Top = 64
    Width = 496
    Height = 400
    Color = clWindow
    TabOrder = 2
    Visible = False
    object lbl1: TLabel
      Left = 28
      Top = 35
      Width = 111
      Height = 16
      Caption = 'A: Date Initiated'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 28
      Top = 58
      Width = 70
      Height = 16
      Caption = 'B: Claim #'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 28
      Top = 104
      Width = 156
      Height = 16
      Caption = 'D: Claim Classification'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 28
      Top = 128
      Width = 60
      Height = 16
      Caption = 'E: Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl15: TLabel
      Left = 28
      Top = 151
      Width = 136
      Height = 16
      Caption = 'G: T1 Code (6-digit)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl17: TLabel
      Left = 28
      Top = 174
      Width = 56
      Height = 16
      Caption = 'I: Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl18: TLabel
      Left = 28
      Top = 197
      Width = 38
      Height = 16
      Caption = 'J: SO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl19: TLabel
      Left = 28
      Top = 243
      Width = 114
      Height = 16
      Caption = 'L: Claim Reason'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl20: TLabel
      Left = 28
      Top = 266
      Width = 74
      Height = 16
      Caption = 'M: Primary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl21: TLabel
      Left = 28
      Top = 290
      Width = 76
      Height = 16
      Caption = 'N: Article #'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl22: TLabel
      Left = 28
      Top = 313
      Width = 149
      Height = 16
      Caption = 'O: Business Unit (BU)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl23: TLabel
      Left = 28
      Top = 336
      Width = 139
      Height = 16
      Caption = 'Q: Production Month'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl24: TLabel
      Left = 241
      Top = 35
      Width = 154
      Height = 16
      Caption = 'R: FOB Price from SIM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl25: TLabel
      Left = 241
      Top = 58
      Width = 153
      Height = 16
      Caption = 'S: Currency if not USD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl26: TLabel
      Left = 241
      Top = 81
      Width = 87
      Height = 16
      Caption = 'T: GPS PO #'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl27: TLabel
      Left = 241
      Top = 104
      Width = 211
      Height = 16
      Caption = 'U: PO Qty (received)  from SIM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl28: TLabel
      Left = 241
      Top = 128
      Width = 76
      Height = 16
      Caption = 'V: W/H Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl29: TLabel
      Left = 241
      Top = 151
      Width = 87
      Height = 16
      Caption = 'W: A-grades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl30: TLabel
      Left = 241
      Top = 174
      Width = 162
      Height = 16
      Caption = 'X: A-grades after repair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl31: TLabel
      Left = 241
      Top = 197
      Width = 83
      Height = 16
      Caption = 'Y: B-grades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl32: TLabel
      Left = 241
      Top = 220
      Width = 82
      Height = 16
      Caption = 'Z: C-grades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl33: TLabel
      Left = 241
      Top = 243
      Width = 195
      Height = 16
      Caption = 'AA: aSL Comm + TAC (USD)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl34: TLabel
      Left = 241
      Top = 267
      Width = 395
      Height = 16
      Caption = 'AB: Reimbursement by Manufacturer or Internal BU (USD)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl35: TLabel
      Left = 241
      Top = 290
      Width = 146
      Height = 16
      Caption = 'AC: Total Cost (USD)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl36: TLabel
      Left = 241
      Top = 313
      Width = 160
      Height = 16
      Caption = 'AD: aSIP/eLCS Claim #'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl37: TLabel
      Left = 241
      Top = 336
      Width = 144
      Height = 16
      Caption = 'AE: Completion Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 28
      Top = 81
      Width = 51
      Height = 16
      Caption = 'C: CMT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl38: TLabel
      Left = 28
      Top = 220
      Width = 59
      Height = 16
      Caption = 'K: Notes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnl3: TPanel
      Left = 1
      Top = 1
      Width = 494
      Height = 31
      Align = alTop
      Caption = 'Claim Import'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object pnl4: TPanel
        Left = 463
        Top = 2
        Width = 29
        Height = 28
        Caption = 'X'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = pnl4Click
      end
    end
    object pb1: TProgressBar
      Left = 1
      Top = 385
      Width = 494
      Height = 14
      Align = alBottom
      TabOrder = 1
    end
    object btn_SelectFile: TButton
      Left = 161
      Top = 357
      Width = 133
      Height = 25
      Caption = 'Paste File Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_SelectFileClick
    end
  end
  object ds_Import: TDataSource
    DataSet = qry_Import
    Left = 528
    Top = 390
  end
  object dlgOpen1: TOpenDialog
    Left = 773
    Top = 189
  end
  object qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 709
    Top = 125
  end
  object updtsql1: TUpdateSQL
    Left = 528
    Top = 452
  end
  object qry_Temp1: TQuery
    DatabaseName = 'DB'
    Left = 741
    Top = 125
  end
  object qry_temp2: TQuery
    DatabaseName = 'DB'
    Left = 773
    Top = 125
  end
  object pm1: TPopupMenu
    Left = 672
    Top = 220
    object Insert1: TMenuItem
      Caption = 'Insert'
      Enabled = False
      OnClick = Insert1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = Delete1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      Enabled = False
      OnClick = Excel1Click
    end
    object SetFactory1: TMenuItem
      Caption = 'Set Factory'
      Enabled = False
      OnClick = SetFactory1Click
    end
  end
  object dlgSave1: TSaveDialog
    Left = 773
    Top = 157
  end
  object DS_Inspection: TDataSource
    DataSet = Qry_Inspection
    Left = 240
    Top = 556
  end
  object pm_Inspection: TPopupMenu
    Left = 49
    Top = 708
    object DownloadFGTReport1: TMenuItem
      Caption = 'Download  FGT-Report'
    end
    object DownloadBondingReport1: TMenuItem
      Caption = 'Download  Bonding-Report'
    end
    object DownloadCMAReport1: TMenuItem
      Caption = 'Download CMA-Report'
    end
    object PrintICReport1: TMenuItem
      Caption = 'Print IC Report'
    end
  end
  object qry_Import: TQuery
    AfterOpen = qry_ImportAfterOpen
    BeforeClose = qry_ImportBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT convert(int,NULL)No'
      #9',cr.Date_Claim_Initiated'
      #9',cr.Claim'
      '                ,cr.HQ_Claim_Manegement'
      #9',cr.Claim_Classification'
      #9',cr.Brand'
      #9',cr.Factory_Num'
      #9',cr.Status'
      #9',cr.SO'
      '                ,cr.Current_Stage'
      #9',cr.Reason'
      #9',cr.pri'
      #9',cr.Article_num'
      #9',cr.Business_Unit'
      #9',cr.Production_Month'
      #9',cr.FOB_Price_SIM'
      #9',cr.Currency_not_USD'
      #9',SUBSTRING(CONVERT(VARCHAR(255),(SELECT '#39','#39'+ PO '
      #9#9#9#9'FROM Claim_Report_PO'
      #9#9#9#9'WHERE Claim_Report_PO.Claim_ID=cr.Claim_ID'
      #9#9#9#9'FOR XML PATH('#39#39'))),2,255) GPS_PO_Num'
      #9',cr.PO_Qty'
      #9',cr.WH_Qty'
      #9',cr.A_grades'
      #9',cr.A_grades_After_Repair'
      #9',cr.B_grades'
      #9',cr.C_grades'
      #9',cr.aSL_Comm_TAC'
      #9',cr.Reimbursement'
      #9',cr.Total_Cost'
      #9',cr.aSIP_eLCS_Claim_Number'
      #9',cr.Completion_Date'
      #9','#39#39'YN'
      'FROM Claim_Report cr'
      'WHERE 1=2')
    UpdateObject = updtsql1
    Left = 527
    Top = 421
    object intgrfld_ImportNo: TIntegerField
      FieldName = 'No'
    end
    object dtmfld_ImportDate_Claim_Initiated: TDateTimeField
      FieldName = 'Date_Claim_Initiated'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object strngfld_ImportClaim: TStringField
      FieldName = 'Claim'
      FixedChar = True
      Size = 10
    end
    object strngfld_ImportHQ_Claim_Manegement: TStringField
      FieldName = 'HQ_Claim_Manegement'
      FixedChar = True
    end
    object strngfld_ImportClaim_Classification: TStringField
      FieldName = 'Claim_Classification'
      FixedChar = True
      Size = 200
    end
    object strngfld_ImportBrand: TStringField
      FieldName = 'Brand'
      FixedChar = True
    end
    object strngfld_ImportFactory_Num: TStringField
      FieldName = 'Factory_Num'
      FixedChar = True
      Size = 8
    end
    object strngfld_ImportStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 70
    end
    object strngfld_ImportSO: TStringField
      FieldName = 'SO'
      FixedChar = True
      Size = 50
    end
    object strngfld_ImportCurrent_Stage: TStringField
      FieldName = 'Current_Stage'
      FixedChar = True
      Size = 255
    end
    object strngfld_ImportReason: TStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 255
    end
    object strngfld_Importpri: TStringField
      FieldName = 'pri'
      FixedChar = True
      Size = 100
    end
    object strngfld_ImportArticle_num: TStringField
      FieldName = 'Article_num'
      FixedChar = True
      Size = 40
    end
    object strngfld_ImportBusiness_Unit: TStringField
      FieldName = 'Business_Unit'
      FixedChar = True
      Size = 60
    end
    object strngfld_ImportProduction_Month: TStringField
      FieldName = 'Production_Month'
      FixedChar = True
      Size = 5
    end
    object crncyfld_ImportFOB_Price_SIM: TCurrencyField
      FieldName = 'FOB_Price_SIM'
    end
    object strngfld_ImportCurrency_not_USD: TStringField
      FieldName = 'Currency_not_USD'
      FixedChar = True
    end
    object strngfld_ImportGPS_PO_Num: TStringField
      FieldName = 'GPS_PO_Num'
      FixedChar = True
      Size = 255
    end
    object intgrfld_ImportPO_Qty: TIntegerField
      FieldName = 'PO_Qty'
    end
    object intgrfld_ImportWH_Qty: TIntegerField
      FieldName = 'WH_Qty'
    end
    object intgrfld_ImportA_grades: TIntegerField
      FieldName = 'A_grades'
    end
    object intgrfld_ImportA_grades_After_Repair: TIntegerField
      FieldName = 'A_grades_After_Repair'
    end
    object intgrfld_ImportB_grades: TIntegerField
      FieldName = 'B_grades'
    end
    object intgrfld_ImportC_grades: TIntegerField
      FieldName = 'C_grades'
    end
    object crncyfld_ImportaSL_Comm_TAC: TCurrencyField
      FieldName = 'aSL_Comm_TAC'
    end
    object crncyfld_ImportReimbursement: TCurrencyField
      FieldName = 'Reimbursement'
    end
    object crncyfld_ImportTotal_Cost: TCurrencyField
      FieldName = 'Total_Cost'
    end
    object strngfld_ImportaSIP_eLCS_Claim_Number: TStringField
      FieldName = 'aSIP_eLCS_Claim_Number'
      FixedChar = True
      Size = 30
    end
    object dtmfld_ImportCompletion_Date: TDateTimeField
      FieldName = 'Completion_Date'
    end
    object strngfld_ImportYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object qry_Temp4: TQuery
    DatabaseName = 'DB'
    Left = 709
    Top = 157
  end
  object qry_CR: TQuery
    AfterOpen = qry_CRAfterOpen
    BeforeClose = qry_CRBeforeClose
    AfterScroll = qry_CRAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT *'
      'FROM (SELECT '
      #9'cr.Claim_ID '
      #9',cr.Date_Claim_Initiated'
      '                ,cr.Claim'
      '                ,cr.HQ_Claim_Manegement'
      #9',cr.Claim_Classification'
      #9',cr.Brand'
      #9',fr.Factory_Name'
      #9',fr.Fac_ID'
      #9',cr.Status'
      #9',cr.SO'
      '                ,cr.Current_Stage'
      #9',cr.Reason'
      #9',cr.pri'
      #9',xxzl.ARTICLE'
      '                ,cr.Business_Unit'
      #9',xxzlkf.Category'
      #9',cr.Production_Month'
      #9',cr.FOB_Price_SIM'
      '               ,cr.Currency_not_USD'
      #9',SUBSTRING(CONVERT(VARCHAR(255),(SELECT '#39','#39'+ PO '
      #9#9#9#9'FROM Claim_Report_PO'
      #9#9#9#9'WHERE Claim_Report_PO.Claim_ID=cr.Claim_ID'
      #9#9#9#9'FOR XML PATH('#39#39'))),2,255) GPS_PO_Num'
      #9',cr.PO_Qty'
      #9',cr.WH_Qty'
      #9',cr.A_grades'
      #9',cr.A_grades_After_Repair'
      #9',cr.B_grades'
      #9',cr.C_grades'
      #9',cr.aSL_Comm_TAC'
      #9',cr.Reimbursement'
      #9',cr.Total_Cost'
      #9',cr.Total_Cost_Internal'
      '                ,cr.aSIP_eLCS_Claim_Number'
      #9',cr.Completion_Date'
      #9',cr.File_Name'
      #9',cr.Defect_Cat'
      #9',cr.T2T3_Cost'
      #9','#39#39'YN'
      '                ,cr.Claim_Pic'
      ''
      'FROM Claim_Report cr'
      'LEFT JOIN Factory_Record fr ON fr.Fac_ID = cr.Factory_Num'
      'LEFT JOIN xxzl ON xxzl.ARTICLE = cr.Article_num'
      
        'LEFT JOIN XXZLKF ON xxzlkf.XieXing = xxzl.XieXing and xxzlkf.She' +
        'Hao = xxzl.SheHao) A'
      'WHERE 1=2')
    UpdateObject = up_CR
    Left = 673
    Top = 157
    object atncfld_CRClaim_ID: TAutoIncField
      FieldName = 'Claim_ID'
    end
    object dtmfld_CRDate_Claim_Initiated: TDateTimeField
      FieldName = 'Date_Claim_Initiated'
    end
    object strngfld_CRClaim: TStringField
      FieldName = 'Claim'
      FixedChar = True
      Size = 10
    end
    object strngfld_CRHQ_Claim_Manegement: TStringField
      FieldName = 'HQ_Claim_Manegement'
      FixedChar = True
    end
    object strngfld_CRClaim_Classification: TStringField
      FieldName = 'Claim_Classification'
      FixedChar = True
      Size = 200
    end
    object strngfld_CRBrand: TStringField
      FieldName = 'Brand'
      FixedChar = True
    end
    object strngfld_CRFactory_Name: TStringField
      FieldName = 'Factory_Name'
      FixedChar = True
    end
    object strngfld_CRFac_ID: TStringField
      FieldName = 'Fac_ID'
      FixedChar = True
      Size = 8
    end
    object strngfld_CRStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 70
    end
    object strngfld_CRSO: TStringField
      FieldName = 'SO'
      FixedChar = True
      Size = 50
    end
    object strngfld_CRCurrent_Stage: TStringField
      FieldName = 'Current_Stage'
      FixedChar = True
      Size = 255
    end
    object strngfld_CRReason: TStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 255
    end
    object strngfld_CRpri: TStringField
      FieldName = 'pri'
      FixedChar = True
      Size = 100
    end
    object strngfld_CRARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object strngfld_CRBusiness_Unit: TStringField
      FieldName = 'Business_Unit'
      FixedChar = True
      Size = 60
    end
    object strngfld_CRCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 50
    end
    object strngfld_CRProduction_Month: TStringField
      FieldName = 'Production_Month'
      FixedChar = True
      Size = 5
    end
    object crncyfld_CRFOB_Price_SIM: TCurrencyField
      FieldName = 'FOB_Price_SIM'
    end
    object strngfld_CRCurrency_not_USD: TStringField
      FieldName = 'Currency_not_USD'
      FixedChar = True
    end
    object strngfld_CRGPS_PO_Num: TStringField
      FieldName = 'GPS_PO_Num'
      FixedChar = True
      Size = 255
    end
    object intgrfld_CRPO_Qty: TIntegerField
      FieldName = 'PO_Qty'
    end
    object intgrfld_CRWH_Qty: TIntegerField
      FieldName = 'WH_Qty'
    end
    object intgrfld_CRA_grades: TIntegerField
      FieldName = 'A_grades'
    end
    object intgrfld_CRA_grades_After_Repair: TIntegerField
      FieldName = 'A_grades_After_Repair'
    end
    object intgrfld_CRB_grades: TIntegerField
      FieldName = 'B_grades'
    end
    object intgrfld_CRC_grades: TIntegerField
      FieldName = 'C_grades'
    end
    object crncyfld_CRaSL_Comm_TAC: TCurrencyField
      FieldName = 'aSL_Comm_TAC'
    end
    object crncyfld_CRReimbursement: TCurrencyField
      FieldName = 'Reimbursement'
    end
    object crncyfld_CRTotal_Cost: TCurrencyField
      FieldName = 'Total_Cost'
    end
    object crncyfld_CRTotal_Cost_Internal: TCurrencyField
      FieldName = 'Total_Cost_Internal'
    end
    object strngfld_CRaSIP_eLCS_Claim_Number: TStringField
      FieldName = 'aSIP_eLCS_Claim_Number'
      FixedChar = True
      Size = 30
    end
    object dtmfld_CRCompletion_Date: TDateTimeField
      FieldName = 'Completion_Date'
    end
    object strngfld_CRFile_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object strngfld_CRDefect_Cat: TStringField
      FieldName = 'Defect_Cat'
      FixedChar = True
      Size = 50
    end
    object crncyfld_CRT2T3_Cost: TCurrencyField
      FieldName = 'T2T3_Cost'
    end
    object strngfld_CRYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CRClaim_Pic: TStringField
      FieldName = 'Claim_Pic'
      FixedChar = True
      Size = 30
    end
  end
  object up_CR: TUpdateSQL
    ModifySQL.Strings = (
      'update claim_report'
      'set'
      ' Date_Claim_Initiated=:Date_Claim_Initiated'
      ',Claim=:Claim'
      ',HQ_Claim_Manegement=:HQ_Claim_Manegement'
      ',Claim_Classification=:Claim_Classification'
      ',Brand=:Brand'
      ', Factory_Num=:Fac_ID'
      ', Status=:Status '
      ',SO=:SO'
      ',Current_Stage=:Current_Stage'
      ', Reason=:Reason'
      ', pri=:pri, Article_num=:Article'
      ',Business_Unit=:Business_Unit'
      ', Production_Month=:Production_Month'
      ', FOB_Price_SIM=:FOB_Price_SIM'
      ',Currency_not_USD=:Currency_not_USD'
      ', PO_Qty=:PO_Qty'
      ', WH_Qty=:WH_Qty'
      ', A_grades=:A_grades'
      ', A_grades_After_Repair=:A_grades_After_Repair'
      ', B_grades=:B_grades'
      ',C_grades=:C_grades'
      ',aSL_Comm_TAC=:aSL_Comm_TAC'
      ',Reimbursement=:Reimbursement'
      ', Total_Cost=:Total_Cost'
      ',Total_Cost_Internal=:Total_Cost_Internal'
      ',aSIP_eLCS_Claim_Number=:aSIP_eLCS_Claim_Number'
      ', Completion_Date=:Completion_Date'
      ', File_Name=:File_Name'
      ', Defect_Cat=:Defect_Cat'
      ', T2T3_Cost=:T2T3_Cost'
      ', Claim_Pic=:Claim_Pic'
      'where'
      '  Claim_ID = :OLD_Claim_ID')
    InsertSQL.Strings = (
      'insert into claim_report'
      
        '(Date_Claim_Initiated, Claim, HQ_Claim_Manegement,Claim_Classifi' +
        'cation, Brand, '
      'Factory_Num, Status'
      ',SO,Current_Stage, Reason, pri, Article_num, Business_Unit, '
      'Production_Month, FOB_Price_SIM,Currency_not_USD'
      ', PO_Qty, WH_Qty, A_grades, A_grades_After_Repair'
      ', B_grades,C_grades,  aSL_Comm_TAC, Reimbursement, Total_Cost'
      ', '
      
        'Total_Cost_Internal,aSIP_eLCS_Claim_Number,Completion_Date,File_' +
        'Name'
      ',Defect_Cat,T2T3_Cost,Claim_Pic)'
      'values'
      
        ' (:Date_Claim_Initiated, :Claim, :HQ_Claim_Manegement,:Claim_Cla' +
        'ssification, :Brand, '
      ':Fac_ID, :Status'
      
        ',:SO, :Current_Stage,:Reason, :pri, :Article, :Business_Unit, :P' +
        'roduction_Month, '
      ':FOB_Price_SIM,:Currency_not_USD'
      ', :PO_Qty, :WH_Qty, :A_grades, :A_grades_After_Repair'
      ',:B_grades,:C_grades, '
      ':aSL_Comm_TAC,:Reimbursement,:Total_Cost,:Total_Cost_Internal'
      ',:aSIP_eLCS_Claim_Number'
      ',:Completion_Date,:File_Name,:Defect_Cat,:T2T3_Cost,:Claim_Pic)')
    DeleteSQL.Strings = (
      'delete from claim_report'
      'where'
      '  Claim_ID = :OLD_Claim_ID')
    Left = 672
    Top = 188
  end
  object ds_CR: TDataSource
    DataSet = qry_CR
    Left = 673
    Top = 125
  end
  object Qry_Inspection: TQuery
    AfterOpen = Qry_InspectionAfterOpen
    BeforeClose = Qry_InspectionBeforeClose
    AfterScroll = Qry_InspectionAfterScroll
    DatabaseName = 'DB'
    DataSource = ds_CR
    SQL.Strings = (
      
        '  SELECT qc.DDBH,qc.QCDate,qc.REMARK,qc.CheckQty,k.XieMing,DDZL.' +
        'Pairs,DDZL.KHPO,DDZL.Article,qc.report  '
      
        '  '#9'      ,qc.QCLevel,qc.QTY,qc.InspectorName,qc.De_Level,qc.Resu' +
        'lt,qc.CGDate,qc.ManagerDate,qc.CustDate,qc.CGUserID+'#39' '#39'+b.USERNA' +
        'ME CGUserID   '
      
        '         ,qc.ManagerID+'#39'  '#39'+b2.USERNAME ManagerID,qc.CustID+'#39' '#39'+' +
        'b3.USERNAME CustID,k.Category,qc.Pairs as ChkPairs  '
      
        '         ,qc.BA_Report,qc.QCLevelCus,qc.QtyCus,qc.Rea_Qty,qc.Fai' +
        '_Qty,qc.ResultCus,qc.Defect,qc.Ins_Pass,qc.Reason,qc.LackQty,qc.' +
        'CompleteDate,qc.USERID,qc.USERDATE,qc.YN  '
      '  from DDZLQC qc   '
      '  LEFT JOIN DDZL ON DDZL.DDBH=qc.DDBH   '
      
        '  LEFT JOIN kfxxzl k ON k.XieXing = DDZL.XieXing AND k.SheHao = ' +
        'DDZL.SheHao  '
      '  LEFT JOIN DDZLTW on DDZlTW.ZLBh=qc.DDBH  '
      '  LEFT JOIN Busers b ON b.USERID=qc.CGUserID  '
      '  LEFT JOIN Busers b2 ON b2.USERID=qc.ManagerID  '
      '  LEFT JOIN Busers b3 ON b3.USERID=qc.CustID'#9'  '
      
        '  WHERE DDZL.KHPO IN (SELECT PO FROM Claim_Report_PO WHERE Claim' +
        '_ID ='#39'44'#39')   '
      '  AND DDZL.Article like '#39'%'#39'  '
      '  AND qc.DDBH like '#39'%'#39
      
        '  AND CONVERT(varchar,qc.QCDate,111) BETWEEN  '#39'2022/11/25'#39' and '#39 +
        '2022/11/26'#39' '
      'ORDER BY qc.DDBH DESC')
    UpdateObject = Up_Inspec
    Left = 241
    Top = 588
    object Qry_InspectionDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Qry_InspectionQCDate: TDateTimeField
      FieldName = 'QCDate'
    end
    object Qry_InspectionREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 100
    end
    object Qry_InspectionCheckQty: TIntegerField
      FieldName = 'CheckQty'
    end
    object Qry_InspectionXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Qry_InspectionPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Qry_InspectionKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Qry_InspectionArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Qry_Inspectionreport: TStringField
      FieldName = 'report'
      FixedChar = True
      Size = 10
    end
    object Qry_InspectionQCLevel: TStringField
      FieldName = 'QCLevel'
      FixedChar = True
      Size = 10
    end
    object Qry_InspectionQTY: TIntegerField
      FieldName = 'QTY'
    end
    object Qry_InspectionInspectorName: TStringField
      FieldName = 'InspectorName'
      FixedChar = True
      Size = 15
    end
    object Qry_InspectionDe_Level: TStringField
      FieldName = 'De_Level'
      FixedChar = True
    end
    object Qry_InspectionResult: TStringField
      FieldName = 'Result'
      FixedChar = True
      Size = 10
    end
    object Qry_InspectionCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object Qry_InspectionManagerDate: TDateTimeField
      FieldName = 'ManagerDate'
    end
    object Qry_InspectionCustDate: TDateTimeField
      FieldName = 'CustDate'
    end
    object Qry_InspectionCGUserID: TStringField
      FieldName = 'CGUserID'
      FixedChar = True
      Size = 41
    end
    object Qry_InspectionManagerID: TStringField
      FieldName = 'ManagerID'
      FixedChar = True
      Size = 42
    end
    object Qry_InspectionCustID: TStringField
      FieldName = 'CustID'
      FixedChar = True
      Size = 41
    end
    object Qry_InspectionCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object Qry_InspectionChkPairs: TIntegerField
      FieldName = 'ChkPairs'
    end
    object Qry_InspectionBA_Report: TBooleanField
      FieldName = 'BA_Report'
    end
    object Qry_InspectionQCLevelCus: TStringField
      FieldName = 'QCLevelCus'
      FixedChar = True
      Size = 10
    end
    object Qry_InspectionQtyCus: TIntegerField
      FieldName = 'QtyCus'
    end
    object Qry_InspectionRea_Qty: TIntegerField
      FieldName = 'Rea_Qty'
    end
    object Qry_InspectionFai_Qty: TIntegerField
      FieldName = 'Fai_Qty'
    end
    object Qry_InspectionResultCus: TStringField
      FieldName = 'ResultCus'
      FixedChar = True
      Size = 10
    end
    object Qry_InspectionDefect: TStringField
      FieldName = 'Defect'
      FixedChar = True
      Size = 250
    end
    object Qry_InspectionIns_Pass: TBooleanField
      FieldName = 'Ins_Pass'
    end
    object Qry_InspectionUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Qry_InspectionUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Qry_InspectionYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Qry_InspectionReason: TStringField
      FieldName = 'Reason'
      FixedChar = True
    end
    object Qry_InspectionLackQty: TIntegerField
      FieldName = 'LackQty'
    end
    object Qry_InspectionCompleteDate: TDateTimeField
      FieldName = 'CompleteDate'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 589
    Top = 133
  end
  object pm2: TPopupMenu
    Left = 200
    Top = 589
    object Insert2: TMenuItem
      Caption = 'Insert'
      OnClick = Insert2Click
    end
    object Delete2: TMenuItem
      Caption = 'Delete'
      OnClick = Delete2Click
    end
    object Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
  object Up_Inspec: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZLQC'
      'set'
      '  QCDate = :QCDate,'
      '  QTY = :QTY,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  REMARK = :REMARK,'
      '  Result = :Result,'
      '  Reason = :Reason,'
      '  QCLevel = :QCLevel,'
      '  LackQty = :LackQty,'
      '  CompleteDate = :CompleteDate,'
      '  CGDate = :CGDate,'
      '  De_Level = :De_Level,'
      '  Report = :Report,'
      '  CheckQty=:CheckQty,'
      '  BA_Report = :BA_Report,'
      '  Pairs = :ChkPairs,'
      '  QCLevelCus=:QCLevelCus,'
      '  QtyCus=:QtyCus,'
      '  Rea_Qty=:Rea_Qty,'
      '  Fai_Qty=:Fai_Qty,'
      '  ResultCus=:ResultCus,'
      '  Defect=:Defect,'
      '  Ins_Pass=:Ins_Pass'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  QCDate = :OLD_QCDate ')
    InsertSQL.Strings = (
      'insert into DDZLQC'
      
        '  (DDBH, QCDate, QTY, USERID, USERDATE, YN, REMARK, Result, Reas' +
        'on, '
      
        'QCLevel,   LackQty, CompleteDate, CGDate, De_Level, Report,Check' +
        'Qty, '
      
        'BA_Report, Pairs,QCLevelCus,QtyCus,Rea_Qty,Fai_Qty,ResultCus,Def' +
        'ect,Ins_Pass)'
      'values'
      
        '  (:DDBH, :QCDate, :QTY, :USERID, GETDATE(), '#39'1'#39', :REMARK, :Resu' +
        'lt, :Reason, '
      
        '   :QCLevel, :LackQty, :CompleteDate,  :CGDate, :De_Level, :Repo' +
        'rt, :CheckQty, '
      
        ':BA_Report, :ChkPairs,:QCLevelCus,:QtyCus,:Rea_Qty,:Fai_Qty,:Res' +
        'ultCus,:Defect,:Ins_Pass)'
      '')
    DeleteSQL.Strings = (
      'delete from DDZLQC'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  QCDate = :OLD_QCDate')
    Left = 241
    Top = 627
  end
end
