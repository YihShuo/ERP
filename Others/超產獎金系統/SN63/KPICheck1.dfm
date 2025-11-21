object KPICheck: TKPICheck
  Left = 0
  Top = 0
  Caption = 'KPICheck'
  ClientHeight = 632
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1128
    Height = 632
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Sreach KPI'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1120
        Height = 123
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object Label5: TLabel
          Left = 0
          Top = 69
          Width = 97
          Height = 16
          Caption = #22283#31821' | Qu'#7889'c t'#7883'ch'
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
        object Label7: TLabel
          Left = 69
          Top = 101
          Width = 18
          Height = 16
          Caption = 'KPI'
          WordWrap = True
        end
        object Button1: TButton
          Left = 673
          Top = 30
          Width = 80
          Height = 30
          Caption = 'Truy v'#7845'n'
          TabOrder = 0
          OnClick = Button1Click
        end
        object cbFlowflag: TCheckBox
          Left = 673
          Top = 72
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
          TabOrder = 4
        end
        object Button2: TButton
          Left = 775
          Top = 30
          Width = 80
          Height = 30
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button2Click
        end
        object GBN: TGroupBox
          Left = 100
          Top = 63
          Width = 558
          Height = 29
          TabOrder = 6
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
          TabOrder = 7
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
          TabOrder = 8
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
          TabOrder = 9
          OnChange = cbCFMChange
        end
        object GroupBox1: TGroupBox
          Left = 100
          Top = 94
          Width = 558
          Height = 29
          TabOrder = 10
          object RBKW: TRadioButton
            Left = 3
            Top = 6
            Width = 127
            Height = 17
            Caption = #29694#22580' Hi'#7879'n tr'#432#7901'ng'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RBKO: TRadioButton
            Left = 136
            Top = 6
            Width = 138
            Height = 17
            Caption = #36774#20844#23460' V'#259'n Ph'#242'ng'
            TabOrder = 1
          end
          object RBKOVN: TRadioButton
            Left = 274
            Top = 6
            Width = 172
            Height = 17
            Caption = 'VN'#36774#20844#23460' V'#259'n Ph'#242'ng VN'
            TabOrder = 2
          end
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 123
        Width = 1120
        Height = 478
        Align = alClient
        DataSource = DSMas
        DynProps = <>
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
            Title.Caption = #37096#38272
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Footers = <>
            Title.Caption = #21934#20301
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Position'
            Footers = <>
            Title.Caption = #32887#31281
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Title.Caption = #24037#34399
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            ReadOnly = False
            Title.Caption = #22995#21517
            Width = 180
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'JoinDate'
            Footers = <>
            Title.Caption = #21040#32887#26085
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TimePR'
            Footers = <>
            Title.Caption = #32771#26680#21312#38291
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TS1_1'
            Footers = <>
            Title.Caption = #24037#20316#30446#27161
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TS2_1'
            Footers = <>
            Title.Caption = #33021#21147
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TS3_1'
            Footers = <>
            Title.Caption = #21697#24503
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TS4_1'
            Footers = <>
            Title.Caption = #23416#35672
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TD_1'
            Footers = <>
            Title.Caption = #21021#35413#21512#35336
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFM_1'
            Footers = <>
            Title.Caption = #21021#35413#20027#31649
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TD_2'
            Footers = <>
            Title.Caption = #35079#35413#21512#35336'2'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFM_2'
            Footers = <>
            Title.Caption = #35079#35413#20027#31649'2'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TD_3'
            Footers = <>
            Title.Caption = #35079#35413#21512#35336'3'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFM_3'
            Footers = <>
            Title.Caption = #35079#35413#20027#31649'3'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Loss ID'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1120
        Height = 123
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 287
          Top = 38
          Width = 81
          Height = 16
          Caption = #24037#34399' | S'#7889' th'#7867
        end
        object Label9: TLabel
          Left = 4
          Top = 6
          Width = 90
          Height = 16
          Caption = #37096#38272' | B'#7897' Ph'#7853'n'
        end
        object Label12: TLabel
          Left = 12
          Top = 38
          Width = 82
          Height = 16
          Caption = #21934#20301' | '#272#417'n V'#7883
        end
        object Label13: TLabel
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
        object Label14: TLabel
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
        object Label15: TLabel
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
        object Label16: TLabel
          Left = 0
          Top = 69
          Width = 97
          Height = 16
          Caption = #22283#31821' | Qu'#7889'c t'#7883'ch'
          WordWrap = True
        end
        object Label17: TLabel
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
        object Label18: TLabel
          Left = 69
          Top = 101
          Width = 18
          Height = 16
          Caption = 'KPI'
          WordWrap = True
        end
        object Button3: TButton
          Left = 673
          Top = 30
          Width = 80
          Height = 30
          Caption = 'Truy v'#7845'n'
          TabOrder = 0
          OnClick = Button3Click
        end
        object cbM11: TComboBox
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
          TabOrder = 1
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
        object cbY1: TComboBox
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
          TabOrder = 2
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
        object cbM21: TComboBox
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
          TabOrder = 3
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
        object cbID1: TComboBox
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
          TabOrder = 4
        end
        object Button4: TButton
          Left = 775
          Top = 30
          Width = 80
          Height = 30
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button4Click
        end
        object GroupBox2: TGroupBox
          Left = 100
          Top = 63
          Width = 558
          Height = 29
          TabOrder = 6
          object RBALL1: TRadioButton
            Left = 3
            Top = 6
            Width = 97
            Height = 17
            Caption = #25152#26377' T'#7845't c'#7843
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RBTW1: TRadioButton
            Left = 106
            Top = 6
            Width = 199
            Height = 17
            Caption = #22806#31821#24178#37096' C'#225'n b'#7897' n'#432#7899'c ngo'#224'i'
            TabOrder = 1
          end
          object RBVN1: TRadioButton
            Left = 311
            Top = 6
            Width = 186
            Height = 17
            Caption = #36234#21335#24178#37096' C'#225'n b'#7897' Vi'#7879't Nam'
            TabOrder = 2
          end
        end
        object cbFAC1: TComboBox
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
          TabOrder = 7
        end
        object cbDEP1: TComboBox
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
          TabOrder = 8
        end
        object cbCFM1: TComboBox
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
          TabOrder = 9
        end
        object GroupBox3: TGroupBox
          Left = 100
          Top = 94
          Width = 558
          Height = 29
          TabOrder = 10
          object RBKW1: TRadioButton
            Left = 3
            Top = 6
            Width = 127
            Height = 17
            Caption = #29694#22580' Hi'#7879'n tr'#432#7901'ng'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RBKO1: TRadioButton
            Left = 136
            Top = 6
            Width = 138
            Height = 17
            Caption = #36774#20844#23460' V'#259'n Ph'#242'ng'
            TabOrder = 1
          end
          object RBKOVN1: TRadioButton
            Left = 274
            Top = 6
            Width = 172
            Height = 17
            Caption = 'VN'#36774#20844#23460' V'#259'n Ph'#242'ng VN'
            TabOrder = 2
          end
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 123
        Width = 1120
        Height = 478
        Align = alClient
        DataSource = DSMas1
        DynProps = <>
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Title.Caption = #24037#34399
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            ReadOnly = False
            Title.Caption = #22995#21517
            Width = 180
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
            Title.Caption = #37096#38272
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Footers = <>
            Title.Caption = #21934#20301
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Position'
            Footers = <>
            Title.Caption = #32887#31281
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'JoinDate'
            Footers = <>
            Title.Caption = #21040#32887#26085
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TimePR'
            Footers = <>
            Title.Caption = #32771#26680#21312#38291
            Width = 120
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
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
  object DSMas: TDataSource
    DataSet = QMaster
    Left = 96
    Top = 200
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
    object QMasterTS1_1: TIntegerField
      FieldName = 'TS1_1'
    end
    object QMasterTS2_1: TIntegerField
      FieldName = 'TS2_1'
    end
    object QMasterTS3_1: TIntegerField
      FieldName = 'TS3_1'
    end
    object QMasterTS4_1: TIntegerField
      FieldName = 'TS4_1'
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
  object DSDet: TDataSource
    DataSet = QDetail
    Left = 96
    Top = 296
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
  object QMaster1: TADOQuery
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
    Left = 304
    Top = 272
    object StringField1: TStringField
      FieldName = 'UserID'
    end
    object WideStringField4: TWideStringField
      FieldName = 'UserName'
      Size = 200
    end
    object WideStringField1: TWideStringField
      FieldName = 'Factory'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'Department'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'Position'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'JoinDate'
      DisplayFormat = 'yyyy-MM-dd'
    end
    object StringField2: TStringField
      FieldName = 'TimePR'
    end
  end
  object DSMas1: TDataSource
    DataSet = QMaster1
    Left = 304
    Top = 224
  end
end
