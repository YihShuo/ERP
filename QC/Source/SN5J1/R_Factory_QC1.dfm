object R_Factory_QC: TR_Factory_QC
  Left = 256
  Top = 266
  Width = 1305
  Height = 675
  Caption = 'R_Factory_QC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 41
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 74
      Height = 19
      Caption = 'LABEL ID'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object D_Rate: TLabel
      Left = 320
      Top = 8
      Width = 241
      Height = 25
      AutoSize = False
      Caption = 'DEFECT_RATE:12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object P_Rate: TLabel
      Left = 592
      Top = 8
      Width = 265
      Height = 25
      AutoSize = False
      Caption = 'Batch_Pass_Rate: 12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object User_Qty: TLabel
      Left = 928
      Top = 8
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'User QTY: 12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ED_Barcode: TEdit
      Left = 87
      Top = 9
      Width = 161
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ED_BarcodeKeyPress
    end
  end
  object TitleBox_Base: TScrollBox
    Left = 0
    Top = 41
    Width = 1289
    Height = 64
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clBlack
    ParentColor = False
    TabOrder = 1
    object MOLD: TLabel
      Left = 32
      Top = 16
      Width = 265
      Height = 25
      AutoSize = False
      Caption = 'MOLD:12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object SIZE: TLabel
      Left = 320
      Top = 16
      Width = 169
      Height = 25
      AutoSize = False
      Caption = 'SIZE: 12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Color: TLabel
      Left = 632
      Top = 16
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'COLOR:12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object QTY: TLabel
      Left = 928
      Top = 16
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'QTY: 12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 105
    Width = 1289
    Height = 531
    Align = alClient
    TabOrder = 2
    object DefectBox: TScrollBox
      Left = 0
      Top = 0
      Width = 1285
      Height = 527
      HorzScrollBar.Increment = 115
      HorzScrollBar.Tracking = True
      VertScrollBar.Increment = 49
      VertScrollBar.Tracking = True
      Align = alClient
      BevelInner = bvSpace
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 40
        Top = 16
        Width = 141
        Height = 24
        Caption = 'LECH_KHUON'
      end
      object Label3: TLabel
        Left = 232
        Top = 16
        Width = 112
        Height = 24
        Caption = 'RACH_NUT'
      end
      object Label4: TLabel
        Left = 440
        Top = 16
        Width = 99
        Height = 24
        Caption = 'LEN_MAU'
      end
      object Label5: TLabel
        Left = 624
        Top = 16
        Width = 141
        Height = 24
        Caption = 'KHUYET_LIEU'
      end
      object Label7: TLabel
        Left = 824
        Top = 16
        Width = 134
        Height = 24
        Caption = 'BONG_BONG'
      end
      object Label8: TLabel
        Left = 64
        Top = 128
        Width = 78
        Height = 24
        Caption = 'BI_LOM'
      end
      object Label9: TLabel
        Left = 184
        Top = 128
        Width = 227
        Height = 24
        Caption = 'HOA_VAN_KHONG_RO'
      end
      object Label10: TLabel
        Left = 432
        Top = 128
        Width = 120
        Height = 24
        Caption = 'NHIEM_BAN'
      end
      object Label11: TLabel
        Left = 656
        Top = 128
        Width = 55
        Height = 24
        Caption = 'CHAY'
      end
      object Label12: TLabel
        Left = 840
        Top = 128
        Width = 101
        Height = 24
        Caption = 'BIEN_DAY'
      end
      object Label13: TLabel
        Left = 40
        Top = 240
        Width = 131
        Height = 24
        Caption = 'CHONG_DAU'
      end
      object Label14: TLabel
        Left = 232
        Top = 240
        Width = 120
        Height = 24
        Caption = 'BIEN_DANG'
      end
      object Label15: TLabel
        Left = 376
        Top = 240
        Width = 242
        Height = 24
        Caption = 'DO_DAY_KHONG_DUNG'
      end
      object Label16: TLabel
        Left = 632
        Top = 240
        Width = 113
        Height = 24
        Caption = 'TACH_LIEU'
      end
      object Label17: TLabel
        Left = 776
        Top = 240
        Width = 225
        Height = 24
        Caption = 'NGUYEN_NHAN_KHAC'
      end
      object Label18: TLabel
        Left = 64
        Top = 400
        Width = 92
        Height = 24
        Caption = 'STATUS :'
      end
      object Status: TLabel
        Left = 168
        Top = 400
        Width = 6
        Height = 24
      end
      object ColorButton1: TColorButton
        Left = 800
        Top = 352
        Width = 177
        Height = 145
        Caption = 'Save'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -48
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ColorButton1Click
        BackColor = clLime
        ForeColor = clBlack
        HoverColor = clLime
      end
      object LECH_KHUON: TComboBox
        Left = 64
        Top = 48
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object RACH_NUT: TComboBox
        Left = 248
        Top = 48
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object LEN_MAU: TComboBox
        Left = 448
        Top = 48
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object KHUYET_LIEU: TComboBox
        Left = 648
        Top = 48
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object BONG_BONG: TComboBox
        Left = 848
        Top = 48
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 5
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object BI_LOM: TComboBox
        Left = 64
        Top = 160
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 6
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object HOA_VAN_KHONG_RO: TComboBox
        Left = 248
        Top = 160
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 7
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object NHIEM_BAN: TComboBox
        Left = 448
        Top = 160
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 8
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object CHAY: TComboBox
        Left = 648
        Top = 160
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 9
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object BIEN_DAY: TComboBox
        Left = 848
        Top = 160
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 10
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object CHONG_DAU: TComboBox
        Left = 64
        Top = 272
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 11
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object BIEN_DANG: TComboBox
        Left = 248
        Top = 272
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 12
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object DO_DAY_KHONG_DUNG: TComboBox
        Left = 448
        Top = 272
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 13
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object TACH_LIEU: TComboBox
        Left = 648
        Top = 272
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 14
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object NGUYEN_NHAN_KHAC: TComboBox
        Left = 848
        Top = 272
        Width = 81
        Height = 32
        Style = csDropDownList
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 15
        Text = '0'
        OnChange = LECH_KHUONChange
        Items.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object ColorButton2: TColorButton
        Left = 480
        Top = 352
        Width = 177
        Height = 145
        Caption = 'Discard'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -48
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = ColorButton2Click
        BackColor = clRed
        ForeColor = clBlack
        HoverColor = clRed
      end
    end
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 313
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 313
  end
end
