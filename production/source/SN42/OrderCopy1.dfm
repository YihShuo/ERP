object OrderCopy: TOrderCopy
  Left = 664
  Top = 387
  Width = 331
  Height = 188
  Caption = 'OrderCopy'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 149
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 37
      Height = 16
      Caption = 'DLNO'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 57
      Height = 16
      Caption = 'Order List'
    end
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 281
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 16
      Top = 72
      Width = 281
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 16
      Top = 112
      Width = 129
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 168
      Top = 112
      Width = 129
      Height = 25
      Caption = 'Copy'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 112
  end
end
