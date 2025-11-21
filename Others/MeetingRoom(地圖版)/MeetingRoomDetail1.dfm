object MeetingRoomDetail: TMeetingRoomDetail
  Left = 416
  Top = 327
  BorderStyle = bsDialog
  ClientHeight = 331
  ClientWidth = 1291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1291
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 105
      Height = 25
      Caption = 'BOOKING'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 1291
    Height = 120
    Align = alTop
    Caption = 'Booking'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 29
      Top = 48
      Width = 36
      Height = 28
      AutoSize = False
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 28
      Top = 80
      Width = 37
      Height = 28
      AutoSize = False
      Caption = 'Time'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 178
      Top = 80
      Width = 12
      Height = 28
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 20
      Top = 16
      Width = 45
      Height = 28
      AutoSize = False
      Caption = 'Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 317
      Top = 16
      Width = 108
      Height = 28
      AutoSize = False
      Caption = 'Meeting Topic'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 343
      Top = 48
      Width = 82
      Height = 28
      AutoSize = False
      Caption = 'Participant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label7: TLabel
      Left = 353
      Top = 80
      Width = 72
      Height = 28
      AutoSize = False
      Caption = 'Applicant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 116
      Top = 80
      Width = 16
      Height = 28
      AutoSize = False
      Caption = #65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 236
      Top = 80
      Width = 16
      Height = 28
      AutoSize = False
      Caption = #65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object DTP1: TDateTimePicker
      Left = 72
      Top = 48
      Width = 113
      Height = 28
      Date = 43669.551169467600000000
      Format = 'yyyy/MM/dd'
      Time = 43669.551169467600000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DTP1Change
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 80
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18')
    end
    object ComboBox2: TComboBox
      Left = 128
      Top = 80
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        '00'
        '10'
        '20'
        '30'
        '40'
        '50')
    end
    object ComboBox3: TComboBox
      Left = 192
      Top = 80
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18')
    end
    object ComboBox4: TComboBox
      Left = 248
      Top = 80
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        '00'
        '20'
        '30'
        '40'
        '50')
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 225
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 432
      Top = 16
      Width = 417
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 432
      Top = 48
      Width = 417
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 432
      Top = 80
      Width = 417
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Button2: TButton
      Left = 864
      Top = 16
      Width = 75
      Height = 92
      Caption = 'CONFIRM'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 944
      Top = 16
      Width = 75
      Height = 41
      Caption = 'CANCEL'
      TabOrder = 10
      Visible = False
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 161
    Width = 1291
    Height = 170
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'RoomDate'
        Footers = <>
        Title.Caption = #26371#35696#26178#38291'|RoomDate'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'RoomTime'
        Footers = <>
        Title.Caption = #26371#35696#26178#38291'|RoomTime'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'Topic'
        Footers = <>
        Title.Caption = #26371#35696#20027#38988'|Topic'
        Width = 426
      end
      item
        EditButtons = <>
        FieldName = 'Participant'
        Footers = <>
        Title.Caption = #21443#33287#20154#21729'|Participant'
        Width = 416
      end
      item
        EditButtons = <>
        FieldName = 'UserName'
        Footers = <>
        Title.Caption = #38928#23450#20154'|UserName'
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = #38928#23450#26178#38291'|UserDate'
        Width = 114
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 24
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 264
    object ADOQuery1UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object ADOQuery1UserName: TStringField
      FieldName = 'UserName'
      Size = 30
    end
    object ADOQuery1UserDate: TStringField
      FieldName = 'UserDate'
    end
    object ADOQuery1RoomDate: TDateTimeField
      FieldName = 'RoomDate'
    end
    object ADOQuery1RoomTime: TStringField
      FieldName = 'RoomTime'
    end
    object ADOQuery1Topic: TStringField
      FieldName = 'Topic'
      Size = 200
    end
    object ADOQuery1Participant: TStringField
      FieldName = 'Participant'
      Size = 200
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Erp@admin2309;Persist Security Info' +
      '=True;User ID=tyxuan;Initial Catalog=LIY_TYXUAN;Data Source=192.' +
      '168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 232
  end
  object ADOQUpdate: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 296
  end
  object ADOQSearch: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 56
    Top = 296
  end
end
