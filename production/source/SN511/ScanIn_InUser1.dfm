object ScanIn_User: TScanIn_User
  Left = 597
  Top = 153
  BorderStyle = bsDialog
  Caption = 'ScanIn_User'
  ClientHeight = 169
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 257
    Height = 105
    Caption = 'UnLock in warehouse'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 55
      Height = 20
      Caption = 'UserID:'
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 73
      Height = 20
      Caption = 'UserPass:'
    end
    object UserPass: TEdit
      Left = 96
      Top = 64
      Width = 121
      Height = 28
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = UserPassKeyPress
    end
    object UserID: TComboBox
      Left = 96
      Top = 24
      Width = 121
      Height = 28
      ItemHeight = 20
      TabOrder = 1
      Items.Strings = (
        '13426'
        '21178'
        '21189'
        '45066'
        '523'
        '313699')
    end
  end
  object BtnOK: TButton
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object BtonCal: TButton
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = BtonCalClick
  end
  object UserQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select USERID,PWD from Busers where SupervisorID is not null')
    Left = 24
    Top = 128
  end
end
