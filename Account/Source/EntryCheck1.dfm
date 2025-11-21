object EntryCheck: TEntryCheck
  Left = 453
  Top = 252
  Width = 1654
  Height = 587
  Caption = 'EntryCheck'
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
    Width = 1638
    Height = 193
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
      Left = 178
      Top = 126
      Width = 79
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
    object Label8: TLabel
      Left = 460
      Top = 52
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label9: TLabel
      Left = 576
      Top = 52
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CostID:'
    end
    object Label10: TLabel
      Left = 24
      Top = 126
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
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
    object Label14: TLabel
      Left = 368
      Top = 126
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Invoice:'
    end
    object Label15: TLabel
      Left = 599
      Top = 126
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TOKHAI:'
    end
    object Label16: TLabel
      Left = 497
      Top = 161
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label17: TLabel
      Left = 379
      Top = 163
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Export:'
    end
    object Label18: TLabel
      Left = 720
      Top = 52
      Width = 22
      Height = 16
      Alignment = taRightJustify
      Caption = 'YN:'
    end
    object Label19: TLabel
      Left = 4
      Top = 162
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'FKBH:'
    end
    object Label20: TLabel
      Left = 210
      Top = 163
      Width = 47
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGBH:'
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
      Left = 836
      Top = 72
      Width = 94
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
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
      Left = 836
      Top = 112
      Width = 95
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
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
      Left = 192
      Top = 85
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
      Left = 835
      Top = 34
      Width = 97
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 259
      Top = 122
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 532
      Top = 84
      Width = 181
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 532
      Top = 48
      Width = 41
      Height = 24
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 648
      Top = 48
      Width = 65
      Height = 24
      TabOrder = 11
    end
    object CBX3: TComboBox
      Left = 80
      Top = 122
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 12
    end
    object CBX4: TComboBox
      Left = 296
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 13
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
      TabOrder = 14
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
    object cbInvoice: TComboBox
      Left = 447
      Top = 122
      Width = 143
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 15
    end
    object Edit8: TEdit
      Left = 653
      Top = 122
      Width = 129
      Height = 24
      TabOrder = 16
    end
    object CBX6: TComboBox
      Left = 530
      Top = 158
      Width = 301
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 17
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
        'NK1+TC1+KD1+NQ+NKNQ'
        'NK1+TC1+HD1+KD1+NQ+NKNQ'
        'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ')
    end
    object Edit9: TEdit
      Left = 422
      Top = 158
      Width = 66
      Height = 24
      TabOrder = 18
    end
    object cbYN: TComboBox
      Left = 746
      Top = 47
      Width = 49
      Height = 24
      ItemHeight = 16
      TabOrder = 19
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        '1'
        '5')
    end
    object Button4: TButton
      Left = 837
      Top = 151
      Width = 95
      Height = 33
      Caption = 'EXCEL_Tot'
      TabOrder = 20
      OnClick = Button4Click
    end
    object edtFKBH: TEdit
      Left = 81
      Top = 158
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 21
    end
    object edtCGBH: TEdit
      Left = 260
      Top = 157
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 22
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 193
    Width = 1638
    Height = 355
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
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #24288#21830'|ZSYWJC'
        Title.TitleButton = True
        Width = 85
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
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
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
        FieldName = 'CGBH'
        Footers = <>
        Title.TitleButton = True
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Title.TitleButton = True
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235'|CKBH'
        Title.TitleButton = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = #30332#31080'|INVOICE'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'invno'
        Footers = <>
        Title.Caption = #30332#31080'|invno'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
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
        FieldName = 'HQName'
        Footers = <>
        Title.Caption = #28023#38364#21517#31281'|HQName'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Title.Caption = #22577#38364#21934'|TOKHAI'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #39006#21029'|HGLB'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Export'
        Footers = <>
        Title.Caption = #39006#21029' |Export'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'RKMEMO'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DOCDATE'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CNO1'
        Footers = <>
        Width = 60
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 320
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 456
    Top = 320
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 100 KCRK.*,KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KC' +
        'ZLS.CWBH,'
      
        '       CLHG.UnitC,CLHG.RateC,CLHG.HGPM as HQName,KCPK.Declaretio' +
        'n,KCPK.Export,CWFK.FKBH'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join CLHG on CLHG.CLBH=KCRKS.CLBH and CLHG.HGBH=KCRKS.CNO'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH'
      'left join KCPK on KCPK.PKNO=KCRK.RKNO'
      
        'left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH ' +
        'AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB'
      'left join CWFK ON CWFK.FKBH=CWYF.FKBH'
      'where KCRK.RKNO=KCRKS.RKNO'
      '')
    Left = 496
    Top = 320
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
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
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
      DisplayFormat = '##,#0'
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object Query1invno: TStringField
      FieldName = 'invno'
      FixedChar = True
    end
    object Query1CNO: TStringField
      FieldName = 'CNO'
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
      DisplayFormat = '#,##0.0000'
    end
    object Query1HQName: TStringField
      FieldName = 'HQName'
      FixedChar = True
      Size = 200
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
    end
    object Query1PaQty: TFloatField
      FieldName = 'PaQty'
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query1Export: TStringField
      FieldName = 'Export'
      FixedChar = True
      Size = 5
    end
    object Query1RKMEMO: TStringField
      FieldName = 'RKMEMO'
      FixedChar = True
      Size = 200
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object Query1DOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
    end
    object Query1CNO1: TStringField
      FieldName = 'CNO1'
    end
  end
end
