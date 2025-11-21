object ScanInBox: TScanInBox
  Left = 213
  Top = 101
  Width = 1435
  Height = 773
  Caption = 'Scan Production InBox'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 433
    Top = 81
    Width = 8
    Height = 653
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1419
    Height = 81
    Align = alTop
    Color = 16768991
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 110
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label2: TLabel
      Left = 393
      Top = 46
      Width = 213
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCAN INBOXBARCODE:'
    end
    object Label3: TLabel
      Left = 72
      Top = 44
      Width = 46
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
    end
    object InfoLab: TLabel
      Left = 1021
      Top = 3
      Width = 3
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 120
      Top = 6
      Width = 174
      Height = 32
      CharCase = ecUpperCase
      Color = 11599871
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 482
      Top = 7
      Width = 121
      Height = 32
      CharCase = ecUpperCase
      TabOrder = 2
      Visible = False
    end
    object Edit3: TEdit
      Left = 607
      Top = 7
      Width = 409
      Height = 66
      CharCase = ecUpperCase
      Color = 10223615
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -48
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit3KeyPress
    end
    object Button2: TButton
      Left = 1020
      Top = 40
      Width = 81
      Height = 33
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 395
      Top = 7
      Width = 81
      Height = 32
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 120
      Top = 40
      Width = 175
      Height = 32
      CharCase = ecUpperCase
      Color = 11599871
      TabOrder = 5
      OnDblClick = Edit5DblClick
      OnKeyPress = Edit5KeyPress
    end
    object Button1: TButton
      Left = 298
      Top = 41
      Width = 95
      Height = 32
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object CheckBox: TCheckBox
      Left = 48
      Top = 48
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object Button4: TButton
      Left = 298
      Top = 7
      Width = 95
      Height = 32
      Caption = 'DepName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button4Click
    end
  end
  object DTP1: TDateTimePicker
    Left = 480
    Top = 160
    Width = 186
    Height = 24
    Date = 40128.337296006940000000
    Time = 40128.337296006940000000
    TabOrder = 1
    Visible = False
  end
  object Edit4: TEdit
    Left = 688
    Top = 160
    Width = 121
    Height = 24
    TabOrder = 2
    Text = '1'
    Visible = False
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 81
    Width = 433
    Height = 653
    Align = alLeft
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGridEh2CellClick
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.Value = '1'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Width = 26
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'okCTS'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'InBoxBar'
        Footers = <>
        Width = 99
      end>
  end
  object Panel2: TPanel
    Left = 1001
    Top = 81
    Width = 418
    Height = 653
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 4
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 416
      Height = 651
      Align = alClient
      Color = 14548991
      DataSource = DS3
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnGetCellParams = DBGridEh2GetCellParams
    end
  end
  object DBGridEh4: TDBGridEh
    Left = 441
    Top = 81
    Width = 560
    Height = 653
    Align = alClient
    Color = 14548991
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'GX'
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'OrderNO'
        Title.TitleButton = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Title.TitleButton = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'TotQty'
        Footers = <
          item
            FieldName = 'TotQty'
            ValueType = fvtSum
          end>
        Width = 53
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
        Title.TitleButton = True
        Width = 131
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 744
    Top = 24
  end
  object RYQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select SMDDSS.DDBH,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.Qty,SMDDSS.CTS' +
        ',SMDDSS.okCTS,YWCPLH.InBoxBar,BDepartment.ID,BDepartment.DepName'
      'from SMDDSS '
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      'left join BDepartment on BDepartment.ID=SMDD.DepNO '
      'left join DDZL on DDZL.DDBH=SMDD.YSBH '
      
        'left join YWCPLH on YWCPLH.XieXing=DDZL.XieXIng and YWCPLH.SheHa' +
        'o=DDZL.SheHao and YWCPLH.XXCC=SMDDSS.XXCC and YWCPLH.GBBH='#39'NORMA' +
        'L'#39' '
      'where SMDDSS.DDBH like '#39'Y1801-0963%'#39
      'and SMDD.GSBH='#39'VA12'#39
      'and SMDDSS.GXLB ='#39'A'#39
      'and okCTS<CTS '
      'order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH')
    UpdateObject = UpdRY
    Left = 136
    Top = 216
    object RYQryDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDSS.DDBH'
      FixedChar = True
      Size = 15
    end
    object RYQryGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.SMDDSS.GXLB'
      FixedChar = True
      Size = 1
    end
    object RYQryXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object RYQryQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDSS.Qty'
    end
    object RYQryCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'DB.SMDDSS.CTS'
    end
    object RYQryokCTS: TIntegerField
      FieldName = 'okCTS'
      Origin = 'DB.SMDDSS.okCTS'
    end
    object RYQryInBoxBar: TStringField
      FieldName = 'InBoxBar'
      FixedChar = True
      Size = 50
    end
    object RYQryID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object RYQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = RYQry
    Left = 136
    Top = 250
  end
  object SMZL: TQuery
    CachedUpdates = True
    OnCalcFields = SMZLCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select SMZL.*,BDepartment.DepName,SMDDSS.DDBH,SMDDSS.GXLB,SMDDSS' +
        '.XXCC,SMDDSS.XH,SMDDSS.Qty,SMZL.CTS as oldCTS'
      'from SMZL '
      'left join BDepartment on BDepartment.ID=SMZL.DepNo '
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      'where SMZL.DepNO='#39#39
      'order by SMDDSS.GXLB,SMDDSS.DDBH,SMZL.CodeBar'
      '')
    UpdateObject = UpSMZL
    Left = 496
    Top = 216
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
      DisplayFormat = 'yyyy/MM/dd HH:MM'
    end
    object SMZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SMZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMZLGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMZLXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZLXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMZLoldCTS: TIntegerField
      FieldName = 'oldCTS'
    end
    object SMZLTotQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotQty'
      Calculated = True
    end
  end
  object DepNo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'where ProYN=1'
      'order by ID')
    Left = 240
    Top = 8
    object DepNoID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object DepNoGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BDepartment.GSBH'
      FixedChar = True
      Size = 4
    end
    object DepNoDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object DepNoDepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object DepNoGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.BDepartment.GXLB'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = SMZL
    Left = 496
    Top = 248
  end
  object UpSMZL: TUpdateSQL
    Left = 496
    Top = 280
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 568
    Top = 281
  end
  object SMDDSS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SMDDSS.DDBH,SMDD.YSBH,SMDDSS.GXLB,SMDDSS.XXCC,smdd.ysbh'
      
        '         ,SMDDSS.XH,SMDDSS.CODEBAR,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.' +
        'okCTS,SCGXDY.DepGXLB'
      'from SMDDSS'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B'
      'left join SCGXDY on SCGXDY.GXLB=SMDDSS.GXLB'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH'
      
        'left join YWCPLH on YWCPLH.XieXing=DDZL.XieXIng and YWCPLH.SheHa' +
        'o=DDZL.SheHao and YWCPLH.XXCC=SMDDSS.XXCC'
      'where  SMDDSS.DDBH=:DDBH'
      'and  SMDDSS.GXLB='#39'A'#39
      'and YWCPLH.InBoxBar=:InBoxBar'
      'and YWCPLH.GBBH=:GBBH'
      'and SMDD.YSBH is not null')
    Left = 560
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'InBoxBar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GBBH'
        ParamType = ptUnknown
      end>
    object SMDDSSYSBH: TStringField
      FieldName = 'YSBH'
      Origin = 'DB.SMDD.YSBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDSS.DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSSGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.SMDDSS.GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDSSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object SMDDSSXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.SMDDSS.XH'
      FixedChar = True
      Size = 1
    end
    object SMDDSSCODEBAR: TStringField
      FieldName = 'CODEBAR'
      Origin = 'DB.SMDDSS.CODEBAR'
      FixedChar = True
    end
    object SMDDSSQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDSS.Qty'
    end
    object SMDDSSCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'DB.SMDDSS.CTS'
    end
    object SMDDSSokCTS: TIntegerField
      FieldName = 'okCTS'
      Origin = 'DB.SMDDSS.okCTS'
    end
    object SMDDSSDepGXLB: TStringField
      FieldName = 'DepGXLB'
      FixedChar = True
      Size = 2
    end
  end
  object SMDDSS2: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select DDBH,GXLB,XXCC,sum(CTS*Qty)-sum(okCTS*Qty) as LackQty,sum' +
        '(okcts*qty) as OKqty'
      'from SMDDSS'
      'where DDBH=:DDBH'
      '         and GXLB=:GXLB'
      '         and XXCC=:XXCC'
      'group by DDBH,GXLB,XXCC')
    Left = 568
    Top = 248
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'GXLB'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftFixedChar
        Name = 'XXCC'
        ParamType = ptUnknown
        Size = 7
      end>
    object SMDDSS2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSS2GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDSS2XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMDDSS2LackQty: TIntegerField
      FieldName = 'LackQty'
    end
    object SMDDSS2okqty: TIntegerField
      FieldName = 'okqty'
    end
  end
  object UpdRY: TUpdateSQL
    Left = 136
    Top = 280
  end
  object DS2: TDataSource
    DataSet = SMDDSS
    Left = 608
    Top = 216
  end
  object Qtemp2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 1144
    Top = 272
  end
  object DS3: TDataSource
    DataSet = Qtemp2
    Left = 1200
    Top = 273
  end
end
