object ShippingFlowChart: TShippingFlowChart
  Left = 628
  Top = 455
  Width = 928
  Height = 553
  Caption = 'ShippingFlowChart'
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
  object Label3: TLabel
    Left = 163
    Top = 129
    Width = 116
    Height = 48
    Alignment = taCenter
    AutoSize = False
    Caption = 'N12 Invoice/Packing List'
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
  object mainPanel: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 522
    Align = alClient
    TabOrder = 0
    object Shape2: TShape
      Left = 316
      Top = 302
      Width = 325
      Height = 187
      Brush.Color = clAqua
      Shape = stRoundRect
    end
    object SN42_Back: TShape
      Left = 460
      Top = 330
      Width = 157
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 20
      Top = 302
      Width = 277
      Height = 187
      Brush.Color = clGradientActiveCaption
      Shape = stRoundRect
    end
    object SN34_Back: TShape
      Left = 164
      Top = 409
      Width = 117
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN41_Back: TShape
      Left = 332
      Top = 330
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN32_Back: TShape
      Left = 164
      Top = 331
      Width = 117
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN33_Back: TShape
      Left = 36
      Top = 409
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object shp6: TShape
      Left = 20
      Top = 94
      Width = 485
      Height = 187
      Brush.Color = clTeal
      Shape = stRoundRect
    end
    object SN13_Back: TShape
      Left = 148
      Top = 204
      Width = 147
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN11_Back: TShape
      Left = 28
      Top = 122
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN21_Back: TShape
      Left = 27
      Top = 18
      Width = 108
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN12_Back: TShape
      Left = 150
      Top = 122
      Width = 147
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN12_Link: TLabel
      Left = 163
      Top = 129
      Width = 116
      Height = 48
      Alignment = taCenter
      AutoSize = False
      Caption = 'N12 Invoice/Packing List'
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
    object Shape8: TShape
      Left = 78
      Top = 80
      Width = 5
      Height = 15
      Brush.Color = clBlack
    end
    object SN21_Link: TLabel
      Left = 38
      Top = 32
      Width = 75
      Height = 32
      Alignment = taCenter
      Caption = 'N21 Order Price'
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
    object SN11_Link: TLabel
      Left = 42
      Top = 137
      Width = 74
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N11 Make Invoice'
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
    object Label6: TLabel
      Left = 32
      Top = 101
      Width = 106
      Height = 20
      Caption = 'Make Invoice'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 188
      Top = 101
      Width = 56
      Height = 20
      Caption = 'Report'
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
    object SN13_Link: TLabel
      Left = 164
      Top = 222
      Width = 118
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N13 Invoice Mat Detail(HG)'
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
    object SN14_Back: TShape
      Left = 28
      Top = 204
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN14_Link: TLabel
      Left = 39
      Top = 221
      Width = 93
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'N14 To Khai Stock'
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
      Left = 124
      Top = 309
      Width = 87
      Height = 20
      Caption = 'Production'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SN31_Back: TShape
      Left = 36
      Top = 330
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN31_Link: TLabel
      Left = 42
      Top = 345
      Width = 95
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N31 Shipping BOM'
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
    object SN33_Link: TLabel
      Left = 42
      Top = 428
      Width = 95
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N33 Delivery Account'
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
    object SN32_Link: TLabel
      Left = 173
      Top = 346
      Width = 95
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N32 Shipping Usage'
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
      Left = 420
      Top = 309
      Width = 66
      Height = 20
      Caption = 'Develop'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SN41_Link: TLabel
      Left = 338
      Top = 345
      Width = 95
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N41 Sample Order'
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
      Left = 170
      Top = 428
      Width = 103
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N34 Shipping Order Spec'
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
    object SN42_Link: TLabel
      Left = 466
      Top = 345
      Width = 143
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'N42 SampleOrder Mat Detail(HG)'
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
    object SN15_Back: TShape
      Left = 520
      Top = 205
      Width = 118
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN15_Link: TLabel
      Left = 531
      Top = 223
      Width = 85
      Height = 32
      Alignment = taCenter
      Caption = 'N15 Ma Hai Quan'
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
    object Shape3: TShape
      Left = 504
      Top = 232
      Width = 17
      Height = 6
      Brush.Color = clBlack
    end
    object SN43_Back: TShape
      Left = 332
      Top = 410
      Width = 113
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN43_Link: TLabel
      Left = 336
      Top = 425
      Width = 105
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'N43 ShipDate Confirm'
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
    object SN92_Back: TShape
      Left = 318
      Top = 122
      Width = 147
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN92_Link: TLabel
      Left = 328
      Top = 144
      Width = 129
      Height = 25
      AutoSize = False
      Caption = 'N92 Shoe&Material'
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
