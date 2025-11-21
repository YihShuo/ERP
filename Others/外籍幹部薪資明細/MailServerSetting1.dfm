object MailServerSetting: TMailServerSetting
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mail Settings'
  ClientHeight = 376
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 376
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 297
      Height = 57
      Caption = 'Server Information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 30
        Top = 24
        Width = 54
        Height = 14
        Caption = 'Mail Server'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_Host: TEdit
        Left = 90
        Top = 21
        Width = 183
        Height = 22
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 71
      Width = 297
      Height = 106
      Caption = 'Logon Information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 19
        Top = 24
        Width = 65
        Height = 14
        Caption = 'Display Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 51
        Width = 68
        Height = 14
        Caption = 'Email Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 34
        Top = 78
        Width = 50
        Height = 14
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_Name: TEdit
        Left = 90
        Top = 21
        Width = 183
        Height = 22
        TabOrder = 0
      end
      object ED_Address: TEdit
        Left = 90
        Top = 48
        Width = 183
        Height = 22
        TabOrder = 1
      end
      object ED_Password: TEdit
        Left = 90
        Top = 75
        Width = 183
        Height = 22
        PasswordChar = '*'
        TabOrder = 2
      end
    end
    object B_Test: TButton
      Left = 168
      Top = 183
      Width = 137
      Height = 25
      Caption = 'Test Account Settings ...'
      TabOrder = 2
      OnClick = B_TestClick
    end
    object Button1: TButton
      Left = 109
      Top = 336
      Width = 97
      Height = 32
      Caption = 'Save Settings'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 222
      Width = 297
      Height = 57
      Caption = 'BCC Information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label3: TLabel
        Left = 16
        Top = 24
        Width = 68
        Height = 14
        Caption = 'Email Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_CC: TEdit
        Left = 90
        Top = 21
        Width = 183
        Height = 22
        TabOrder = 0
      end
    end
    object B_TestMail: TButton
      Left = 168
      Top = 285
      Width = 137
      Height = 25
      Caption = 'Send A Test Email'
      TabOrder = 5
      OnClick = B_TestMailClick
    end
  end
  object IdSMTP1: TIdSMTP
    IOHandler = SalaryList.IdSSLIOHandlerSocketOpenSSL1
    Port = 587
    SASLMechanisms = <>
    UseTLS = utUseExplicitTLS
    Left = 16
    Top = 288
  end
end
