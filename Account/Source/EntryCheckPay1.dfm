object EntryCheckPay: TEntryCheckPay
  Left = 270
  Top = 282
  Width = 1077
  Height = 480
  Caption = 'EntryCheckPay'
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
    Width = 1069
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
      Left = 16
      Top = 20
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 184
      Top = 22
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 297
      Top = 54
      Width = 41
      Height = 16
      Caption = 'RKNO:'
    end
    object Label7: TLabel
      Left = 585
      Top = 52
      Width = 58
      Height = 16
      Caption = 'ZSYWJC:'
    end
    object Label8: TLabel
      Left = 452
      Top = 22
      Width = 38
      Height = 16
      Caption = 'FKBH:'
    end
    object Label1: TLabel
      Left = 23
      Top = 54
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 163
      Top = 56
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 452
      Top = 52
      Width = 39
      Height = 16
      Caption = 'ZSBH:'
    end
    object Edit2: TEdit
      Left = 248
      Top = 18
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 62
      Top = 18
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 649
      Top = 10
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 352
      Top = 18
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 776
      Top = 9
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 345
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 650
      Top = 48
      Width = 126
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 496
      Top = 17
      Width = 113
      Height = 24
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 62
      Top = 51
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 190
      Top = 52
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 496
      Top = 47
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1069
    Height = 368
    Align = alClient
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
        Width = 45
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
end
