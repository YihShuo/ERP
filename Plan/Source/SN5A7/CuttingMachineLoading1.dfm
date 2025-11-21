object CuttingMachineLoading: TCuttingMachineLoading
  Left = 337
  Top = 279
  Width = 1415
  Height = 675
  Caption = 'Machine Loading'
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
    Width = 1399
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 12
      Width = 36
      Height = 16
      Caption = 'Month'
    end
    object Label2: TLabel
      Left = 342
      Top = 12
      Width = 83
      Height = 16
      Caption = 'MachineType'
    end
    object Label3: TLabel
      Left = 163
      Top = 12
      Width = 30
      Height = 16
      Caption = 'Lean'
    end
    object DTP1: TDateTimePicker
      Left = 63
      Top = 8
      Width = 82
      Height = 24
      Date = 43830.555445798610000000
      Format = 'yyyy/MM'
      Time = 43830.555445798610000000
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 432
      Top = 8
      Width = 217
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'MANUAL CUTTING MACHINE'
        'AUTO CUTTING MACHINE'
        'LECTRA CUTTING MACHINE')
    end
    object Button1: TButton
      Left = 1232
      Top = 6
      Width = 75
      Height = 27
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 888
      Top = 0
      Width = 220
      Height = 34
      TabOrder = 3
      object CB1: TCheckBox
        Left = 8
        Top = 12
        Width = 97
        Height = 17
        Caption = 'BY DISPATHC'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CB1Click
      end
      object CB2: TCheckBox
        Left = 136
        Top = 12
        Width = 81
        Height = 17
        Caption = 'BY SCAN'
        TabOrder = 1
        OnClick = CB2Click
      end
    end
    object Button2: TButton
      Left = 1307
      Top = 6
      Width = 75
      Height = 27
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object GroupBox2: TGroupBox
      Left = 664
      Top = 0
      Width = 220
      Height = 34
      TabOrder = 5
      object CB3: TCheckBox
        Left = 8
        Top = 12
        Width = 97
        Height = 17
        Caption = 'BY MACHINE'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CB3Click
      end
      object CB4: TCheckBox
        Left = 136
        Top = 12
        Width = 81
        Height = 17
        Caption = 'BY LEAN'
        TabOrder = 1
        OnClick = CB4Click
      end
    end
    object ComboBox2: TComboBox
      Left = 199
      Top = 8
      Width = 129
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 6
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object ComboBox3: TComboBox
      Left = 1120
      Top = 8
      Width = 97
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = #20013#25991
      OnChange = ComboBox3Change
      Items.Strings = (
        #20013#25991
        'ENGLISH'
        'VIETNAM')
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 40
    Width = 1399
    Height = 596
    Align = alClient
    ColCount = 3
    Ctl3D = False
    DefaultColWidth = 70
    FixedColor = clSkyBlue
    FixedCols = 2
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goThumbTracking]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 96
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 128
  end
end
