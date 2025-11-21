object PercenReport: TPercenReport
  Left = 274
  Top = 218
  Width = 1536
  Height = 921
  Caption = 'Percen Report'
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
    Width = 1520
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 23
      Top = 11
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 184
      Top = 13
      Width = 102
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 286
      Top = 49
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
    end
    object Label7: TLabel
      Left = 584
      Top = 48
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSYWJC:'
    end
    object Label8: TLabel
      Left = 483
      Top = 11
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'FKBH:'
    end
    object Label1: TLabel
      Left = 0
      Top = 48
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 159
      Top = 48
      Width = 30
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 449
      Top = 47
      Width = 56
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSBH:'
    end
    object Label9: TLabel
      Left = 684
      Top = 11
      Width = 47
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
    end
    object Label10: TLabel
      Left = 884
      Top = 11
      Width = 47
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Upper:'
    end
    object Edit2: TEdit
      Left = 288
      Top = 9
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 75
      Top = 9
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 897
      Top = 37
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 387
      Top = 9
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 988
      Top = 37
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 354
      Top = 45
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 649
      Top = 42
      Width = 126
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 560
      Top = 8
      Width = 113
      Height = 24
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 62
      Top = 45
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 190
      Top = 46
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 507
      Top = 44
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object Edit8: TEdit
      Left = 735
      Top = 9
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object ComboBox1: TComboBox
      Left = 936
      Top = 8
      Width = 145
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 12
      Items.Strings = (
        ''
        'Leather'
        'Textile'
        'Pu')
    end
    object CheckBox2: TCheckBox
      Left = 789
      Top = 48
      Width = 49
      Height = 17
      Caption = 'VN'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 13
    end
    object CheckBox1: TCheckBox
      Left = 845
      Top = 48
      Width = 49
      Height = 17
      Caption = 'TW'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 14
    end
    object Button3: TButton
      Left = 1076
      Top = 37
      Width = 89
      Height = 33
      Caption = 'EXCEL %'
      TabOrder = 15
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1520
    Height = 336
    Align = alTop
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16761281
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cgno'
        Footers = <>
        Title.Caption = 'CGNO'
      end
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DJLX'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'DJNO'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.FieldName = 'USPrice'
        Footer.ValueType = fvtAvg
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'USQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footer.ValueType = fvtAvg
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footer.ValueType = fvtAvg
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'VNQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DJDATE'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 280
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 280
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 60
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 417
    Width = 1520
    Height = 465
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16761281
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'TotalUSPrice'
        Footers = <>
        Title.Caption = 'Total|USPrice'
        Width = 101
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'TotalVNPrice'
        Footers = <>
        Title.Caption = 'Total|VNPrice'
        Width = 108
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'TotalQty'
        Footers = <>
        Title.Caption = 'Total|Qty'
        Width = 68
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'UpperUSPrice'
        Footers = <>
        Title.Caption = 'Upper|USPrice'
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'UpperVNPrice'
        Footers = <>
        Title.Caption = 'Upper|VNPrice'
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'UpperQty'
        Footers = <>
        Title.Caption = 'Upper|Qty'
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'DetailVNPrice'
        Footers = <>
        Title.Caption = 'Detail|VNPrice'
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'DetailUSPrice'
        Footers = <>
        Title.Caption = 'Detail|USPrice'
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'DetailQty'
        Footers = <>
        Title.Caption = 'Detail|Qty'
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'USPercentage_Upper_vs_Total'
        Footers = <>
        Title.Caption = '%(Upper/Total)|USPrice'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'VNPercentage_Upper_vs_Total'
        Footers = <>
        Title.Caption = '%(Upper/Total)|VNPrice'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'QtyPercentage_Upper_vs_Total'
        Footers = <>
        Title.Caption = '%(Upper/Total)|Qty'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'USPercentage_Detail_vs_Upper'
        Footers = <>
        Title.Caption = '%(Detail/Upper)|USPrice'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'VNPercentage_Detail_vs_Upper'
        Footers = <>
        Title.Caption = '%(Detail/Upper)|VNPrice'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'QtyPercentage_Detail_vs_Upper'
        Footers = <>
        Title.Caption = '%(Detail/Upper)|Qty'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'USPercentage_Detail_vs_Total'
        Footers = <>
        Title.Caption = '%(Detail/Total)|USPrice'
        Width = 80
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'VNPercentage_Detail_vs_Total'
        Footers = <>
        Title.Caption = '%(Detail/Total)|VNPrice'
      end
      item
        DisplayFormat = '#,##0.00 '#39'%'#39
        EditButtons = <>
        FieldName = 'QtyPercentage_Detail_vs_Total'
        Footers = <>
        Title.Caption = '%(Detail/Total)|Qty'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select cgzl.cgno,CWFK.GSBH, CWYF.*,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.ZW' +
        'PM,CLZL.DWBH'
      'from CWYF left join ZSZL on CWYF.ZSBH=ZSZL .ZSDH'
      'left join CWFK on CWFK.FKBH=CWYF.FKBH'
      'left join CLZL on CLZL.CLDH=CWYF.CLBH'
      'left join KCRK on KCRK.rkno=CWYF.djno'
      'left join CGZL on CGZL.CGNO=KCRK.ZSNO'
      'where CWYF.FKBH='#39'2015030210'#39)
    Left = 176
    Top = 176
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1DJNO: TStringField
      FieldName = 'DJNO'
      FixedChar = True
      Size = 15
    end
    object Query1DJLX: TStringField
      FieldName = 'DJLX'
      FixedChar = True
      Size = 2
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1DJDATE: TDateTimeField
      FieldName = 'DJDATE'
      DisplayFormat = 'yyyy/MM/dd'
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
    object Query1USQty: TCurrencyField
      FieldName = 'USQty'
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
    object Query1VNQty: TCurrencyField
      FieldName = 'VNQty'
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 176
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select cgzl.cgno,CWFK.GSBH, CWYF.*,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.ZW' +
        'PM,CLZL.DWBH'
      'from CWYF left join ZSZL on CWYF.ZSBH=ZSZL .ZSDH'
      'left join CWFK on CWFK.FKBH=CWYF.FKBH'
      'left join CLZL on CLZL.CLDH=CWYF.CLBH'
      'left join KCRK on KCRK.rkno=CWYF.djno'
      'left join CGZL on CGZL.CGNO=KCRK.ZSNO'
      'where CWYF.FKBH='#39'2015030210'#39)
    Left = 432
    Top = 792
    object Query2TotalUSPrice: TCurrencyField
      FieldName = 'TotalUSPrice'
    end
    object Query2TotalVNPrice: TCurrencyField
      FieldName = 'TotalVNPrice'
    end
    object Query2TotalQty: TCurrencyField
      FieldName = 'TotalQty'
    end
    object Query2UpperUSPrice: TCurrencyField
      FieldName = 'UpperUSPrice'
    end
    object Query2UpperVNPrice: TCurrencyField
      FieldName = 'UpperVNPrice'
    end
    object Query2UpperQty: TCurrencyField
      FieldName = 'UpperQty'
    end
    object Query2DetailVNPrice: TCurrencyField
      FieldName = 'DetailVNPrice'
    end
    object Query2DetailUSPrice: TCurrencyField
      FieldName = 'DetailUSPrice'
    end
    object Query2DetailQty: TCurrencyField
      FieldName = 'DetailQty'
    end
    object Query2USPercentage_Upper_vs_Total: TCurrencyField
      FieldName = 'USPercentage_Upper_vs_Total'
    end
    object Query2VNPercentage_Upper_vs_Total: TCurrencyField
      FieldName = 'VNPercentage_Upper_vs_Total'
    end
    object Query2QtyPercentage_Upper_vs_Total: TCurrencyField
      FieldName = 'QtyPercentage_Upper_vs_Total'
    end
    object Query2USPercentage_Detail_vs_Upper: TCurrencyField
      FieldName = 'USPercentage_Detail_vs_Upper'
    end
    object Query2VNPercentage_Detail_vs_Upper: TCurrencyField
      FieldName = 'VNPercentage_Detail_vs_Upper'
    end
    object Query2QtyPercentage_Detail_vs_Upper: TCurrencyField
      FieldName = 'QtyPercentage_Detail_vs_Upper'
    end
    object Query2USPercentage_Detail_vs_Total: TCurrencyField
      FieldName = 'USPercentage_Detail_vs_Total'
    end
    object Query2VNPercentage_Detail_vs_Total: TCurrencyField
      FieldName = 'VNPercentage_Detail_vs_Total'
    end
    object Query2QtyPercentage_Detail_vs_Total: TCurrencyField
      FieldName = 'QtyPercentage_Detail_vs_Total'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 464
    Top = 792
  end
end
