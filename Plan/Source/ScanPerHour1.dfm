object ScanPerHour: TScanPerHour
  Left = 890
  Top = 85
  Width = 1015
  Height = 500
  Caption = 'ScanPerHour'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 74
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 123
      Top = 33
      Width = 32
      Height = 16
      Alignment = taCenter
      Caption = 'Date:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 489
      Top = 33
      Width = 66
      Height = 16
      Alignment = taCenter
      Caption = 'DepName:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 664
      Top = 33
      Width = 41
      Height = 16
      Alignment = taCenter
      Caption = 'GSBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 113
      Height = 20
      AutoSize = False
      Caption = #29983#29986#26178#27841#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 668
      Top = 16
      Width = 41
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #24288#21029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 484
      Top = 16
      Width = 73
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 117
      Top = 16
      Width = 41
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #26085#26399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 788
      Top = 33
      Width = 21
      Height = 16
      Alignment = taCenter
      Caption = 'GX:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 785
      Top = 16
      Width = 50
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #24037#24207':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 349
      Top = 34
      Width = 47
      Height = 16
      Alignment = taCenter
      Caption = 'DepNo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 329
      Top = 17
      Width = 67
      Height = 16
      AutoSize = False
      Caption = #37096#38272#32232#34399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 904
      Top = 5
      Width = 73
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 160
      Top = 16
      Width = 89
      Height = 24
      Date = 39219.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 39219.000000000000000000
      DateMode = dmUpDown
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 558
      Top = 22
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 1
    end
    object CB1: TComboBox
      Left = 715
      Top = 22
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ImeName = 'Chinese (Traditional) - New Phonetic'
      ItemHeight = 16
      TabOrder = 3
      Text = 'VTX'
    end
    object CBX3: TComboBox
      Left = 835
      Top = 22
      Width = 57
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      ImeName = 'Chinese (Traditional) - New Phonetic'
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object CheckBox1: TCheckBox
      Left = 775
      Top = 52
      Width = 121
      Height = 17
      Caption = #36942#28670#20839#37559#35330#21934
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button5: TButton
      Left = 904
      Top = 37
      Width = 73
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button5Click
    end
    object DTP2: TDateTimePicker
      Left = 250
      Top = 16
      Width = 73
      Height = 24
      Date = 39219.000000000000000000
      Format = 'HH:mm:ss'
      Time = 39219.000000000000000000
      ImeName = 'Chinese (Traditional) - New Phonetic'
      Kind = dtkTime
      TabOrder = 7
    end
    object DTP3: TDateTimePicker
      Left = 160
      Top = 40
      Width = 89
      Height = 24
      Date = 39219.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 39219.000000000000000000
      DateMode = dmUpDown
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 8
    end
    object DTP4: TDateTimePicker
      Left = 250
      Top = 40
      Width = 73
      Height = 24
      Date = 39219.999988425930000000
      Format = 'HH:mm:ss'
      Time = 39219.999988425930000000
      ImeName = 'Chinese (Traditional) - New Phonetic'
      Kind = dtkTime
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 402
      Top = 25
      Width = 79
      Height = 24
      CharCase = ecUpperCase
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 74
    Width = 999
    Height = 387
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 6
    ImeName = 'Chinese (Traditional) - New Phonetic'
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
  end
  object HourRep: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 136
  end
  object DS1: TDataSource
    DataSet = HourRep
    Left = 248
    Top = 136
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 296
    Top = 136
  end
end
