object ProcessingListConfirm: TProcessingListConfirm
  Left = 321
  Top = 197
  Width = 1305
  Height = 675
  Caption = 'Processing List Confirmation'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 265
    Width = 1289
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clActiveCaption
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 1289
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 15
      Top = 16
      Width = 37
      Height = 24
      AutoSize = False
      Caption = 'DLNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 248
      Top = 16
      Width = 58
      Height = 24
      AutoSize = False
      Caption = 'PlanDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 417
      Top = 22
      Width = 15
      Height = 13
      Caption = 'TO'
    end
    object DTP1: TDateTimePicker
      Left = 313
      Top = 16
      Width = 96
      Height = 24
      Date = 43696.352772037040000000
      Format = 'yyyy/MM/dd'
      Time = 43696.352772037040000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 440
      Top = 16
      Width = 96
      Height = 24
      Date = 43696.352772037040000000
      Format = 'yyyy/MM/dd'
      Time = 43696.352772037040000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 59
      Top = 16
      Width = 149
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 656
      Top = 11
      Width = 75
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 736
      Top = 11
      Width = 75
      Height = 33
      Caption = 'CONFIRM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 816
      Top = 11
      Width = 75
      Height = 33
      Caption = 'CANCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 896
      Top = 11
      Width = 75
      Height = 33
      Caption = 'RESET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
    object CB1: TCheckBox
      Left = 560
      Top = 19
      Width = 89
      Height = 17
      Caption = 'Auto Scan'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object CB2: TCheckBox
      Left = 232
      Top = 20
      Width = 17
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1289
    Height = 265
    Align = alTop
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DLNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #27966#24037#21934#34399'|DLNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Caption = #37096#38272#32232#34399'|DepID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272#21517#31281'|DepName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.Caption = #27966#24037#26085#26399'|PlanDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|USERID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399'|USERDATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 77
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'|CFMID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 67
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469#26085#26399'|CFMDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 325
    Width = 1289
    Height = 311
    Align = alClient
    DataSource = DS2
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
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DLNO'
        Footers = <>
        Title.Caption = #27966#24037#21934#34399'|DLNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35330#21934#32232#34399'|ZLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'GCBWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#32232#34399'|GCBWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#33521#25991'|ywsm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#20013#25991'|zwsm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #23610#30908'|SIZE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'TmpQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38283#21934#25976#37327'|TmpQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #23526#25910#25976#37327'|Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #37096#20214#32232#34399'|BWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'bywsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #37096#20214#33521#25991'|ywsm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'bzwsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #37096#20214#20013#25991'|bywsm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 80
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 16
    Top = 408
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CutDispatch_GC.*,BDepartment.DepName '
      'from CutDispatch_GC'
      'Left join BDepartment on BDepartment.ID=CutDispatch_GC.DepID')
    UpdateObject = UpdateSQL1
    Left = 16
    Top = 112
    object Query1DLNO: TStringField
      FieldName = 'DLNO'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select CutDispatchS_GC.*,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.' +
        'zwsm,BWZL.ywsm as bywsm,BWZL.zwsm as bzwsm'
      'from CutDispatchS_GC'
      'Left join DDZL ON DDZL.DDBH = CutDispatchS_GC.ZLBH'
      
        'Left join KT_SOPCutS_GCBWD on  KT_SOPCutS_GCBWD.gcbwdh=CutDispat' +
        'chS_GC.GCBWBH'
      
        'Left join (Select BWDH,YWSM,ZWSM from bwzl union all select gcbw' +
        'dh,ywsm,zwsm from KT_SOPCutS_GCBWD ) BWZL on BWZL.BWDH=CutDispat' +
        'chS_GC.BWbH '
      'where CutDispatchS_GC.DLNO=:DLNO')
    Left = 16
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 21
      end>
    object Query2DLNO: TStringField
      FieldName = 'DLNO'
    end
    object Query2ZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object Query2GCBWBH: TStringField
      FieldName = 'GCBWBH'
    end
    object Query2SIZE: TStringField
      FieldName = 'SIZE'
    end
    object Query2BWBH: TStringField
      FieldName = 'BWBH'
    end
    object Query2TmpQty: TIntegerField
      FieldName = 'TmpQty'
    end
    object Query2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
    end
    object Query2ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object Query2zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object Query2bywsm: TStringField
      FieldName = 'bywsm'
      FixedChar = True
      Size = 40
    end
    object Query2bzwsm: TStringField
      FieldName = 'bzwsm'
      FixedChar = True
      Size = 40
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CutDispatch_GC'
      'SET'
      '  CFMID = :CFMID,'
      '  CFMDate = :CFMDate'
      'WHERE'
      '  DLNO = :OLD_DLNO')
    Left = 16
    Top = 144
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 112
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CutDispatchS_GC.*,KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.' +
        'zwsm,BWZL.ywsm as bywsm,BWZL.zwsm as bzwsm'
      'from CutDispatchS_GC'
      'Left join DDZL ON DDZL.DDBH = CutDispatchS_GC.ZLBH'
      
        'Left join KT_SOPCutS_GCBWD on  KT_SOPCutS_GCBWD.gcbwdh=CutDispat' +
        'chS_GC.GCBWBH'
      
        'Left join (Select BWDH,YWSM,ZWSM from bwzl union all select gcbw' +
        'dh,ywsm,zwsm from KT_SOPCutS_GCBWD ) BWZL on BWZL.BWDH=CutDispat' +
        'chS_GC.BWbH '
      'where CutDispatchS_GC.DLNO=:DLNO')
    Left = 48
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 21
      end>
  end
end
