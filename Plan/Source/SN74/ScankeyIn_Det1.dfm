object ScankeyIn_Det: TScankeyIn_Det
  Left = 468
  Top = 340
  Width = 858
  Height = 446
  BorderIcons = [biSystemMenu]
  Caption = 'ScankeyIn_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 842
    Height = 121
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 302
      Top = 15
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 425
      Top = 43
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label3: TLabel
      Left = 320
      Top = 43
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GX:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 27
      Top = 15
      Width = 90
      Height = 16
      AutoSize = False
      Caption = 'Shipdate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 200
      Top = 14
      Width = 39
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 27
      Top = 44
      Width = 90
      Height = 16
      AutoSize = False
      Caption = 'PlanDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 213
      Top = 45
      Width = 8
      Height = 16
      Caption = '~'
    end
    object Label5: TLabel
      Left = 476
      Top = 15
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SIZE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 714
      Top = 11
      Width = 55
      Height = 16
      Caption = 'so lung:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 27
      Top = 76
      Width = 90
      Height = 16
      AutoSize = False
      Caption = 'UserDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 213
      Top = 77
      Width = 8
      Height = 16
      Caption = '~'
    end
    object Edit1: TEdit
      Left = 366
      Top = 11
      Width = 105
      Height = 29
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 680
      Top = 37
      Width = 69
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 528
      Top = 40
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CBX3: TComboBox
      Left = 365
      Top = 40
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 3
      Items.Strings = (
        '')
    end
    object CBX1: TComboBox
      Left = 122
      Top = 10
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
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
        '2020')
    end
    object CBX2: TComboBox
      Left = 242
      Top = 11
      Width = 65
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object DTP1: TDateTimePicker
      Left = 120
      Top = 41
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 227
      Top = 40
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 7
    end
    object CB5: TCheckBox
      Left = 596
      Top = 14
      Width = 116
      Height = 17
      Caption = 'Not ok'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object Button2: TButton
      Left = 771
      Top = 39
      Width = 73
      Height = 33
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 529
      Top = 11
      Width = 64
      Height = 29
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object SpinEdit1: TSpinEdit
      Left = 773
      Top = 9
      Width = 73
      Height = 26
      Color = clYellow
      MaxValue = 0
      MinValue = 0
      TabOrder = 11
      Value = 0
    end
    object RB1: TCheckBox
      Left = 7
      Top = 16
      Width = 17
      Height = 17
      TabOrder = 12
    end
    object RB2: TCheckBox
      Left = 7
      Top = 42
      Width = 17
      Height = 17
      TabOrder = 13
    end
    object RB3: TCheckBox
      Left = 7
      Top = 74
      Width = 17
      Height = 17
      TabOrder = 14
    end
    object DTP3: TDateTimePicker
      Left = 120
      Top = 73
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 15
    end
    object DTP4: TDateTimePicker
      Left = 227
      Top = 72
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 16
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 121
    Width = 842
    Height = 286
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'GX'
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Width = 23
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        ReadOnly = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'TotQty'
        Footer.FieldName = 'TotQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'okCTS'
        Footers = <>
        ReadOnly = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 101
      end>
  end
  object SMDDSS: TQuery
    CachedUpdates = True
    OnCalcFields = SMDDSSCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select SMDDSS.* ,SMDD.Article,SMDD.XieMing,BDepartment.DepName,S' +
        'MDD.DepNO'
      'from SMDDSS '
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      'left join BDepartment on BDepartment.ID=SMDD.DepNO '
      'where Bdepartment.DepName like '#39'%%'#39
      '      and SMDDSS.DDBH like '#39'Y0910-%'#39
      'order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH '
      '')
    UpdateObject = UpdateSQL1
    Left = 192
    Top = 104
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
    object SMDDSSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMDDSSXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
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
      DisplayFormat = '##,#0'
    end
    object SMDDSSCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'DB.SMDDSS.CTS'
      DisplayFormat = '##,#0'
    end
    object SMDDSSokCTS: TIntegerField
      FieldName = 'okCTS'
      Origin = 'DB.SMDDSS.okCTS'
      DisplayFormat = '##,#0'
    end
    object SMDDSSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SMDDSS.USERDate'
    end
    object SMDDSSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SMDDSS.USERID'
      FixedChar = True
    end
    object SMDDSSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SMDDSS.YN'
      FixedChar = True
      Size = 1
    end
    object SMDDSSokQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object SMDDSSTotQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotQty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object SMDDSSDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDSSDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = SMDDSS
    Left = 224
    Top = 104
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDDSS'
      'set'
      '  DDBH = :DDBH,'
      '  GXLB = :GXLB,'
      '  XXCC = :XXCC,'
      '  XH = :XH,'
      '  CODEBAR = :CODEBAR,'
      '  Qty = :Qty,'
      '  CTS = :CTS,'
      '  okCTS = :okCTS,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB and'
      '  XXCC = :OLD_XXCC and'
      '  XH = :OLD_XH')
    InsertSQL.Strings = (
      'insert into SMDDSS'
      
        '  (DDBH, GXLB, XXCC, XH, CODEBAR, Qty, CTS, okCTS, USERDate, USE' +
        'RID, YN)'
      'values'
      
        '  (:DDBH, :GXLB, :XXCC, :XH, :CODEBAR, :Qty, :CTS, :okCTS, :USER' +
        'Date, :USERID, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from SMDDSS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB and'
      '  XXCC = :OLD_XXCC and'
      '  XH = :OLD_XH')
    Left = 264
    Top = 104
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 112
    Top = 112
  end
  object SMDDSSOther: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select SMDDSS.DDBH,SMDD.GXLB,sum(SMDDSS.okCTS*SMDDSS.Qty) as okQ' +
        'ty'
      'from SMDDSS'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B'
      'where SMDDSS.DDBH=:DDBH'
      '         and SMDD.SCCX=:GXLB'
      '         and SMDDSS.XXCC=:XXCC'
      'group by SMDDSS.DDBH,SMDD.GXLB '
      'order by sum(SMDDSS.okCTS*SMDDSS.Qty)  DESC')
    Left = 192
    Top = 136
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
        DataType = ftUnknown
        Name = 'XXCC'
        ParamType = ptUnknown
      end>
    object SMDDSSOtherDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDSS.DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSSOtherGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDSSOtherokQty: TIntegerField
      FieldName = 'okQty'
    end
  end
end
