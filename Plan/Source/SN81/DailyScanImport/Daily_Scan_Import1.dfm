object Daily_Scan_Import: TDaily_Scan_Import
  Left = 825
  Top = 126
  Width = 979
  Height = 563
  Caption = 'Daily_Scan_Import'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 780
    Height = 472
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 778
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
      Width = 778
      Height = 15
      Align = alTop
      TabOrder = 1
    end
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 177
      Width = 778
      Height = 294
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
    Left = 780
    Top = 57
    Width = 191
    Height = 472
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
    Width = 971
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
  object DS1: TDataSource
    DataSet = ADOSMZL
    Left = 360
    Top = 144
  end
  object DS2: TDataSource
    DataSet = ADOSCBB
    Left = 72
    Top = 80
  end
  object DS3: TDataSource
    DataSet = ADOSCBBS
    Left = 96
    Top = 296
  end
  object DS4: TDataSource
    DataSet = ADOSCBBSS
    Left = 624
    Top = 192
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    Left = 640
    Top = 16
  end
  object ADOConn: TADOConnection
    CommandTimeout = 15000
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=LIY_ERP;Data Source=127.0.0.1;Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstati' +
      'on ID=GIZWOW68VILII7G;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 129
  end
  object ADOSMZL: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 15000
    Parameters = <>
    SQL.Strings = (
      
        'select  SMZL.*  ,SMDD.DDBH,SMDD.YSBH,SMDDSS.GXLB,SMDDSS.XXCC,isn' +
        'ull(SMDDSS.Qty,0)*SMZL.CTS as Qty'
      
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
    Left = 360
    Top = 113
    object ADOSMZLSMNO: TLargeintField
      FieldName = 'SMNO'
      ReadOnly = True
    end
    object ADOSMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
    end
    object ADOSMZLCTS: TIntegerField
      FieldName = 'CTS'
    end
    object ADOSMZLDepNO: TStringField
      FieldName = 'DepNO'
      Size = 10
    end
    object ADOSMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object ADOSMZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object ADOSMZLUSERID: TStringField
      FieldName = 'USERID'
    end
    object ADOSMZLYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object ADOSMZLSB: TStringField
      FieldName = 'SB'
      Size = 1
    end
    object ADOSMZLDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object ADOSMZLYSBH: TStringField
      FieldName = 'YSBH'
      Size = 15
    end
    object ADOSMZLGXLB: TStringField
      FieldName = 'GXLB'
      Size = 1
    end
    object ADOSMZLXXCC: TStringField
      FieldName = 'XXCC'
      Size = 6
    end
    object ADOSMZLQty: TIntegerField
      FieldName = 'Qty'
      ReadOnly = True
    end
    object ADOSMZLGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object ADOSMZLScanDate2: TStringField
      FieldName = 'ScanDate2'
      ReadOnly = True
      Size = 30
    end
  end
  object ADOQTemp: TADOQuery
    Connection = ADOConn
    CommandTimeout = 15000
    Parameters = <>
    Left = 432
    Top = 32
  end
  object ADOSCBBS: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 15000
    DataSource = DS2
    Parameters = <
      item
        Name = 'ProNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from scbbs'
      'where SCBBS.ProNo=:ProNo')
    Left = 64
    Top = 296
    object ADOSCBBSProNo: TStringField
      FieldName = 'ProNo'
      Size = 10
    end
    object ADOSCBBSSCBH: TStringField
      FieldName = 'SCBH'
      Size = 15
    end
    object ADOSCBBSGXLB: TStringField
      FieldName = 'GXLB'
      Size = 10
    end
    object ADOSCBBSQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
      Size = 1
    end
    object ADOSCBBSBZLB: TStringField
      FieldName = 'BZLB'
      Size = 1
    end
    object ADOSCBBSUSERID: TStringField
      FieldName = 'USERID'
    end
    object ADOSCBBSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object ADOSCBBSYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object ADOSCBBSS: TADOQuery
    Connection = ADOConn
    CommandTimeout = 15000
    DataSource = DS3
    Parameters = <
      item
        Name = 'ProNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SCBH'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'GXLB'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from SCBBSS'
      'where ProNO=:ProNO'
      '       and SCBH=:SCBH'
      '       and GXLB=:GXLB')
    Left = 592
    Top = 193
    object ADOSCBBSSProNo: TStringField
      FieldName = 'ProNo'
      Size = 10
    end
    object ADOSCBBSSSCBH: TStringField
      FieldName = 'SCBH'
      Size = 15
    end
    object ADOSCBBSSXXCC: TStringField
      FieldName = 'XXCC'
      Size = 6
    end
    object ADOSCBBSSGXLB: TStringField
      FieldName = 'GXLB'
      Size = 10
    end
    object ADOSCBBSSQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
      Size = 1
    end
  end
  object ADOSCBB: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    CommandTimeout = 15000
    DataSource = DS1
    Parameters = <
      item
        Name = 'SCANDate2'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'DepNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select ProNO,convert(varchar,SCDate,111) as SCDate,SJXH,DepNO'
      '         ,GSBH,USERID,USERDate,SCBB.YN'
      'from SCBB'
      'where SCDate=:SCANDate2'
      '         and DepNO=:DepNO'
      'order by SJXH'
      '')
    Left = 104
    Top = 81
    object ADOSCBBProNO: TStringField
      FieldName = 'ProNO'
      Size = 10
    end
    object ADOSCBBSCDate: TStringField
      FieldName = 'SCDate'
      ReadOnly = True
      Size = 30
    end
    object ADOSCBBSJXH: TStringField
      FieldName = 'SJXH'
      Size = 2
    end
    object ADOSCBBDepNO: TStringField
      FieldName = 'DepNO'
      Size = 15
    end
    object ADOSCBBGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object ADOSCBBUSERID: TStringField
      FieldName = 'USERID'
      Size = 15
    end
    object ADOSCBBUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object ADOSCBBYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end
