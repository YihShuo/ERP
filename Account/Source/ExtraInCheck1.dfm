object ExtraInCheck: TExtraInCheck
  Left = 226
  Top = 213
  Width = 1509
  Height = 545
  Caption = 'ExtraInCheck'
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
    Width = 1493
    Height = 121
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
      Width = 449
      Height = 24
      AutoSize = False
      Caption = 'Month Material Extra In:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 51
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 192
      Top = 51
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 38
      Top = 88
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 144
      Top = 88
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 376
      Top = 88
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JGNO:'
    end
    object Label7: TLabel
      Left = 579
      Top = 88
      Width = 36
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSJC:'
    end
    object Label8: TLabel
      Left = 456
      Top = 51
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label9: TLabel
      Left = 576
      Top = 51
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CostID:'
    end
    object Label10: TLabel
      Left = 240
      Top = 88
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Edit2: TEdit
      Left = 256
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 72
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 730
      Top = 76
      Width = 95
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 360
      Top = 48
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 834
      Top = 75
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 72
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 5
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
    object CBX2: TComboBox
      Left = 185
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
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
    object Button3: TButton
      Left = 728
      Top = 39
      Width = 97
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 451
      Top = 85
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 617
      Top = 85
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 528
      Top = 48
      Width = 41
      Height = 24
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 648
      Top = 48
      Width = 73
      Height = 24
      TabOrder = 11
    end
    object CBX3: TComboBox
      Left = 296
      Top = 85
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 12
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1493
    Height = 385
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Ton Kho'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1485
        Height = 354
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16765650
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
            Title.Caption = #20489#24235'|CKBH'
            Title.TitleButton = True
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footers = <>
            Title.Caption = #21152#24037#21934#34399'|JGNO'
            Title.TitleButton = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = #24288#21830'|ZSYWJC'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate1'
            Footers = <>
            Title.Caption = #20837#24235#26085'|CFMDate1'
            Title.TitleButton = True
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'JGLX'
            Footers = <>
            Title.Caption = #39006#22411'|JGLX'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 374
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
            Width = 42
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
            Width = 48
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
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'USPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32654#37329#37329#38989'|USACC'
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <
              item
                FieldName = 'CWHL'
                ValueType = fvtAvg
              end>
            Title.Caption = #21295#29575'|CWHL'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #36234#30462#21934#20729'|VNPrice'
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #36234#30462#37329#38989'|VNACC'
            Title.TitleButton = True
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'CLPrice_HG'
            Footers = <
              item
                FieldName = 'CLPrice_HG'
                ValueType = fvtAvg
              end>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CLACC_HG'
            Footers = <
              item
                FieldName = 'CLACC_HG'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Title.TitleButton = True
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Title.TitleButton = True
            Width = 42
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
            FieldName = 'CLPrice'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CLACC'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Extra CBY No Order'
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1112
        Height = 362
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16765650
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
            Title.Caption = #20489#24235'|CKBH'
            Title.TitleButton = True
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'LSNO'
            Footers = <>
            Title.Caption = #21152#24037#21934#34399'|LSNO'
            Title.TitleButton = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = #24288#21830'|ZSYWJC'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate1'
            Footers = <>
            Title.Caption = #20837#24235#26085'|CFMDate1'
            Title.TitleButton = True
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'JGLX'
            Footers = <>
            Title.Caption = #39006#22411'|JGLX'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 374
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
            Width = 42
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
            Width = 48
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
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'USPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32654#37329#37329#38989'|USACC'
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <
              item
                FieldName = 'CWHL'
                ValueType = fvtAvg
              end>
            Title.Caption = #21295#29575'|CWHL'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #36234#30462#21934#20729'|VNPrice'
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #36234#30462#37329#38989'|VNACC'
            Title.TitleButton = True
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'CLPrice_HG'
            Footers = <
              item
                FieldName = 'CLPrice_HG'
                ValueType = fvtAvg
              end>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CLACC_HG'
            Footers = <
              item
                FieldName = 'CLACC_HG'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Title.TitleButton = True
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Title.TitleButton = True
            Width = 42
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
            FieldName = 'CLPrice'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CLACC'
            Footers = <>
            Visible = False
          end>
      end
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  JGZL.*,JGZLS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KCZLS.CWB' +
        'H,CLHG.HGBH ,CLHG.UnitC,CLHG.RateC'
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join CLHG on CLHG.CLBH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH'
      'left join KCZLS on KCZLS.CLBH=JGZLS.CLBH'
      ''
      '')
    Left = 496
    Top = 160
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1JGLX: TStringField
      FieldName = 'JGLX'
      FixedChar = True
      Size = 1
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
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1CLPrice_HG: TCurrencyField
      FieldName = 'CLPrice_HG'
    end
    object Query1CLACC_HG: TCurrencyField
      FieldName = 'CLACC_HG'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 15
    end
    object Query1CNO: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 30
    end
    object Query1RateC: TFloatField
      FieldName = 'RateC'
      DisplayFormat = '#,##0.0000'
    end
    object Query1CLPrice: TCurrencyField
      FieldName = 'CLPrice'
      DisplayFormat = '##,#0'
    end
    object Query1CLACC: TFloatField
      FieldName = 'CLACC'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      Size = 11
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 156
    Top = 244
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query2CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'yyyy/mm/dd'
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
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query2USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query2USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query2CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query2VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object Query2CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 15
    end
    object Query2HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query2UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 30
    end
    object Query2RateC: TFloatField
      FieldName = 'RateC'
      DisplayFormat = '#,##0.0000'
    end
    object Query2LSNO: TStringField
      FieldName = 'LSNO'
    end
    object Query2JGLX: TIntegerField
      FieldName = 'JGLX'
    end
    object Query2CLPrice_HG: TIntegerField
      FieldName = 'CLPrice_HG'
    end
    object Query2CLACC_HG: TIntegerField
      FieldName = 'CLACC_HG'
    end
    object Query2CLPrice: TIntegerField
      FieldName = 'CLPrice'
    end
    object Query2CLACC: TIntegerField
      FieldName = 'CLACC'
    end
    object Query2CWBH: TIntegerField
      FieldName = 'CWBH'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 196
    Top = 244
  end
end
