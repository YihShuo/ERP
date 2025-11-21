object DeliverTraceS: TDeliverTraceS
  Left = 194
  Top = 140
  Width = 1020
  Height = 500
  Caption = 'DeliverTraceS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
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
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 110
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 22
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 268
      Top = 22
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 408
      Top = 72
      Width = 84
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 698
      Top = 22
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object Label3: TLabel
      Left = 57
      Top = 72
      Width = 41
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 237
      Top = 72
      Width = 30
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Button1: TButton
      Left = 672
      Top = 59
      Width = 100
      Height = 41
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 363
      Top = 20
      Width = 110
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 111
      Top = 20
      Width = 149
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 481
      Top = 20
      Width = 100
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 590
      Top = 20
      Width = 99
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 502
      Top = 69
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 791
      Top = 20
      Width = 149
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Button2: TButton
      Left = 800
      Top = 59
      Width = 100
      Height = 41
      Caption = 'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 109
      Top = 69
      Width = 119
      Height = 28
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 282
      Top = 69
      Width = 120
      Height = 28
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 110
    Width = 1002
    Height = 343
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 153
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 252
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 153
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 240
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'YSYWSM'
        Footers = <>
        Width = 182
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'Days'
        Footers = <>
        Width = 79
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  max(CGZLSS.ZLBH) as ZLBH,max(CGZLSS.CGNO) as CGNO, DDZL.' +
        'KHPO,XXZL.Article,XXZl.XieMing,'
      
        'max(DDZL.DDRQ) DDRQ,max(DDZL.Shipdate) as ShipDate,Sum(CGZLSS.CL' +
        'SL) as CLSL,ZSZL.ZSYWJC,KCRKS.CLBH,CLZL.YWPM,'
      
        'CLZL.DWBH,CLZL.YSYWSM,max(CGZL.CGDate)as CGDate, max(CGZLSS.YQDa' +
        'te) as YQDate,max(CGZLSS.CFMDate) as CFMDate,KCRK.USERDate,'
      'KCRKS.Qty,sum(CGZLSS.Qty) as CGQty '
      'from KCRKS '
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      
        'left join CGZLSS on CGZLSS.ZLBH=KCRKS.CGBH and CGZLSS.CLBH=KCRKS' +
        '.CLBH '
      'left join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      'left join DDZL on DDZL.ZLBH=CGZLSS.ZLBH'
      'left join CLZL on KCRKS.CLBH=CLZL.CLDH '
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao '
      
        'where  convert(smalldatetime,convert(varchar,KCRK.USERDate,111))' +
        ' between '
      #39'2008/02/01'#39
      ' and '#39'2008/02/29'#39
      'and KCRKS.CLBH like '#39'%'#39
      'and CLZL.LYCC='#39'Y'#39
      'and CLZL.CQDH='#39'VN'#39
      
        'group by DDZL.KHPO,XXZL.Article,XXZl.XieMing,ZSZL.ZSYWJC,KCRKS.C' +
        'LBH,CLZL.YWPM,'
      'CLZL.DWBH,CLZL.YSYWSM, KCRK.USERDate,KCRKS.Qty '
      'order by KCRK.USERDate,KCRKS.CLBH,CGNO')
    Left = 424
    Top = 160
    object Query1ZLBH: TStringField
      DisplayLabel = 'Factor PO'
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CGNO: TStringField
      DisplayLabel = 'Material PO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1KHPO: TStringField
      DisplayLabel = 'Customer O/N'
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object Query1Article: TStringField
      DisplayLabel = 'Article No'
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      DisplayLabel = 'Shoe Name'
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1CGDate: TDateTimeField
      DisplayLabel = 'P.O. Placed'
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      DisplayLabel = 'CSD'
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CGQty: TCurrencyField
      DisplayLabel = 'Qty'
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      DisplayLabel = 'Material Code'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      DisplayLabel = 'Material Description'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YSYWSM: TStringField
      DisplayLabel = 'Material Color'
      FieldName = 'YSYWSM'
      FixedChar = True
      Size = 50
    end
    object Query1USERDate: TDateTimeField
      DisplayLabel = 'Received'
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Qty: TCurrencyField
      DisplayLabel = 'Receive Qty'
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1CLSL: TCurrencyField
      DisplayLabel = 'Require Q'#39'ty'
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Days: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Days'
      DisplayFormat = '##,#0'
      Calculated = True
    end
  end
end
