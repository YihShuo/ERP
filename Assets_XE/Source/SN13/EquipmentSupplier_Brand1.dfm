object EquipmentSupplier_Brand: TEquipmentSupplier_Brand
  Left = 458
  Top = 282
  Width = 248
  Height = 220
  Caption = 'EquipmentSupplier_Brand'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 185
    Height = 129
    Caption = 'Brand'
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 32
      Top = 26
      Width = 73
      Height = 17
      Caption = 'NIKE'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 32
      Top = 51
      Width = 89
      Height = 17
      Caption = 'ADIDAS'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 32
      Top = 77
      Width = 89
      Height = 17
      Caption = 'VANS'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 32
      Top = 102
      Width = 89
      Height = 17
      Caption = 'SGS'
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 80
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
