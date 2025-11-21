object F_ScheduleGantt: TF_ScheduleGantt
  Left = 548
  Top = 282
  Width = 1305
  Height = 623
  Caption = 'Schedule Gantt'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 32
      Height = 20
      Caption = #24288#21029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 14
      Width = 32
      Height = 20
      Caption = #26085#26399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 353
      Top = 17
      Width = 12
      Height = 13
      Caption = #65374
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 10
      Width = 57
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'A1'
        'A2')
    end
    object DTPS: TDateTimePicker
      Left = 224
      Top = 10
      Width = 121
      Height = 28
      Date = 42957.325950497690000000
      Time = 42957.325950497690000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DTPE: TDateTimePicker
      Left = 376
      Top = 10
      Width = 121
      Height = 28
      Date = 42957.325950497690000000
      Time = 42957.325950497690000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 528
      Top = 11
      Width = 89
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 640
      Top = 11
      Width = 89
      Height = 25
      Caption = 'EXCEL'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 49
    Width = 1297
    Height = 547
    Align = alClient
    ColCount = 30
    Ctl3D = False
    DefaultColWidth = 100
    DefaultRowHeight = 25
    FixedColor = clSkyBlue
    FixedCols = 2
    RowCount = 35
    FixedRows = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnDrawCell = StringGrid1DrawCell
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 56
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 136
  end
  object QCheck: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 168
  end
end
