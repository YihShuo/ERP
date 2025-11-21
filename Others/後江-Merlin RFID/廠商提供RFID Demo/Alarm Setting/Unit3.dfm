object Form3: TForm3
  Left = 631
  Top = 373
  Width = 344
  Height = 247
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #20462#25913#36890#35759#21442#25968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 32
    Width = 56
    Height = 13
    AutoSize = False
    Caption = 'IP'#22320#22336
  end
  object lbl2: TLabel
    Left = 40
    Top = 64
    Width = 70
    Height = 13
    AutoSize = False
    Caption = #23376#32593#25513#30721
  end
  object lbl3: TLabel
    Left = 40
    Top = 96
    Width = 46
    Height = 13
    AutoSize = False
    Caption = #32593#20851
  end
  object lbl4: TLabel
    Left = 40
    Top = 128
    Width = 58
    Height = 13
    AutoSize = False
    Caption = #31471#21475#21495
  end
  object edtIPAddress: TEdit
    Left = 103
    Top = 24
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object edtMask: TEdit
    Left = 103
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object edtGateway: TEdit
    Left = 103
    Top = 88
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object edtPort: TEdit
    Left = 103
    Top = 120
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object btnOK: TButton
    Left = 96
    Top = 168
    Width = 75
    Height = 25
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 4
  end
  object btnCancel: TButton
    Left = 192
    Top = 168
    Width = 75
    Height = 25
    Caption = #21462#28040
    ModalResult = 2
    TabOrder = 5
  end
end
