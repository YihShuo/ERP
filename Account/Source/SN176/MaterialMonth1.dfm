object MaterialMonth: TMaterialMonth
  Left = 223
  Top = 181
  Width = 1643
  Height = 599
  Caption = 'MaterialMonth'
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
    Width = 1627
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
      Width = 369
      Height = 24
      AutoSize = False
      Caption = 'Month Material List:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 50
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 200
      Top = 50
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 368
      Top = 88
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 46
      Top = 88
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 159
      Top = 88
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label8: TLabel
      Left = 525
      Top = 88
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label16: TLabel
      Left = 487
      Top = 49
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label7: TLabel
      Left = 253
      Top = 88
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory:'
    end
    object Edit2: TEdit
      Left = 264
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 732
      Top = 80
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 428
      Top = 85
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Edit3: TEdit
      Left = 368
      Top = 48
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 830
      Top = 80
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 80
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 6
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
    object CBX3: TComboBox
      Left = 200
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 7
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
      Left = 831
      Top = 40
      Width = 97
      Height = 33
      Caption = 'PRINT'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 605
      Top = 86
      Width = 57
      Height = 24
      TabOrder = 9
    end
    object CBX6: TComboBox
      Left = 520
      Top = 46
      Width = 303
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 10
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
        'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ')
    end
    object CBX4: TComboBox
      Left = 303
      Top = 85
      Width = 58
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 11
      Text = 'ALL'
      OnChange = CBX4Change
      Items.Strings = (
        'ALL')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1627
    Height = 439
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Total'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1246
        Height = 407
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 5
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        RowHeight = 4
        RowLines = 1
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
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Title.TitleButton = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 317
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 44
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
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <
              item
                Value = 'Total'
                ValueType = fvtStaticText
              end>
            Title.Caption = #36008#26550'|KCBH'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LastQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'LastQty'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#21021'|LastQty'
            Title.TitleButton = True
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'LastACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'LastACC'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#21021#37329#38989'|LastACC'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235'|RKQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'RKACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'RKACC'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235#37329#38989'|RKACC'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'JGQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'JGQty'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#20837'|JGQty'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'JGACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'JGACC'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#37329#38989'|JGACC'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'TotPrice'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'TotPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|TotPrice'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'TotQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'TotQty'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#25976#37327'|TotQty'
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TotACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'TotACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|TotACC'
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'JGCKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'JGCKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#20986'|JGCKQty'
            Title.TitleButton = True
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'JGCKACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'JGCKACC'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#32317#37329#38989'|JGCKACC'
            Title.TitleButton = True
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'CKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #30332#26009'|CKQty'
            Title.TitleButton = True
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'CKACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'CKACC'
                ValueType = fvtSum
              end>
            Title.Caption = #30332#26009#32317#37329#38989'|CKACC'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'RemQty'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#26411'|RemQty'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'RemPrice'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'RemPrice'
                ValueType = fvtAvg
              end>
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'RemACC'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#26411#32317#37329#38989'|RemACC'
            Title.TitleButton = True
            Width = 82
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
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kho'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1619
        Height = 408
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 5
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        RowHeight = 4
        RowLines = 1
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
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Title.TitleButton = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 317
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 44
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
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <
              item
                Value = 'Total'
                ValueType = fvtStaticText
              end>
            Title.Caption = #36008#26550'|KCBH'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LastQty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'LastQty'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#21021'|LastQty'
            Title.TitleButton = True
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'LastACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'LastACC'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#21021#37329#38989'|LastACC'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235'|RKQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'RKACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'RKACC'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235#37329#38989'|RKACC'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'JGQty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'JGQty'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#20837'|JGQty'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'JGACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'JGACC'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#37329#38989'|JGACC'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'TotQty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'TotQty'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#25976#37327'|TotQty'
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TotACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'TotACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|TotACC'
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'TotPrice'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'TotPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|TotPrice'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'JGCKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'JGCKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#20986'|JGCKQty'
            Title.TitleButton = True
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'JGCKACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'JGCKACC'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#32317#37329#38989'|JGCKACC'
            Title.TitleButton = True
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.0000'
                FieldName = 'CKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #30332#26009'|CKQty'
            Title.TitleButton = True
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'CKACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'CKACC'
                ValueType = fvtSum
              end>
            Title.Caption = #30332#26009#32317#37329#38989'|CKACC'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'RemQty'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#26411'|RemQty'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'RemPrice'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'RemPrice'
                ValueType = fvtAvg
              end>
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'RemACC'
                ValueType = fvtSum
              end>
            Title.Caption = #26399#26411#32317#37329#38989'|RemACC'
            Title.TitleButton = True
            Width = 82
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
            Title.Caption = #39006#21029'|Kho'
            Width = 41
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 528
    Top = 160
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 571
    Top = 165
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 528
    Top = 192
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCL' +
        'ZL.LastQty,'
      
        '       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWC' +
        'LZL.JGACC,'
      
        '       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQt' +
        'y,CWCLZL.CKQty,RemQty'
      '       ,JGCKACC'
      
        ',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCL' +
        'COUNT.VNACC) else CWCLZL.CKACC  end [CKACC] '
      
        ',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCL' +
        'COUNT.VNACC else CWCLZL.RemACC end [RemACC]'
      ',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH '
      ',CLHG.HGBH,CLHG.UnitC,CLHG.RateC'
      'from  CWCLZL'
      
        'left join CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCO' +
        'UNT.KCMONTH=CWCLZL.KCMONTH '
      
        '                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUN' +
        'T.CLBH=CWCLZL.CLBH '
      'left join CLZL on  CLZL.CLDH= CWCLZL.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CK' +
        'BH'
      'left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      
        'left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.KCYear>='#39'2017' +
        #39
      ''
      'where CWCLZL.KCYEAR='#39'2020'#39
      '      and CWCLZL.KCMONTH='#39'01'#39
      '      and CWCLZL.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      ' and KCCK.GSBH='#39'CDC'#39)
    Left = 496
    Top = 160
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
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
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1LastQty: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1LastACC: TCurrencyField
      FieldName = 'LastACC'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1RKACC: TCurrencyField
      FieldName = 'RKACC'
    end
    object Query1JGQty: TCurrencyField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGACC: TCurrencyField
      FieldName = 'JGACC'
    end
    object Query1TotPrice: TCurrencyField
      FieldName = 'TotPrice'
    end
    object Query1TotQty: TCurrencyField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1TotACC: TCurrencyField
      FieldName = 'TotACC'
    end
    object Query1JGCKQty: TCurrencyField
      FieldName = 'JGCKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCKACC: TCurrencyField
      FieldName = 'JGCKACC'
    end
    object Query1CKQty: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CKACC: TCurrencyField
      FieldName = 'CKACC'
    end
    object Query1RemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1RemPrice: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'RemPrice'
      Calculated = True
    end
    object Query1RemACC: TCurrencyField
      FieldName = 'RemACC'
    end
    object Query1HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Query1RateC: TFloatField
      FieldName = 'RateC'
    end
  end
  object Query2: TQuery
    OnCalcFields = Query2CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.HGLB,CWCL' +
        'ZL.CLBH,CWCLZL.LastQty,'
      
        '       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWC' +
        'LZL.JGACC,'
      
        '       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQt' +
        'y,CWCLZL.CKQty,RemQty'
      '       ,JGCKACC'
      
        ',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCL' +
        'COUNT.VNACC) else CWCLZL.CKACC  end [CKACC] '
      
        ',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCL' +
        'COUNT.VNACC else CWCLZL.RemACC end [RemACC]'
      ',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH '
      ',CLHG.HGBH,CLHG.UnitC,CLHG.RateC'
      'from  CWCLZL_HG CWCLZL'
      
        'left join CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCO' +
        'UNT.KCMONTH=CWCLZL.KCMONTH '
      
        '                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUN' +
        'T.CLBH=CWCLZL.CLBH '
      'left join CLZL on  CLZL.CLDH= CWCLZL.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CK' +
        'BH'
      'left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      
        'left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.KCYear>='#39'2017' +
        #39
      'where CWCLZL.KCYEAR='#39'2017'#39
      '      and CWCLZL.KCMONTH='#39'06'#39
      '      and CWCLZL.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and KCZLS.CWBH like '#39'%'#39
      ' and KCCK.GSBH='#39'VA12'#39)
    Left = 496
    Top = 200
    object StringField1: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object StringField7: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object StringField8: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2LastACC: TCurrencyField
      FieldName = 'LastACC'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2RKACC: TCurrencyField
      FieldName = 'RKACC'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2JGACC: TCurrencyField
      FieldName = 'JGACC'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2TotACC: TCurrencyField
      FieldName = 'TotACC'
    end
    object Query2TotPrice: TCurrencyField
      FieldName = 'TotPrice'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'JGCKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2JGCKACC: TCurrencyField
      FieldName = 'JGCKACC'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2CKACC: TCurrencyField
      FieldName = 'CKACC'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2RemPrice: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'RemPrice'
      Calculated = True
    end
    object Query2RemACC: TCurrencyField
      FieldName = 'RemACC'
    end
    object StringField9: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object StringField10: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object FloatField9: TFloatField
      FieldName = 'RateC'
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
end
