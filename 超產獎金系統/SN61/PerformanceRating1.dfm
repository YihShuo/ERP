object PerformanceRating: TPerformanceRating
  Left = 0
  Top = 0
  Caption = 'Assessment form for foreign cadres'
  ClientHeight = 656
  ClientWidth = 1523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1523
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 287
      Top = 38
      Width = 81
      Height = 16
      Caption = #24037#34399' | S'#7889' th'#7867
    end
    object Label11: TLabel
      Left = 4
      Top = 6
      Width = 90
      Height = 16
      Caption = #37096#38272' | B'#7897' Ph'#7853'n'
    end
    object Label10: TLabel
      Left = 12
      Top = 38
      Width = 82
      Height = 16
      Caption = #21934#20301' | '#272#417'n V'#7883
    end
    object Label2: TLabel
      Left = 461
      Top = 6
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = #26376#20221' | Th'#225'ng'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 295
      Top = 6
      Width = 62
      Height = 16
      Alignment = taRightJustify
      Caption = #24180#20221' | N'#259'm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 594
      Top = 11
      Width = 9
      Height = 16
      Alignment = taCenter
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 39
      Top = 60
      Width = 57
      Height = 32
      Alignment = taRightJustify
      Caption = 'Qu'#7889'c t'#7883'ch '#22283#31821
      WordWrap = True
    end
    object Label6: TLabel
      Left = 485
      Top = 38
      Width = 48
      Height = 16
      Alignment = taRightJustify
      Caption = #21021#35413#20027#31649
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 673
      Top = 24
      Width = 80
      Height = 30
      Caption = 'Truy v'#7845'n'
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbFlowflag: TCheckBox
      Left = 673
      Top = 66
      Width = 136
      Height = 17
      Caption = 'Ho'#224'n th'#224'nh|'#24050#32080#26696
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object cbM1: TComboBox
      Left = 539
      Top = 3
      Width = 49
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object cbY: TComboBox
      Left = 374
      Top = 3
      Width = 81
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030'
        '2031'
        '2032'
        '2033'
        '2034')
    end
    object cbM2: TComboBox
      Left = 609
      Top = 3
      Width = 49
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object cbID: TComboBox
      Left = 374
      Top = 33
      Width = 81
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = cbIDChange
    end
    object Button2: TButton
      Left = 775
      Top = 24
      Width = 80
      Height = 30
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
    object GBN: TGroupBox
      Left = 100
      Top = 63
      Width = 558
      Height = 29
      TabOrder = 7
      object RBALL: TRadioButton
        Left = 3
        Top = 6
        Width = 97
        Height = 17
        Caption = #25152#26377' T'#7845't c'#7843
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RBTW: TRadioButton
        Left = 106
        Top = 6
        Width = 199
        Height = 17
        Caption = #22806#31821#24178#37096' C'#225'n b'#7897' n'#432#7899'c ngo'#224'i'
        TabOrder = 1
      end
      object RBVN: TRadioButton
        Left = 311
        Top = 6
        Width = 186
        Height = 17
        Caption = #36234#21335#24178#37096' C'#225'n b'#7897' Vi'#7879't Nam'
        TabOrder = 2
      end
    end
    object cbFAC: TComboBox
      Left = 100
      Top = 3
      Width = 181
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object cbDEP: TComboBox
      Left = 100
      Top = 33
      Width = 181
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object cbCFM: TComboBox
      Left = 539
      Top = 33
      Width = 119
      Height = 24
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = cbIDChange
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 97
    Width = 1523
    Height = 559
    Align = alClient
    DataSource = DSMas
    DynProps = <>
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#38272
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Department'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #21934#20301
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Position'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #32887#31281
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #24037#34399
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        ReadOnly = False
        Title.Caption = #22995#21517
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 180
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JoinDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #21040#32887#26085
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TimePR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #32771#26680#21312#38291
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TMT_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #24037#20316#30446#27161
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 65
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TNL_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #33021#21147
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TPD_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #21697#24503
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TKT_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #23416#35672
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TD_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #21021#35413#21512#35336
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFM_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #21021#35413#20027#31649
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TD_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #35079#35413#21512#35336'2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFM_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #35079#35413#20027#31649'2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TD_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #35079#35413#21512#35336'3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFM_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Footers = <>
        Title.Caption = #35079#35413#20027#31649'3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QMaster: TADOQuery
    Connection = DM2.ADOConn3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, B' +
        'usinessTrip, Total-Absence-BusinessTrip AS Attendance,'
      
        'CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) ' +
        'AS AttendanceRate,'
      
        '100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4' +
        ', 1)) AS AbsenceRate FROM ('
      
        '  SELECT '#39'A'#24288#21312#39' AS Factory, '#39#38283#30332'-'#38795#24288'-'#24149#20698#39' AS Department, MAX(Total_T' +
        'W) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,'
      
        '  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH,' +
        ' MAX(Total_Others) AS Others,'
      
        '  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS Busi' +
        'nessTrip FROM ('
      
        '    SELECT ISNULL(CASE WHEN Certificate.NID = '#39'TW'#39' THEN COUNT(Ce' +
        'rtificate.NID) END, 0) AS Total_TW,'
      
        '    ISNULL(CASE WHEN Certificate.NID = '#39'CN'#39' THEN COUNT(Certifica' +
        'te.NID) END, 0) AS Total_CN,'
      
        '    ISNULL(CASE WHEN Certificate.NID = '#39'PH'#39' THEN COUNT(Certifica' +
        'te.NID) END, 0) AS Total_PH,'
      
        '    ISNULL(CASE WHEN Certificate.NID NOT IN ('#39'TW'#39', '#39'CN'#39', '#39'PH'#39') T' +
        'HEN COUNT(Certificate.NID) END, 0) AS Total_Others '
      #9'FROM Certificate'
      #9'left join Directory on Certificate.ID=Directory.ID'
      
        #9'Left join Directory_Nationality on Directory_Nationality.NID=Ce' +
        'rtificate.NID'
      
        '    WHERE  IsNull(Certificate.Resigned,0)=0 and Directory.Factor' +
        'yS IN ('#39'009'#39','#39'General'#39', '#39'003'#39','#39'004'#39','#39'002'#39','#39'DC'#39','#39'006'#39') and Direct' +
        'ory.FID = '#39'01'#39' and Certificate.NID<>'#39'VN'#39' '
      '    GROUP BY Certificate.NID'
      '  ) AS Nationality'
      '  LEFT JOIN ('
      
        '    SELECT '#39'A'#24288#21312#39' AS Factory, '#39#38283#30332'-'#38795#24288'-'#24149#20698#39' AS Department, SUM(Absen' +
        'ce) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM ('
      '      SELECT'
      
        '      CASE WHEN Type <> '#39#20986#24046#39' THEN COUNT(DISTINCT LeaveData.ID) E' +
        'ND AS Absence,'
      
        '      CASE WHEN Type = '#39#20986#24046#39' THEN COUNT(DISTINCT LeaveData.ID) EN' +
        'D AS BusinessTrip FROM LeaveData'
      '      LEFT JOIN Directory ON Directory.ID = LeaveData.ID'
      
        '      WHERE CONVERT(DATETIME, '#39'2023/08/04'#39') BETWEEN StartDate AN' +
        'D CASE WHEN ISNULL(EndDate, '#39#39') = '#39#39' THEN CONVERT(DATETIME, '#39'300' +
        '0/01/01'#39') ELSE EndDate END'
      
        '      and Directory.FactoryS IN ('#39'009'#39','#39'General'#39', '#39'003'#39','#39'004'#39','#39'0' +
        '02'#39','#39'DC'#39','#39'006'#39') and Directory.FID = '#39'01'#39
      '      GROUP BY Type'
      '    ) AS LeaveData'
      '  ) AS LeaveData ON 1 = 1'
      '  GROUP BY Absence, BusinessTrip'
      ') AS AttendanceData')
    Left = 96
    Top = 248
    object QMasterFactory: TWideStringField
      FieldName = 'Factory'
      Size = 50
    end
    object QMasterDepartment: TWideStringField
      FieldName = 'Department'
      Size = 50
    end
    object QMasterPosition: TWideStringField
      FieldName = 'Position'
      Size = 50
    end
    object QMasterUserID: TStringField
      FieldName = 'UserID'
    end
    object QMasterUserName: TWideStringField
      FieldName = 'UserName'
      Size = 200
    end
    object QMasterJoinDate: TDateTimeField
      FieldName = 'JoinDate'
      DisplayFormat = 'yyyy-MM-dd'
    end
    object QMasterTMT_1: TIntegerField
      FieldName = 'TMT_1'
    end
    object QMasterTNL_1: TIntegerField
      FieldName = 'TNL_1'
    end
    object QMasterTPD_1: TIntegerField
      FieldName = 'TPD_1'
    end
    object QMasterTKT_1: TIntegerField
      FieldName = 'TKT_1'
    end
    object QMasterTD_1: TIntegerField
      FieldName = 'TD_1'
    end
    object QMasterCFM_1: TWideStringField
      FieldName = 'CFM_1'
      Size = 100
    end
    object QMasterTD_2: TIntegerField
      FieldName = 'TD_2'
    end
    object QMasterCFM_2: TWideStringField
      FieldName = 'CFM_2'
      Size = 100
    end
    object QMasterTD_3: TIntegerField
      FieldName = 'TD_3'
    end
    object QMasterCFM_3: TWideStringField
      FieldName = 'CFM_3'
      Size = 100
    end
    object QMasterTimePR: TStringField
      FieldName = 'TimePR'
    end
    object QMasterPNO: TStringField
      FieldName = 'PNO'
    end
    object QMasterYear: TStringField
      FieldName = 'Year'
      Size = 5
    end
    object QMasterMonth: TStringField
      FieldName = 'Month'
      Size = 5
    end
  end
  object DSMas: TDataSource
    DataSet = QMaster
    Left = 96
    Top = 200
  end
  object QTemp: TMyADOQuery
    Connection = DM2.ADOConn3
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DailyMenu'
      'WHERE Category = :Category')
    Left = 152
    Top = 248
  end
  object QDetail: TMyADOQuery
    Connection = DM2.ADOConn3
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = DSMas
    Parameters = <
      item
        Name = 'PNO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM LYN_PerformanceRating'
      
        'left join LYN_PerformanceRating_1 on LYN_PerformanceRating_1.PNO' +
        '=LYN_PerformanceRating.PNO'
      
        'left join LYN_PerformanceRating_2 on LYN_PerformanceRating_2.PNO' +
        '=LYN_PerformanceRating.PNO'
      
        'left join LYN_PerformanceRating_3 on LYN_PerformanceRating_3.PNO' +
        '=LYN_PerformanceRating.PNO'
      
        'left join LYN_USERGROUPS on LYN_USERGROUPS.UserID=LYN_Performanc' +
        'eRating.UserID'
      'where LYN_PerformanceRating.PNO=:PNO')
    Left = 96
    Top = 344
  end
  object DSDet: TDataSource
    DataSet = QDetail
    Left = 96
    Top = 296
  end
end
