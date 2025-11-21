object SampleCopyChoice: TSampleCopyChoice
  Left = 550
  Top = 381
  Width = 500
  Height = 418
  Caption = 'SampleCopyChoice'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 379
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 465
      Height = 321
      Caption = 'Copy Sameple Order'
      TabOrder = 0
      object RB1: TRadioButton
        Left = 9
        Top = 30
        Width = 168
        Height = 17
        Caption = 'LAIV (Xuat Khau)'
        TabOrder = 0
        Visible = False
      end
      object RB2: TRadioButton
        Left = 9
        Top = 50
        Width = 216
        Height = 17
        Caption = 'LAIK (Khong Xuat Khau)'
        TabOrder = 1
        Visible = False
      end
      object RB3: TRadioButton
        Left = 9
        Top = 70
        Width = 216
        Height = 17
        Caption = 'LAIT (Phong Ky Thuat)'
        TabOrder = 2
        Visible = False
      end
      object RB4: TRadioButton
        Left = 9
        Top = 106
        Width = 168
        Height = 17
        Caption = 'BYIV (Xuat Khau)'
        TabOrder = 3
        Visible = False
      end
      object RB5: TRadioButton
        Left = 9
        Top = 126
        Width = 216
        Height = 17
        Caption = 'BYIK (Khong Xuat Khau)'
        TabOrder = 4
        Visible = False
      end
      object RB6: TRadioButton
        Left = 9
        Top = 146
        Width = 216
        Height = 17
        Caption = 'BYIT (Phong Ky Thuat)'
        TabOrder = 5
        Visible = False
      end
      object RB7: TRadioButton
        Left = 223
        Top = 29
        Width = 167
        Height = 18
        Caption = 'VANV (Xuat Khau)'
        TabOrder = 6
        Visible = False
      end
      object RB8: TRadioButton
        Left = 223
        Top = 51
        Width = 215
        Height = 17
        Caption = 'VANK (Khong Xuat Khau)'
        TabOrder = 7
        Visible = False
      end
      object RB9: TRadioButton
        Left = 223
        Top = 72
        Width = 215
        Height = 17
        Caption = 'VANT (Phong Ky Thuat)'
        TabOrder = 8
        Visible = False
      end
      object RB10: TRadioButton
        Left = 223
        Top = 103
        Width = 167
        Height = 17
        Caption = 'TBLV (Xuat Khau)'
        TabOrder = 9
        Visible = False
      end
      object RB11: TRadioButton
        Left = 223
        Top = 123
        Width = 215
        Height = 20
        Caption = 'TBLK (Khong Xuat Khau)'
        TabOrder = 10
        Visible = False
      end
      object RB12: TRadioButton
        Left = 223
        Top = 146
        Width = 215
        Height = 17
        Caption = 'TBLT (Phong Ky Thuat)'
        TabOrder = 11
        Visible = False
      end
      object RB13: TRadioButton
        Left = 9
        Top = 174
        Width = 168
        Height = 17
        Caption = 'SRLV (Xuat Khau)'
        TabOrder = 12
        Visible = False
      end
      object RB14: TRadioButton
        Left = 9
        Top = 194
        Width = 216
        Height = 17
        Caption = 'SRLK (Khong Xuat Khau)'
        TabOrder = 13
        Visible = False
      end
      object RB15: TRadioButton
        Left = 9
        Top = 214
        Width = 216
        Height = 17
        Caption = 'SRLT (Phong Ky Thuat)'
        TabOrder = 14
        Visible = False
      end
      object RB19: TRadioButton
        Left = 9
        Top = 245
        Width = 171
        Height = 17
        Caption = 'SBCV (Xuat Khau)'
        TabOrder = 15
        Visible = False
      end
      object RB20: TRadioButton
        Left = 9
        Top = 265
        Width = 219
        Height = 17
        Caption = 'SBCK (Khong Xuat Khau)'
        TabOrder = 16
        Visible = False
      end
      object RB21: TRadioButton
        Left = 9
        Top = 285
        Width = 219
        Height = 17
        Caption = 'SBCT (Phong Ky Thuat)'
        TabOrder = 17
        Visible = False
      end
    end
    object Button1: TButton
      Left = 227
      Top = 344
      Width = 113
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 107
      Top = 344
      Width = 113
      Height = 25
      Caption = 'Canecl'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object RB16: TRadioButton
    Left = 229
    Top = 182
    Width = 167
    Height = 17
    Caption = 'CMCV (Xuat Khau)'
    TabOrder = 1
    Visible = False
  end
  object RB17: TRadioButton
    Left = 229
    Top = 202
    Width = 215
    Height = 17
    Caption = 'CMCK (Khong Xuat Khau)'
    TabOrder = 2
    Visible = False
  end
  object RB18: TRadioButton
    Left = 229
    Top = 222
    Width = 215
    Height = 17
    Caption = 'CMCT (Phong Ky Thuat)'
    TabOrder = 3
    Visible = False
  end
  object RB22: TRadioButton
    Left = 230
    Top = 253
    Width = 173
    Height = 17
    Caption = 'SBCV (Xuat Khau)'
    TabOrder = 4
    Visible = False
  end
  object RB23: TRadioButton
    Left = 230
    Top = 273
    Width = 221
    Height = 17
    Caption = 'SBCK (Khong Xuat Khau)'
    TabOrder = 5
    Visible = False
  end
  object RB24: TRadioButton
    Left = 230
    Top = 293
    Width = 221
    Height = 17
    Caption = 'SBCT (Phong Ky Thuat)'
    TabOrder = 6
    Visible = False
  end
end
