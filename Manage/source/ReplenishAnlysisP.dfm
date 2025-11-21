object ReplenishAnlysis: TReplenishAnlysis
  Left = 232
  Top = 202
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 200
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
      Width = 68
      Height = 16
      Caption = 'IN this Year'
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
      Date = 40179.509120532410000000
      Time = 40179.509120532410000000
      TabOrder = 0
    end
    object Factory: TComboBox
      Left = 72
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
        'VB1')
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
        'Month')
    end
  end
  object P1: TPageControl
    Left = 0
    Top = 81
    Width = 912
    Height = 361
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    OnChange = P1Change
    object TabSheet1: TTabSheet
      Caption = 'Replenish Reason'
      object DBChart1: TDBChart
        Left = 273
        Top = 0
        Width = 631
        Height = 333
        AllowPanning = pmNone
        AllowZoom = False
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginRight = 5
        Title.Text.Strings = (
          #35036#26009#21407#22240#21069#21313#21517
          'Replenish Reason Top 10')
        AxisVisible = False
        Chart3DPercent = 10
        ClipPoints = False
        Frame.Visible = False
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
        LeftAxis.Visible = False
        Legend.ColorWidth = 20
        Legend.TextStyle = ltsPlain
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        AutoSize = True
        OnClick = DBChart1Click
        object Series1: TPieSeries
          Marks.ArrowLength = 8
          Marks.BackColor = 8454016
          Marks.Frame.Color = 8454016
          Marks.Style = smsPercent
          Marks.Visible = True
          DataSource = ReplenisRQP
          SeriesColor = clRed
          Title = 'Plan'
          XLabelsSource = 'zwsm'
          ExplodeBiggest = 15
          OtherSlice.Style = poBelowPercent
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loDescending
          PieValues.ValueSource = 'rp'
          RotationAngle = 100
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 273
        Height = 333
        Align = alLeft
        DataSource = ReplenisDS
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
          end
          item
            DisplayFormat = '#,##0.##'
            EditButtons = <>
            FieldName = 'Rpr'
            Footers = <
              item
                DisplayFormat = '#,##0.##'
                FieldName = 'Rpr'
                ValueType = fvtSum
              end>
            Title.Caption = #35036#26009#37329#38989'|Rpr'
          end
          item
            DisplayFormat = '#,##0.##'
            EditButtons = <>
            FieldName = 'Totpr'
            Footers = <
              item
                DisplayFormat = '#,##0.##'
                FieldName = 'Totpr'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#38936#26009#37329#38989'|Totpr'
          end
          item
            DisplayFormat = '#0.##'
            EditButtons = <>
            FieldName = 'rp'
            Footers = <
              item
                DisplayFormat = '##.##'
                FieldName = 'rp'
                ValueType = fvtAvg
              end>
            Title.Caption = #35036#26009#29575'|rp'
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Replenish Model'
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 273
        Top = 0
        Width = 631
        Height = 333
        AllowPanning = pmNone
        AllowZoom = False
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginRight = 5
        Title.Text.Strings = (
          #22411#39636#35036#26009#27604#20363#21069#21313#21517
          'Replenish Model Top 10'
          '')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
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
        View3DWalls = False
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        AutoSize = True
        OnClick = DBChart2Click
        object Series2: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ReplenishMQP
          SeriesColor = clRed
          XLabelsSource = 'xiexing'
          ExplodeBiggest = 10
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loNone
          PieValues.ValueSource = 'rp'
          RotationAngle = 95
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 273
        Height = 333
        Align = alLeft
        DataSource = ReplenisDS
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
          end
          item
            EditButtons = <>
            FieldName = 'Rpr'
            Footers = <
              item
                DisplayFormat = '#,##0.##'
                ValueType = fvtSum
              end>
            Title.Caption = #35036#26009#37329#38989'|Rpr'
          end
          item
            EditButtons = <>
            FieldName = 'Totpr'
            Footers = <
              item
                DisplayFormat = '#,##0.##'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#38936#26009#37329#38989'|Totpr'
          end
          item
            EditButtons = <>
            FieldName = 'rp'
            Footers = <
              item
                DisplayFormat = '##.##'
                ValueType = fvtAvg
              end>
            Title.Caption = #35036#26009#29575'|rp'
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Replenish Materiel'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 273
        Height = 333
        Align = alLeft
        DataSource = ReplenisDS
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
          end
          item
            EditButtons = <>
            FieldName = 'Rpr'
            Footers = <
              item
                DisplayFormat = '#,##0.##'
                ValueType = fvtSum
              end>
            Title.Caption = #35036#26009#37329#38989'|Rpr'
          end
          item
            EditButtons = <>
            FieldName = 'Totpr'
            Footers = <
              item
                DisplayFormat = '#,##0.##'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#38936#26009#37329#38989'|Totpr'
          end
          item
            EditButtons = <>
            FieldName = 'rp'
            Footers = <
              item
                DisplayFormat = '##.##'
                ValueType = fvtAvg
              end>
            Title.Caption = #35036#26009#29575'|rp'
          end>
      end
      object DBChart3: TDBChart
        Left = 273
        Top = 0
        Width = 631
        Height = 333
        AllowPanning = pmNone
        AllowZoom = False
        AnimatedZoom = True
        AnimatedZoomSteps = 9
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginRight = 5
        Title.Text.Strings = (
          #26448#26009#22823#39006#35036#26009#20998#26512
          'Replenish Materiel Anlysis'
          '')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
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
        View3DWalls = False
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        AutoSize = True
        OnClick = DBChart3Click
        object PieSeries1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ResplenishMCQP
          SeriesColor = clRed
          XLabelsSource = 'zwsm'
          ExplodeBiggest = 10
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loNone
          PieValues.ValueSource = 'rp'
          RotationAngle = 95
        end
      end
    end
  end
  object jobcb: TComboBox
    Left = 176
    Top = 48
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ALL'
    Visible = False
    Items.Strings = (
      'ALL'
      'C'
      'S'
      'A')
  end
  object ReplenisQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kcll.gsbh, sum(case when kclls.blsb='#39'Y'#39' then (kclls.qty*c' +
        'wdj.usprice) end)  as Rpr,sum( kclls.qty*cwdj.usprice) as Totpr ' +
        ','
      
        ' (sum(case when kclls.blsb='#39'Y'#39' then (kclls.qty*cwdj.usprice) end' +
        ') / sum( kclls.qty*cwdj.usprice))*100 as rp '
      'from kclls'
      'left join kcll on kcll.llno=kclls.llno'
      
        'left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) =' +
        ' cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth)'
      
        'where kcll.cfmdate >'#39'2010/09/01'#39' and kcll.cfmdate <'#39'2010/10/01'#39' ' +
        'and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)'
      'group by kcll.gsbh'
      'order by kcll.gsbh')
    Left = 541
    Top = 10
    object ReplenisQgsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object ReplenisQRpr: TCurrencyField
      FieldName = 'Rpr'
    end
    object ReplenisQTotpr: TCurrencyField
      FieldName = 'Totpr'
    end
    object ReplenisQrp: TCurrencyField
      FieldName = 'rp'
    end
  end
  object ReplenisDS: TDataSource
    DataSet = ReplenisQ
    Left = 509
    Top = 10
  end
  object ReplenisRQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 10 scblyy.ywsm,scblyy.zwsm ,sum( kclls.qty*cwdj.uspri' +
        'ce) as rp '
      ' from kclls'
      'left join kcll on kcll.llno=kclls.llno'
      'left join scblyy on scblyy.yybh=kclls.yybh'
      
        'left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) =' +
        ' cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth)'
      'where kcll.cfmdate >'#39'2010/09/01'#39' and kcll.cfmdate <'#39'2010/10/01'#39' '
      #9'and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)'
      #9'and kclls.blsb='#39'Y'#39
      'group by scblyy.ywsm,scblyy.zwsm'
      'order by rp desc')
    Left = 573
    Top = 11
    object ReplenisRQPywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object ReplenisRQPzwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 50
    end
    object ReplenisRQPrp: TCurrencyField
      FieldName = 'rp'
    end
  end
  object ReplenishMQP: TQuery
    Active = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 10  ddzl.xiexing ,sum( kclls.qty*cwdj.usprice),sum(dd' +
        'zl.pairs),  (sum( kclls.qty*cwdj.usprice)/sum(ddzl.pairs) ) as r' +
        'p'
      ' from kclls'
      'left join kcll on kcll.llno=kclls.llno'
      'left join ddzl on ddzl.ddbh=kclls.scbh'
      
        'left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) =' +
        ' cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth)'
      'where kcll.cfmdate >'#39'2010/09/01'#39' and kcll.cfmdate <'#39'2010/10/01'#39' '
      #9'and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)'
      #9'and kclls.blsb='#39'Y'#39
      'group by  ddzl.xiexing'
      'order by (sum( kclls.qty*cwdj.usprice)/sum(ddzl.pairs) ) desc')
    Left = 608
    Top = 10
    object ReplenishMQPxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object ReplenishMQPCOLUMN2: TCurrencyField
      DisplayLabel = 'Replenish'
      FieldName = 'COLUMN2'
      DisplayFormat = '#,##0.##'
    end
    object ReplenishMQPCOLUMN3: TIntegerField
      DisplayLabel = 'Stor In'
      FieldName = 'COLUMN3'
      DisplayFormat = '#,##0.##'
    end
    object ReplenishMQPrp: TCurrencyField
      FieldName = 'rp'
      DisplayFormat = '#0.##'
    end
  end
  object ResplenishMCQP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select class.zwsm,class.ywsm,sum( kclls.qty*cwdj.usprice) as rp ' +
        ' '
      'from kclls'
      'left join kcll on kcll.llno=kclls.llno'
      
        'left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) =' +
        ' cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth)'
      'left join '
      '      (select lbdh,zwsm,ywsm '
      #9'from lbzls'
      
        #9'where lb='#39'05'#39')  as class on class.lbdh=substring( kclls.clbh,1,' +
        '1)'
      
        'where kclls.blsb='#39'Y'#39' and kcll.cfmdate >'#39'2010/11/01'#39' and kclls.qt' +
        'y > 0'
      'group by class.zwsm,class.ywsm')
    Left = 640
    Top = 10
  end
end
