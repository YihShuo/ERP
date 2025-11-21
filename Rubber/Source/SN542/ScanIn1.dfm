object ScanIn: TScanIn
  Left = 183
  Top = 207
  Width = 1218
  Height = 612
  Caption = 'Scan In'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 753
    Top = 89
    Height = 484
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1202
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 47
      Width = 39
      Height = 20
      Caption = 'Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 19
      Width = 35
      Height = 20
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CLassCB: TComboBox
      Left = 64
      Top = 48
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Text = 'Ca 1 - Morning'
      OnChange = CLassCBChange
      Items.Strings = (
        'Ca 1 - Morning'
        'Ca 2- Noon'
        'Ca 3 - Night')
    end
    object Edit1: TEdit
      Left = 200
      Top = 16
      Width = 353
      Height = 49
      AutoSize = False
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object UploadBtn: TButton
      Left = 560
      Top = 20
      Width = 89
      Height = 41
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = UploadBtnClick
    end
    object Button2: TButton
      Left = 665
      Top = 20
      Width = 81
      Height = 41
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
    object CheckBox1: TCheckBox
      Left = 560
      Top = 64
      Width = 121
      Height = 17
      Caption = 'Qty>OKQty'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object WorkDTP: TDateTimePicker
      Left = 64
      Top = 16
      Width = 113
      Height = 24
      Date = 44026.314610104160000000
      Time = 44026.314610104160000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = WorkDTPChange
      OnExit = WorkDTPExit
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 756
    Top = 89
    Width = 446
    Height = 484
    Align = alClient
    Color = 14548991
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'englishname'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'OKQTY'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'WorkID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'codebar'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 88
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 753
    Height = 484
    Align = alLeft
    Color = 14548991
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Ngay Cong Viec'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'englishname'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'EnglishName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 37
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'Codebar'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'WorkID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'scandate'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 138
      end>
  end
  object UpdateSQL1: TUpdateSQL
    InsertSQL.Strings = (
      'Insert into WorkScan'
      
        '  (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH,' +
        ' Size, Qty, UserID, YN)'
      'Values'
      
        '  (:CodeBar, :ScanDate, :InOut, :Class, :WorkID, :MJBH, :ColorNo' +
        ', :DDBH, :Size, :Qty, :UserID, :YN)')
    Left = 560
    Top = 304
  end
  object DS1: TDataSource
    DataSet = WorkScanQry
    Left = 560
    Top = 272
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 520
    Top = 240
  end
  object WorkScanQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select top 100  workscan.ProNo,workscan.CodeBar,Convert(varchar,' +
        'workscan.ScanDate) as scandate,WorkScan.InOut,WorkScan.Class,'
      
        '       workscan.WorkID,workscan.MJBH,workscan.ColorNo,workscan.D' +
        'DBH,workscan.Size,workscan.Qty,workscan.UserID,workscan.UserDate' +
        ',workScan.YN'
      '      ,colorclass.englishname'
      'from LIY_DD.dbo.workscan workscan'
      
        'left join LIY_DD.dbo.colorclass colorclass on colorclass.ColorNo' +
        '=workscan.ColorNo'
      'where 1=1')
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 240
    object WorkScanQryProNo: TFloatField
      FieldName = 'ProNo'
    end
    object WorkScanQryCodebar: TStringField
      FieldName = 'Codebar'
      FixedChar = True
      Size = 22
    end
    object WorkScanQryInOut: TStringField
      FieldName = 'InOut'
      FixedChar = True
      Size = 1
    end
    object WorkScanQryClass: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object WorkScanQryWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object WorkScanQryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object WorkScanQryColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object WorkScanQryenglishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 100
    end
    object WorkScanQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object WorkScanQrySize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object WorkScanQryQty: TIntegerField
      FieldName = 'Qty'
      OnSetText = WorkScanQryQtySetText
    end
    object WorkScanQryUserid: TStringField
      FieldName = 'Userid'
      FixedChar = True
    end
    object WorkScanQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD hh:nn:ss'
    end
    object WorkScanQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object WorkScanQryscandate: TStringField
      FieldName = 'scandate'
      FixedChar = True
      Size = 30
    end
  end
  object workplansQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.eng' +
        'lishname,colorclass.ChinaNmae '
      ' from LIY_DD.dbo.workplans workplans  '
      
        ' left join LIY_DD.dbo.workplan  workplan on workplan.WorkID=work' +
        'plans.WorkID'
      
        ' left join LIY_DD.dbo.colorclass colorclass on workplan.ColorNo=' +
        'colorclass.ColorNo '
      ' where  workplans.creatdate>GetDate()-360')
    UpdateObject = UpdateSQL2
    Left = 848
    Top = 248
    object workplansQryWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object workplansQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object workplansQrySNO: TIntegerField
      FieldName = 'SNO'
    end
    object workplansQrySize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object workplansQryPackage: TIntegerField
      FieldName = 'Package'
    end
    object workplansQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object workplansQryOKQTY: TIntegerField
      FieldName = 'OKQTY'
    end
    object workplansQryOutQTY: TIntegerField
      FieldName = 'OutQTY'
    end
    object workplansQryNBarCode: TIntegerField
      FieldName = 'NBarCode'
    end
    object workplansQryPbarcode: TIntegerField
      FieldName = 'Pbarcode'
    end
    object workplansQryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object workplansQryCreatDate: TDateTimeField
      FieldName = 'CreatDate'
    end
    object workplansQryUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object workplansQryLastUser: TStringField
      FieldName = 'LastUser'
      FixedChar = True
    end
    object workplansQrycodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
    object workplansQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object workplansQryColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object workplansQryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object workplansQryenglishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 100
    end
    object workplansQryChinaNmae: TStringField
      FieldName = 'ChinaNmae'
      FixedChar = True
      Size = 100
    end
  end
  object DS2: TDataSource
    DataSet = workplansQry
    Left = 848
    Top = 280
  end
  object UpdateSQL2: TUpdateSQL
    InsertSQL.Strings = (
      'Insert into WorkScan'
      
        '  (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH,' +
        ' Size, Qty, UserID, YN)'
      'Values'
      
        '  (:CodeBar, :ScanDate, :InOut, :Class, :WorkID, :MJBH, :ColorNo' +
        ', :DDBH, :Size, :Qty, :UserID, :YN)')
    Left = 848
    Top = 312
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjdh from LIY_DD.dbo.mjzl group by bz2')
    Left = 356
    Top = 241
  end
  object TmpQuery2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjdh from LIY_DD.dbo.mjzl group by bz2')
    Left = 356
    Top = 305
  end
end
