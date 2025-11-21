object AdjustDeliver: TAdjustDeliver
  Left = 358
  Top = 199
  Width = 1363
  Height = 509
  Caption = 'AdjustDeliver'
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
    Width = 1347
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
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        ReadOnly = True
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
        ReadOnly = True
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
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        Color = 12910591
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
        Color = 12910591
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 97
      end
      item
        Color = 12910591
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        Color = 12910591
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 76
      end
      item
        Color = 12910591
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        PickList.Strings = (
          '1'
          '5')
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 39
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
        Width = 53
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
        Width = 51
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1347
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 28
      Width = 22
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 264
      Top = 28
      Width = 99
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
    end
    object Button1: TButton
      Left = 512
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Modify'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 688
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 5
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
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 368
      Top = 24
      Width = 137
      Height = 24
      TabOrder = 2
    end
    object CKSotcOK: TCheckBox
      Left = 768
      Top = 24
      Width = 169
      Height = 17
      Caption = 'Check'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 1347
    Height = 213
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16761281
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
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
        Width = 102
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
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 54
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
        Width = 30
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 52
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
        FieldName = 'ACCUS'
        Footers = <
          item
            FieldName = 'ACCUS'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <
          item
            FieldName = 'CWHL'
            ValueType = fvtAvg
          end>
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
        FieldName = 'ACCVN'
        Footers = <
          item
            FieldName = 'ACCVN'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 49
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        PickList.Strings = (
          'NK'
          'KD'
          'HD'
          'XT'
          'GC'
          'NK1'
          'TC1'
          'KD1'
          'HD1'
          'H11')
        Width = 43
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Width = 62
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'LLMemo'
        Footers = <>
        Width = 75
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'CNO1'
        Footers = <>
        Width = 62
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
    object DelMasYN_Date: TDateTimeField
      FieldName = 'YN_Date'
      Origin = 'DB.KCLL.YN_Date'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLL'
      'set'
      '  SCBH = :SCBH,'
      '  USERID=:USERID,'
      '  USERDATE=:USERDATE,'
      '  CFMDate = :CFMDate,'
      '  CFMID = :CFMID,'
      '  YN = :YN,'
      '  YN_Date = :YN_Date'
      'where'
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      'insert into KCLL'
      '  (SCBH, CFMDate, CFMID, YN)'
      'values'
      '  (:SCBH, :CFMDate, :CFMID, :YN)')
    DeleteSQL.Strings = (
      'delete from KCLL'
      'where'
      '  LLNO = :OLD_LLNO')
    Left = 324
    Top = 159
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
      'select KCLLS.*,CLZL.YWPM,CLZL.dwbh,KCZLS.CWBH'
      'from KCLLS inner join kcll on kclls.llno=kcll.llno'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      
        'left join kczls on kczls.ckbh=kcll.ckbh and kczls.clbh=kclls.clb' +
        'h'
      'where KCLLS.LLNO=:LLNO'
      'order by KCLLS.DFL,KCLLS.SCBH,KCLLS.CLBH'
      '')
    UpdateObject = UPDet
    Left = 468
    Top = 136
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
      DisplayFormat = '#,##0.00'
    end
    object DelDetUSPrice: TCurrencyField
      DisplayWidth = 12
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object DelDetACCUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object DelDetACCVN: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object DelDetCostID: TStringField
      DisplayWidth = 12
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
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
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object DelDetCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object DelDetCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object DelDetLLMemo: TStringField
      FieldName = 'LLMemo'
      FixedChar = True
      Size = 200
    end
    object DelDetCNO1: TStringField
      FieldName = 'CNO1'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  Qty = :Qty,'
      '  CostID = :CostID,'
      '  HGLB = :HGLB,'
      '  CNO = :CNO,'
      '  CNO1 = :CNO1,'
      '  LLMemo =:LLMemo'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (CLBH, SCBH, Qty, CostID)'
      'values'
      '  (:CLBH, :SCBH, :Qty, :CostID)')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 468
    Top = 161
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 500
    Top = 132
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 252
    Top = 133
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 133
  end
end
