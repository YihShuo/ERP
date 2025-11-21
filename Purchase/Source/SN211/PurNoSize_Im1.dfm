object PurNoSize_Im: TPurNoSize_Im
  Left = 410
  Top = 241
  Width = 401
  Height = 282
  BorderIcons = [biSystemMenu]
  Caption = 'PurNoSize_Im'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 29
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 69
    Height = 29
    Caption = 'From:'
  end
  object Label2: TLabel
    Left = 48
    Top = 96
    Width = 40
    Height = 29
    Caption = 'To:'
  end
  object Edit1: TEdit
    Left = 96
    Top = 24
    Width = 265
    Height = 37
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 88
    Width = 265
    Height = 37
    CharCase = ecUpperCase
    TabOrder = 1
    OnEnter = Edit2Enter
  end
  object Button1: TButton
    Left = 56
    Top = 168
    Width = 97
    Height = 41
    Caption = 'Import'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 168
    Width = 97
    Height = 41
    Caption = 'Exit'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 24
    Top = 8
  end
end
