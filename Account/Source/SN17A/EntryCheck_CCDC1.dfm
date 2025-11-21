object EntryCheck_CCDC: TEntryCheck_CCDC
  Left = 245
  Top = 282
  Width = 1705
  Height = 675
  Caption = 'EntryCheck_CCDC'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1689
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
      Width = 497
      Height = 24
      AutoSize = False
      Caption = 'Month Material Entry:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 52
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 200
      Top = 52
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
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
      Left = 151
      Top = 88
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 464
      Top = 54
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
    end
    object Label7: TLabel
      Left = 469
      Top = 88
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSYWJC:'
    end
    object Label11: TLabel
      Left = 262
      Top = 88
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label12: TLabel
      Left = 247
      Top = 92
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label13: TLabel
      Left = 371
      Top = 88
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label18: TLabel
      Left = 728
      Top = 85
      Width = 22
      Height = 16
      Alignment = taRightJustify
      Caption = 'YN:'
    end
    object Label8: TLabel
      Left = 648
      Top = 54
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TSBH'
    end
    object Edit2: TEdit
      Left = 264
      Top = 48
      Width = 193
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
      Left = 831
      Top = 81
      Width = 94
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 831
      Top = 46
      Width = 95
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 80
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 4
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
      Left = 192
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 5
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
    object Edit5: TEdit
      Left = 532
      Top = 50
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 532
      Top = 84
      Width = 181
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object CBX4: TComboBox
      Left = 296
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 8
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
      Left = 412
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 9
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
    object cbYN: TComboBox
      Left = 752
      Top = 81
      Width = 49
      Height = 24
      ItemHeight = 16
      TabOrder = 10
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        '1'
        '5')
    end
    object Edit3: TEdit
      Left = 716
      Top = 50
      Width = 85
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1689
    Height = 515
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16763080
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#32232#34399'|RKNO'
        Title.TitleButton = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'SupplierID'
        Footers = <>
        Title.Caption = #24288#21830'|ZSBH'
      end
      item
        EditButtons = <>
        FieldName = 'SuplierName'
        Footers = <>
        Title.Caption = #24288#21830'|ZSYWJC'
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        Title.Caption = #25505#36092#21934#34399'|PO NO'
        Title.TitleButton = True
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #20837#24235#26085'|USERDATE'
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #25505#36092#30906#35469'|CFMDATE'
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Title.Caption = #36001#29986#32232#34399'|TSBH'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'MatName'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 313
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <
          item
            Alignment = taRightJustify
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
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            DisplayFormat = '##,#0.00'
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
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32654#37329#37329#38989'|USACC'
        Title.TitleButton = True
        Width = 65
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
        Width = 83
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
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ExchACC'
        Footers = <
          item
            FieldName = 'ExchACC'
            ValueType = fvtSum
          end>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 70
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 456
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.GSBH,KCRK.RKNO,KCRK.ZSBH as SupplierID,ZSZL.zsjc_yw ' +
        'as SuplierName,KCRK.ZSNO'
      
        #9'   ,KCRK.USERDATE,KCRK.CFMDATE,KCRKS.TSBH,KCRKS.SBBH as CLBH,TS' +
        'CD_SB.VWPM as MatName,TSCD_SB.DWBH,'#39'153'#39' as CWBH,KCRKS.Qty,KCRKS' +
        '.USPrice,KCRKS.USACC'
      
        #9'   ,KCRKS.CWHL, KCRKS.VNPrice,KCRKS.VNACC,KCRKS.ExchACC,KCRKS.M' +
        'EMO'
      'from CCDC_KCRK KCRK    '
      '  left join CCDC_KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO    '
      '  left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH    '
      '  left join TSCD_SB on KCRKS.SBBH=TSCD_SB.SBBH '
      '  where KCRK.YN=5  and 1=2   '
      
        '    '#9' and  CONVERT(VARCHAR, KCRK.USERDATE, 111) between '#39'2022/01' +
        '/01'#39' AND '#39'2022/03/31'#39'     '
      '      and ZSZL.zsjc_yw not like '#39'%TY XUAN%'#39'    '
      'order by KCRK.RKNO')
    Left = 496
    Top = 160
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1SupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 6
    end
    object Query1SuplierName: TStringField
      FieldName = 'SuplierName'
      FixedChar = True
      Size = 50
    end
    object Query1ZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
      Size = 11
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query1TSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1MatName: TStringField
      FieldName = 'MatName'
      FixedChar = True
      Size = 255
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 10
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 3
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query1ExchACC: TFloatField
      FieldName = 'ExchACC'
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 100
    end
  end
end
