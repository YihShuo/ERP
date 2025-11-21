object Calculator: TCalculator
  Left = 485
  Top = 398
  Width = 235
  Height = 111
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object edt1: TEdit
    Left = 8
    Top = 8
    Width = 209
    Height = 24
    TabOrder = 0
    OnKeyPress = edt1KeyPress
  end
  object btnC: TButton
    Left = 8
    Top = 40
    Width = 30
    Height = 30
    Caption = 'C'
    TabOrder = 1
    OnClick = btnCClick
  end
  object btnAdd: TButton
    Left = 38
    Top = 40
    Width = 30
    Height = 30
    Caption = '+'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnMultiply: TButton
    Left = 98
    Top = 40
    Width = 30
    Height = 30
    Caption = '*'
    TabOrder = 3
    OnClick = btnMultiplyClick
  end
  object btnDivide: TButton
    Left = 128
    Top = 40
    Width = 30
    Height = 30
    Caption = '/'
    TabOrder = 4
    OnClick = btnDivideClick
  end
  object btnEn: TButton
    Left = 188
    Top = 40
    Width = 30
    Height = 30
    Caption = 'EN'
    TabOrder = 5
    OnClick = btnEnClick
  end
  object btnSubtract: TButton
    Left = 68
    Top = 40
    Width = 30
    Height = 30
    Caption = '-'
    TabOrder = 6
    OnClick = btnSubtractClick
  end
  object btnEqual: TButton
    Left = 158
    Top = 40
    Width = 30
    Height = 30
    Caption = '='
    TabOrder = 7
    OnClick = btnEqualClick
  end
end
