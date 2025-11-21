object ITchecklist: TITchecklist
  Left = 0
  Top = 0
  Caption = 'IT check  list'
  ClientHeight = 678
  ClientWidth = 1127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1127
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 35
      Height = 16
      Caption = 'Don vi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 46
      Width = 74
      Height = 16
      Caption = 'S'#7889' th'#7867' IT_KK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 249
      Top = 50
      Width = 77
      Height = 16
      Caption = 'S'#7889' th'#7867' KT_KK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 248
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Tim kiem'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 112
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 368
      Top = 23
      Width = 97
      Height = 17
      Caption = 'c'#242'n thi'#7871'u'
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 471
      Top = 23
      Width = 97
      Height = 17
      Caption = #272#227' qu'#233't'
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 112
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 344
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object CheckBox3: TCheckBox
      Left = 568
      Top = 23
      Width = 169
      Height = 17
      Caption = 's'#7855'p x'#7871'p theo th'#7901'i gian th'#7921'c'
      TabOrder = 6
    end
    object CheckBox4: TCheckBox
      Left = 784
      Top = 21
      Width = 97
      Height = 17
      Caption = 'C'#242'n thieu KT'
      TabOrder = 7
    end
    object CheckBox5: TCheckBox
      Left = 887
      Top = 21
      Width = 97
      Height = 17
      Caption = #272#227' qu'#233't KT'
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1127
    Height = 597
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 288
    Top = 200
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 200
  end
  object Query2: TQuery
    Left = 504
    Top = 208
  end
end
