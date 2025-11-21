object BookingPreview: TBookingPreview
  Left = 437
  Top = 261
  BorderStyle = bsDialog
  Caption = 'BookingPreview'
  ClientHeight = 452
  ClientWidth = 1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1090
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 195
      Height = 15
      Caption = 'Please confirm your booking request:'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 1090
    Height = 379
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RoomName'
        Footers = <>
        Title.Caption = #26371#35696#23460'|RoomName'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'WeekDay'
        Footers = <>
        Title.Caption = #26371#35696#26178#38291'|WeekDay'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'RoomDate'
        Footers = <>
        Title.Caption = #26371#35696#26178#38291'|RoomDate'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'RoomTime'
        Footers = <>
        Title.Caption = #26371#35696#26178#38291'|RoomTime'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Topic'
        Footers = <>
        Title.Caption = #26371#35696#20027#38988'|Topic'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'Participant'
        Footers = <>
        Title.Caption = #21443#33287#20154#21729'|Participant'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
        Title.Caption = #26371#35696#23460#29376#24907'|Status'
        Width = 225
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 412
    Width = 1090
    Height = 40
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 398
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Confirm'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 490
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Erp@admin2309;Persist Security Info' +
      '=True;User ID=tyxuan;Initial Catalog=LIY_TYXUAN;Data Source=192.' +
      '168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 17
    Top = 108
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 17
    Top = 140
    object ADOQuery1RoomName: TStringField
      FieldName = 'RoomName'
    end
    object ADOQuery1UserDate: TStringField
      FieldName = 'UserDate'
      Size = 30
    end
    object ADOQuery1UserID: TStringField
      FieldName = 'UserID'
      Size = 8
    end
    object ADOQuery1Topic: TStringField
      FieldName = 'Topic'
      Size = 200
    end
    object ADOQuery1Partcipant: TStringField
      FieldName = 'Participant'
      Size = 200
    end
    object ADOQuery1RoomDate: TDateTimeField
      FieldName = 'RoomDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ADOQuery1RoomTime: TStringField
      FieldName = 'RoomTime'
      Size = 30
    end
    object ADOQuery1Status: TStringField
      DisplayWidth = 50
      FieldName = 'Status'
      Size = 50
    end
    object ADOQuery1WeekDay: TStringField
      FieldName = 'WeekDay'
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 17
    Top = 172
  end
end
