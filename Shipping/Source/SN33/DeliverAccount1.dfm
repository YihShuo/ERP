object DeliverAccount: TDeliverAccount
  Left = 220
  Top = 121
  Width = 1151
  Height = 500
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
    Width = 1135
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 4
      Top = 21
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 185
      Top = 20
      Width = 88
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 368
      Top = 53
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 4
      Top = 53
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBH:'
    end
    object Label6: TLabel
      Left = 4
      Top = 88
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing'
    end
    object Label7: TLabel
      Left = 472
      Top = 53
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Type:'
    end
    object Label1: TLabel
      Left = 475
      Top = 20
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Per%:'
    end
    object Button1: TButton
      Left = 889
      Top = 73
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 79
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 281
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 393
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object CBX2: TComboBox
      Left = 281
      Top = 50
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = '2006'
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
      Left = 436
      Top = 50
      Width = 57
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
      Left = 79
      Top = 50
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
    object Button2: TButton
      Left = 978
      Top = 72
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 78
      Top = 84
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit5KeyPress
    end
    object ExtraCK: TCheckBox
      Left = 722
      Top = 8
      Width = 140
      Height = 14
      Caption = 'show "Gia cong"'
      TabOrder = 9
    end
    object MergeExtraCK: TCheckBox
      Left = 722
      Top = 27
      Width = 140
      Height = 17
      Caption = '"Gia cong" merge'
      TabOrder = 10
    end
    object chkOrderCancel: TCheckBox
      Left = 722
      Top = 45
      Width = 140
      Height = 17
      Caption = 'Order Cancel'
      TabOrder = 11
    end
    object BuyNoEdit: TEdit
      Left = 281
      Top = 83
      Width = 127
      Height = 24
      TabOrder = 12
    end
    object RB2: TRadioButton
      Left = 193
      Top = 88
      Width = 81
      Height = 17
      Caption = 'BuyNo:'
      TabOrder = 13
    end
    object RB1: TRadioButton
      Left = 193
      Top = 53
      Width = 81
      Height = 17
      Caption = 'ETD Year:'
      Checked = True
      TabOrder = 14
      TabStop = True
    end
    object CB1: TComboBox
      Left = 549
      Top = 50
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
      Left = 550
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
      Left = 440
      Top = 88
      Width = 89
      Height = 17
      Caption = 'InWare:'
      TabOrder = 17
    end
    object DateTimePicker1: TDateTimePicker
      Left = 528
      Top = 83
      Width = 97
      Height = 24
      Date = 42884.438314814810000000
      Time = 42884.438314814810000000
      TabOrder = 18
    end
    object OldCK: TCheckBox
      Left = 722
      Top = 63
      Width = 140
      Height = 17
      Caption = '<2014'
      TabOrder = 19
    end
    object VGCCB: TCheckBox
      Left = 722
      Top = 100
      Width = 140
      Height = 17
      Caption = 'Xuong VGC'
      TabOrder = 20
    end
    object cbCfm: TCheckBox
      Left = 722
      Top = 82
      Width = 140
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
    Width = 1135
    Height = 340
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <
          item
            FieldName = 'ZLBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|ZLBH'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
        Title.Caption = #21152#24037'|Type'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 363
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #29992#37327'|CLSL'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footers = <>
        Title.Caption = #38936#37327'|TempQty'
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #23526#30332'|Qty'
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        Title.Caption = #27604#29575'|Person'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU|Article'
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|XieMing'
        Title.TitleButton = True
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #38617#25976'|Pairs'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CalDate'
        Footers = <>
        Title.Caption = #35336#31639'|CalDate'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'GSDH'
        Footers = <>
        Title.Caption = #24288#21029'|GSDH'
        Width = 42
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
      
        'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Ar' +
        'ticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate'
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
      
        '      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.' +
        'Article,XXZL.XieMing,DDZL.Pairs ) OrdCL'
      
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
      DisplayFormat = '##,#0.0'
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
  end
  object PopupMenu1: TPopupMenu
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
