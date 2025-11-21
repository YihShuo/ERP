object PrintQR: TPrintQR
  Left = 632
  Top = 365
  Width = 1305
  Height = 675
  Caption = 'Print QR code'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 73
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 13
      Width = 73
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
      Left = 0
      Top = 45
      Width = 114
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 123
      Top = 10
      Width = 166
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 569
      Top = 11
      Width = 73
      Height = 28
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 124
      Top = 42
      Width = 165
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1059
    Height = 563
    Align = alClient
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGridEh2: TDBGridEh
    Left = 1059
    Top = 73
    Width = 230
    Height = 563
    Align = alRight
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 576
    Top = 176
    object N1: TMenuItem
      Caption = 'Send BarCode'
    end
    object N2: TMenuItem
      Caption = 'Print BarCode'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 832
    Top = 232
  end
  object DS1: TDataSource
    DataSet = SMDD
    Left = 792
    Top = 264
  end
  object SMDD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,KFZL.KFJC ,SMDDSS.' +
        'okBH,SMDDSS.USERdate'
      'from SMDD'
      'left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  '
      'left join Bdepartment on Bdepartment.ID=SMDD.DepNo '
      'left join DDZL on DDZl.ZLBH=SMDD.YSBH '
      
        'left join (select distinct DDBH as okBH,USERdate from SMDDSS ) S' +
        'MDDSS on SMDDSS.okBH=SMDD.DDBH'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'where SMDD.DDBH like '#39'%'#39
      '      and isnull(KFZL.KFJC,'#39#39') like '#39'%%'#39
      '      and SMDD.SCYEAR='#39'2009'#39
      '      and SMDD.SCMONTH='#39'09'#39
      'order by SMDD.DDBH,SMDD.SCCX '
      '')
    Left = 832
    Top = 264
    object SMDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object SMDDYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMDDKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SMDDGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SMDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SMDDQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SMDDSCCX: TStringField
      FieldName = 'SCCX'
      FixedChar = True
      Size = 1
    end
    object SMDDSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object SMDDSCYEAR: TStringField
      FieldName = 'SCYEAR'
      FixedChar = True
      Size = 4
    end
    object SMDDSCMONTH: TStringField
      FieldName = 'SCMONTH'
      FixedChar = True
      Size = 2
    end
    object SMDDDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object SMDDUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object SMDDUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMDDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SMDDokBH: TStringField
      FieldName = 'okBH'
      FixedChar = True
      Size = 15
    end
    object SMDDUSERdate_1: TDateTimeField
      FieldName = 'USERdate_1'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object SMDDS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from SMDDS'
      'where DDBH=:DDBH'
      'and Qty<>0'
      'order by XXCC DESC')
    Left = 872
    Top = 264
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SMDDSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDS.DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDS.XXCC'
      FixedChar = True
      Size = 6
    end
    object SMDDSQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDS.Qty'
    end
    object SMDDSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SMDDS.USERDate'
    end
    object SMDDSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SMDDS.USERID'
      FixedChar = True
    end
    object SMDDSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SMDDS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpSMDDSS: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDDSS'
      'set'
      '  Qty = :Qty,'
      '  CTS = :CTS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB and'
      '  XXCC = :OLD_XXCC and'
      '  XH = :OLD_XH')
    InsertSQL.Strings = (
      'insert into SMDDSS'
      '  (Qty, CTS)'
      'values'
      '  (:Qty, :CTS)')
    DeleteSQL.Strings = (
      'delete from SMDDSS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB and'
      '  XXCC = :OLD_XXCC and'
      '  XH = :OLD_XH')
    Left = 1080
    Top = 192
  end
  object SMDDSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select SMDDSS.*,SCGXDY.MEMO'
      'from SMDDSS'
      
        'left join SCGXDY on SCGXDY.GX=SMDDSS.GXLB and len(SCGXDY.GXLB)=1' +
        ' '
      'where SMDDSS.DDBH=:DDBH'
      '         and SMDDSS.GXLB=:GXLB'
      'order by  SMDDSS.XXCC DESC,SMDDSS.XH')
    UpdateObject = UpSMDDSS
    Left = 1112
    Top = 192
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
      end>
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
    object SMDDSSMEMO: TStringField
      FieldName = 'MEMO'
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
    end
    object SMDDSSCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'DB.SMDDSS.CTS'
    end
    object SMDDSSTotQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotQty'
      Calculated = True
    end
    object SMDDSSokCTS: TIntegerField
      FieldName = 'okCTS'
      Origin = 'DB.SMDDSS.okCTS'
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
  end
  object DS2: TDataSource
    DataSet = SMDDSS
    Left = 1144
    Top = 192
  end
  object PopupMenu2: TPopupMenu
    Left = 1136
    Top = 280
    object B1: TMenuItem
      Caption = 'Modify'
    end
    object B2: TMenuItem
      Caption = 'Save'
      Enabled = False
    end
    object B3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
    end
  end
end
