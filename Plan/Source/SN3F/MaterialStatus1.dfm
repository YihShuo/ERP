object MaterialStatus: TMaterialStatus
  Left = 384
  Top = 216
  Width = 1018
  Height = 675
  Caption = 'Material Arrival Status'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label5: TLabel
    Left = 336
    Top = 34
    Width = 90
    Height = 16
    Caption = 'Supplier Name'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 28
      Height = 16
      Caption = 'BUY'
    end
    object Label2: TLabel
      Left = 152
      Top = 9
      Width = 66
      Height = 16
      Caption = 'Supplier ID'
    end
    object Label3: TLabel
      Left = 154
      Top = 34
      Width = 64
      Height = 16
      Caption = 'Material ID'
    end
    object Label4: TLabel
      Left = 336
      Top = 9
      Width = 90
      Height = 16
      Caption = 'Supplier Name'
    end
    object Label6: TLabel
      Left = 338
      Top = 34
      Width = 88
      Height = 16
      Caption = 'Material Name'
    end
    object DTP_BUY: TDateTimePicker
      Left = 49
      Top = 18
      Width = 81
      Height = 24
      Date = 45700.659411770830000000
      Format = 'yyyyMM'
      Time = 45700.659411770830000000
      TabOrder = 0
    end
    object ED_SupID: TEdit
      Left = 223
      Top = 5
      Width = 91
      Height = 24
      TabOrder = 1
    end
    object ED_MatID: TEdit
      Left = 223
      Top = 30
      Width = 91
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 712
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 787
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Upload'
      TabOrder = 4
      OnClick = Button2Click
    end
    object ED_SupName: TEdit
      Left = 431
      Top = 5
      Width = 242
      Height = 24
      TabOrder = 5
    end
    object Button5: TButton
      Left = 880
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 6
      OnClick = Button5Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1002
    Height = 538
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
    ReadOnly = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUY'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = 'Supplier|ID'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'Supplier|Name'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material|ID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Material|Name'
        Width = 250
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ArrivalDate'
        Footers = <>
        Title.Caption = 'Arrival Date|Current'
        Width = 80
      end
      item
        Color = clYellow
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'NewArrivalDate'
        Footers = <>
        Title.Caption = 'Arrival Date|Updated'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Title.Caption = 'User ID'
        Width = 60
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'User Date'
        Width = 80
      end>
  end
  object ED_MatName: TEdit
    Left = 431
    Top = 30
    Width = 242
    Height = 24
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 595
    Width = 1002
    Height = 41
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Button3: TButton
      Left = 423
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 503
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 16
    Top = 168
    object Query1BUY: TStringField
      FieldName = 'BUY'
      Size = 10
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      Size = 6
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1ArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Query1NewArrivalDate: TDateTimeField
      FieldName = 'NewArrivalDate'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 136
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofNoChangeDir, ofExtensionDifferent, ofEnableSizing]
    Left = 48
    Top = 136
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE schedule_materials'
      'SET'
      '  ArrivalDate = :NewArrivalDate,'
      '  UserID = :UserID, '
      '  UserDate = GetDate()'
      'WHERE'
      '  BUY = :OLD_BUY AND'
      '  DDBH = :OLD_DDBH AND'
      '  CSBH = :OLD_CSBH AND'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      
        'INSERT INTO schedule_materials (BUY, DDBH, CSBH, CLBH, ArrivalDa' +
        'te, UserID, UserDate, YN)'
      
        'VALUES (:BUY, :DDBH, :CSBH, :CLBH, :NewArrivalDate, :UserID, Get' +
        'Date(), '#39'1'#39')')
    Left = 16
    Top = 200
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 168
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 5000
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 48
    Top = 200
  end
end
