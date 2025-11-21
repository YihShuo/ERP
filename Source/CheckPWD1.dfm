object CheckPWD: TCheckPWD
  Left = 598
  Top = 404
  BorderStyle = bsDialog
  Caption = 'MFA Verify'#22810#37325#39511#35657
  ClientHeight = 69
  ClientWidth = 273
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 37
  object Label1: TLabel
    Left = 4
    Top = 2
    Width = 116
    Height = 21
    Caption = #39511#35657#30908#26377#25928#26178#38291':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 3
    Top = 20
    Width = 262
    Height = 31
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object SmtpClient: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 168
    Top = 48
  end
  object Query1: TQuery
    DatabaseName = 'ERPVN'
    Left = 200
    Top = 48
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 208
    Top = 88
  end
  object EmailMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 168
    Top = 16
  end
end
