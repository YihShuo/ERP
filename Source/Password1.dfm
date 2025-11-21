object Password: TPassword
  Left = 825
  Top = 307
  Width = 344
  Height = 350
  BorderIcons = [biSystemMenu]
  Caption = 'Chnange Password'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'User ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 69
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'User Name:'
  end
  object Label3: TLabel
    Left = 7
    Top = 115
    Width = 114
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Old Password'
  end
  object Label4: TLabel
    Left = 8
    Top = 163
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'New Password:'
  end
  object Label5: TLabel
    Left = 0
    Top = 211
    Width = 121
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Confirm Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 123
    Top = 16
    Width = 161
    Height = 28
    Color = 16703714
    DataField = 'USERID'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 123
    Top = 64
    Width = 161
    Height = 28
    Color = 16703714
    DataField = 'USERNAME'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 123
    Top = 112
    Width = 161
    Height = 28
    Color = 12713983
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 0
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 123
    Top = 160
    Width = 161
    Height = 28
    Color = 14806525
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 40
    Top = 264
    Width = 97
    Height = 33
    Caption = 'Yes'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 264
    Width = 97
    Height = 33
    Caption = 'Reset'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 123
    Top = 208
    Width = 161
    Height = 28
    Color = 14806525
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = LOGIN.Query2
    Left = 8
    Top = 16
  end
  object QTemp: TQuery
    DatabaseName = 'ERPVN'
    Left = 8
    Top = 48
  end
end
