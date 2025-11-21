object Prodsend_DLG: TProdsend_DLG
  Left = 439
  Top = 281
  BorderStyle = bsNone
  Caption = 'Prodsend_DLG'
  ClientHeight = 228
  ClientWidth = 371
  Color = 16777183
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 317
    Height = 24
    Caption = 'How many order  you want to devide?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 56
    Top = 160
    Width = 97
    Height = 33
    Caption = 'Yes'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 104
    Top = 88
    Width = 121
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '1'
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 192
    Top = 160
    Width = 89
    Height = 33
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button2Click
  end
end
