object AssetFlowChart: TAssetFlowChart
  Left = 531
  Top = 259
  Caption = 'AssetFlowChart'
  ClientHeight = 571
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  TextHeight = 13
  object mainPanel: TPanel
    Left = 0
    Top = 0
    Width = 1015
    Height = 571
    Align = alClient
    TabOrder = 0
    object Shape10: TShape
      Left = 128
      Top = 138
      Width = 140
      Height = 359
      Brush.Color = clLime
      Shape = stRoundRect
    end
    object SN218_Back: TShape
      Left = 141
      Top = 145
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 28
      Top = 8
      Width = 357
      Height = 121
      Brush.Color = clTeal
      Shape = stRoundRect
    end
    object SN12_Back: TShape
      Left = 146
      Top = 45
      Width = 108
      Height = 52
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object Shape9: TShape
      Left = 19
      Top = 516
      Width = 654
      Height = 97
      Brush.Color = 8421631
      Shape = stRoundRect
    end
    object SN33_Back: TShape
      Left = 189
      Top = 539
      Width = 145
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN217_Back: TShape
      Left = 141
      Top = 209
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN23_Back: TShape
      Left = 278
      Top = 421
      Width = 120
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN222_Back: TShape
      Left = 140
      Top = 351
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN31_Back: TShape
      Left = 47
      Top = 539
      Width = 133
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object shp6: TShape
      Left = 409
      Top = 322
      Width = 405
      Height = 185
      Brush.Color = clSkyBlue
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 422
      Top = 352
      Width = 378
      Height = 145
      Brush.Color = clInactiveCaption
      Shape = stRoundRect
    end
    object SN215_Back: TShape
      Left = 560
      Top = 429
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN214_Back: TShape
      Left = 440
      Top = 428
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN13_Back: TShape
      Left = 261
      Top = 45
      Width = 108
      Height = 52
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN11_Back: TShape
      Left = 34
      Top = 45
      Width = 108
      Height = 52
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN211_Back: TShape
      Left = 140
      Top = 279
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN213_Back: TShape
      Left = 560
      Top = 362
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN212_Back: TShape
      Left = 439
      Top = 362
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN212_Link: TLabel
      Left = 452
      Top = 374
      Width = 84
      Height = 37
      Alignment = taCenter
      AutoSize = False
      Caption = 'N212 Thiet bi xuat kho'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN213_Link: TLabel
      Left = 569
      Top = 376
      Width = 95
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N213 Thiet bi bao phe'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN211_Link: TLabel
      Left = 156
      Top = 295
      Width = 81
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N211 Thiet bi nhap kho'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 145
      Top = 19
      Width = 118
      Height = 20
      AutoSize = False
      Caption = 'Thiet bi du lieu'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SN11_Link: TLabel
      Left = 41
      Top = 54
      Width = 93
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N11 Loai Thiet Bi'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 546
      Top = 327
      Width = 110
      Height = 20
      AutoSize = False
      Caption = 'Phieu Thiet bi'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape11: TShape
      Left = 195
      Top = 129
      Width = 5
      Height = 10
      Brush.Color = clBlack
    end
    object Shape14: TShape
      Left = 195
      Top = 498
      Width = 5
      Height = 16
      Brush.Color = clBlack
    end
    object SN13_Link: TLabel
      Left = 264
      Top = 53
      Width = 101
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N13 Nha cung ung'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN214_Link: TLabel
      Left = 449
      Top = 442
      Width = 95
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N214 Thiet bi muon ra'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN215_Link: TLabel
      Left = 569
      Top = 443
      Width = 95
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N215 Thiet bi chuyen vi tri'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN216_Back: TShape
      Left = 679
      Top = 362
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN216_Link: TLabel
      Left = 688
      Top = 369
      Width = 95
      Height = 39
      Alignment = taCenter
      AutoSize = False
      Caption = 'N216 Thiet bi ve kho'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN22_Link: TLabel
      Left = 152
      Top = 361
      Width = 90
      Height = 50
      Alignment = taCenter
      AutoSize = False
      Caption = 'N22 Nhap Kho Xac nhan gai'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN23_Link: TLabel
      Left = 285
      Top = 440
      Width = 101
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N23 Phieu Xac nhan'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Shape6: TShape
      Left = 255
      Top = 453
      Width = 23
      Height = 6
      Brush.Color = clBlack
    end
    object SN217_Link: TLabel
      Left = 144
      Top = 224
      Width = 101
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N217 Thiet bi Thu mua'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN24_Back: TShape
      Left = 143
      Top = 424
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN24_Link: TLabel
      Left = 159
      Top = 439
      Width = 81
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N24 Thiet bi ton kho'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Shape12: TShape
      Left = 397
      Top = 453
      Width = 25
      Height = 6
      Brush.Color = clBlack
    end
    object SN31_Link: TLabel
      Left = 52
      Top = 545
      Width = 121
      Height = 53
      Alignment = taCenter
      AutoSize = False
      Caption = 'N31 Thiet bi Nhap khau Xac nhan'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN34_Back: TShape
      Left = 349
      Top = 539
      Width = 145
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN35_Back: TShape
      Left = 509
      Top = 539
      Width = 145
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN33_Link: TLabel
      Left = 204
      Top = 553
      Width = 121
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'N33 Thiet bi hang thang KT'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN34_Link: TLabel
      Left = 364
      Top = 553
      Width = 121
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'N34 Thiet bi hang thang VND'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN35_Link: TLabel
      Left = 524
      Top = 545
      Width = 121
      Height = 53
      Alignment = taCenter
      AutoSize = False
      Caption = 'N35 Thiet bi hang thang de lieu'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 303
      Top = 518
      Width = 63
      Height = 20
      AutoSize = False
      Caption = 'Ke toan'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SN12_Link: TLabel
      Left = 153
      Top = 54
      Width = 93
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N12 Danh Sach Thiet Bi'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN218_Link: TLabel
      Left = 144
      Top = 160
      Width = 101
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'N218 Thiet bi De Nghi'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN219_Back: TShape
      Left = 679
      Top = 432
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN219_Link: TLabel
      Left = 688
      Top = 439
      Width = 95
      Height = 39
      Alignment = taCenter
      AutoSize = False
      Caption = 'N219 Thiet bi  sua lai'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
  end
end
