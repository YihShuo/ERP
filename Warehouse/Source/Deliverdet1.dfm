object Deliverdet: TDeliverdet
  Left = 330
  Top = 182
  Width = 1380
  Height = 624
  Caption = 'Deliverdet'
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
    Height = 137
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 92
      Width = 97
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material code : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 26
      Top = 16
      Width = 72
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 221
      Top = 16
      Width = 20
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 243
      Top = 92
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 371
      Top = 15
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 26
      Top = 56
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'User:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 221
      Top = 56
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 371
      Top = 56
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBH : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 579
      Top = 16
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 112
      Top = 88
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 648
      Top = 88
      Width = 75
      Height = 33
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 648
      Top = 48
      Width = 75
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 101
      Top = 12
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 252
      Top = 11
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 326
      Top = 88
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CB1: TComboBox
      Left = 448
      Top = 11
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
    end
    object CB2: TCheckBox
      Left = 462
      Top = 83
      Width = 117
      Height = 17
      Caption = 'Replenish'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DateTimePicker1: TDateTimePicker
      Left = 101
      Top = 54
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DateTimePicker2: TDateTimePicker
      Left = 252
      Top = 54
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 15
      Width = 17
      Height = 18
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CheckBox2: TCheckBox
      Left = 11
      Top = 55
      Width = 17
      Height = 17
      TabOrder = 11
    end
    object Edit3: TEdit
      Left = 447
      Top = 54
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object HGLB: TComboBox
      Left = 656
      Top = 12
      Width = 68
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 13
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'NQ'
        'NKNQ')
    end
    object CB3: TCheckBox
      Left = 462
      Top = 106
      Width = 117
      Height = 17
      Caption = 'Not Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object chk1: TCheckBox
      Left = 563
      Top = 105
      Width = 84
      Height = 17
      Caption = 'Old Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 137
    Width = 1364
    Height = 448
    Align = alClient
    Color = clWhite
    DataSource = DS2
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
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 181
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 179
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'PMARK'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'FORM_TABLE'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'MEMO_1'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'CWSB'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'R3Qty'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Width = 45
      end>
  end
  object KCLLQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.*,KCLLS.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,BDepartment.' +
        'DepName'
      '         ,SCBLYY.YWSM,SCBLYY.ZWSM'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'where  1=2 and KCLLS.CLBH like'#39'%'#39
      
        'and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) be' +
        'tween '
      #39'2008/02/27'#39
      ' and '#39'2008/05/27'#39
      'or KCLL.CFMDATE is null)'
      'order by KCLL.LLNO,KCLLS.CLBH')
    Left = 560
    Top = 232
    object KCLLQueryLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLQuerySCBH_1: TStringField
      FieldName = 'SCBH_1'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object KCLLQueryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object KCLLQueryCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCLLQueryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLQueryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLQueryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCLLQueryDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object KCLLQueryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLQueryCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object KCLLQueryCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KCLLQueryGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object KCLLQueryYYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object KCLLQueryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object KCLLQueryZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object KCLLQuerySCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object KCLLQueryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object KCLLQueryPMARK: TIntegerField
      FieldName = 'PMARK'
    end
    object KCLLQueryFORM_TABLE: TStringField
      FieldName = 'FORM_TABLE'
      FixedChar = True
      Size = 60
    end
    object KCLLQueryLLNO_1: TStringField
      FieldName = 'LLNO_1'
      FixedChar = True
      Size = 11
    end
    object KCLLQueryTempQty: TCurrencyField
      FieldName = 'TempQty'
    end
    object KCLLQueryUSPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object KCLLQueryCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object KCLLQueryUSERDATE_1: TDateTimeField
      FieldName = 'USERDATE_1'
    end
    object KCLLQueryUSERID_1: TStringField
      FieldName = 'USERID_1'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryYN_1: TStringField
      FieldName = 'YN_1'
      FixedChar = True
      Size = 1
    end
    object KCLLQueryMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object KCLLQueryMEMO_1: TStringField
      FieldName = 'MEMO_1'
      FixedChar = True
      Size = 250
    end
    object KCLLQueryBLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object KCLLQueryCWSB: TStringField
      FieldName = 'CWSB'
      FixedChar = True
      Size = 1
    end
    object KCLLQueryR3Qty: TCurrencyField
      FieldName = 'R3Qty'
    end
    object KCLLQueryCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object KCLLQueryCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object KCLLQueryVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object KCLLQueryHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = KCLLQuery
    Left = 592
    Top = 232
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 560
    Top = 264
  end
end
