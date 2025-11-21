object DQRBH: TDQRBH
  Left = 275
  Top = 168
  Width = 799
  Height = 480
  Caption = 'Daily QC Report(By Hours)'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 12
      Top = 20
      Width = 39
      Height = 20
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 182
      Top = 18
      Width = 14
      Height = 20
      Caption = 'to'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 328
      Top = 16
      Width = 58
      Height = 20
      Caption = 'Section:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object QCSD: TDateTimePicker
      Left = 55
      Top = 17
      Width = 119
      Height = 28
      Date = 41391.604173831020000000
      Time = 41391.604173831020000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object QCED: TDateTimePicker
      Left = 204
      Top = 16
      Width = 115
      Height = 28
      Date = 41391.604173831020000000
      Time = 41391.604173831020000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CBX3: TComboBox
      Left = 392
      Top = 15
      Width = 57
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 2
      Text = 'A'
      Items.Strings = (
        'A'
        'S'
        'A+S')
    end
    object Button1: TButton
      Left = 608
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 696
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object RadioGroup1: TRadioGroup
      Left = 456
      Top = 4
      Width = 129
      Height = 57
      Caption = 'Defect Issue'
      ItemIndex = 0
      Items.Strings = (
        'English'
        'Vietnam')
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 783
    Height = 377
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 144
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 144
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 176
  end
end
