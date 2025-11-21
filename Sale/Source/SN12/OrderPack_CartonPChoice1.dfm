object OrderPack_CartonPChoice: TOrderPack_CartonPChoice
  Left = 516
  Top = 252
  Width = 319
  Height = 211
  Caption = 'OrderPack_CartonPChoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 273
    Height = 121
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RB1: TRadioButton
      Left = 16
      Top = 19
      Width = 137
      Height = 17
      Caption = 'A4 /1 ( Converse )'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RB2: TRadioButton
      Left = 16
      Top = 43
      Width = 177
      Height = 17
      Caption = 'A4 / 2 ( Converse )'
      TabOrder = 1
    end
    object RB3: TRadioButton
      Left = 16
      Top = 91
      Width = 201
      Height = 17
      Caption = 'A4 / 3 - Diamond ( Converse)'
      TabOrder = 2
    end
    object RB4: TRadioButton
      Left = 16
      Top = 67
      Width = 129
      Height = 17
      Caption = 'A4  /3 ( Converse )'
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 176
    Top = 136
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
end
