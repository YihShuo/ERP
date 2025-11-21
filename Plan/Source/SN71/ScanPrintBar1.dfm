object ScanPrintBar: TScanPrintBar
  Left = 280
  Top = 172
  Width = 1045
  Height = 480
  Caption = 'ScanPrintBar'
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
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 794
    Top = 73
    Width = 5
    Height = 368
    Align = alRight
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1029
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
      Left = 128
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
    object Label7: TLabel
      Left = 0
      Top = 41
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 13
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = ' Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 472
      Top = 41
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GX:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 400
      Top = 13
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
    object Label5: TLabel
      Left = 120
      Top = 41
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'A/W Pairs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 320
      Top = 41
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C/S Pairs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 787
      Top = 17
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 608
      Top = 13
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PlanDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 323
      Top = 17
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 211
      Top = 10
      Width = 105
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
      Left = 585
      Top = 35
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
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 53
      Top = 10
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 54
      Top = 37
      Width = 65
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
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
    object CBX3: TComboBox
      Left = 516
      Top = 37
      Width = 57
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object Edit2: TEdit
      Left = 516
      Top = 10
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 211
      Top = 37
      Width = 105
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '1'
    end
    object Edit4: TEdit
      Left = 388
      Top = 37
      Width = 53
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '6'
    end
    object CB4: TCheckBox
      Left = 608
      Top = 13
      Width = 17
      Height = 17
      TabOrder = 8
    end
    object DTP1: TDateTimePicker
      Left = 691
      Top = 10
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DTP2: TDateTimePicker
      Left = 805
      Top = 10
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object CB5: TCheckBox
      Left = 677
      Top = 41
      Width = 116
      Height = 17
      Caption = 'No Barcode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object CK_A4: TCheckBox
      Left = 773
      Top = 41
      Width = 97
      Height = 17
      Caption = 'A4 Print'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 12
    end
    object Edit5: TEdit
      Left = 339
      Top = 10
      Width = 105
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 794
    Height = 368
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 133
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
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 27
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'USERdate_1'
        Footers = <>
        Title.Caption = 'USERdate'
        Width = 120
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 799
    Top = 73
    Width = 230
    Height = 368
    Align = alRight
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    OnKeyPress = DBGridEh2KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <
          item
            FieldName = 'XXCC'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Width = 22
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 28
      end
      item
        Color = 8454143
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        Width = 48
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'TotQty'
        Footers = <
          item
            FieldName = 'TotQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Width = 87
      end>
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
    Left = 440
    Top = 280
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
  object DS1: TDataSource
    DataSet = SMDD
    Left = 392
    Top = 280
  end
  object SMDDSS: TQuery
    AfterOpen = SMDDSSAfterOpen
    OnCalcFields = SMDDSSCalcFields
    OnNewRecord = SMDDSSNewRecord
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
    Left = 712
    Top = 208
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
    Left = 744
    Top = 208
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 432
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 176
    Top = 192
    object N1: TMenuItem
      Caption = 'Send BarCode'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Print BarCode'
      OnClick = N2Click
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
    Left = 472
    Top = 280
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
    Left = 680
    Top = 208
  end
  object PopupMenu2: TPopupMenu
    Left = 736
    Top = 296
    object B1: TMenuItem
      Caption = 'Modify'
      OnClick = B1Click
    end
    object B2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = B2Click
    end
    object B3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = B3Click
    end
  end
  object ProBARPrint: TTable
    TableName = 'BARPrint.dbf'
    Left = 208
    Top = 192
    object ProBARPrintDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object ProBARPrintGXLB: TStringField
      FieldName = 'GXLB'
      Size = 1
    end
    object ProBARPrintGXMC: TStringField
      FieldName = 'GXMC'
      Size = 10
    end
    object ProBARPrintXXCC: TStringField
      FieldName = 'XXCC'
      Size = 6
    end
    object ProBARPrintXH: TStringField
      FieldName = 'XH'
      Size = 1
    end
    object ProBARPrintCODEBAR: TStringField
      FieldName = 'CODEBAR'
    end
    object ProBARPrintQTY: TSmallintField
      FieldName = 'QTY'
      DisplayFormat = '##,#0'
    end
    object ProBARPrintCTS: TSmallintField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
  end
end
