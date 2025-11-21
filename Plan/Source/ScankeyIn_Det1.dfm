object ScankeyIn_Det: TScankeyIn_Det
  Left = 333
  Top = 275
  Width = 688
  Height = 392
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 48
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 50
      Height = 20
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 24
      Width = 61
      Height = 16
      Caption = 'DepName:'
    end
    object Label3: TLabel
      Left = 360
      Top = 24
      Width = 21
      Height = 16
      Caption = 'GX:'
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 105
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 472
      Top = 8
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 240
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CBX3: TComboBox
      Left = 384
      Top = 16
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'All'
      Items.Strings = (
        'All')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 48
    Width = 672
    Height = 306
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        Width = 40
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
        Footers = <>
        ReadOnly = True
        Width = 41
      end>
  end
  object SMDDSS: TQuery
    CachedUpdates = True
    OnCalcFields = SMDDSSCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select SMDDSS.* ,SMDD.Article,SMDD.XieMing'
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
    Top = 88
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
  end
  object DS1: TDataSource
    DataSet = SMDDSS
    Left = 224
    Top = 88
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
    Top = 88
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 112
    Top = 88
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
    Top = 144
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
