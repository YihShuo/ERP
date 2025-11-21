object AccMonthStock: TAccMonthStock
  Left = 634
  Top = 173
  Width = 1610
  Height = 658
  Caption = 'AccMonthStock'
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
    Width = 1594
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
      Width = 569
      Height = 24
      AutoSize = False
      Caption = 'Month Material Stock Report'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 0
      Top = 50
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 344
      Top = 89
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 2
      Top = 87
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 134
      Top = 88
      Width = 46
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Month:'
    end
    object Label8: TLabel
      Left = 192
      Top = 50
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label16: TLabel
      Left = 488
      Top = 89
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label7: TLabel
      Left = 237
      Top = 89
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory:'
    end
    object Label5: TLabel
      Left = 344
      Top = 50
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Exchange'
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
      Left = 686
      Top = 40
      Width = 89
      Height = 33
      Caption = 'Monthly'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 412
      Top = 85
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Button2: TButton
      Left = 884
      Top = 40
      Width = 87
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 64
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 16
      TabOrder = 4
      Text = '2022'
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
        '2026')
    end
    object CBX3: TComboBox
      Left = 184
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 4
      TabOrder = 5
      Text = '05'
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
    object Edit4: TEdit
      Left = 279
      Top = 48
      Width = 57
      Height = 24
      TabOrder = 6
      Text = '152'
    end
    object CBX6: TComboBox
      Left = 553
      Top = 85
      Width = 323
      Height = 24
      ItemHeight = 16
      ItemIndex = 10
      TabOrder = 7
      Text = 'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK+TC+HD+KD'
        'NK1+TC1+HD1+KD1'
        'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ')
    end
    object CBX4: TComboBox
      Left = 287
      Top = 85
      Width = 58
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 8
      OnChange = CBX4Change
    end
    object Button3: TButton
      Left = 885
      Top = 75
      Width = 86
      Height = 33
      Caption = 'Query'
      TabOrder = 9
      OnClick = Button3Click
    end
    object ExchangeEdit: TEdit
      Left = 408
      Top = 48
      Width = 121
      Height = 24
      TabOrder = 10
      Text = '23300'
    end
    object CheckBox1: TCheckBox
      Left = 533
      Top = 51
      Width = 108
      Height = 17
      Caption = 'Detail'
      TabOrder = 11
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1594
    Height = 498
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Stock 6T('#24235#40801#20998#26512')'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1586
        Height = 467
        Align = alClient
        DataSource = Stock6TDS
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <>
            Visible = False
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footers = <>
            Visible = False
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footers = <>
            Title.Caption = '<30'#22825'|RemQty01T'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footers = <>
            Title.Caption = '31-60'#22825'|RemQty02T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footers = <>
            Title.Caption = '61-90'#22825'|RemQty03T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footers = <>
            Title.Caption = '91-120'#22825'|RemQty04T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footers = <>
            Title.Caption = '121-180'#22825'|RemQty05T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footers = <>
            Title.Caption = '181-359'#22825'|RemQty06T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footers = <>
            Title.Caption = '>=360'#22825'|RemQty07T'
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc01T'
            Footers = <>
            Title.Caption = '<30'#22825'|RemAcc01T'
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc02T'
            Footers = <>
            Title.Caption = '31-60'#22825'|RemAcc02T'
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc03T'
            Footers = <>
            Title.Caption = '61-90'#22825'|RemAcc03T'
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc04T'
            Footers = <>
            Title.Caption = '91-120'#22825'|RemAcc04T'
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc05T'
            Footers = <>
            Title.Caption = '121-180'#22825'|RemAcc05T'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc06T'
            Footers = <>
            Title.Caption = '181-359'#22825'|RemAcc06T'
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc07T'
            Footers = <>
            Title.Caption = '>=360'#22825'|RemAcc07T'
            Width = 83
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Stock Class('#21574#28399#20998#39006')'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1594
        Height = 475
        Align = alClient
        DataSource = StockClassQryDS
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'class0'
            Footers = <>
            Title.Caption = #32317#35336'(>=181)|class0'
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'Class1'
            Footers = <>
            Title.Caption = #20154#36896#30382'K02|Class1'
          end
          item
            EditButtons = <>
            FieldName = 'Class2'
            Footers = <>
            Title.Caption = #29275#30382'F16|Class2'
          end
          item
            EditButtons = <>
            FieldName = 'Class3'
            Footers = <>
            Title.Caption = #24067#39006'A|Class3'
          end
          item
            EditButtons = <>
            FieldName = 'Class4'
            Footers = <>
            Title.Caption = #21512#36028'P99|Class4'
          end
          item
            EditButtons = <>
            FieldName = 'Class5'
            Footers = <>
            Title.Caption = #23556#20986'E06|Class5'
          end
          item
            EditButtons = <>
            FieldName = 'Class6'
            Footers = <>
            Title.Caption = #38795#22666'G03|Class6'
          end
          item
            EditButtons = <>
            FieldName = 'Class7'
            Footers = <>
            Title.Caption = #30332#27873'G07|Class7'
          end
          item
            EditButtons = <>
            FieldName = 'Class8'
            Footers = <>
            Title.Caption = #36554#32218'M|Class8'
          end
          item
            EditButtons = <>
            FieldName = 'Class9'
            Footers = <>
            Title.Caption = #24118#25187'E01-02|Class9'
          end
          item
            EditButtons = <>
            FieldName = 'Class10'
            Footers = <>
            Title.Caption = 'PVC'#39006'|Class10'
          end
          item
            EditButtons = <>
            FieldName = 'Class11'
            Footers = <>
            Title.Caption = 'TPU'#39006'|Class11'
          end
          item
            EditButtons = <>
            FieldName = 'Class12'
            Footers = <>
            Title.Caption = #24213#39006'|Class12'
          end
          item
            EditButtons = <>
            FieldName = 'Class13'
            Footers = <>
            Title.Caption = #20854#20182'|Class13'
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Stock ABD('#26448#26009'ABD'#20998#39006')'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1328
        Height = 508
        Align = alClient
        DataSource = StockABDDS
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Title.Caption = #20998#39006'|LB'
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'classABD'
            Footer.FieldName = 'classABD'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #37329#38989'|classABD'
            Width = 103
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Calcuation'#35336#31639
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1586
        Height = 467
        Align = alClient
        DataSource = CalDS
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = #24180'|KCYEAR'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = #26376'|KCMONTH'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footer.FieldName = 'RemACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#26411#32317#37329#38989'|RemACC'
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.FieldName = 'RemQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#26411'|RemQty'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '<30'#22825'|RemQty01T'
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '<30'#22825'|RemAcc01T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '31-60'#22825'|RemQty02T'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '31-60'#22825'|RemAcc02T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '61-90'#22825'|RemQty03T'
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '61-90'#22825'|RemAcc03T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '91-120'#22825'|RemQty04T'
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '91-120'#22825'|RemAcc04T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '121-180'#22825'|RemQty05T'
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '121-180'#22825'|RemAcc05T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '181-359'#22825'|RemQty06T'
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '181-359'#22825'|RemAcc06T'
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '>=360'#22825'|RemQty07T'
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '>=360'#22825'|RemAcc07T'
          end
          item
            EditButtons = <>
            FieldName = 'Diff_RemAcc'
            Footer.ValueType = fvtSum
            Footers = <>
          end>
      end
    end
  end
  object CalQuery: TQuery
    OnCalcFields = CalQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWCLZL.*,KCZLS.CWBH'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc01T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc02T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc03T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc04T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc05T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc06T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty07T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc07T'
      'from CWCLZL_HG_Mon CWCLZL '
      
        'Left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.' +
        'CKBH '
      'left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      'where CWCLZL.KCYEAR='#39'2018'#39' and CWCLZL.KCMONTH='#39'05'#39'  '
      '      and KCZLS.CWBH like '#39'152%'#39
      'and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        ' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in' +
        ' (select DFL from bgszl where GSDH='#39'VA12'#39'))')
    UpdateObject = UpdateSQL1
    Left = 552
    Top = 275
    object CalQueryKCYEAR: TStringField
      DisplayWidth = 6
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object CalQueryKCMONTH: TStringField
      DisplayWidth = 2
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object CalQueryCKBH: TStringField
      DisplayWidth = 4
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object CalQueryHGLB: TStringField
      DisplayWidth = 4
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object CalQueryCLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CalQueryCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object CalQueryRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
    object CalQueryRemACC: TFloatField
      DisplayWidth = 10
      FieldName = 'RemACC'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty01T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty01T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc01T: TFloatField
      FieldName = 'RemAcc01T'
    end
    object CalQueryRemQty02T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty02T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc02T: TFloatField
      FieldName = 'RemAcc02T'
    end
    object CalQueryRemQty03T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty03T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc03T: TFloatField
      FieldName = 'RemAcc03T'
    end
    object CalQueryRemQty04T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty04T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc04T: TFloatField
      FieldName = 'RemAcc04T'
    end
    object CalQueryRemQty05T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty05T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc05T: TFloatField
      FieldName = 'RemAcc05T'
    end
    object CalQueryRemQty06T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty06T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc06T: TFloatField
      FieldName = 'RemAcc06T'
    end
    object CalQueryRemQty07T: TCurrencyField
      FieldName = 'RemQty07T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemAcc07T: TFloatField
      FieldName = 'RemAcc07T'
    end
    object CalQueryDiff_RemAcc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diff_RemAcc'
      Calculated = True
    end
    object CalQueryUSERID: TStringField
      DisplayWidth = 5
      FieldName = 'USERID'
      FixedChar = True
      Size = 5
    end
    object CalQueryUSERDATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object CalQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object CalDS: TDataSource
    DataSet = CalQuery
    Left = 552
    Top = 248
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 392
    Top = 275
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update CWCLZL_HG_Mon'
      '  USERID=:USERID,'
      '  USERDATE=:USERDATE'
      'where'
      '  KCYEAR=:OLD_KCYEAR and'
      '  KCMONTH=:OLD_KCMONTH and'
      '  CKBH=:OLD_CKBH and'
      '  HGLB=:OLD_HGLB and'
      '  CLBH=:OLD_CLBH')
    InsertSQL.Strings = (
      'Insert into CWCLZL_HG_Mon'
      
        '  (KCYEAR , KCMONTH, CKBH, CLBH, HGLB, RemACC ,RemQty01 , RemQty' +
        '02, RemQty03, RemQty04, RemQty05, RemQty06 , RemQty01T ,RemQty02' +
        'T, RemQty03T, RemQty04T, RemQty05T, RemQty06T , USERDate, USERID' +
        ', YN)'
      ' Values'
      
        '  (:KCYEAR , :KCMONTH, :CKBH, :CLBH, :HGLB, :RemACC ,:RemQty01 ,' +
        ' :RemQty02, :RemQty03, :RemQty04, :RemQty05, :RemQty06 , :RemQty' +
        '01T ,:RemQty02T, :RemQty03T, :RemQty04T, :RemQty05T, :RemQty06T ' +
        ', :USERDate, :USERID, :YN)'
      ''
      '')
    DeleteSQL.Strings = (
      'Delete from CWCLZL_HG_Mon'
      'where'
      '  KCYEAR=:OLD_KCYEAR and'
      '  KCMONTH=:OLD_KCMONTH and'
      '  CKBH=:OLD_CKBH and'
      '  HGLB=:OLD_HGLB and'
      '  CLBH=:OLD_CLBH')
    Left = 552
    Top = 306
  end
  object Stock6TQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'ALL'#39' as CKBH,'#39'ALL'#39'  as ' +
        'CLBH,'#39'ALL'#39'  as HGLB,Sum(CWCLZL.RemQty) as RemQty,Sum(CWCLZL.RemA' +
        'CC) as RemACC '
      
        '           ,Sum(RemQty01T) as RemQty01T,Sum(RemQty02T) as RemQty' +
        '02T,Sum(RemQty03T) as RemQty03T,Sum(RemQty04T) as RemQty04T,Sum(' +
        'RemQty05T) as RemQty05T,Sum(RemQty06T) as RemQty06T,Sum(RemQty07' +
        'T) as RemQty07T '
      
        '           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQ' +
        'ty01T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as' +
        ' RemAcc01T '
      
        '           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQ' +
        'ty02T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as' +
        ' RemAcc02T '
      
        '           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQ' +
        'ty03T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as' +
        ' RemAcc03T '
      
        '           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQ' +
        'ty04T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as' +
        ' RemAcc04T '
      
        '           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQ' +
        'ty05T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as' +
        ' RemAcc05T '
      
        '           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQ' +
        'ty06T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as' +
        ' RemAcc06T '
      
        #9#9'       ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty' +
        '07T*((CWCLZL.RemACC/CWCLZL.RemQty/23300.0)),2) else 0 end)  as R' +
        'emAcc07T '
      '    from CWCLZL_HG_Mon CWCLZL '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 and CWCLZL.KCYEAR='#39'2020'#39' and CWCLZL.KCMONTH='#39'05'#39' '
      '      and KCZLS.CWBH like '#39'152%'#39
      'and CWCLZL.HGLB in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39') '
      ' and KCCK.GSBH='#39'CDC'#39
      '    Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      '    )  CWCLZL')
    Left = 424
    Top = 275
    object Stock6TQryKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Stock6TQryKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Stock6TQryCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Stock6TQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Stock6TQryHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Stock6TQryRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemACC: TFloatField
      FieldName = 'RemACC'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty01T: TCurrencyField
      FieldName = 'RemQty01T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty02T: TCurrencyField
      FieldName = 'RemQty02T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty03T: TCurrencyField
      FieldName = 'RemQty03T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty04T: TCurrencyField
      FieldName = 'RemQty04T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty05T: TCurrencyField
      FieldName = 'RemQty05T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty06T: TCurrencyField
      FieldName = 'RemQty06T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemQty07T: TCurrencyField
      FieldName = 'RemQty07T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc01T: TFloatField
      FieldName = 'RemAcc01T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc02T: TFloatField
      FieldName = 'RemAcc02T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc03T: TFloatField
      FieldName = 'RemAcc03T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc04T: TFloatField
      FieldName = 'RemAcc04T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc05T: TFloatField
      FieldName = 'RemAcc05T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc06T: TFloatField
      FieldName = 'RemAcc06T'
      DisplayFormat = '##,#0.00'
    end
    object Stock6TQryRemAcc07T: TFloatField
      FieldName = 'RemAcc07T'
      DisplayFormat = '##,#0.00'
    end
  end
  object Stock6TDS: TDataSource
    DataSet = Stock6TQry
    Left = 432
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 587
    Top = 277
  end
  object StockClassQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      '      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as '#39'class0'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'K02'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class1'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'F16'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class2'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,1)='#39'A'#39'  then RemAcc04T+Rem' +
        'Acc05T+RemAcc06T end) as '#39'Class3'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'P99'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class4'#39'      '
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'E06'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class5'#39' '
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'G03'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class6'#39' '
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'G07'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class7'#39' '
      
        '      ,sum(case when left(CWCLZL.CLBH,1)='#39'M'#39'  then RemAcc04T+Rem' +
        'Acc05T+RemAcc06T end) as '#39'Class8'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'E01'#39' or left(CWCLZL.CL' +
        'BH,3)='#39'E02'#39'   then RemAcc04T+RemAcc05T+RemAcc06T end) as '#39'Class9' +
        #39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'K01'#39'   then RemAcc04T+' +
        'RemAcc05T+RemAcc06T end) as '#39'Class10'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'K03'#39'   then RemAcc04T+' +
        'RemAcc05T+RemAcc06T end) as '#39'Class11'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'J02'#39' or left(CWCLZL.CL' +
        'BH,3)='#39'J03'#39'   then RemAcc04T+RemAcc05T+RemAcc06T end) as '#39'Class1' +
        '2'#39
      
        '      ,SUM(case when left(CWCLZL.CLBH,3) not in ('#39'K02'#39','#39'F16'#39','#39'P9' +
        '9'#39','#39'E06'#39','#39'G03'#39','#39'G07'#39','#39'E01'#39','#39'E02'#39','#39'K01'#39','#39'K03'#39','#39'J02'#39','#39'J03'#39') and le' +
        'ft(CWCLZL.CLBH,1) not in ('#39'A'#39','#39'M'#39') then RemAcc04T+RemAcc05T+RemA' +
        'cc06T end) as '#39'Class13'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '      and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      ')  CWCLZL'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH')
    Left = 456
    Top = 275
    object StockClassQryKCYEAR: TStringField
      DisplayWidth = 6
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StockClassQryKCMONTH: TStringField
      DisplayWidth = 4
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StockClassQryclass0: TFloatField
      DisplayWidth = 11
      FieldName = 'class0'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass1: TFloatField
      DisplayWidth = 10
      FieldName = 'Class1'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass2: TFloatField
      DisplayWidth = 10
      FieldName = 'Class2'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass3: TFloatField
      DisplayWidth = 10
      FieldName = 'Class3'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass4: TFloatField
      DisplayWidth = 10
      FieldName = 'Class4'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass5: TFloatField
      DisplayWidth = 10
      FieldName = 'Class5'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass6: TFloatField
      DisplayWidth = 10
      FieldName = 'Class6'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass7: TFloatField
      DisplayWidth = 10
      FieldName = 'Class7'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass8: TFloatField
      DisplayWidth = 10
      FieldName = 'Class8'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass9: TFloatField
      DisplayWidth = 10
      FieldName = 'Class9'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass10: TFloatField
      DisplayWidth = 10
      FieldName = 'Class10'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass11: TFloatField
      DisplayWidth = 10
      FieldName = 'Class11'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass12: TFloatField
      DisplayWidth = 10
      FieldName = 'Class12'
      DisplayFormat = '##,#0.00'
    end
    object StockClassQryClass13: TFloatField
      DisplayWidth = 10
      FieldName = 'Class13'
      DisplayFormat = '##,#0.00'
    end
  end
  object StockClassQryDS: TDataSource
    DataSet = StockClassQry
    Left = 456
    Top = 248
  end
  object StockABDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '/*'
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH  '
      '      ,sum(RemAcc01T+RemAcc02T) as '#39'class0'#39
      '      ,sum(RemAcc03T) as '#39'class1'#39
      '      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as '#39'class2'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'D%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      '*/'
      ''
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'A'#39' as LB  '
      
        '      ,sum(RemAcc01T+RemAcc02T+RemAcc03T+RemAcc04T+RemAcc05T+Rem' +
        'Acc06T) as '#39'classABD'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH  in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      'union all'
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'B'#39' as LB   '
      '      ,sum(RemAcc01T+RemAcc02T+RemAcc03T) as '#39'classABD'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH not in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      'union all'
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'D'#39' as LB   '
      '      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as '#39'classABD'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH not in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH')
    Left = 492
    Top = 275
    object StockABDQryKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StockABDQryKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StockABDQryLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
    object StockABDQryclassABD: TFloatField
      FieldName = 'classABD'
      DisplayFormat = '##,#0.00'
    end
  end
  object StockABDDS: TDataSource
    DataSet = StockABDQry
    Left = 492
    Top = 249
  end
end
