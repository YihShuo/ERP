object Report604: TReport604
  Left = 334
  Top = 214
  Width = 870
  Height = 500
  Caption = 'Report604'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 82
      Height = 16
      Caption = 'After this Year'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 50
      Width = 45
      Height = 16
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 232
      Top = 16
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 208
      Top = 16
      Width = 67
      Height = 16
      Caption = 'Data Mode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object syear: TDateTimePicker
      Left = 112
      Top = 16
      Width = 89
      Height = 21
      Date = 39448.509120532410000000
      Time = 39448.509120532410000000
      TabOrder = 0
    end
    object Factory: TComboBox
      Left = 80
      Top = 48
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VB2')
    end
    object datamode: TComboBox
      Left = 280
      Top = 16
      Width = 73
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Year'
      OnChange = datamodeChange
      Items.Strings = (
        'Year'
        'Month'
        'Day')
    end
  end
  object P1: TPageControl
    Left = 0
    Top = 81
    Width = 854
    Height = 381
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = P1Change
    object TabSheet1: TTabSheet
      Caption = 'Plan VS Real'
      object DBChart1: TDBChart
        Left = 273
        Top = 0
        Width = 573
        Height = 353
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        MarginRight = 5
        Title.Text.Strings = (
          #30446#27161#29986#33021#21644#23526#38555#29986#33021#20998#26512
          'Customers Order Analysis by Order Date')
        Chart3DPercent = 10
        LeftAxis.Grid.Style = psDashDotDot
        LeftAxis.Grid.SmallDots = True
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.MinorTicks.Style = psDash
        LeftAxis.MinorTicks.SmallDots = True
        LeftAxis.TickLength = 0
        LeftAxis.TickOnLabelsOnly = False
        LeftAxis.Ticks.Style = psDashDotDot
        LeftAxis.Ticks.SmallDots = True
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        AutoSize = True
        object Series1: TBarSeries
          Marks.Arrow.Style = psDash
          Marks.ArrowLength = 8
          Marks.BackColor = 8421631
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = PRQP
          SeriesColor = clRed
          Title = 'Plan'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'pyear'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'pqty'
        end
        object Series3: TFastLineSeries
          Marks.ArrowLength = 30
          Marks.BackColor = 8454016
          Marks.Visible = True
          DataSource = PRQP2
          SeriesColor = clGreen
          Title = 'Real'
          LinePen.Color = clGreen
          LinePen.Width = 3
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'ryear'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'rqty'
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 273
        Height = 353
        Align = alLeft
        DataSource = PRDS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh1CellClick
        OnTitleClick = DBGridEh1TitleClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Width = 36
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'PlanQty'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'PlanQty'
                ValueType = fvtSum
              end>
            Title.Caption = #35336#21123#29986#33021'|PlanQty'
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'rqty'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'rqty'
                ValueType = fvtSum
              end>
            Title.Caption = #23526#38555#29986#33021'|rqty'
          end
          item
            DisplayFormat = '#.##'
            EditButtons = <>
            FieldName = 'pr'
            Footers = <
              item
                Color = clScrollBar
                DisplayFormat = '#.##'
                FieldName = 'pr'
                ValueType = fvtAvg
              end>
            Title.Caption = #36948#25104#29575'|pr'
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Production plan VS Real'
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 273
        Top = 0
        Width = 573
        Height = 353
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        MarginRight = 5
        Title.Text.Strings = (
          #29983#31649#25490#31243#21644#23526#38555#29986#33021#20998#26512
          'Customers Order Analysis by Order Date')
        LeftAxis.Grid.Style = psDashDotDot
        LeftAxis.Grid.SmallDots = True
        LeftAxis.LabelsMultiLine = True
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.MinorTicks.Style = psDash
        LeftAxis.MinorTicks.SmallDots = True
        LeftAxis.TickOnLabelsOnly = False
        LeftAxis.Ticks.Style = psDashDotDot
        LeftAxis.Ticks.SmallDots = True
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        AutoSize = True
        object BarSeries1: TBarSeries
          Marks.Arrow.Style = psDash
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = PPRQP
          SeriesColor = clYellow
          Title = 'Production'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'pyear'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'pqty'
        end
        object BarSeries2: TFastLineSeries
          Marks.ArrowLength = 30
          Marks.BackColor = 8454016
          Marks.Visible = True
          DataSource = PRQP2
          SeriesColor = clGreen
          Title = 'Real'
          LinePen.Color = clGreen
          LinePen.Width = 2
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'ryear'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'rqty'
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 273
        Height = 353
        Align = alLeft
        DataSource = PPRDS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh2CellClick
        OnTitleClick = DBGridEh2TitleClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Width = 36
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'PlanQty'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'PlanQty'
                ValueType = fvtSum
              end>
            Title.Caption = #29983#31649#29986#33021'|PlanQty'
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'rqty'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'rqty'
                ValueType = fvtSum
              end>
            Title.Caption = #23526#38555#29986#33021'|rqty'
          end
          item
            DisplayFormat = '#.##'
            EditButtons = <>
            FieldName = 'pr'
            Footers = <
              item
                Color = clScrollBar
                DisplayFormat = '#.##'
                FieldName = 'pr'
                ValueType = fvtAvg
              end>
            Title.Caption = #36948#25104#29575'|pr'
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Plan,Production and Real'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 273
        Height = 353
        Align = alLeft
        DataSource = PPPRDS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh3CellClick
        OnTitleClick = DBGridEh3TitleClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Width = 36
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'PlanQty'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'PlanQty'
                ValueType = fvtSum
              end>
            Title.Caption = #38928#35336#29986#33021'|PlanQty'
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'rqty'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'rqty'
                ValueType = fvtSum
              end>
            Title.Caption = #23526#38555#29986#33021'|rqty'
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'pr'
            Footers = <
              item
                Color = clYellow
                DisplayFormat = '#,##9'
                FieldName = 'pr'
                ValueType = fvtSum
              end>
            Title.Caption = #29983#31649#29986#33021'|pr'
          end>
      end
      object DBChart3: TDBChart
        Left = 273
        Top = 0
        Width = 573
        Height = 353
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        MarginRight = 5
        Title.Text.Strings = (
          #29983#31649#25490#31243#21644#23526#38555#29986#33021#20998#26512
          'Customers Order Analysis by Order Date')
        LeftAxis.Grid.Style = psDashDotDot
        LeftAxis.Grid.SmallDots = True
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.MinorTicks.Style = psDash
        LeftAxis.MinorTicks.SmallDots = True
        LeftAxis.TickOnLabelsOnly = False
        LeftAxis.Ticks.Style = psDashDotDot
        LeftAxis.Ticks.SmallDots = True
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        AutoSize = True
        object BarSeries3: TBarSeries
          Marks.Arrow.Style = psDash
          Marks.ArrowLength = 10
          Marks.BackColor = 8421631
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = PRQP
          SeriesColor = clRed
          Title = 'Plan'
          BarBrush.Color = clWhite
          BarWidthPercent = 50
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'pyear'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'pqty'
        end
        object Series2: TFastLineSeries
          Marks.ArrowLength = 5
          Marks.Visible = True
          DataSource = PPRQP
          SeriesColor = clYellow
          Title = 'Production'
          LinePen.Color = clYellow
          LinePen.Width = 3
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'pyear'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'pqty'
        end
        object BarSeries4: TFastLineSeries
          Marks.ArrowLength = 15
          Marks.BackColor = 8454016
          Marks.Visible = True
          DataSource = PRQP2
          SeriesColor = clGreen
          Title = 'Real'
          LinePen.Color = clGreen
          LinePen.Width = 2
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'ryear'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'rqty'
        end
      end
    end
  end
  object PRQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  scbzcl.gsbh,sum(qty) as PlanQty,realp.rqty,isnull(ppr.pr' +
        ',0)'
      '  from scbzcl'
      'left join bdepartment on depno=id'
      'left join '
      '     (select  smdd.gsbh,sum(smdd.qty) as pr from smdd'
      '               where year(prdate)>=2008'
      #9'          and smdd.gxlb='#39'A'#39
      '      group by smdd.gsbh) as ppr on ppr.gsbh=scbzcl.gsbh'
      'left join '
      '     (select scbb.gsbh,sum(scbbs.qty) as rqty from scbb'
      #9'left join bdepartment on depno=id'
      #9'left join scbbs on scbb.prono=scbbs.prono'
      #9'where  year(scdate)>=2008'#9
      #9'            and BDepartment.GXLB='#39'A'#39
      '     group by scbb.gsbh) as realp on realp.gsbh=scbzcl.gsbh'
      'where  year(bzdate)>=2008'
      'and BDepartment.GXLB='#39'A'#39
      'group by scbzcl.gsbh,realp.rqty,ppr.pr'
      'order by scbzcl.gsbh,realp.rqty,ppr.pr')
    Left = 541
    Top = 10
    object PRQgsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object PRQPlanQty: TIntegerField
      FieldName = 'PlanQty'
    end
    object PRQrqty: TFloatField
      FieldName = 'rqty'
    end
    object PRQpr: TFloatField
      FieldName = 'pr'
    end
  end
  object PRDS: TDataSource
    DataSet = PRQ
    Left = 509
    Top = 10
  end
  object PRQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select year(bzdate) as pyear,sum(qty) as pqty'
      '  from scbzcl'
      'left join bdepartment on depno=id'
      'where  year(bzdate)>=2008'
      '            and BDepartment.GXLB='#39'A'#39
      '            and scbzcl.gsbh='#39'VA12'#39
      'group by year(bzdate)'
      'order by year(bzdate)')
    Left = 573
    Top = 11
  end
  object PRQP2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select year(scdate) as ryear,sum(scbbs.qty) as rqty from scbb'
      'left join bdepartment on depno=id'
      'left join scbbs on scbb.prono=scbbs.prono'
      'where  year(scdate)>=2008'
      '            and BDepartment.GXLB='#39'A'#39
      '            and scbb.gsbh='#39'VA12'#39
      'group by year(scdate)'
      'order by year(scdate)')
    Left = 605
    Top = 11
  end
  object PPRDS: TDataSource
    DataSet = pprQ
    Left = 509
    Top = 42
  end
  object pprQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select smdd.gsbh,sum(smdd.qty) as PlanQty,realp.rqty,((realp.rqt' +
        'y/sum(smdd.qty))*100) as pr'
      '  from smdd'
      'left join '
      '     (select scbb.gsbh,sum(scbbs.qty) as rqty from scbb'
      #9'left join bdepartment on depno=id'
      #9'left join scbbs on scbb.prono=scbbs.prono'
      #9'where  year(scdate)>=2008'#9
      #9'            and bdepartment.GXLB='#39'A'#39
      '     group by scbb.gsbh) as realp on realp.gsbh=smdd.gsbh'
      'where  year(smdd.prdate)>=2008'
      'and smdd.GXLB='#39'A'#39
      'group by smdd.gsbh,realp.rqty'
      'order by smdd.gsbh,realp.rqty')
    Left = 541
    Top = 42
    object StringField1: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object IntegerField1: TIntegerField
      FieldName = 'PlanQty'
    end
    object FloatField1: TFloatField
      FieldName = 'rqty'
    end
    object FloatField2: TFloatField
      FieldName = 'pr'
    end
  end
  object PPRQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select year(plandate) as pyear,sum(qty) as pqty'
      '  from smdd'
      'where  year(plandate)>=2008'
      '            and smdd.GXLB='#39'A'#39
      '            and smdd.gsbh='#39'VA12'#39
      'group by year(plandate)'
      'order by year(plandate)')
    Left = 573
    Top = 43
  end
  object PPPRDS: TDataSource
    DataSet = ppprQ
    Left = 669
    Top = 10
  end
  object ppprQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  scbzcl.gsbh,sum(qty) as PlanQty,realp.rqty,ppr.pr'
      '  from scbzcl '
      'left join bdepartment on depno=id '
      'left join '
      '     (select  smdd.gsbh,sum(smdd.qty) as pr from smdd'
      '               where year(prdate)>=year('#39'2008/01/01'#39')'
      #9'          and smdd.gxlb='#39'A'#39
      '      group by smdd.gsbh) as ppr on ppr.gsbh=scbzcl.gsbh'
      'left join '
      '(select scbb.gsbh,sum(scbbs.qty) as rqty from scbb '
      #9'left join bdepartment on depno=id'
      #9'left join scbbs on scbb.prono=scbbs.prono'
      #9'where  year(scdate)>= year('#39'2008/01/01'#39')'
      #9'       and BDepartment.GXLB='#39'A'#39
      ' group by scbb.gsbh) as realp on realp.gsbh=scbzcl.gsbh'
      'where  year(bzdate)>=year('#39'2008/01/01'#39')'
      'and BDepartment.GXLB='#39'A'#39
      ' group by scbzcl.gsbh,realp.rqty,ppr.pr'
      ' order by scbzcl.gsbh,realp.rqty,ppr.pr')
    Left = 701
    Top = 10
    object ppprQgsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object ppprQPlanQty: TIntegerField
      FieldName = 'PlanQty'
    end
    object ppprQrqty: TFloatField
      FieldName = 'rqty'
    end
    object ppprQpr: TIntegerField
      FieldName = 'pr'
    end
  end
end
