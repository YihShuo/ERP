object BookTicket_QRpt: TBookTicket_QRpt
  Left = 0
  Top = 0
  Caption = 'BookTicket_QRpt'
  ClientHeight = 492
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 897
    object Label4: TLabel
      Left = 5
      Top = 4
      Width = 21
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24180':'
    end
    object Label6: TLabel
      Left = 96
      Top = 4
      Width = 30
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      Caption = ' '#26376':'
    end
    object Label12: TLabel
      Left = 183
      Top = 5
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label11: TLabel
      Left = 198
      Top = 5
      Width = 23
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24180':'
    end
    object Label13: TLabel
      Left = 300
      Top = 5
      Width = 24
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #26376':'
    end
    object Label2: TLabel
      Left = 637
      Top = 7
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = 'S'#7889' th'#7867#24037#34399':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 622
      Top = 36
      Width = 89
      Height = 16
      Alignment = taRightJustify
      Caption = 'H'#7885' v'#224' t'#234'n'#22995#21517':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 825
      Top = 34
      Width = 98
      Height = 25
      Caption = 'Truy v'#7845'n'#26597#35426
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 29
      Top = 1
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 14
      TabOrder = 1
      Text = '2020'
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
        '2029')
    end
    object CBX2: TComboBox
      Left = 128
      Top = 1
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      TabOrder = 2
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
    object CBX4: TComboBox
      Left = 226
      Top = 2
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 14
      TabOrder = 3
      Text = '2020'
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
        '2029')
    end
    object CBX5: TComboBox
      Left = 328
      Top = 3
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      TabOrder = 4
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
    object ED_ID: TEdit
      Left = 717
      Top = 4
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 31
      Width = 612
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object RB12: TRadioButton
        Left = 124
        Top = 3
        Width = 122
        Height = 17
        Hint = 'TW'
        Caption = #272'a'#768'i Loan'#21488#28771
        TabOrder = 0
      end
      object RB13: TRadioButton
        Left = 252
        Top = 3
        Width = 332
        Height = 17
        Hint = 'CN'
        Caption = 'Trung Qu'#7889'c'#20013#22283'+Philippines'#33778#24459#36051'+Indonesia'#21360#23612
        TabOrder = 1
      end
      object RB11: TRadioButton
        Left = 11
        Top = 4
        Width = 94
        Height = 17
        Caption = 'Toa'#768'n B'#244#803#20840#37096
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object Button4: TButton
      Left = 825
      Top = 3
      Width = 98
      Height = 25
      Caption = 'Excel'#36664#20986
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button4Click
    end
    object ED_Name: TEdit
      Left = 717
      Top = 34
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1110
    Height = 427
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterRowCount = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'No'
        Footers = <>
        Title.Caption = 'NO|'#38917#27425
        Width = 37
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BookDate'
        Footers = <>
        Title.Caption = 'BookDate|'#35330#31080#26085#26399
        Width = 73
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Factory'
        Footers = <>
        Title.Caption = 'Factory|'#24288#21312#21029
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Department'
        Footers = <>
        Title.Caption = 'Department|'#37096#38272#21029
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
        Title.Caption = 'Name'#22995#21517'|'#20013#25991
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EngName'
        Footers = <>
        Title.Caption = 'Name'#22995#21517'|'#33521#25991
        Width = 99
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GoDate'
        Footers = <>
        Title.Caption = #34892#31243'('#21435#31243')|'#26085#26399'GoDate'
        Width = 73
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Route'
        Footers = <>
        Title.Caption = #34892#31243'('#21435#31243')|'#21435#31243'('#22283#38555#27573')Route'
        Width = 145
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GoPlaneNumber'
        Footers = <>
        Title.Caption = #34892#31243'('#21435#31243')|'#33322#29677'AirNumber'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GoDate_Sub'
        Footers = <>
        Title.Caption = #34892#31243'('#21435#31243')|'#26085#26399'GoDate'
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Route_Sub'
        Footers = <>
        Title.Caption = #34892#31243'('#21435#31243')|'#21435#31243'('#20839#38520#27573')Route'
        Width = 97
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GoPlaneNumber_Sub'
        Footers = <>
        Title.Caption = #34892#31243'('#21435#31243')|'#33322#29677'AirNumber'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BackDate_Sub'
        Footers = <>
        Title.Caption = #34892#31243'('#22238#31243')|'#26085#26399'GoDate'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Route1_Sub'
        Footers = <>
        Title.Caption = #34892#31243'('#22238#31243')|'#22238#31243'('#20839#38520#27573')Route'
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BackPlaneNumber_Sub'
        Footers = <>
        Title.Caption = #34892#31243'('#22238#31243')|'#33322#29677'AirNumber'
        Width = 84
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BackDate'
        Footers = <>
        Title.Caption = #34892#31243'('#22238#31243')|'#26085#26399'GoDate'
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Route1'
        Footers = <>
        Title.Caption = #34892#31243'('#22238#31243')|'#22238#31243'('#22283#38555#27573')Route'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BackPlaneNumber'
        Footers = <>
        Title.Caption = #34892#31243'('#22238#31243')|'#33322#29677'AirNumber'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Tickets'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#31080#25976'Tickets'
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USD_Fee'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#31080#20729'USD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Exchange'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#21295#29575'Exchange'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VND_Fee'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#25240#31639#36234#30462'VND'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NTD_Fee'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#20184#29694')|'#25240#31639#21488#24163'NTD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Tickets_Credit'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#31080#25976'Tickets'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USD_Credit'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#31080#20729'USD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VND_Credit'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#36234#30462'VND'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NTD_Credit'
        Footers = <>
        Title.Caption = #20184#27454#26041#24335'/'#31080#20729'('#21047#21345#26410#21547'2%'#25163#32396#36027')|'#21488#24163'NTD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Reason'
        Footers = <>
        Title.Caption = 'Reason|'#36092#31080#21407#22240
        Width = 94
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Payment'
        Footers = <>
        Title.Caption = 'Payment|'#20184#27454#20154
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Title.Caption = 'Remark|'#20633#35387
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PayMonth'
        Footers = <>
        Title.Caption = #20184#27454#26376#20221'|PayMonth'
        Width = 71
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 81
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'Select  ROW_NUMBER() over (ORDER BY BookDate asc) as No, WF_Book' +
        'Ticket.BookDate,Directory_Factory.Name as Factory,Directory_Depa' +
        'rtment.Name as Department,Certificate.Name, Certificate.EngName'
      
        '       ,WF_BookTicket.GoDate,WF_BookTicket.Route,WF_BookTicket.G' +
        'oPlaneNumber,WF_BookTicket.GoDate_Sub,WF_BookTicket.Route_Sub,WF' +
        '_BookTicket.GoPlaneNumber_Sub'
      
        #9'   ,WF_BookTicket.BackDate_Sub,WF_BookTicket.Route1_Sub,WF_Book' +
        'Ticket.BackPlaneNumber_Sub,WF_BookTicket.BackDate,WF_BookTicket.' +
        'Route1,WF_BookTicket.BackPlaneNumber'
      
        #9'   ,WF_BookTicket.Tickets,WF_BookTicket.USD_Fee,WF_BookTicket.E' +
        'xchange,WF_BookTicket.VND_Fee,WF_BookTicket.Tickets_Credit,WF_Bo' +
        'okTicket.USD_Credit,WF_BookTicket.VND_Credit'
      
        #9'   ,WF_BookTicket.Reason,WF_BookTicket.Payment,WF_BookTicket.Re' +
        'mark,'#39#39' as PayMonth'
      'from [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket '
      'Left join Certificate on Certificate.ID=WF_BookTicket.ID'
      'left join Directory on Directory.ID=Certificate.ID '
      
        'Left join Directory_Factory on Directory_Factory.FID=Directory.F' +
        'ID'
      
        'Left join Directory_Department on Directory_Department.DID=Direc' +
        'tory.DID'
      
        'Left join Directory_Position on Certificate.NID = Directory_Posi' +
        'tion.NID and Directory.PID = Directory_Position.PID'
      
        'Left join Directory_Nationality on Directory_Nationality.NID=Cer' +
        'tificate.NID')
    Left = 88
    Top = 128
    object Query1No: TLargeintField
      FieldName = 'No'
      ReadOnly = True
    end
    object Query1BookDate: TDateTimeField
      FieldName = 'BookDate'
    end
    object Query1Factory: TStringField
      FieldName = 'Factory'
      Size = 30
    end
    object Query1Department: TStringField
      FieldName = 'Department'
      Size = 30
    end
    object Query1Name: TWideStringField
      FieldName = 'Name'
      Size = 5
    end
    object Query1EngName: TWideStringField
      FieldName = 'EngName'
      Size = 30
    end
    object Query1GoDate: TDateTimeField
      FieldName = 'GoDate'
    end
    object Query1Route: TWideStringField
      FieldName = 'Route'
      Size = 30
    end
    object Query1GoPlaneNumber: TStringField
      FieldName = 'GoPlaneNumber'
      Size = 15
    end
    object Query1GoDate_Sub: TDateTimeField
      FieldName = 'GoDate_Sub'
    end
    object Query1Route_Sub: TWideStringField
      FieldName = 'Route_Sub'
      Size = 30
    end
    object Query1GoPlaneNumber_Sub: TStringField
      FieldName = 'GoPlaneNumber_Sub'
      Size = 15
    end
    object Query1BackDate_Sub: TDateTimeField
      FieldName = 'BackDate_Sub'
    end
    object Query1Route1_Sub: TWideStringField
      FieldName = 'Route1_Sub'
      Size = 30
    end
    object Query1BackPlaneNumber_Sub: TStringField
      FieldName = 'BackPlaneNumber_Sub'
      Size = 15
    end
    object Query1BackDate: TDateTimeField
      FieldName = 'BackDate'
    end
    object Query1Route1: TWideStringField
      FieldName = 'Route1'
      Size = 30
    end
    object Query1BackPlaneNumber: TStringField
      FieldName = 'BackPlaneNumber'
      Size = 15
    end
    object Query1Tickets: TSmallintField
      FieldName = 'Tickets'
    end
    object Query1USD_Fee: TFloatField
      FieldName = 'USD_Fee'
    end
    object Query1Exchange: TFloatField
      FieldName = 'Exchange'
    end
    object Query1VND_Fee: TIntegerField
      FieldName = 'VND_Fee'
    end
    object Query1Tickets_Credit: TSmallintField
      FieldName = 'Tickets_Credit'
    end
    object Query1USD_Credit: TFloatField
      FieldName = 'USD_Credit'
    end
    object Query1VND_Credit: TIntegerField
      FieldName = 'VND_Credit'
    end
    object Query1Reason: TWideStringField
      FieldName = 'Reason'
      Size = 100
    end
    object Query1Payment: TWideStringField
      FieldName = 'Payment'
      Size = 50
    end
    object Query1Remark: TWideStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query1PayMonth: TStringField
      FieldName = 'PayMonth'
      ReadOnly = True
      Size = 1
    end
  end
end
