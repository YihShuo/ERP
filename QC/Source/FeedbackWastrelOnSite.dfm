object FmFeedbackWastrelOnSite: TFmFeedbackWastrelOnSite
  Left = 242
  Top = 109
  Width = 983
  Height = 658
  Caption = 'FeedbackWastrelOnSite'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 89
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 43
      Height = 24
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 8
      Width = 33
      Height = 24
      Caption = 'XH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 48
      Height = 24
      Caption = 'Time:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 192
      Top = 48
      Width = 56
      Height = 24
      Caption = 'Hours:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 368
      Top = 8
      Width = 65
      Height = 24
      Caption = 'DepNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 320
      Top = 48
      Width = 91
      Height = 24
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 56
      Top = 8
      Width = 105
      Height = 28
      Date = 40005.611621747690000000
      Time = 40005.611621747690000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DateTimePicker1Change
    end
    object Edit1: TEdit
      Left = 216
      Top = 8
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnChange = Edit1Change
    end
    object BitBtn1: TBitBtn
      Left = 336
      Top = 8
      Width = 17
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object Edit2: TEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 28
      TabStop = False
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 256
      Top = 48
      Width = 41
      Height = 28
      TabStop = False
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 440
      Top = 8
      Width = 113
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnChange = Edit4Change
    end
    object BitBtn2: TBitBtn
      Left = 552
      Top = 8
      Width = 17
      Height = 25
      Caption = '...'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object Edit5: TEdit
      Left = 416
      Top = 48
      Width = 153
      Height = 28
      TabStop = False
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 848
      Top = 48
      Width = 73
      Height = 21
      PasswordChar = '*'
      TabOrder = 8
      Visible = False
    end
    object Button1: TButton
      Left = 584
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Start'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 760
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 672
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 584
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button4Click
    end
    object Edit7: TEdit
      Left = 888
      Top = 8
      Width = 73
      Height = 21
      ReadOnly = True
      TabOrder = 13
    end
    object Button5: TButton
      Left = 672
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Stop'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      Visible = False
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 760
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Inspected Qty:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = Button6Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 10
    Top = 96
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 136
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 176
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 96
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from qclog')
    Left = 8
    Top = 216
  end
end
