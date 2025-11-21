object CBY_DeliverCon: TCBY_DeliverCon
  Left = 366
  Top = 181
  Width = 1395
  Height = 545
  Caption = 'CBY_DeliverCon'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1379
    Height = 193
    Align = alTop
    DataSource = DS3
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
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1379
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 130
      Top = 28
      Width = 19
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 272
      Top = 27
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 498
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 586
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 674
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 347
      Top = 24
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button4: TButton
      Left = 754
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 1379
    Height = 249
    Align = alClient
    DataSource = DS4
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 341
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <
          item
            FieldName = 'DWBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        ReadOnly = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        ReadOnly = True
        Width = 100
      end>
  end
  object DelMas: TQuery
    CachedUpdates = True
    OnNewRecord = DelMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCLL.*,BDepartment.DepName'
      'from KCLL'
      'left join BDepartment on KCLL.DepID=BDepartment.ID'
      'where KCLL.CFMID='#39'NO'#39
      'order by KCLL.LLNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object DelMasLLNO: TStringField
      DisplayWidth = 13
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelMasSCBH: TStringField
      DisplayWidth = 18
      FieldName = 'SCBH'
      Origin = 'DB.KCLL.SCBH'
      FixedChar = True
      Size = 15
    end
    object DelMasDepID: TStringField
      DisplayWidth = 12
      FieldName = 'DepID'
      Origin = 'DB.KCLL.DepID'
      FixedChar = True
      Size = 10
    end
    object DelMasDepName: TStringField
      DisplayWidth = 20
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object DelMasUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
      Origin = 'DB.KCLL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      Origin = 'DB.KCLL.USERID'
      FixedChar = True
      Size = 15
    end
    object DelMasCFMDate: TDateTimeField
      DisplayWidth = 13
      FieldName = 'CFMDate'
      Origin = 'DB.KCLL.CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasCFMID: TStringField
      DisplayWidth = 18
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object DelMasYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      Origin = 'DB.KCLL.YN'
      FixedChar = True
      Size = 1
    end
    object DelMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.KCLL.GSBH'
      FixedChar = True
      Size = 4
    end
    object DelMasCKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.KCLL.CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CBY_LineStock_KCLL'
      'set'
      '  CFMID = :CFMID,'
      '  YN = :YN'
      'where'
      '  LLNO = :OLD_LLNO')
    Left = 324
    Top = 160
  end
  object DS3: TDataSource
    DataSet = DelMas
    Left = 356
    Top = 132
  end
  object DelDet: TQuery
    CachedUpdates = True
    OnNewRecord = DelDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select KCLLS.*,CLZL.YWPM,CLZL.DWBH'
      'from CBY_LineStock_KCLLs KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'where KCLLS.LLNO=:LLNO'
      'order by KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetCLBH: TStringField
      DisplayWidth = 18
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DelDetYWPM: TStringField
      DisplayWidth = 87
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      DisplayWidth = 7
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetQty: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object DelDetUSPrice: TCurrencyField
      DisplayWidth = 12
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object DelDetCostID: TStringField
      DisplayWidth = 12
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object DelDetSCBH: TStringField
      DisplayWidth = 18
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DelDetDFL: TStringField
      DisplayWidth = 4
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object DelDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetTempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.0'
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object DelDetMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CBY_LineStock_KCLLs'
      'set'
      '  Qty = :Qty,'
      '  CostID = :CostID,'
      '  YN = :YN'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 468
    Top = 165
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 500
    Top = 132
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 289
    Top = 133
  end
end
