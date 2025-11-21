object ReplenishAcc: TReplenishAcc
  Left = 291
  Top = 212
  Width = 870
  Height = 500
  Caption = 'ReplenishAcc'
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
    Width = 862
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #37096#38272#21517#31281#65306
    end
    object Label2: TLabel
      Left = 248
      Top = 24
      Width = 81
      Height = 16
      AutoSize = False
      Caption = #35330#21934#32232#34399#65306
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 81
      Height = 16
      AutoSize = False
      Caption = #38936#26009#26085#26399#65306
    end
    object Label4: TLabel
      Left = 232
      Top = 64
      Width = 12
      Height = 16
      Caption = #21040
    end
    object Label5: TLabel
      Left = 464
      Top = 24
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #26448#26009#32232#34399':'
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 336
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 408
      Top = 56
      Width = 65
      Height = 17
      Caption = #35036#26009
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object Button1: TButton
      Left = 504
      Top = 56
      Width = 75
      Height = 25
      Caption = #26597#35426
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTC1: TDateTimePicker
      Left = 120
      Top = 56
      Width = 97
      Height = 24
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      TabOrder = 4
    end
    object DTC2: TDateTimePicker
      Left = 264
      Top = 56
      Width = 97
      Height = 24
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      TabOrder = 5
    end
    object Button2: TButton
      Left = 600
      Top = 56
      Width = 75
      Height = 25
      Caption = 'EXCEL'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 544
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 97
    Width = 862
    Height = 369
    Align = alClient
    DataSource = DataSource1
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.TitleButton = True
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.TitleButton = True
        Width = 360
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'PerSon'
        Footers = <>
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 152
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.TitleButton = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.TitleButton = True
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footers = <>
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ACCVN'
        Footers = <>
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 69
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLL.LLNO,KCLL.CFMDate,KCLL.USERDATE,Bdepartment.DepName,'
      
        'KCLL.SCBH AS ZLBH,DDZL.Pairs,    KCLLS.CLBH,KCLLS.SCBH,XXZL.Arti' +
        'cle,XXZl.XieMing ,'
      
        'KCLLS.Qty,CLZL.YWPM,CLZL.DWBH,KCLLS.CLSL,SCBLYY.YWSM,CLBJ.USPric' +
        'e,CLBJ.VNPrice'
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.[ID]=KCLL.DepID'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH'
      'left join DDZL on DDZL.ZLBH=ZLZL.ZLBH'
      
        'left join (select CLBH,USPrice,VNPrice from CGBJS ) CLBJ on CLBJ' +
        '.CLBH=CLZL.CLDH'
      
        'left join XXZl on DDZL.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      ''
      '')
    Left = 104
    Top = 128
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
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
    object Query1PerSon: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PerSon'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1ACCUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.0000'
      Calculated = True
    end
    object Query1ACCVN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      DisplayFormat = '##,#0'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 128
  end
end
