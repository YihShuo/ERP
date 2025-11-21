object DeliverCheck: TDeliverCheck
  Left = 56
  Top = 217
  Width = 1660
  Height = 593
  Caption = 'DeliverCheck'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1644
    Height = 145
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 417
      Height = 24
      AutoSize = False
      Caption = 'Month Material Deliver List:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 3
      Top = 45
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 200
      Top = 45
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 46
      Top = 113
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 151
      Top = 113
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 160
      Top = 80
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
    end
    object Label7: TLabel
      Left = 346
      Top = 80
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName'
    end
    object Label8: TLabel
      Left = 464
      Top = 45
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label9: TLabel
      Left = 584
      Top = 45
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CostID:'
    end
    object Label10: TLabel
      Left = 8
      Top = 80
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label12: TLabel
      Left = 523
      Top = 80
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBH:'
    end
    object Label13: TLabel
      Left = 255
      Top = 113
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label14: TLabel
      Left = 242
      Top = 115
      Width = 9
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
    end
    object Label15: TLabel
      Left = 358
      Top = 113
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label16: TLabel
      Left = 583
      Top = 113
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label17: TLabel
      Left = 451
      Top = 113
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label18: TLabel
      Left = 733
      Top = 45
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGBH:'
    end
    object Label11: TLabel
      Left = 717
      Top = 78
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Declaretion:'
    end
    object Edit2: TEdit
      Left = 264
      Top = 42
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 42
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 950
      Top = 105
      Width = 76
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 368
      Top = 42
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 950
      Top = 67
      Width = 76
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 80
      Top = 109
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 5
      Text = '2020'
      OnChange = CBX1Change
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX2: TComboBox
      Left = 193
      Top = 109
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
      Text = '01'
      OnChange = CBX2Change
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button3: TButton
      Left = 949
      Top = 27
      Width = 77
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 236
      Top = 76
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 411
      Top = 76
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 536
      Top = 42
      Width = 41
      Height = 24
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 656
      Top = 42
      Width = 73
      Height = 24
      TabOrder = 11
    end
    object CBX3: TComboBox
      Left = 80
      Top = 76
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 12
    end
    object Edit8: TEdit
      Left = 604
      Top = 76
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object CBX4: TComboBox
      Left = 289
      Top = 109
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 14
      Text = '2020'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX5: TComboBox
      Left = 399
      Top = 109
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 15
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object CBX6: TComboBox
      Left = 652
      Top = 109
      Width = 293
      Height = 24
      ItemHeight = 16
      TabOrder = 16
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ'
        'NK+TC+HD+KD'
        'NK1+TC1+HD1+KD1'
        'NK+TC+HD+KD+NK1+TC1+H1D+KD1+NQ+NKNQ')
    end
    object GSBHCBX: TComboBox
      Left = 512
      Top = 109
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 17
    end
    object Edit9: TEdit
      Left = 792
      Top = 42
      Width = 75
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 18
    end
    object Edit10: TEdit
      Left = 793
      Top = 74
      Width = 107
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 19
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 145
    Width = 1644
    Height = 409
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1636
        Height = 378
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16760767
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean|Dep'
            Title.TitleButton = True
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #30906#35469#26085#26399'|CFMDate'
            Title.TitleButton = True
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Title.TitleButton = True
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 241
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Title.Caption = #24037#27573'|DFL'
            Title.TitleButton = True
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|VNPrice'
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|VNACC'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = #35036#26009#29702#30001'|YWSM'
            Title.TitleButton = True
            Width = 142
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.TitleButton = True
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'BLSB'
            Footers = <>
            Title.Caption = #25429#26009'|BLSB'
            Title.TitleButton = True
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'HGBH'
            Footers = <>
            Title.Caption = #28023#38364'|HaiQuan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UnitC'
            Footers = <>
            Title.Caption = #21934#20301'|UnitC'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RateC'
            Footers = <>
            Title.Caption = #20812#25563#27604#29575'|RateC'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'Ton kho'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1636
        Height = 378
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16760767
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean|Dep'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #30906#35469#26085#26399'|CFMDate'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Width = 241
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                FieldName = 'DWBH'
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.Caption = #21934#20301'|DWBH'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Title.Caption = #24037#27573'|DFL'
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|VNPrice'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|VNACC'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = #35036#26009#29702#30001'|YWSM'
            Width = 142
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'BLSB'
            Footers = <>
            Title.Caption = #35036#26009'|BLSB'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'HGBH'
            Footers = <>
            Title.Caption = #28023#38364'|HGBH'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UnitC'
            Footers = <>
            Title.Caption = #21934#20301'|UnitC'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RateC'
            Footers = <>
            Title.Caption = #20812#25563#27604#29575'|RateC'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'LLMemo'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = #29992#37327'|CLSL'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CNO1'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Declaretion'
            Footers = <>
            Title.Caption = #22577#38364#21934'|Declaretion'
            Width = 90
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Kho Invoice'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1636
        Height = 378
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16760767
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean|DepName'
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #30906#35469#26085#26399'|CFMDATE'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Title.Caption = #24037#27573'|DFL'
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'HGBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
          end
          item
            EditButtons = <>
            FieldName = 'DOCNO'
            Footers = <>
            Title.Caption = #30332#31080'INVICE|DOCNO'
          end
          item
            EditButtons = <>
            FieldName = 'Declaretion'
            Footers = <>
            Title.Caption = #22577#38364#21934#34399'|Declaretion'
          end
          item
            EditButtons = <>
            FieldName = 'PKNO'
            Footers = <>
            Title.Caption = #20837#24235#21934#34399'|PKNO'
          end
          item
            EditButtons = <>
            FieldName = 'InWH_Date'
            Footers = <>
            Title.Caption = #20837#24235#26085'|InWH_Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'F_Date'
            Footers = <>
            Title.Caption = #25104#21697#20837#24235'|F_Date'
          end>
      end
    end
    object TS5: TTabSheet
      Caption = 'Ton Kho CBY'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1636
        Height = 378
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16760767
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean|Dep'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #30906#35469#26085#26399'|CFMDate'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Width = 241
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                FieldName = 'DWBH'
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.Caption = #21934#20301'|DWBH'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Title.Caption = #24037#27573'|DFL'
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|VNPrice'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|VNACC'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Width = 87
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 432
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 248
    object CheckPrice1: TMenuItem
      Caption = 'Check Price'
      OnClick = CheckPrice1Click
    end
    object SonMatCode1: TMenuItem
      Caption = 'Son MatCode'
      OnClick = SonMatCode1Click
    end
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 461
    Top = 246
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 436
    Top = 292
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 436
    Top = 332
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.' +
        'CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL'
      
        '       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice,0) as VN' +
        'Price,KCLLS.VNACC'
      
        '       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'#39#39') as YWSM,I' +
        'sNull(KCLLS.MEMO,'#39#39') as MEMO,IsNull(KCLLS.BLSB,'#39#39') as BLSB'
      '       ,IsNull(KCLLS.CNO,'#39#39') as HGBH'
      
        '       ,IsNull(CLHG.UnitC,'#39#39') as UnitC,CLHG.RateC ,isnull(KCLLS.' +
        'HGLB,'#39'ZZZZ'#39')as HGLB'
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS '
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        'left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>' +
        '=2017 '
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2019/09/01'#39' and '#39'2019/09/10'#39
      '      and KCLLS.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39
      '      and KCLLS.CostID like '#39'%'#39
      '      and KCLLS.LLNO like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCCK.GSBH='#39'VA12'#39
      '      and KCLLS.SCBH like '#39'%'#39
      'order by KCLL.CFMDATE')
    Left = 400
    Top = 248
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 15
    end
    object Query1UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Query1RateC: TFloatField
      FieldName = 'RateC'
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.' +
        'CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL'
      
        '       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice_HG,0) as' +
        ' VNPrice,KCLLS.VNACC_HG as VNACC'
      
        '       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'#39#39') as YWSM,I' +
        'sNull(KCLLS.MEMO,'#39#39') as MEMO,IsNull(KCLLS.BLSB,'#39#39') as BLSB'
      '       ,IsNull(KCLLS.CNO,'#39#39') as HGBH'
      
        '       ,IsNull(CLHG.UnitC,'#39#39') as UnitC,CLHG.RateC ,isnull(KCLLS.' +
        'HGLB,'#39'ZZZZ'#39')as HGLB,KCLLS.LLMemo,ZLZLS2.CLSL'
      '       '
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS '
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        'left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>' +
        '=2017'
      
        'left join (select CLBH,ZLBH,sum (CLSL) as CLSL from DDZL_ZLZLS2 ' +
        'group by CLBH,ZLBH) ZLZLS2 on ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.' +
        'ZLBH=KCLLS.SCBH'
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2020/09/01'#39' and '#39'2020/09/30'#39
      '      and KCLLS.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39
      '      and KCLLS.CostID like '#39'%'#39
      '      and KCLLS.LLNO like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCCK.GSBH='#39'VA12'#39
      '      and KCLLS.SCBH like '#39'%'#39' '
      '      and KCLLS.HGLB<>'#39'XT'#39
      'order by KCLL.CFMDATE')
    Left = 398
    Top = 292
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query2DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query2DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query2CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query2DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query2VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query2SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query2CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query2MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query2BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query2HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 15
    end
    object Query2UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Query2RateC: TFloatField
      FieldName = 'RateC'
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query2LLMemo: TStringField
      FieldName = 'LLMemo'
      FixedChar = True
      Size = 200
    end
    object Query2CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query2CNO1: TStringField
      FieldName = 'CNO1'
    end
    object Query2Declaretion: TStringField
      FieldName = 'Declaretion'
      Size = 50
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KCLL.CKBH,KCPKLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL' +
        '.CFMDATE,KCPKLL.CLBH,KCPKLL.DFL,KCPKLL.SCBH,CLZL.YWPM,CLZL.DWBH,' +
        'KCZLS.CWBH,KCPKLL.Qty as Qty,IsNull(KCLLS.CNO,'#39#39') as HGBH,KCRK.H' +
        'GLB,KCRK.DOCNO,KCPK.Declaretion,KCPKLL.PKNO'
      #9'  from KCPKLL'
      #9'  left join KCLL on KCPKLL.LLNO=KCLL.LLNO'
      
        #9'  left join KCLLS on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPK' +
        'LL.CLBH and KCLLS.DFL=KCPKLL.DFL and KCLLS.SCBH=KCPKLL.SCBH'
      #9'  left join KCRK on KCRK.RKNO=KCPKLL.PKNO'
      #9'  Left join KCPK on KCPK.PKNO=KCPKLL.PKNO'
      #9'  left join CLZL on CLZL.CLDH=KCPKLL.CLBH'
      
        #9'  left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.' +
        'CKBH'
      #9'  left join BDepartment on BDepartment.ID=KCLL.DepID'
      
        #9'  where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)' +
        ') between '
      #9#9#9#9' '#39'2021/05/01'#39' and '#39'2021/05/31'#39
      #9#9#9'and KCPKLL.CLBH like '#39'U%'#39'  '
      #9#9#9'and KCPKLL.LLNO like '#39'%'#39
      #9#9#9'and KCPKLL.SCBH like '#39'Y2105-1267%'#39' '
      #9#9#9'and KCLL.YN='#39'5'#39' '
      #9#9#9'and KCLL.GSBH='#39'VA12'#39)
    Left = 398
    Top = 332
    object Query3CKBH: TStringField
      DisplayWidth = 6
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3LLNO: TStringField
      DisplayWidth = 12
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query3DepID: TStringField
      DisplayWidth = 8
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query3DepName: TStringField
      DisplayWidth = 13
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query3CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3CLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3DFL: TStringField
      DisplayWidth = 5
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query3SCBH: TStringField
      DisplayWidth = 11
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query3YWPM: TStringField
      DisplayWidth = 32
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query3DWBH: TStringField
      DisplayWidth = 5
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query3CWBH: TStringField
      DisplayWidth = 6
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query3Qty: TCurrencyField
      DisplayWidth = 7
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query3HGBH: TStringField
      DisplayWidth = 12
      FieldName = 'HGBH'
      FixedChar = True
      Size = 15
    end
    object Query3HGLB: TStringField
      DisplayWidth = 5
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query3DOCNO: TStringField
      DisplayWidth = 13
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object Query3Declaretion: TStringField
      DisplayWidth = 13
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query3PKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 11
    end
    object Query3InWH_Date: TDateTimeField
      FieldName = 'InWH_Date'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3F_Date: TDateTimeField
      FieldName = 'F_Date'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.' +
        'CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL'
      
        '       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice_HG,0) as' +
        ' VNPrice,KCLLS.VNACC_HG as VNACC'
      
        '       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'#39#39') as YWSM,I' +
        'sNull(KCLLS.MEMO,'#39#39') as MEMO,IsNull(KCLLS.BLSB,'#39#39') as BLSB'
      '       ,IsNull(KCLLS.CNO,'#39#39') as HGBH'
      
        '       ,IsNull(CLHG.UnitC,'#39#39') as UnitC,CLHG.RateC ,isnull(KCLLS.' +
        'HGLB,'#39'ZZZZ'#39')as HGLB,KCLLS.LLMemo,ZLZLS2.CLSL'
      '       '
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS '
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        'left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>' +
        '=2017'
      
        'left join (select CLBH,ZLBH,sum (CLSL) as CLSL from DDZL_ZLZLS2 ' +
        'group by CLBH,ZLBH) ZLZLS2 on ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.' +
        'ZLBH=KCLLS.SCBH'
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2020/09/01'#39' and '#39'2020/09/30'#39
      '      and KCLLS.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39
      '      and KCLLS.CostID like '#39'%'#39
      '      and KCLLS.LLNO like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCCK.GSBH='#39'VA12'#39
      '      and KCLLS.SCBH like '#39'%'#39' '
      '      and KCLLS.HGLB<>'#39'XT'#39
      'order by KCLL.CFMDATE')
    Left = 398
    Top = 380
    object StringField1: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object StringField5: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'VNPrice'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'VNACC'
    end
    object StringField10: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 436
    Top = 380
  end
end
