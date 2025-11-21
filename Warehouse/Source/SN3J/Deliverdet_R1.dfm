object Deliverdet_R: TDeliverdet_R
  Left = 330
  Top = 258
  Width = 1380
  Height = 624
  Caption = 'Deliverdet_R'
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
      Caption = 'GSBH:'
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
      Items.Strings = (
        'ALL')
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
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 1364
    Height = 448
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = dbgrdh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#32232#34399'|CLDH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <
          item
            FieldName = 'YWPM'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 345
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301'|DWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'GSBH|GSBH'
        Width = 83
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'GSBH_R'
        Footers = <>
        Title.Caption = #21508#24288#25552#20379#38656#27714#37327'|GSBH_R'
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #21508#24288#25552#20379#38656#27714#37327'|CKBH'
        Width = 93
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|QTY'
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #30070#26376#23526#38555#38936#29992'|THUC LANH'
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'L1'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #30070#26376#38928#20272#23569#38936'|TL IT HON DM'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'L2'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #30070#26376#38928#20272#22810#38936'|TL VUOT DM'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#27880'|Memo'
        Width = 132
      end>
  end
  object KCLLQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT KCLLS.CLBH,KCLL.CKBH,KCLL.GSBH,KCCLMONTH_KCLL_R.GSBH as G' +
        'SBH_R,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,SUM(KCLLS.Qty) AS LLQty,KCCL' +
        'MONTH_KCLL_R.QTY,'
      
        '    CASE  WHEN KCCLMONTH_KCLL_R.QTY > SUM(KCLLS.Qty) THEN KCCLMO' +
        'NTH_KCLL_R.QTY - SUM(KCLLS.Qty)  ELSE 0 END AS L1,'
      
        '    CASE  WHEN SUM(KCLLS.Qty) >= KCCLMONTH_KCLL_R.QTY THEN SUM(K' +
        'CLLS.Qty) - KCCLMONTH_KCLL_R.QTY ELSE 0 END AS L2'
      
        #9',KCCLMONTH_KCLL_R.Memo,KCCLMONTH_KCLL_R.USERID,KCCLMONTH_KCLL_R' +
        '.USERDATE,KCCLMONTH_KCLL_R.YN'
      'FROM KCLLS '
      'LEFT JOIN KCLL ON KCLL.LLNO = KCLLS.LLNO '
      'LEFT JOIN BDepartment ON BDepartment.ID = KCLL.DepID '
      'LEFT JOIN CLZL ON CLZL.CLDH = KCLLS.CLBH '
      'LEFT JOIN KCCK ON KCCK.CKBH = KCLL.CKBH '
      'LEFT JOIN KCCLMONTH_KCLL_R ON KCCLMONTH_KCLL_R.CLBH = KCLLS.CLBH'
      'WHERE KCLLS.CLBH LIKE '#39'W206000006%'#39
      '    AND KCLLS.Qty <> 0'
      '    AND BDepartment.DepName LIKE '#39'%%'#39
      '    AND ISNULL(flowflag, '#39#39') <> '#39'X'#39
      '    AND KCLL.CKBH = '#39'VTXW'#39
      '    AND KCCK.GSBH = '#39'VTX'#39
      '    AND KCLLS.SCBH LIKE '#39'%'#39
      
        '    AND CONVERT(SMALLDATETIME, CONVERT(VARCHAR, KCLL.CFMDate, 11' +
        '1)) BETWEEN '#39'2025/05/01'#39' AND '#39'2025/05/29'#39
      
        'GROUP BY  KCLLS.CLBH,KCLL.CKBH,KCLL.GSBH,CLZL.YWPM,CLZL.ZWPM,CLZ' +
        'L.DWBH,KCCLMONTH_KCLL_R.QTY,KCCLMONTH_KCLL_R.Memo'
      
        ',KCCLMONTH_KCLL_R.USERID,KCCLMONTH_KCLL_R.USERDATE,KCCLMONTH_KCL' +
        'L_R.YN,KCCLMONTH_KCLL_R.GSBH')
    UpdateObject = UpMas
    Left = 560
    Top = 232
    object KCLLQueryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object KCLLQueryLLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLQueryQTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object KCLLQueryL1: TCurrencyField
      FieldName = 'L1'
      DisplayFormat = '##,#0.00'
    end
    object KCLLQueryL2: TCurrencyField
      FieldName = 'L2'
      DisplayFormat = '##,#0.00'
    end
    object KCLLQueryMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 200
    end
    object KCLLQueryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object KCLLQueryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object KCLLQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object KCLLQueryGSBH_R: TStringField
      FieldName = 'GSBH_R'
      FixedChar = True
      Size = 10
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
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCCLMONTH_KCLL_R'
      'set'
      '  CKBH =:CKBH,'
      '  QTY =:QTY,'
      '  Memo =:Memo,'
      '  USERDATE =:USERDATE,'
      '  USERID =:USERID,'
      '  YN =:YN'
      'where'
      '  CLBH = :OLD_CLBH'
      '  and GSBH = :OLD_GSBH')
    InsertSQL.Strings = (
      'insert into KCCLMONTH_KCLL_R'
      '  (CLBH,GSBH,CKBH,QTY,Memo,USERDATE,USERID,YN)'
      'values'
      '  (:CLBH, :GSBH, :CKBH, :QTY, :Memo, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from KCCLMONTH_KCLL_R'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  CKBH = :OLD_CKBH')
    Left = 564
    Top = 302
  end
  object PopupMenu1: TPopupMenu
    Left = 648
    Top = 232
    object Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = Modify2Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cance1: TMenuItem
      Caption = 'Cance'
      OnClick = Cance1Click
    end
  end
end
