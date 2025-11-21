object ReplenishAnlysis: TReplenishAnlysis
  Left = 242
  Top = 230
  Width = 928
  Height = 480
  Caption = 'ReplenishAnlysis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 61
      Height = 16
      Caption = 'Data Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 17
      Height = 16
      Caption = 'To'
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
    object sdate: TDateTimePicker
      Left = 80
      Top = 16
      Width = 89
      Height = 21
      Date = 40484.509120532410000000
      Time = 40484.509120532410000000
      TabOrder = 0
    end
    object edate: TDateTimePicker
      Left = 200
      Top = 16
      Width = 97
      Height = 21
      Date = 40484.510144953700000000
      Time = 40484.510144953700000000
      TabOrder = 1
    end
    object Factory: TComboBox
      Left = 80
      Top = 48
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1')
    end
  end
  object P1: TPageControl
    Left = 0
    Top = 81
    Width = 912
    Height = 361
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Order Date'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 281
        Height = 333
        Align = alLeft
        DataSource = CustomersDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBChart1: TDBChart
        Left = 281
        Top = 0
        Width = 623
        Height = 333
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          #23458#25142#19979#21934#20998#26512'('#20381#19979#21934#26085#26399')'
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
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        AutoSize = True
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ship Date'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 281
        Height = 333
        Align = alLeft
        DataSource = shipdateDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBChart2: TDBChart
        Left = 281
        Top = 0
        Width = 623
        Height = 333
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          #23458#25142#19979#21934#20998#26512'('#20381#20986#36008#26085#26399')'
          'Customers Order Analysis by Ship Date')
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
        TabOrder = 1
        AutoSize = True
        object BarSeries1: TBarSeries
          ColorEachPoint = True
          Marks.Arrow.Style = psDash
          Marks.ArrowLength = 8
          Marks.Style = smsPercent
          Marks.Visible = True
          DataSource = shipdateQ
          SeriesColor = clRed
          XLabelsSource = 'kfjc'
          BarBrush.Color = clWhite
          SideMargins = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'qty'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ship Country'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 281
        Height = 333
        Align = alLeft
        DataSource = shipcountryDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'kfjc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Visible = True
          end>
      end
      object DBChart3: TDBChart
        Left = 281
        Top = 0
        Width = 623
        Height = 333
        AllowPanning = pmNone
        AllowZoom = False
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #35330#21934#20381#20986#36008#22283#23478#32113#35336'('#21069#21313#21517')'
          'Order Analysis by Ship Country(Top 10)')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        LeftAxis.Grid.Style = psDashDotDot
        LeftAxis.Grid.SmallDots = True
        LeftAxis.GridCentered = True
        LeftAxis.LabelsMultiLine = True
        LeftAxis.LabelsSize = 1
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.MinorTicks.Style = psDash
        LeftAxis.MinorTicks.SmallDots = True
        LeftAxis.Ticks.Style = psDashDotDot
        LeftAxis.Ticks.SmallDots = True
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        AutoSize = True
        object Series2: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsPercent
          Marks.Visible = True
          DataSource = shipcountryQP
          SeriesColor = clRed
          XLabelsSource = 'ywsm'
          Circled = True
          ExplodeBiggest = 25
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loNone
          PieValues.ValueSource = 'qty'
          RotationAngle = 40
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ship Article'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 281
        Height = 333
        Align = alLeft
        DataSource = shiparticleDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'kfjc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Visible = True
          end>
      end
      object DBChart4: TDBChart
        Left = 281
        Top = 0
        Width = 623
        Height = 333
        AllowPanning = pmNone
        AllowZoom = False
        AnimatedZoom = True
        AnimatedZoomSteps = 10
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #35330#21934#20381#20986#36008#22411#39636#32113#35336'('#21069#21313#21517')'
          'Order Analysis by Ship Article(TOP 10)')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        LeftAxis.Grid.Style = psDashDotDot
        LeftAxis.Grid.SmallDots = True
        LeftAxis.GridCentered = True
        LeftAxis.LabelsMultiLine = True
        LeftAxis.LabelsSize = 1
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.MinorTicks.Style = psDash
        LeftAxis.MinorTicks.SmallDots = True
        LeftAxis.Ticks.Style = psDashDotDot
        LeftAxis.Ticks.SmallDots = True
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        MaxPointsPerPage = 10
        ScaleLastPage = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        AutoSize = True
        object PieSeries1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ShipArticleQP
          SeriesColor = clRed
          XLabelsSource = 'xiexing'
          Circled = True
          ExplodeBiggest = 25
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loNone
          PieValues.ValueSource = 'qty'
          RotationAngle = 40
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Order Date to Ship Date'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 281
        Height = 333
        Align = alLeft
        DataSource = od2sdSD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBChart5: TDBChart
        Left = 281
        Top = 0
        Width = 623
        Height = 333
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          #23458#25142#19979#21934#20998#26512'('#19979#21934#21040#20986#36008#22825#25976')'
          'Customers Order Analysis (Ship Date-Order Date)')
        LeftAxis.Grid.Style = psDashDotDot
        LeftAxis.Grid.SmallDots = True
        LeftAxis.LabelsMultiLine = True
        LeftAxis.LabelsOnAxis = False
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.MinorTicks.Style = psDash
        LeftAxis.MinorTicks.SmallDots = True
        LeftAxis.TickOnLabelsOnly = False
        LeftAxis.Ticks.Style = psDashDotDot
        LeftAxis.Ticks.SmallDots = True
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        Legend.Visible = False
        ScaleLastPage = False
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        AutoSize = True
        object Series3: TAreaSeries
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = od2sdQP
          SeriesColor = 65408
          AreaLinesPen.Visible = False
          DrawArea = True
          LinePen.Visible = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'dd'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 're'
        end
      end
    end
  end
  object CustomersDS: TDataSource
    DataSet = customersQ
    Left = 316
    Top = 9
  end
  object customersQ: TQuery
    AutoRefresh = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfjc,CONVERT(char(4),shipdate,111) as ym,sum(Pairs) as qt' +
        'y from ddzl'
      'left join kfzl on khbh=kfdh '
      'where CONVERT(char(4),shipdate,111)  = '#39'2011'#39' '
      'group by kfjc,CONVERT(char(4),shipdate,111)'
      'order by kfjc,CONVERT(char(4),shipdate,111)')
    Left = 348
    Top = 9
  end
  object shipdateDS: TDataSource
    DataSet = shipdateQ
    Left = 317
    Top = 42
  end
  object shipdateQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfjc,CONVERT(char(4),shipdate,111) as ym,sum(Pairs) as qt' +
        'y from ddzl'
      'left join kfzl on khbh=kfdh '
      'where CONVERT(char(4),shipdate,111)  = '#39'2011'#39' '
      'group by kfjc,CONVERT(char(4),shipdate,111)'
      'order by kfjc,CONVERT(char(4),shipdate,111)')
    Left = 349
    Top = 42
  end
  object shipcountryQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfjc,khbh,'#39'2011/11/01'#39' as yms,'#39'2011/11/30'#39' as yme,sum(Pai' +
        'rs) as qty from ddzl'
      'left join kfzl on khbh=kfdh '
      'where CONVERT(char(4),shipdate,111)  = '#39'2011'#39' '
      'group by kfjc,khbh'
      'order by kfjc')
    Left = 429
    Top = 10
  end
  object shipcountryDS: TDataSource
    DataSet = shipcountryQ
    Left = 397
    Top = 10
  end
  object shipcountryQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select dd.ywsm,sum(Pairs) as qty  from ddzl'
      
        'left join (select lbdh,ywsm from lbzls where lb='#39'06'#39') as dd on d' +
        'd.lbdh=ddzl.ddgb'
      'where shipdate'
      
        '  between convert(smalldatetime,'#39'2010/11/1'#39') and convert(smallda' +
        'tetime,'#39'2010/11/30'#39')'
      '  and khbh='#39'036'#39
      'group by dd.ywsm')
    Left = 461
    Top = 11
  end
  object shiparticleDS: TDataSource
    DataSet = ShipArticleQ
    Left = 397
    Top = 42
  end
  object ShipArticleQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfjc,khbh,'#39'2011/11/01'#39' as yms,'#39'2011/11/30'#39' as yme,sum(Pai' +
        'rs) as qty from ddzl'
      'left join kfzl on khbh=kfdh '
      'where CONVERT(char(4),shipdate,111)  = '#39'2011'#39' '
      'group by kfjc,khbh'
      'order by kfjc')
    Left = 429
    Top = 42
  end
  object ShipArticleQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select xiexing,sum(Pairs) as qty  from ddzl'
      'where shipdate'
      
        '  between convert(smalldatetime,'#39'2010/11/1'#39') and convert(smallda' +
        'tetime,'#39'2010/11/30'#39')'
      '  and khbh='#39'036'#39
      'group by xiexing'
      '')
    Left = 461
    Top = 43
  end
  object od2sdSD: TDataSource
    DataSet = od2sdQ
    Left = 517
    Top = 10
  end
  object od2sdQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select khbh,convert(int,(CONVERT(datetime,shipdate,111)-CONVERT(' +
        'datetime,ddrq,111) )) as dd,count(*) as re  from ddzl'
      'where khbh='#39'036'#39' and ddrq >'#39'2010/01/01'#39
      
        'group by khbh,convert(int,(CONVERT(datetime,shipdate,111)-CONVER' +
        'T(datetime,ddrq,111) ))'
      'order by dd')
    Left = 581
    Top = 10
  end
  object od2sdQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfjc,khbh,avg(convert(int,(CONVERT(datetime,shipdate,111)' +
        '-CONVERT(datetime,ddrq,111) ))) as AvgDate from ddzl'
      'left join kfzl on khbh=kfdh '
      'where ddrq >'#39'2010/01/01'#39
      'group by kfjckhbh'
      '')
    Left = 549
    Top = 10
  end
end
