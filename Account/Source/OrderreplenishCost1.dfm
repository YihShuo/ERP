object OrderreplenishCost: TOrderreplenishCost
  Left = 368
  Top = 172
  Width = 843
  Height = 500
  Caption = 'OrderreplenishCost'
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
    Width = 827
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
      Left = 8
      Top = 24
      Width = 40
      Height = 16
      Caption = 'SCBH:'
    end
    object Label2: TLabel
      Left = 176
      Top = 24
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 328
      Top = 24
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 176
      Top = 64
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
    end
    object Label5: TLabel
      Left = 328
      Top = 64
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label6: TLabel
      Left = 528
      Top = 24
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label7: TLabel
      Left = 8
      Top = 64
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Button1: TButton
      Left = 688
      Top = 56
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 6
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 248
      Top = 56
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
    end
    object CBX3: TComboBox
      Left = 376
      Top = 56
      Width = 57
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 5
      Text = '1'
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
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 224
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 392
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object CBX1: TComboBox
      Left = 600
      Top = 16
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Button2: TButton
      Left = 688
      Top = 8
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 448
      Top = 48
      Width = 209
      Height = 38
      TabOrder = 8
      object CheckBox1: TCheckBox
        Left = 16
        Top = 16
        Width = 89
        Height = 17
        Caption = 'Replenish'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 104
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Expendable'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object Edit4: TEdit
      Left = 56
      Top = 56
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
      OnKeyPress = Edit4KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 827
    Height = 364
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 137
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select KCLL.LLNO,KCLL.USERDATE,KCLL.CFMDate,Bdepartment.DepName,' +
        'KCLL.SCBH AS ZLBH , '
      
        '    KCLLS.CLBH,KCLLS.SCBH,KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZL' +
        '.DWBH,KCLLS.CLSL,DDZL.Pairs,SCBLYY.YWSM'
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.[ID]=KCLL.DepID'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH'
      'left join DDZL on DDZL.ZLBH=ZLZL.ZLBH'
      
        'left join XXZl on XXZl.XieXing=DDZl.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'where convert(smalldatetime,convert(varchar,KCLL.USERDate,111)) ' +
        'between '#39'2008/01/01'#39
      ' and '#39'2008/01/31'#39
      ' and KCLLS.Qty<>0'
      ' and KCLLS.CLBH like '#39'%'#39
      'and KCLL.SCBH='#39'ZZZZZZZZZZ'#39
      'order by Bdepartment.DepName,KCLLS.CLBH,KCLLS.SCBH,KCLL.CFMDate')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
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
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
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
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1VNACC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 160
  end
end
