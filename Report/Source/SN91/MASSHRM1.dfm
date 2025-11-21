object MASSHRM: TMASSHRM
  Left = 262
  Top = 204
  Width = 937
  Height = 568
  Caption = 'MASSHRM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 249
    Width = 929
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Color = clHighlight
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 137
      Height = 20
      AutoSize = False
      Caption = #26376#29986#33021#20154#20107#24046#21220#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 9
      Top = 27
      Width = 36
      Height = 16
      Caption = 'Month'
    end
    object Label18: TLabel
      Left = 109
      Top = 27
      Width = 4
      Height = 16
      Caption = '/'
    end
    object Label2: TLabel
      Left = 157
      Top = 30
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label3: TLabel
      Left = 221
      Top = 27
      Width = 4
      Height = 16
      Caption = '/'
    end
    object Button1: TButton
      Left = 282
      Top = 22
      Width = 81
      Height = 25
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 372
      Top = 22
      Width = 81
      Height = 25
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 50
      Top = 24
      Width = 55
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2028')
    end
    object CBX2: TComboBox
      Left = 117
      Top = 24
      Width = 41
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '00'
      Items.Strings = (
        '00'
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
    object CBX3: TComboBox
      Left = 162
      Top = 24
      Width = 55
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2028')
    end
    object CBX4: TComboBox
      Left = 229
      Top = 24
      Width = 41
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = '00'
      Items.Strings = (
        '00'
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 929
    Height = 192
    Align = alTop
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'HMonth'
        Footers = <>
        Title.Caption = 'Month|'#26376#20221
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'HDays'
        Footers = <>
        Title.Caption = 'Days|'#24037#20316#22825#25976
      end
      item
        EditButtons = <>
        FieldName = 'PodQty'
        Footers = <>
        Title.Caption = 'Poduction|'#29986#37327#38617#25976
        Title.Color = clSkyBlue
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'ShipQty'
        Footers = <>
        Title.Caption = 'Poduction|'#20986#36008#38617#25976
        Title.Color = clSkyBlue
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'DirectHM_WQty'
        Footers = <>
        Title.Caption = 'Work Attend|'#24046#21220#30452#24037#20154#25976
        Title.Color = clMoneyGreen
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'InDirectHM_WQty'
        Footers = <>
        Title.Caption = 'Work Attend|'#24046#21220#38291#24037#20154#25976
        Title.Color = clMoneyGreen
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'HM_WQty'
        Footers = <>
        Title.Caption = 'Work Attend|'#24046#21220#32317#20154#25976
        Title.Color = clMoneyGreen
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'DirectHM_WHourN'
        Footers = <>
        Title.Caption = 'Direct Work Hours|'#30452#24037#27491#29677#24037#26178
        Title.Color = clAqua
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'DirectHM_WHourC'
        Footers = <>
        Title.Caption = 'Direct Work Hours|'#30452#24037#21152#29677#24037#26178
        Title.Color = clAqua
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'DirectHM_WHour'
        Footers = <>
        Title.Caption = 'Direct Work Hours|'#30452#24037#32317#24037#26178
        Title.Color = clAqua
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'InDirectHM_WHourN'
        Footers = <>
        Title.Caption = 'InDirect Work Hours|'#38291#24037#27491#29677#24037#26178
        Title.Color = clActiveCaption
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'InDirectHM_WHourC'
        Footers = <>
        Title.Caption = 'InDirect Work Hours|'#38291#24037#21152#29677#24037#26178
        Title.Color = clActiveCaption
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'InDirectHM_WHour'
        Footers = <>
        Title.Caption = 'InDirect Work Hours|'#38291#24037#32317#24037#26178
        Title.Color = clActiveCaption
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'HM_WHour'
        Footers = <>
        Title.Caption = 'Worker Hour|'#30452#38291#24037#32317#24037#26178
        Title.Color = clYellow
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Work Count'
        Footers = <>
        Title.Caption = 'Worker Statistics|'#21729#24037#25976
        Title.Color = clLime
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'InDirectRate'
        Footers = <>
        Title.Caption = 'Worker Statistics|'#30452#38291#27604
        Title.Color = clLime
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'WorkRate'
        Footers = <>
        Title.Caption = 'Worker Statistics|'#20986#21220#29575
        Title.Color = clLime
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'LeftWorkRate'
        Footers = <>
        Title.Caption = 'Worker Statistics|'#38626#32887#20154#25976
        Title.Color = clLime
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'ThaiQty'
        Footers = <>
        Title.Caption = 'Worker Statistics|'#23381#23142#27604#29575
        Title.Color = clLime
        Width = 61
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 254
    Width = 929
    Height = 283
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #29986#37327#38617#25976
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 921
        Height = 252
        Align = alClient
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
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PMonth'
            Footers = <>
            Title.Caption = 'Month|'#26376#20221
          end
          item
            EditButtons = <>
            FieldName = 'PDay'
            Footers = <>
            Title.Caption = 'Day|'#26085#26399
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Qty|'#29986#37327#38617#25976
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20986#36008#38617#25976
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 913
        Height = 245
        Align = alClient
        DataSource = DS3
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
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ExMonth'
            Footers = <>
            Title.Caption = 'Month|'#26376#20221
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'ExDay'
            Footers = <>
            Title.Caption = 'Day|'#26085#26399
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Qty|'#20986#36008#38617#25976
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #24046#21220#20154#25976
      ImageIndex = 2
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 913
        Height = 245
        Align = alClient
        DataSource = DS4
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
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'QT_Month'
            Footers = <>
            Title.Caption = 'Month|'#26376#20221
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'QT_Day'
            Footers = <>
            Title.Caption = 'Day|'#26085#26399
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SLTT'
            Footer.FieldName = 'SLTT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Work Attendance|'#24046#21220#30452#24037#20154#25976
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'SLGT'
            Footer.FieldName = 'SLGT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Work Attendance|'#24046#21220#38291#24037#20154#25976
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'SL_All'
            Footer.FieldName = 'SL_All'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Work Attendance|'#24046#21220#32317#20154#25976
            Width = 85
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #30452#24037#24037#26178
      ImageIndex = 3
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 913
        Height = 245
        Align = alClient
        DataSource = DS5
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
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'QT_Month'
            Footers = <>
            Title.Caption = 'Month|'#26376#20221
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'QT_Day'
            Footers = <>
            Title.Caption = 'Day|'#26085#26399
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TTLCHC'
            Footer.FieldName = 'TTLCHC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Direct Work Hours|'#30452#24037#27491#29677#24037#26178
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'TTTCHC'
            Footer.FieldName = 'TTTCHC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Direct Work Hours|'#30452#24037#21152#29677#24037#26178
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'HC_All'
            Footer.FieldName = 'HC_All'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Direct Work Hours|'#30452#24037#32317#24037#26178
            Width = 85
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #38291#24037#24037#26178
      ImageIndex = 4
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 913
        Height = 245
        Align = alClient
        DataSource = DS6
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
        FooterRowCount = 1
        FrozenCols = 2
        ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'QT_Month'
            Footers = <>
            Title.Caption = 'Month|'#26376#20221
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'QT_Day'
            Footers = <>
            Title.Caption = 'Day|'#26085#26399
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'GTLCHC'
            Footer.FieldName = 'GTLCHC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'InDirect Work Hours|'#38291#24037#27491#29677#24037#26178
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'GTTCHC'
            Footer.FieldName = 'GTTCHC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'InDirect Work Hours|'#38291#24037#21152#29677#24037#26178
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'HC_All'
            Footer.FieldName = 'HC_All'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'InDirect Work Hours|'#38291#24037#32317#24037#26178
            Width = 85
          end>
      end
    end
  end
  object HRMQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on '
      'select SCBZCL.BMonth as '#39'HMonth'#39',SCBZCL.BCount as '#39'HDays'#39','
      '       SCBB.Qty as '#39'PodQty'#39',YWCP.Qty as '#39'ShipQty'#39','
      
        '       HRM.SLTT/SCBZCL.BCount as '#39'DirectHM_WQty'#39', HRM.SLGT/SCBZC' +
        'L.BCount as '#39'InDirectHM_WQty'#39','
      
        '       (HRM.SLTT/SCBZCL.BCount+HRM.SLGT/SCBZCL.BCount) as '#39'HM_WQ' +
        'ty'#39','
      
        '       HRM.TTLCHC as '#39'DirectHM_WHourN'#39',HRM.TTTCHC as '#39'DirectHM_W' +
        'HourC'#39','
      '       HRM.All_TTHC as '#39'DirectHM_WHour'#39','
      
        '       HRM.GTLCHC as '#39'InDirectHM_WHourN'#39',HRM.GTTCHC as '#39'InDirect' +
        'HM_WHourC'#39','
      '       HRM.All_GTHC as '#39'InDirectHM_WHour'#39','
      
        '       HRM.All_TTHC+HRM.All_GTHC as '#39'HM_WHour'#39',HRM.SL as '#39'Work C' +
        'ount'#39','
      
        '       HRM.TTGT as '#39'InDirectRate'#39', HRM.WorkRate/SCBZCL.BCount*10' +
        '0 as '#39'WorkRate'#39', HRM.NGHIVIEC as '#39'LeftWorkRate'#39', HRM.THAIRate*10' +
        '0 as '#39'ThaiQty'#39'     '
      'from ('
      
        'select Convert(varchar,month(BZDate)) as BMonth,Count (distinct ' +
        'BZDate) as BCount '
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39' and BDepartment.ProYN=1 and BZDate' +
        '>='#39'2016-09-01'#39' and BZDate<='#39'2016-09-30'#39' and Qty>0'
      'Group by month(BZDate) ) SCBZCL'
      'left join ( '
      'select month(SCBB.SCDate) as PMonth,Sum(Qty) as Qty '
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2016-09-01'#39' and '#39'2016-09-30'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      
        'Group by month(SCBB.SCDate)  ) SCBB  on SCBB.PMonth=SCBZCL.BMont' +
        'h '
      'left join ( '
      'select month(YWCP.EXEDATE) as ExMonth, SUM(YWCP.Qty) as Qty '
      'from YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'where DDZL.GSBH='#39'VA12'#39' and convert(smalldatetime,convert(varchar' +
        ',YWCP.EXEDATE,111)) between '#39'2016-09-01'#39' and '#39'2016-09-30'#39'  '
      
        'Group by month(YWCP.EXEDATE) ) YWCP on YWCP.ExMonth=SCBZCL.BMont' +
        'h '
      '--'
      'Left join ('
      '--'
      
        'select Convert(varchar,GIOQUETTEH_SL.QT_Month) as QT_Month,GIOQU' +
        'ETTEH_SL.SLTT,GIOQUETTEH_SL.SLGT,GIOQUETTEH_SL.SLTT+GIOQUETTEH_S' +
        'L.SLGT as ALLSL,'
      
        '       GIOQUETTEH_SL.TTLCHC,GIOQUETTEH_SL.TTTCHC,GIOQUETTEH_SL.T' +
        'TLCHC+GIOQUETTEH_SL.TTTCHC as All_TTHC,'
      
        '       GIOQUETTEH_SL.GTLCHC,GIOQUETTEH_SL.GTTCHC,GIOQUETTEH_SL.G' +
        'TLCHC+GIOQUETTEH_SL.GTTCHC as All_GTHC,'
      
        '       GIOQUETTEH_SL.TTLCHC+GIOQUETTEH_SL.TTTCHC+GIOQUETTEH_SL.G' +
        'TLCHC+GIOQUETTEH_SL.GTTCHC as All_HC,'
      
        '       Round(Convert(float,GIOQUETTEH_SL.SLTT)/Convert(float,GIO' +
        'QUETTEH_SL.SLGT),2) as TTGT,'
      
        '       Convert(float,(GIOQUETTEH_SL.SLTT+GIOQUETTEH_SL.SLGT))/NH' +
        'ANVIEN_SL.SL as WorkRate,  '
      '       NGHIVIEC_SL.NGHIVIEC,'
      
        '       Convert(float,NHANVIEN_SL.VE15H30NUOICON)/NHANVIEN_SL.SL ' +
        'as THAIRate,NHANVIEN_SL.SL'
      'from ('
      'SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,'
      
        'SLTT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA,1' +
        ')='#39'A'#39' THEN 1 ELSE 0 END) ,'
      
        'SLGT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA,1' +
        ')='#39'B'#39' THEN 1 ELSE 0 END) , '
      
        'TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA' +
        ',1)='#39'A'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END) ,'
      
        'TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(CV_MA,1)=' +
        #39'A'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOTANGCA ELSE 0 END),'
      
        'GTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA' +
        ',1)='#39'B'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END) ,'
      
        'GTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(CV_MA,1)=' +
        #39'B'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END)'
      ''
      'FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN ON' +
        ' ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '
      
        'WHERE QT_NGAY>='#39'2016-09-01'#39' and QT_NGAY<='#39'2016-09-30'#39' AND ST_DON' +
        'VI.X_MA_ like '#39'A%'#39
      'GROUP BY  month(ST_GIOQUETTHE.QT_NGAY)  ) as GIOQUETTEH_SL'
      'LEFT join (  '
      ''
      
        'select month(Convert(smalldatetime,'#39'2016-09-30'#39')) as NHANNIEN_Mo' +
        'nth,COUNT(distinct ST_NHANVIEN.NV_MA) as SL'
      
        '       ,VE15H30NUOICON = COUNT(distinct IT_THAITHANGTHU7.NV_MA )' +
        '+COUNT(distinct IT_NUOICONDUOI12THANG.NV_MA )'
      'from HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.IT_NUOICONDUOI12THANG IT_NU' +
        'OICONDUOI12THANG ON ST_NHANVIEN.NV_MA = IT_NUOICONDUOI12THANG.NV' +
        '_MA  '
      
        '               AND  ((IT_NUOICONDUOI12THANG.TUNGAY<='#39'2016-09-01'#39 +
        ' and IT_NUOICONDUOI12THANG.DENNGAY>='#39'2016-09-01'#39') '
      
        '               or (IT_NUOICONDUOI12THANG.TUNGAY<='#39'2016-09-30'#39' an' +
        'd IT_NUOICONDUOI12THANG.DENNGAY>='#39'2016-09-30'#39') '
      
        '               or (IT_NUOICONDUOI12THANG.TUNGAY>='#39'2016-09-01'#39' an' +
        'd IT_NUOICONDUOI12THANG.DENNGAY<='#39'2016-09-30'#39') '
      
        '               or (IT_NUOICONDUOI12THANG.TUNGAY<='#39'2016-09-01'#39' an' +
        'd IT_NUOICONDUOI12THANG.DENNGAY>='#39'2016-09-30'#39') ) '
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.IT_THAITHANGTHU7 IT_THAITHA' +
        'NGTHU7 ON ST_NHANVIEN.NV_MA = IT_THAITHANGTHU7.NV_MA  '
      
        '               AND  ((IT_THAITHANGTHU7.BATDAUTU<='#39'2016-09-01'#39' an' +
        'd IT_THAITHANGTHU7.DENNGAY>='#39'2016-09-01'#39') '
      
        '               or (IT_THAITHANGTHU7.BATDAUTU<='#39'2016-09-30'#39' and I' +
        'T_THAITHANGTHU7.DENNGAY>='#39'2016-09-30'#39') '
      
        '               or (IT_THAITHANGTHU7.BATDAUTU>='#39'2016-09-01'#39' and I' +
        'T_THAITHANGTHU7.DENNGAY<='#39'2016-09-30'#39') '
      
        '               or (IT_THAITHANGTHU7.BATDAUTU<='#39'2016-09-01'#39' and I' +
        'T_THAITHANGTHU7.DENNGAY>='#39'2016-09-30'#39') )'
      
        'WHERE ST_NHANVIEN.NV_Ngayvao <= '#39'2016-09-30'#39' AND ST_NHANVIEN.NV_' +
        'THOIVIEC=0 --and ST_NHANVIEN.NV_NgayTV> '#39'2016-09-30'#39' '
      '      AND ST_NHANVIEN.DV_MA NOT IN ('#39'BGD'#39','#39'BGDX'#39') '
      '      AND ST_NHANVIEN.DV_MA NOT LIKE '#39'%CG%'#39'       '
      '      AND ST_DONVI.X_MA_ like '#39'A%'#39' '
      
        '      ) as NHANVIEN_SL on GIOQUETTEH_SL.QT_Month=NHANVIEN_SL.NHA' +
        'NNIEN_Month'
      ''
      'LEFT join ( '
      'SELECT '
      
        ' month(IT_DIEMDANHHANGNGAY.NGAY) as NGHIVIEC_Month ,NGHIVIEC = C' +
        'OUNT(IT_DIEMDANHHANGNGAY.NV_MA)'
      
        'FROM HumanDB.[P0104-TYXUAN].dbo.IT_DIEMDANHHANGNGAY IT_DIEMDANHH' +
        'ANGNGAY'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON IT_DI' +
        'EMDANHHANGNGAY.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '
      'WHERE IT_DIEMDANHHANGNGAY.NGAYVAO  <= '#39'2016-09-30'#39' '
      '      AND IT_DIEMDANHHANGNGAY.DV_MA NOT IN ('#39'BGD'#39','#39'BGDX'#39') '
      '      AND IT_DIEMDANHHANGNGAY.DV_MA NOT LIKE '#39'%CG%'#39
      
        '      AND IT_DIEMDANHHANGNGAY.NGAY between '#39'2016-09-01'#39' and '#39'201' +
        '6-09-30'#39' '
      
        '      AND (IT_DIEMDANHHANGNGAY.NVG = 1 OR IT_DIEMDANHHANGNGAY.OP' +
        'KTRG = 1)'
      '      AND ST_DONVI.X_MA_ like '#39'A%'#39
      
        'GROUP BY month(IT_DIEMDANHHANGNGAY.NGAY) ) as NGHIVIEC_SL on NGH' +
        'IVIEC_SL.NGHIVIEC_Month=GIOQUETTEH_SL.QT_Month ) HRM on HRM.QT_M' +
        'onth COLLATE DATABASE_DEFAULT =SCBZCL.BMonth COLLATE DATABASE_DE' +
        'FAULT'
      '')
    Left = 160
    Top = 136
    object HRMQryHMonth: TStringField
      FieldName = 'HMonth'
      FixedChar = True
      Size = 30
    end
    object HRMQryHDays: TIntegerField
      FieldName = 'HDays'
    end
    object HRMQryPodQty: TFloatField
      FieldName = 'PodQty'
    end
    object HRMQryShipQty: TIntegerField
      FieldName = 'ShipQty'
    end
    object HRMQryDirectHM_WQty: TIntegerField
      FieldName = 'DirectHM_WQty'
    end
    object HRMQryInDirectHM_WQty: TIntegerField
      FieldName = 'InDirectHM_WQty'
    end
    object HRMQryHM_WQty: TIntegerField
      FieldName = 'HM_WQty'
    end
    object HRMQryDirectHM_WHourN: TFloatField
      FieldName = 'DirectHM_WHourN'
    end
    object HRMQryDirectHM_WHourC: TFloatField
      FieldName = 'DirectHM_WHourC'
    end
    object HRMQryDirectHM_WHour: TFloatField
      FieldName = 'DirectHM_WHour'
    end
    object HRMQryInDirectHM_WHourN: TFloatField
      FieldName = 'InDirectHM_WHourN'
    end
    object HRMQryInDirectHM_WHourC: TFloatField
      FieldName = 'InDirectHM_WHourC'
    end
    object HRMQryInDirectHM_WHour: TFloatField
      FieldName = 'InDirectHM_WHour'
    end
    object HRMQryHM_WHour: TFloatField
      FieldName = 'HM_WHour'
    end
    object HRMQryWorkCount: TIntegerField
      FieldName = 'Work Count'
    end
    object HRMQryInDirectRate: TFloatField
      FieldName = 'InDirectRate'
      DisplayFormat = '0.00'
    end
    object HRMQryWorkRate: TFloatField
      FieldName = 'WorkRate'
      DisplayFormat = '0.000%'
    end
    object HRMQryLeftWorkRate: TIntegerField
      FieldName = 'LeftWorkRate'
    end
    object HRMQryThaiQty: TFloatField
      FieldName = 'ThaiQty'
      DisplayFormat = '0.000%'
    end
  end
  object DS1: TDataSource
    DataSet = HRMQry
    Left = 162
    Top = 168
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39')'
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39' 192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\' +
        'sql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER'
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 192
    Top = 136
  end
  object QTQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,Day(ST_GIOQUETTH' +
        'E.QT_NGAY) as QT_Day,'
      
        'SLTT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA,1' +
        ')='#39'A'#39' THEN 1 ELSE 0 END) ,'
      
        'SLGT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA,1' +
        ')='#39'B'#39' THEN 1 ELSE 0 END) ,'
      
        'SL_All=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0  THEN 1 ELSE 0' +
        ' END)'
      ''
      'FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN ON' +
        ' ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '
      
        'WHERE QT_NGAY>='#39'2016-09-01'#39' and QT_NGAY<='#39'2016-09-30'#39' AND ST_DON' +
        'VI.X_MA_ like '#39'A%'#39
      
        'GROUP BY  month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY' +
        ') '
      
        'order by month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY)' +
        ' ')
    Left = 168
    Top = 320
    object QTQryQT_Month: TIntegerField
      DisplayWidth = 10
      FieldName = 'QT_Month'
    end
    object QTQryQT_Day: TIntegerField
      DisplayWidth = 9
      FieldName = 'QT_Day'
    end
    object QTQrySLTT: TIntegerField
      DisplayWidth = 10
      FieldName = 'SLTT'
    end
    object QTQrySLGT: TIntegerField
      DisplayWidth = 10
      FieldName = 'SLGT'
    end
    object QTQrySL_All: TIntegerField
      DisplayWidth = 10
      FieldName = 'SL_All'
    end
  end
  object DS4: TDataSource
    DataSet = QTQry
    Left = 170
    Top = 352
  end
  object TTGioQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,Day(ST_GIOQUETTH' +
        'E.QT_NGAY) as QT_Day,'
      
        'TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA' +
        ',1)='#39'A'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END) ,'
      
        'TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(CV_MA,1)=' +
        #39'A'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOTANGCA ELSE 0 END),'
      
        'HC_All=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA' +
        ',1)='#39'A'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END)+'
      
        'SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(CV_MA,1)='#39'A'#39' AND' +
        ' CA_MA='#39'Ca HC'#39' THEN CC_GIOTANGCA ELSE 0 END) '
      'FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN ON' +
        ' ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '
      
        'WHERE QT_NGAY>='#39'2016-09-01'#39' and QT_NGAY<='#39'2016-09-30'#39' AND ST_DON' +
        'VI.X_MA_ like '#39'A%'#39' '
      
        'GROUP BY  month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY' +
        ') '
      
        'order by month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY)' +
        ' ')
    Left = 216
    Top = 320
    object TTGioQryQT_Month: TIntegerField
      FieldName = 'QT_Month'
    end
    object TTGioQryQT_Day: TIntegerField
      FieldName = 'QT_Day'
    end
    object TTGioQryTTLCHC: TFloatField
      FieldName = 'TTLCHC'
    end
    object TTGioQryTTTCHC: TFloatField
      FieldName = 'TTTCHC'
    end
    object TTGioQryHC_All: TFloatField
      FieldName = 'HC_All'
    end
  end
  object DS5: TDataSource
    DataSet = TTGioQry
    Left = 218
    Top = 352
  end
  object GTGioQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,Day(ST_GIOQUETTH' +
        'E.QT_NGAY) as QT_Day,'
      
        'GTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA' +
        ',1)='#39'B'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END) ,'
      
        'GTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(CV_MA,1)=' +
        #39'B'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOTANGCA ELSE 0 END),'
      
        'HC_All=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(CV_MA' +
        ',1)='#39'B'#39' AND CA_MA='#39'Ca HC'#39' THEN CC_GIOBINHTHUONG ELSE 0 END)+'
      
        'SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(CV_MA,1)='#39'B'#39' AND' +
        ' CA_MA='#39'Ca HC'#39' THEN CC_GIOTANGCA ELSE 0 END) '
      'FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN ON' +
        ' ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '
      
        'WHERE QT_NGAY>='#39'2016-09-01'#39' and QT_NGAY<='#39'2016-09-30'#39' AND ST_DON' +
        'VI.X_MA_ like '#39'A%'#39' '
      
        'GROUP BY  month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY' +
        ') '
      'order by month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY)')
    Left = 272
    Top = 320
    object GTGioQryQT_Month: TIntegerField
      FieldName = 'QT_Month'
    end
    object GTGioQryQT_Day: TIntegerField
      FieldName = 'QT_Day'
    end
    object GTGioQryGTLCHC: TFloatField
      FieldName = 'GTLCHC'
    end
    object GTGioQryGTTCHC: TFloatField
      FieldName = 'GTTCHC'
    end
    object GTGioQryHC_All: TFloatField
      FieldName = 'HC_All'
    end
  end
  object DS6: TDataSource
    DataSet = GTGioQry
    Left = 274
    Top = 352
  end
  object ScbQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select month(SCBB.SCDate) as PMonth,Day(SCBB.SCDate) as PDay,Sum' +
        '(Qty) as Qty '
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2016-09-01'#39' and '#39'2016-09-30'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      'Group by month(SCBB.SCDate),Day(SCBB.SCDate)    '
      'order by month(SCBB.SCDate),Day(SCBB.SCDate)     ')
    Left = 64
    Top = 320
    object ScbQryPMonth: TIntegerField
      DisplayWidth = 7
      FieldName = 'PMonth'
    end
    object ScbQryPDay: TIntegerField
      DisplayWidth = 6
      FieldName = 'PDay'
    end
    object ScbQryQty: TFloatField
      DisplayWidth = 11
      FieldName = 'Qty'
    end
  end
  object DS2: TDataSource
    DataSet = ScbQry
    Left = 66
    Top = 352
  end
  object YWCPQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select month(YWCP.EXEDATE) as ExMonth,Day(YWCP.EXEDATE) as ExDay' +
        ', SUM(YWCP.Qty) as Qty'
      'from YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      
        'where DDZL.GSBH='#39'VA12'#39' and convert(smalldatetime,convert(varchar' +
        ',YWCP.EXEDATE,111)) between '#39'2016/09/01'#39' and '#39'2016/09/30'#39'  '
      'Group by month(YWCP.EXEDATE),Day(YWCP.EXEDATE)'
      'order by month(YWCP.EXEDATE),Day(YWCP.EXEDATE)     ')
    Left = 112
    Top = 320
    object YWCPQryExMonth: TIntegerField
      FieldName = 'ExMonth'
    end
    object YWCPQryExDay: TIntegerField
      FieldName = 'ExDay'
    end
    object YWCPQryQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object DS3: TDataSource
    DataSet = YWCPQry
    Left = 114
    Top = 352
  end
end
