object ScanImport: TScanImport
  Left = 253
  Top = 199
  Width = 829
  Height = 500
  Caption = 'ScanImport'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 622
    Height = 405
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 620
      Height = 161
      Align = alTop
      DataSource = DS2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ProNO'
          Footers = <>
          Width = 106
        end
        item
          EditButtons = <>
          FieldName = 'SCDate'
          Footers = <>
          Width = 101
        end
        item
          EditButtons = <>
          FieldName = 'DepNO'
          Footers = <>
          Width = 119
        end
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'USERDate'
          Footers = <>
          Width = 155
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 59
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 162
      Width = 620
      Height = 15
      Align = alTop
      TabOrder = 1
    end
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 177
      Width = 620
      Height = 227
      Align = alClient
      DataSource = DS3
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SCBH'
          Footers = <>
          Width = 130
        end
        item
          EditButtons = <>
          FieldName = 'GXLB'
          Footers = <>
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Width = 80
        end>
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 622
    Top = 57
    Width = 191
    Height = 405
    Align = alRight
    DataSource = DS4
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 65
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 696
      Top = 24
      Width = 35
      Height = 16
      Caption = 'ready'
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 273
      Height = 16
      AutoSize = False
      Caption = #35531#36984#25799#20320#35201#37782#23450#26412#24288#21312#30340#25475#25551#23567#26178#25976':'
    end
    object Button1: TButton
      Left = 104
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Import'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 392
    Top = 32
  end
  object SMZL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select SMZL.*  ,SMDD.DDBH,SMDD.YSBH,SMDDSS.GXLB,SMDDSS.XXCC,isnu' +
        'll(SMDDSS.Qty,0)*SMZL.CTS as Qty'
      
        '         ,BDepartment.GSBH,convert(varchar,SMZL.ScanDate,111) as' +
        ' ScanDate2'
      'from SMZL'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      
        'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXL' +
        'B '
      'left join BDepartment on BDepartment.ID=SMZL.DepNo'
      'where SMZL.SB is null'
      'and SMDD.YSBH is not null'
      'order by  SMZL.CODEBAR,SMZL.SCANDATE')
    UpdateObject = UpSMZL
    Left = 384
    Top = 144
    object SMZLSMNO: TFloatField
      FieldName = 'SMNO'
    end
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMZLDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMZLYSBH: TStringField
      FieldName = 'YSBH'
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
    object SMZLGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object SMZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SMZLSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object SMZLScanDate2: TStringField
      FieldName = 'ScanDate2'
      FixedChar = True
      Size = 30
    end
  end
  object UpSMZL: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZL'
      'set'
      '  SB = '#39'2'#39
      'where'
      '  SMNO = :OLD_SMNO')
    InsertSQL.Strings = (
      'insert into SMZL'
      
        '  (SMNO, CODEBAR, CTS, DepNO, ScanDate, USERDATE, USERID, YN, SB' +
        ')'
      'values'
      
        '  (:SMNO, :CODEBAR, :CTS, :DepNO, :ScanDate, :USERDATE, :USERID,' +
        ' :YN, :SB)')
    DeleteSQL.Strings = (
      'delete from SMZL'
      'where'
      '  SMNO = :OLD_SMNO')
    Left = 416
    Top = 144
  end
  object SCBB: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select ProNO,convert(varchar,SCDate,111) as SCDate,SJXH,DepNO'
      '         ,GSBH,USERID,USERDate,SCBB.YN'
      'from SCBB'
      'where SCDate=:SCANDate2'
      '         and DepNO=:DepNO'
      'order by SJXH'
      '')
    Left = 40
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCANDate2'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DepNO'
        ParamType = ptUnknown
        Size = 11
      end>
    object SCBBProNO: TStringField
      FieldName = 'ProNO'
      FixedChar = True
      Size = 10
    end
    object SCBBSCDate: TStringField
      FieldName = 'SCDate'
      FixedChar = True
      Size = 30
    end
    object SCBBSJXH: TStringField
      FieldName = 'SJXH'
      FixedChar = True
      Size = 2
    end
    object SCBBDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 15
    end
    object SCBBGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SCBBUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object SCBBUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object SCBBYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = SMZL
    Left = 360
    Top = 144
  end
  object DS2: TDataSource
    DataSet = SCBB
    Left = 72
    Top = 80
  end
  object SCBBS: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select *'
      'from scbbs'
      'where SCBBS.ProNo=:ProNo')
    Left = 56
    Top = 296
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ProNO'
        ParamType = ptUnknown
        Size = 11
      end>
    object SCBBSProNo: TStringField
      FieldName = 'ProNo'
      Origin = 'DB.scbbs.ProNo'
      FixedChar = True
      Size = 10
    end
    object SCBBSSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.scbbs.SCBH'
      FixedChar = True
      Size = 15
    end
    object SCBBSGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.scbbs.GXLB'
      FixedChar = True
      Size = 10
    end
    object SCBBSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.scbbs.Qty'
    end
    object SCBBSBZLB: TStringField
      FieldName = 'BZLB'
      Origin = 'DB.scbbs.BZLB'
      FixedChar = True
      Size = 1
    end
    object SCBBSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.scbbs.USERID'
      FixedChar = True
    end
    object SCBBSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.scbbs.USERDATE'
    end
    object SCBBSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.scbbs.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = SCBBS
    Left = 96
    Top = 296
  end
  object SCBBSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select *'
      'from SCBBSS'
      'where ProNO=:ProNO'
      '       and SCBH=:SCBH'
      '       and GXLB=:GXLB'
      ''
      '')
    Left = 592
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ProNo'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'GXLB'
        ParamType = ptUnknown
        Size = 11
      end>
    object SCBBSSProNo: TStringField
      FieldName = 'ProNo'
      Origin = 'DB.SCBBSS.ProNo'
      FixedChar = True
      Size = 10
    end
    object SCBBSSSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.SCBBSS.SCBH'
      FixedChar = True
      Size = 15
    end
    object SCBBSSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCBBSS.XXCC'
      FixedChar = True
      Size = 5
    end
    object SCBBSSGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.SCBBSS.GXLB'
      FixedChar = True
      Size = 10
    end
    object SCBBSSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCBBSS.Qty'
    end
  end
  object DS4: TDataSource
    DataSet = SCBBSS
    Left = 624
    Top = 200
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 640
    Top = 16
  end
end
