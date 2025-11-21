object DQRBH: TDQRBH
  Left = 144
  Top = 149
  Width = 916
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
    Width = 900
    Height = 81
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
    object Label2: TLabel
      Left = 12
      Top = 56
      Width = 76
      Height = 20
      Caption = 'DepName:'
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
    object Button1: TButton
      Left = 712
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
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 800
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
      TabOrder = 3
      OnClick = Button2Click
    end
    object RadioGroup1: TRadioGroup
      Left = 624
      Top = 4
      Width = 81
      Height = 57
      Caption = 'Defect Issue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'English'
        'Vietnam')
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 392
      Top = 6
      Width = 217
      Height = 41
      Caption = 'GXLB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object CK1: TCheckBox
        Left = 16
        Top = 20
        Width = 57
        Height = 17
        Caption = 'A'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CK2: TCheckBox
        Left = 56
        Top = 18
        Width = 49
        Height = 17
        Caption = 'AR'
        TabOrder = 1
      end
      object CK3: TCheckBox
        Left = 104
        Top = 20
        Width = 49
        Height = 17
        Caption = 'C'
        TabOrder = 2
      end
      object CK4: TCheckBox
        Left = 144
        Top = 20
        Width = 41
        Height = 17
        Caption = 'S'
        TabOrder = 3
      end
    end
    object Edit1: TEdit
      Left = 94
      Top = 50
      Width = 131
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 900
    Height = 361
    Align = alClient
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
