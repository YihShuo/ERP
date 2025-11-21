object ChiTietScan: TChiTietScan
  Left = 112
  Top = 203
  Width = 1194
  Height = 491
  Caption = 'ChiTietScan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 651
    Top = 109
    Width = 35
    Height = 13
    Caption = 'SMNO:'
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 136
    Width = 1178
    Height = 317
    Align = alClient
    DataSource = DataSource1
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
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SMNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
        ReadOnly = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        ReadOnly = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
        ReadOnly = True
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'totQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1178
    Height = 136
    Align = alTop
    Color = clWindow
    TabOrder = 1
    Visible = False
    object Label6: TLabel
      Left = 28
      Top = 17
      Width = 96
      Height = 16
      Caption = 'Count_SMNO:'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 181
      Top = 17
      Width = 48
      Height = 16
      Caption = 'Times:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 5
      Top = 58
      Width = 72
      Height = 16
      Caption = 'Dep_New:'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 196
      Top = 63
      Width = 49
      Height = 16
      Caption = 'SMNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 344
      Top = 62
      Width = 12
      Height = 13
      Caption = '-->'
      Visible = False
    end
    object Label4: TLabel
      Left = 665
      Top = 58
      Width = 35
      Height = 16
      Caption = 'Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btn_Save: TBitBtn
      Left = 608
      Top = 5
      Width = 65
      Height = 36
      Hint = 'Save Current'
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn_SaveClick
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btn_Exit: TBitBtn
      Left = 772
      Top = 5
      Width = 65
      Height = 36
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_ExitClick
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object Ngay: TDateTimePicker
      Left = 235
      Top = 13
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object Gio: TDateTimePicker
      Left = 345
      Top = 13
      Width = 82
      Height = 24
      Date = 39983.000000000000000000
      Format = 'HH:mm:ss'
      Time = 39983.000000000000000000
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object Edit1: TEdit
      Left = 442
      Top = 13
      Width = 35
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '0'
      Visible = False
    end
    object Delete_SMNO: TLabeledEdit
      Left = 124
      Top = 96
      Width = 67
      Height = 24
      Color = clRed
      EditLabel.Width = 103
      EditLabel.Height = 16
      EditLabel.Caption = 'Delete_SMNO:'
      EditLabel.Color = clSkyBlue
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnChange = Delete_SMNOChange
      OnKeyPress = Delete_SMNOKeyPress
    end
    object Edit5: TEdit
      Left = 218
      Top = 96
      Width = 34
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '0'
      Visible = False
    end
    object btnCancel: TBitBtn
      Left = 690
      Top = 5
      Width = 65
      Height = 36
      Hint = 'Cancel'
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCancelClick
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnXoa: TButton
      Left = 304
      Top = 88
      Width = 52
      Height = 35
      Caption = 'Xoa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = btnXoaClick
    end
    object Edit6: TEdit
      Left = 376
      Top = 95
      Width = 45
      Height = 21
      Enabled = False
      TabOrder = 9
      Text = '0'
      Visible = False
    end
    object btnChuyen: TButton
      Left = 490
      Top = 8
      Width = 55
      Height = 35
      Caption = 'Chuyen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnClick = btnChuyenClick
    end
    object Edit7: TEdit
      Left = 557
      Top = 14
      Width = 35
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Text = '0'
      Visible = False
    end
    object editChuyen: TEdit
      Left = 128
      Top = 15
      Width = 49
      Height = 21
      Color = clYellow
      TabOrder = 12
      OnChange = editChuyenChange
      OnKeyPress = editChuyenKeyPress
    end
    object DDBH: TLabeledEdit
      Left = 529
      Top = 57
      Width = 125
      Height = 24
      Color = clInactiveBorder
      EditLabel.Width = 52
      EditLabel.Height = 16
      EditLabel.Caption = 'OrdNO:'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 13
      Visible = False
    end
    object Size: TComboBox
      Left = 703
      Top = 57
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 14
      Text = 'ALL'
      Visible = False
      Items.Strings = (
        'ALL')
    end
  end
  object Edit2: TEdit
    Left = 78
    Top = 58
    Width = 92
    Height = 24
    CharCase = ecUpperCase
    Color = clAqua
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object Edit3: TEdit
    Left = 246
    Top = 57
    Width = 90
    Height = 24
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object Edit4: TEdit
    Left = 369
    Top = 57
    Width = 94
    Height = 24
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object btnChon: TButton
    Left = 168
    Top = 59
    Width = 17
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = btnChonClick
  end
  object DataSource1: TDataSource
    DataSet = SMZL
    Left = 256
    Top = 192
  end
  object SMZL: TQuery
    OnCalcFields = SMZLCalcFields
    OnNewRecord = SMZLNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMNO, SMDDSS.CODEBAR, YSBH, SMDDSS.DDBH, SMDDSS.XXCC, SMD' +
        'DSS.GXLB, convert(smalldatetime,convert(varchar,SMZL.ScanDate,12' +
        '0)) as ScanDate, SMZL.UserDate, SMDDSS.Qty as Qty, SMZL.CTS as C' +
        'TS, SMZL.CTS*SMDDSS.Qty as totQty , SMZL.USERID, BDepartment.Dep' +
        'Name, SMZL.CTS as oldCTS  from SMZL'
      'left join BDepartment on BDepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      
        'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXL' +
        'B'
      ' where 1=1'
      ' and SMDDSS.GXLB = '#39'S'#39
      ' and BDepartment.DepName like '#39'%A1_LEAN1%'#39
      ' and BDepartment.GSBH='#39'VA12'#39
      
        ' and SMZL.ScanDate between convert(smalldatetime,'#39'2018/10/09 07:' +
        '00:00'#39') and convert(smalldatetime,'#39'2018/10/09 07:59:59'#39')'
      '')
    UpdateObject = UpdateSMZL
    Left = 216
    Top = 192
    object SMZLSMNO: TFloatField
      FieldName = 'SMNO'
    end
    object SMZLGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMZLtotQty: TIntegerField
      FieldName = 'totQty'
    end
    object SMZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZLDepName: TStringField
      DisplayWidth = 100
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMZLUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object SMZLXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZLoldCTS: TIntegerField
      FieldName = 'oldCTS'
    end
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateSMZL: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZL'
      'set'
      '   ScanDate =:ScanDate,'
      '   USERDATE =:USERDATE'
      'where'
      '  SMNO =:OLD_SMNO and'
      '  ScanDate =:OLD_ScanDate and'
      '  USERDATE =:OLD_USERDATE')
    InsertSQL.Strings = (
      'insert into SMZL'
      '  (CTS, DepNO, ScanDate)'
      'values'
      '  (:CTS, :DepNO, :ScanDate)')
    DeleteSQL.Strings = (
      'delete from SMZL'
      'where'
      '  SMNO =:OLD_SMNO')
    Left = 288
    Top = 192
  end
  object Qtemp: TQuery
    DatabaseName = 'dB'
    Left = 216
    Top = 272
  end
  object SMDDSS: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select SMZL.*,SMDD.YSBH,SCBB.PRONO,SMDDSS.XXCC,SMDDSS.Qty as Per' +
        'Qty,SMDDSS.GXLB'
      'from SMZL'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      'left join SMDD on SMDD.DDBH=SMDDSS.DDBH'
      
        'left join SCBB on SCBB.DepNO=SMZL.DepNO and convert(varchar,SCBB' +
        '.SCDate,111)=convert(varchar,SMZL.ScanDate,111)'
      'where SMZL.SMNO=:SMNO')
    Left = 256
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SMNO'
        ParamType = ptUnknown
      end>
  end
  object SMZLOld: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMNO, SMDDSS.CODEBAR, YSBH, SMDDSS.DDBH, SMDDSS.XXCC, SMD' +
        'DSS.GXLB, convert(smalldatetime,convert(varchar,SMZLOld.ScanDate' +
        ',120)) as ScanDate, SMZLOld.USERDATE, SMDDSS.Qty as Qty, SMZLOld' +
        '.CTS as CTS, SMZLOld.CTS*SMDDSS.Qty as totQty, '
      ' SMZLOld.USERID, BDepartment.DepName, SMZLOld.CTS as oldCTS '
      ' from SMZLOld '
      ' left join BDepartment on BDepartment.ID=SMZLOld.DepNo '
      ' left join SMDDSS on SMDDSS.CODEBAR=SMZLOld.CODEBAR '
      
        ' left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GX' +
        'LB '
      ' where 1=1 '
      ' and SMDDSS.GXLB like'#39'A%'#39
      ' and BDepartment.DepName like'#39'A1_LEAN1-01_G%'#39
      ' and BDepartment.GSBH like'#39'VA12%'#39
      
        ' and SMZLOld.ScanDate between'#39'2018/10/08 8:00:00'#39' and '#39'2018/10/0' +
        '8 8:59:59'#39' '
      ' order by SMNO')
    UpdateObject = UpdateSMZLOld
    Left = 216
    Top = 232
    object SMZLOldSMNO: TFloatField
      FieldName = 'SMNO'
    end
    object SMZLOldCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLOldYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMZLOldXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZLOldGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMZLOldScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZLOldUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object SMZLOldQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMZLOldCTS2: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLOldtotQty: TIntegerField
      FieldName = 'totQty'
    end
    object SMZLOldUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZLOldDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLOldoldCTS: TIntegerField
      FieldName = 'oldCTS'
    end
    object SMZLOldDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = SMZLOld
    Left = 256
    Top = 232
  end
  object UpdateSMZLOld: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZLOld'
      'set'
      '   ScanDate =:ScanDate,'
      '   USERDATE =:USERDATE'
      'where'
      ' SMNO =:OLD_SMNO and'
      ' ScanDate =:OLD_ScanDate and'
      '  USERDATE =:OLD_USERDATE')
    DeleteSQL.Strings = (
      'delete from SMZLold'
      'where'
      '  SMNO =:OLD_SMNO')
    Left = 288
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 272
    object ChuyenTieng: TMenuItem
      Caption = 'Chuyen tieng san luong scan'
      OnClick = ChuyenTiengClick
    end
    object ChuyenDV: TMenuItem
      Caption = 'Chuyen don vi scan'
      OnClick = ChuyenDVClick
    end
    object Xoa: TMenuItem
      Caption = 'Xoa san luong scan'
      OnClick = XoaClick
    end
  end
end
