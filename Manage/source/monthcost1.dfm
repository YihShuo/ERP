object MonthCost: TMonthCost
  Left = 336
  Top = 149
  Width = 870
  Height = 500
  Caption = 'MonthCost'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 304
    Top = 8
    Width = 105
    Height = 13
    Caption = #26597#35426#26376#20221' Cost Month'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 105
      Height = 13
      Caption = #26597#35426#26376#20221' Cost Month'
    end
    object Label2: TLabel
      Left = 168
      Top = 8
      Width = 81
      Height = 13
      AutoSize = False
      Caption = #24288#21029' Factory'
    end
    object Label4: TLabel
      Left = 296
      Top = 8
      Width = 105
      Height = 13
      AutoSize = False
      Caption = #26597#35426#35330#21934' Order No'
    end
    object cb1: TComboBox
      Left = 16
      Top = 24
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'ALL'
    end
    object cb2: TComboBox
      Left = 168
      Top = 24
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'ALL'
      OnChange = cb2Change
      Items.Strings = (
        'ALL'
        'ERR RY'
        'A12'
        'A3'
        'B1')
    end
    object Button1: TButton
      Left = 545
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ch1: TCheckBox
      Left = 456
      Top = 8
      Width = 81
      Height = 17
      Caption = #20837#24235#23436#25104
      TabOrder = 3
    end
    object ch2: TCheckBox
      Left = 456
      Top = 32
      Width = 73
      Height = 17
      Caption = #24050#20986#36008
      TabOrder = 4
    end
    object Button2: TButton
      Left = 629
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Calculation'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 545
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 629
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Add New'
      TabOrder = 7
      OnClick = Button4Click
    end
  end
  object cb3: TComboBox
    Left = 296
    Top = 24
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'ALL'
  end
  object dbg: TDBGridEh
    Left = 0
    Top = 65
    Width = 854
    Height = 397
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterColor = clWindow
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
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'costyear'
        Footers = <>
        Title.Caption = #24180#24230'|Year'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'costmonth'
        Footers = <>
        Title.Caption = #26376#20221'|Month'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'costRYNO'
        Footers = <
          item
            Color = clScrollBar
            FieldName = 'costRYNO'
            ValueType = fvtCount
          end>
        Title.Caption = #24037#21934#34399'|RYNO'
      end
      item
        EditButtons = <>
        FieldName = 'costEC'
        Footers = <
          item
            FieldName = 'costEC'
            ValueType = fvtSum
          end>
        Title.Caption = #38928#35336#25104#26412'|costEC'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clMenuHighlight
        EditButtons = <>
        FieldName = 'costRC'
        Footers = <
          item
            Color = clHotLight
            FieldName = 'costRC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ValueType = fvtSum
          end>
        Title.Caption = #24050#38936#26009#25104#26412'|costRC'
        Width = 89
        OnEditButtonDown = DBGrid1Columns4EditButtonDown
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clGradientInactiveCaption
        EditButtons = <>
        FieldName = 'costINmonth'
        Footers = <
          item
            Color = clGradientActiveCaption
            ValueType = fvtSum
          end>
        Title.Caption = #26412#26376#38936#26009'|MonthCOST'
        Width = 100
        OnEditButtonDown = DBGrid1Columns5EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'costOrderQ'
        Footers = <>
        Title.Caption = #35330#21934#25976#37327'|Qty'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clGradientInactiveCaption
        EditButtons = <>
        FieldName = 'costCollar'
        Footers = <
          item
            Color = clGradientInactiveCaption
            FieldName = 'costCollar'
            ValueType = fvtSum
          end>
        Title.Caption = #38936#26009#37329#38989'|Collar'
        OnEditButtonDown = DBGrid1Columns7EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'costClastdate'
        Footers = <>
        Title.Caption = #38936#26009#26368#24460#35336#31639#26085'|Clastdate'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clGradientActiveCaption
        EditButtons = <>
        FieldName = 'costFeeding'
        Footers = <
          item
            Color = clRed
            FieldName = 'costFeeding'
            ValueType = fvtSum
          end>
        Title.Caption = #35036#26009#37329#38989'|Feeding'
        OnEditButtonDown = DBGrid1Columns9EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'costFlastdate'
        Footers = <>
        Title.Caption = #35036#26009#26368#24460#35336#31639#26085'|Flastdate'
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'costWip'
        Footers = <
          item
            Color = clYellow
            ValueType = fvtSum
          end>
        Title.Caption = #32218#19978#25976'|Wip'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'costStorage'
        Footers = <>
        Title.Caption = #20837#24235#25976'|Storage'
        OnEditButtonDown = dbgColumns12EditButtonDown
      end>
  end
  object qtemp: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 16
  end
  object datashow: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from monthcost where costyear='#39'2008'#39' and costmonth='#39'1'#39)
    UpdateObject = upsql
    Left = 800
    Top = 176
    object datashowcostyear: TStringField
      FieldName = 'costyear'
      Origin = 'DB.monthcost.costyear'
      FixedChar = True
      Size = 4
    end
    object datashowcostmonth: TStringField
      FieldName = 'costmonth'
      Origin = 'DB.monthcost.costmonth'
      FixedChar = True
      Size = 2
    end
    object datashowcostRYNO: TStringField
      FieldName = 'costRYNO'
      Origin = 'DB.monthcost.costRYNO'
      FixedChar = True
      Size = 15
    end
    object datashowcostEC: TFloatField
      FieldName = 'costEC'
      Origin = 'DB.monthcost.costEC'
      DisplayFormat = '##,#0.00'
    end
    object datashowcostRC: TFloatField
      FieldName = 'costRC'
      Origin = 'DB.monthcost.costOrderQ'
      DisplayFormat = '##,#0.00'
    end
    object datashowcostOrderQ: TIntegerField
      FieldName = 'costOrderQ'
      Origin = 'DB.monthcost.costCollar'
      DisplayFormat = '##,#0'
    end
    object datashowcostCollar: TFloatField
      FieldName = 'costCollar'
      Origin = 'DB.monthcost.costClastdate'
      DisplayFormat = '##,#0.00'
    end
    object datashowcostClastdate: TDateTimeField
      FieldName = 'costClastdate'
      Origin = 'DB.monthcost.costFeeding'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object datashowcostFeeding: TFloatField
      FieldName = 'costFeeding'
      Origin = 'DB.monthcost.costFlastdate'
      DisplayFormat = '##,#0.00'
    end
    object datashowcostFlastdate: TDateTimeField
      FieldName = 'costFlastdate'
      Origin = 'DB.monthcost.costWip'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object datashowcostWip: TFloatField
      FieldName = 'costWip'
      Origin = 'DB.monthcost.costStorage'
      DisplayFormat = '##,#0.00'
    end
    object datashowcostStorage: TIntegerField
      FieldName = 'costStorage'
      Origin = 'DB.monthcost.costStorage'
      DisplayFormat = '##,#0'
    end
    object datashowcostINmonth: TFloatField
      FieldName = 'costINmonth'
      Origin = 'DB.monthcost.costStorage'
      DisplayFormat = '##,#0.00'
    end
    object datashowcostNGQ: TIntegerField
      FieldName = 'costNGQ'
      Origin = 'DB.monthcost.costStorage'
    end
    object datashowcostOut: TBooleanField
      FieldName = 'costOut'
      Origin = 'DB.monthcost.costStorage'
    end
    object datashowuserid: TStringField
      FieldName = 'userid'
      Origin = 'DB.monthcost.costStorage'
      FixedChar = True
      Size = 10
    end
    object datashowlastuserdate: TDateTimeField
      FieldName = 'lastuserdate'
      Origin = 'DB.monthcost.costStorage'
    end
  end
  object DataSource1: TDataSource
    DataSet = datashow
    Left = 768
    Top = 176
  end
  object costc: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from zlzls2')
    Left = 664
    Top = 176
  end
  object costtemp: TQuery
    Left = 792
    Top = 16
  end
  object updataq: TQuery
    DatabaseName = 'dB'
    Left = 280
    Top = 120
  end
  object upsql: TUpdateSQL
    ModifySQL.Strings = (
      'update monthcost'
      'set'
      '  costRC = :costRC,'
      '  costWip = :costWip,'
      '  costStorage = :costStorage'
      'where'
      '  costyear = :OLD_costyear and'
      '  costmonth = :OLD_costmonth and'
      '  costRYNO = :OLD_costRYNO')
    InsertSQL.Strings = (
      'insert into monthcost'
      '  (costRC, costWip, costStorage)'
      'values'
      '  (:costRC, :costWip, :costStorage)')
    DeleteSQL.Strings = (
      'delete from monthcost'
      'where'
      '  costyear = :OLD_costyear and'
      '  costmonth = :OLD_costmonth and'
      '  costRYNO = :OLD_costRYNO')
    Left = 800
    Top = 208
  end
end
