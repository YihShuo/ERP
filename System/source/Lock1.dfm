object Lock: TLock
  Left = 326
  Top = 132
  Width = 1041
  Height = 708
  Caption = 'Lock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 217
    Width = 1025
    Height = 320
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 417
      Height = 16
      AutoSize = False
      Caption = #35531#36984#25799#35201#35299#38500#37782#23450#30340#21934#25818' Vui long chon loai phieu can mo khoa'
    end
    object Label9: TLabel
      Left = 95
      Top = 69
      Width = 108
      Height = 16
      Caption = 'Confirm phieu xuat'
    end
    object Label10: TLabel
      Left = 223
      Top = 69
      Width = 92
      Height = 16
      Caption = 'Phieu nhap kho'
    end
    object Label11: TLabel
      Left = 335
      Top = 69
      Width = 136
      Height = 16
      Caption = 'Confirm phieu gia cong'
    end
    object Label12: TLabel
      Left = 483
      Top = 69
      Width = 95
      Height = 16
      Caption = 'Phieu xuat vat tu'
    end
    object Label13: TLabel
      Left = 599
      Top = 69
      Width = 89
      Height = 16
      Caption = 'Phieu gia cong'
    end
    object CheckBox4: TCheckBox
      Left = 96
      Top = 49
      Width = 97
      Height = 17
      Caption = '1 '#38936#26009#20986#24235
      TabOrder = 0
    end
    object Button2: TButton
      Left = 40
      Top = 104
      Width = 113
      Height = 41
      Caption = #35299#37782' Mo khoa'
      TabOrder = 1
      OnClick = Button2Click
    end
    object CheckBox5: TCheckBox
      Left = 224
      Top = 49
      Width = 97
      Height = 17
      Caption = '2 '#20837#24235#21934
      TabOrder = 2
    end
    object CheckBox6: TCheckBox
      Left = 336
      Top = 49
      Width = 97
      Height = 17
      Caption = '3.'#21152#24037#20986#24235
      TabOrder = 3
    end
    object CheckBox8: TCheckBox
      Left = 482
      Top = 49
      Width = 97
      Height = 17
      Caption = '4.'#38936#26009#21934
      TabOrder = 4
    end
    object CheckBox10: TCheckBox
      Left = 599
      Top = 49
      Width = 97
      Height = 17
      Caption = '5.'#21152#24037#21934
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 89
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 151
      Height = 24
      Caption = 'Pls select Factory:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 184
      Top = 16
      Width = 89
      Height = 24
      Style = csDropDownList
      DropDownCount = 6
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'All')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 89
    Width = 1025
    Height = 128
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 361
      Height = 16
      AutoSize = False
      Caption = #35531#36984#25799#35201#37782#23450#30340#21934#25818' Vui Long chon loai phieu can khoa:'
    end
    object Label4: TLabel
      Left = 95
      Top = 57
      Width = 108
      Height = 16
      Caption = 'Confirm phieu xuat'
    end
    object Label5: TLabel
      Left = 223
      Top = 57
      Width = 92
      Height = 16
      Caption = 'Phieu nhap kho'
    end
    object Label6: TLabel
      Left = 335
      Top = 57
      Width = 136
      Height = 16
      Caption = 'Confirm phieu gia cong'
    end
    object Label7: TLabel
      Left = 483
      Top = 57
      Width = 95
      Height = 16
      Caption = 'Phieu xuat vat tu'
    end
    object Label8: TLabel
      Left = 599
      Top = 57
      Width = 89
      Height = 16
      Caption = 'Phieu gia cong'
    end
    object CheckBox1: TCheckBox
      Left = 96
      Top = 36
      Width = 97
      Height = 17
      Caption = '1 '#38936#26009#20986#24235
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 224
      Top = 36
      Width = 97
      Height = 17
      Caption = '2 '#20837#24235#21934
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 336
      Top = 36
      Width = 97
      Height = 17
      Caption = '3.'#21152#24037#20986#24235
      TabOrder = 2
    end
    object Button1: TButton
      Left = 40
      Top = 85
      Width = 97
      Height = 35
      Caption = #37782#23450'Khoa'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CheckBox7: TCheckBox
      Left = 484
      Top = 36
      Width = 97
      Height = 17
      Caption = '4.'#38936#26009#21934
      TabOrder = 4
    end
    object CheckBox9: TCheckBox
      Left = 599
      Top = 36
      Width = 97
      Height = 17
      Caption = '5.'#21152#24037#21934
      TabOrder = 5
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 56
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 224
    Top = 56
  end
end
