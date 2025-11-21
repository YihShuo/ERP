object Graphical: TGraphical
  Left = 240
  Top = 190
  Width = 926
  Height = 480
  Caption = 'PlanGraphical'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 77
      Height = 16
      Caption = 'Production In'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 24
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
      Left = 18
      Top = 67
      Width = 18
      Height = 16
      Caption = 'AT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sd: TDateTimePicker
      Left = 104
      Top = 24
      Width = 97
      Height = 21
      Date = 40544.535179166670000000
      Time = 40544.535179166670000000
      TabOrder = 0
    end
    object ed: TDateTimePicker
      Left = 232
      Top = 24
      Width = 97
      Height = 21
      Date = 40544.535179166670000000
      Time = 40544.535179166670000000
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 40
      Top = 64
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'VA12'
        'VA3'
        'VB1'
        'VDT')
    end
    object ComboBox2: TComboBox
      Left = 120
      Top = 64
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'C'
      OnChange = ComboBox2Change
      Items.Strings = (
        'C'
        'S'
        'O'
        'W'
        'Z'
        'A')
    end
    object ComboBox3: TComboBox
      Left = 168
      Top = 64
      Width = 97
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnChange = ComboBox3Change
    end
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 121
    Width = 910
    Height = 321
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.AdjustFrame = False
    Title.Text.Strings = (
      'TDBChart')
    Title.Visible = False
    BottomAxis.DateTimeFormat = 'AMPM hh:mm'
    Chart3DPercent = 5
    Legend.Visible = False
    Align = alClient
    TabOrder = 1
    OnClick = DBChart1Click
    object Series1: TGanttSeries
      ColorEachPoint = True
      Marks.ArrowLength = 0
      Marks.Style = smsXValue
      Marks.Visible = False
      DataSource = Query1
      SeriesColor = clRed
      XLabelsSource = 'ysbh'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'Start'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'startplay'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      StartValues.DateTime = True
      StartValues.Name = 'Start'
      StartValues.Multiplier = 1.000000000000000000
      StartValues.Order = loAscending
      StartValues.ValueSource = 'startplay'
      EndValues.DateTime = True
      EndValues.Name = 'End'
      EndValues.Multiplier = 1.000000000000000000
      EndValues.Order = loNone
      EndValues.ValueSource = 'endplan'
      NextTask.DateTime = False
      NextTask.Name = 'NextTask'
      NextTask.Multiplier = 1.000000000000000000
      NextTask.Order = loNone
    end
  end
  object Query1: TQuery
    AutoRefresh = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ysbh,min(smdd.plandate) as startplay,max(smdd.planedate) ' +
        'as endplan'
      'from smdd'
      
        'where scyear='#39'2011'#39' and scmonth='#39'01'#39' and gxlb='#39'A'#39' and gsbh='#39'VA12' +
        #39
      ' group by  ysbh'
      'order by startplay, endplan,ysbh')
    Left = 728
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 688
    Top = 56
  end
  object qgsdh: TQuery
    DatabaseName = 'DB'
    Left = 648
    Top = 56
  end
  object getdepid: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select id,depname  from BDepartment')
    Left = 616
    Top = 56
  end
end
