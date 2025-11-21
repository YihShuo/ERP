object Directory_LeaveTrafficfee: TDirectory_LeaveTrafficfee
  Left = 0
  Top = 0
  Caption = #20132#36890#36027#35036#21161#32113#35336
  ClientHeight = 393
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 65
    Align = alTop
    TabOrder = 0
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
      Left = 505
      Top = 5
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
      Left = 490
      Top = 34
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
      Left = 681
      Top = 32
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
      Left = 585
      Top = 2
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
      Width = 476
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object RB12: TRadioButton
        Left = 7
        Top = 7
        Width = 122
        Height = 17
        Hint = 'TW'
        Caption = #272'a'#768'i Loan'#21488#28771
        TabOrder = 0
      end
      object RB13: TRadioButton
        Left = 135
        Top = 8
        Width = 332
        Height = 17
        Hint = 'CN'
        Caption = 'Trung Qu'#7889'c'#20013#22283'+Philippines'#33778#24459#36051'+Indonesia'#21360#23612
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Button4: TButton
      Left = 681
      Top = 1
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
      Left = 585
      Top = 32
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
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 65
    Width = 897
    Height = 328
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
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Factory'
        Footers = <>
        Title.Caption = #24288#21312'/'#21934#20301#21029
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Caption = #24037#34399
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
        Title.Caption = #22995#21517
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Position'
        Footers = <>
        Title.Caption = #32887#32026#21029
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TrafficfeeDate'
        Footers = <>
        Title.Caption = #35036#36028#26376#20221
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Trafficfee'
        Footer.FieldName = 'Trafficfee'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #37329#38989'/USD'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NO'
        Footers = <>
        Title.Caption = #24180#24230#20241#20551#26799#27425
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Plan_EDate'
        Footers = <>
        Title.Caption = #27491#24120#20241#20551#36804#26085
        Width = 101
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'Select Directory_Factory.Name+'#39'/'#39'+Directory_Department.Name as F' +
        'actory,Certificate.ID,Certificate.Name,Directory_Position.Name a' +
        's Position'
      
        '       ,Directory_LeaveRuler.TrafficfeeDate,Directory.Trafficfee' +
        ',Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_EDate'
      'from Certificate '
      ' left join Directory on Directory.ID=Certificate.ID '
      
        ' Left join Directory_Factory on Directory_Factory.FID=Directory.' +
        'FID'
      
        ' Left join Directory_Department on Directory_Department.DID=Dire' +
        'ctory.DID'
      
        ' left join Directory_Position on Certificate.NID = Directory_Pos' +
        'ition.NID and Directory.PID = Directory_Position.PID'
      
        ' left join Directory_Nationality on Directory_Nationality.NID=Ce' +
        'rtificate.NID'
      
        ' left join Directory_LeaveRuler on Directory_LeaveRuler.FYear='#39'2' +
        '023'#39' and Directory_LeaveRuler.ID=Certificate.ID'
      'where Directory_LeaveRuler.TrafficfeeDate is not null'
      
        ' and Convert(smalldatetime,convert(varchar,Directory_LeaveRuler.' +
        'TrafficfeeDate,111)) between '#39'2023/06/01'#39' and '#39'2023/06/30'#39)
    Left = 88
    Top = 128
    object Query1Factory: TStringField
      DisplayWidth = 18
      FieldName = 'Factory'
      ReadOnly = True
      Size = 61
    end
    object Query1ID: TStringField
      DisplayWidth = 6
      FieldName = 'ID'
      Size = 10
    end
    object Query1Name: TWideStringField
      DisplayWidth = 7
      FieldName = 'Name'
      Size = 5
    end
    object Query1Position: TWideStringField
      FieldName = 'Position'
    end
    object Query1TrafficfeeDate: TDateTimeField
      DisplayWidth = 16
      FieldName = 'TrafficfeeDate'
    end
    object Query1Trafficfee: TFloatField
      DisplayWidth = 8
      FieldName = 'Trafficfee'
    end
    object Query1NO: TSmallintField
      DisplayWidth = 8
      FieldName = 'NO'
    end
    object Query1Plan_EDate: TDateTimeField
      FieldName = 'Plan_EDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 81
  end
end
