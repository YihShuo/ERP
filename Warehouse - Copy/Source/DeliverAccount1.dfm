object DeliverAccount: TDeliverAccount
  Left = 283
  Top = 188
  Width = 1380
  Height = 528
  Caption = 'DeliverAccount'
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
    Width = 1364
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 21
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 181
      Top = 20
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 365
      Top = 58
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 8
      Top = 59
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBH:'
    end
    object Label6: TLabel
      Left = 5
      Top = 88
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing'
    end
    object Label7: TLabel
      Left = 475
      Top = 58
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Type:'
    end
    object Label1: TLabel
      Left = 495
      Top = 20
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Per%:'
    end
    object Button1: TButton
      Left = 830
      Top = 73
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 82
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 271
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 383
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object CBX2: TComboBox
      Left = 282
      Top = 54
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 5
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
        '2029'
        '2030')
    end
    object CBX3: TComboBox
      Left = 410
      Top = 53
      Width = 56
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object Edit4: TEdit
      Left = 82
      Top = 54
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
    object Button2: TButton
      Left = 919
      Top = 72
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 81
      Top = 84
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit5KeyPress
    end
    object ExtraCK: TCheckBox
      Left = 691
      Top = 8
      Width = 130
      Height = 14
      Caption = 'show "Gia cong"'
      TabOrder = 9
    end
    object MergeExtraCK: TCheckBox
      Left = 691
      Top = 27
      Width = 130
      Height = 17
      Caption = '"Gia cong" merge'
      TabOrder = 10
    end
    object chkOrderCancel: TCheckBox
      Left = 691
      Top = 45
      Width = 130
      Height = 17
      Caption = 'Order Cancel'
      TabOrder = 11
    end
    object BuyNoEdit: TEdit
      Left = 269
      Top = 83
      Width = 127
      Height = 24
      TabOrder = 12
    end
    object RB2: TRadioButton
      Left = 196
      Top = 88
      Width = 71
      Height = 17
      Caption = 'BuyNo:'
      TabOrder = 13
    end
    object RB1: TRadioButton
      Left = 196
      Top = 58
      Width = 78
      Height = 17
      Caption = 'ETD Year:'
      Checked = True
      TabOrder = 14
      TabStop = True
    end
    object CB1: TComboBox
      Left = 533
      Top = 53
      Width = 121
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 15
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'Normal'
        'Replenish')
    end
    object PerCombo: TComboBox
      Left = 561
      Top = 16
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 16
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        '>100%'
        '<100%'
        '<>100%'
        'None')
    end
    object RB3: TRadioButton
      Left = 424
      Top = 88
      Width = 90
      Height = 17
      Caption = 'InWare:'
      TabOrder = 17
    end
    object DateTimePicker1: TDateTimePicker
      Left = 521
      Top = 83
      Width = 97
      Height = 24
      Date = 42884.438314814810000000
      Time = 42884.438314814810000000
      TabOrder = 18
    end
    object OldCK: TCheckBox
      Left = 691
      Top = 63
      Width = 130
      Height = 17
      Caption = '<2014'
      TabOrder = 19
    end
    object VGCCB: TCheckBox
      Left = 691
      Top = 100
      Width = 130
      Height = 17
      Caption = 'Xuong VGC'
      TabOrder = 20
    end
    object cbCfm: TCheckBox
      Left = 691
      Top = 82
      Width = 130
      Height = 17
      Caption = 'Confirm'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1364
    Height = 368
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <
          item
            FieldName = 'ZLBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|ZLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #21152#24037'|Type'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 363
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #29992#37327'|CLSL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.FieldName = 'TempQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #38936#37327'|TempQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #23526#30332'|Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #27604#29575'|Person'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'SKU|Article'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #38795#21517'|XieMing'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #38617#25976'|Pairs'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CalDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #35336#31639'|CalDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'GSDH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #24288#21029'|GSDH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #20986#36008#26085'|ShipDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'BuyNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'BuyNo|BuyNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 160
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select OrdCL.*,KCLLS.TempQty,KCLLS.Qty,'#39'VGC'#39' as GSDH  '
      
        'from (select DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.C' +
        'LBH as Parent,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Ar' +
        'ticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DD' +
        'ZL.ShipDate'
      '      from ZLZLS2_YM ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing an' +
        'd SHIP_XXZLS.SheHao=DDZL.SheHao and zlzls2.BWBH=SHIP_XXZLS.BWBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '  and DDZL.BUYNO like '#39'%'#39' '
      '      and ZLZLS2.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and ZLZLS2.ZLBH like '#39'Y1801-0967%'#39
      '      and MJBH='#39'ZZZZZZZZZZ'#39
      '    and DDZL.DDZT<>'#39'C'#39
      '      and DDZl.GSBH='#39'VA12'#39
      '      and XXZL.XieMing like '#39'%%'#39
      '      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh='#39'N'#39')'
      
        '      group by DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL' +
        '.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.ShipDate ) OrdCL'
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y, sum(KCLLS.TempQty) as TempQty  '
      '           from KCLLS'
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      '           left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      '           where CLBH like '#39'%'#39
      '           and KCLLS.SCBH like '#39'Y1801-0967%'#39
      '           and KCLL.SCBH <>'#39'JJJJJJJJJJ'#39
      '           and CLZL.YWPM like '#39'%%'#39
      '           and CLZL.YWPM like '#39'%%'#39
      '           and KCLL.GSBH='#39'VGC'#39' and KCLL.CFMID<>'#39'NO'#39' '
      '       and DDZL.BUYNO like '#39'%'#39' '
      '          -- and DDZl.GSBH='#39'VA12'#39
      '           group by KCLLS.SCBH, KCLLS.CLBH) KCLLS  '
      '      on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH '
      'where 1=1 '
      'order by OrdCL.ZLBH,OrdCL.CLBH'
      '')
    Left = 296
    Top = 160
    object Query1BuyNo: TStringField
      FieldName = 'BuyNo'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1TempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
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
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1Parent: TStringField
      FieldName = 'Parent'
      FixedChar = True
      Size = 10
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object Query1CalDate: TDateTimeField
      FieldName = 'CalDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 10
    end
    object Query1GSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 264
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 297
    Top = 195
  end
end
