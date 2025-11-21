object PurSampleFlowChart: TPurSampleFlowChart
  Left = 386
  Top = 330
  Width = 808
  Height = 719
  Caption = 'PurSampleFlowChart'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 704
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 685
    ActivePage = TS1
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'TS1'
      TabVisible = False
      object shp_Develop: TShape
        Left = 0
        Top = 0
        Width = 361
        Height = 86
        Brush.Color = clPurple
        Shape = stRoundRect
      end
      object SN732_Back: TShape
        Left = 246
        Top = 17
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object Shape23: TShape
        Left = 239
        Top = 356
        Width = 242
        Height = 84
        Brush.Color = 12615935
        Shape = stRoundRect
      end
      object SN734_Back: TShape
        Left = 486
        Top = 164
        Width = 105
        Height = 60
        Hint = '3333'
        HelpKeyword = '2222'
        HelpContext = 2222
        Brush.Color = clMoneyGreen
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object SN734_Link: TLabel
        Left = 497
        Top = 179
        Width = 82
        Height = 32
        Alignment = taCenter
        Caption = 'Purchasing Analysis'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SN751_Back: TShape
        Left = 247
        Top = 274
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Enabled = False
        Shape = stRoundRect
      end
      object SN751_Link: TLabel
        Left = 254
        Top = 294
        Width = 91
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Caption = 'Invoice/ETA'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SN74_Back: TShape
        Left = 247
        Top = 185
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN74_Link: TLabel
        Left = 261
        Top = 207
        Width = 79
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Caption = 'ETD / NG'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object lbl_Develop: TLabel
        Left = 140
        Top = 1
        Width = 74
        Height = 16
        Caption = 'Developer'
        Color = clPurple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN733_Back: TShape
        Left = 486
        Top = 98
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN733_Link: TLabel
        Left = 504
        Top = 114
        Width = 66
        Height = 32
        Alignment = taCenter
        Caption = 'Tracking Report'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object shp26: TShape
        Left = 0
        Top = 535
        Width = 599
        Height = 83
        Brush.Color = clMaroon
        Shape = stRoundRect
      end
      object lbl30: TLabel
        Left = 272
        Top = 536
        Width = 59
        Height = 16
        Caption = 'Supplier'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN72_Back: TShape
        Left = 126
        Top = 101
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN72_Link: TLabel
        Left = 138
        Top = 122
        Width = 82
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Merge BOM'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN731_Back: TShape
        Left = 247
        Top = 101
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN731_Link: TLabel
        Left = 258
        Top = 122
        Width = 85
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'P.O'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shape6: TShape
        Left = 296
        Top = 334
        Width = 5
        Height = 42
        Brush.Color = clBlack
      end
      object Shape4: TShape
        Left = 111
        Top = 127
        Width = 16
        Height = 5
        Brush.Color = clBlack
      end
      object Shape3: TShape
        Left = 448
        Top = 191
        Width = 39
        Height = 5
        Brush.Color = clBlack
      end
      object Shape9: TShape
        Left = 448
        Top = 128
        Width = 5
        Height = 131
        Brush.Color = clBlack
      end
      object Shape10: TShape
        Left = 449
        Top = 255
        Width = 39
        Height = 5
        Brush.Color = clBlack
      end
      object SN762_Back: TShape
        Left = 247
        Top = 551
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN762_Link: TLabel
        Left = 267
        Top = 567
        Width = 71
        Height = 37
        Alignment = taCenter
        AutoSize = False
        Caption = 'Supplier KPI'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SN764_Back: TShape
        Left = 486
        Top = 551
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN763_Back: TShape
        Left = 369
        Top = 551
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN763_Link: TLabel
        Left = 386
        Top = 571
        Width = 74
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Caption = 'Supplier'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shape15: TShape
        Left = 0
        Top = 446
        Width = 482
        Height = 84
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object SN712_Back: TShape
        Left = 7
        Top = 463
        Width = 105
        Height = 60
        Hint = '3333'
        HelpKeyword = '2222'
        HelpContext = 2222
        Brush.Color = clMoneyGreen
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object SN712_Link: TLabel
        Left = 26
        Top = 486
        Width = 72
        Height = 16
        Caption = 'Use Stock'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN713_Back: TShape
        Left = 126
        Top = 463
        Width = 105
        Height = 60
        Hint = '3333'
        HelpKeyword = '2222'
        HelpContext = 2222
        Brush.Color = clMoneyGreen
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object SN713_Link: TLabel
        Left = 138
        Top = 478
        Width = 83
        Height = 32
        Alignment = taCenter
        Caption = 'WareHouse Stock'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
        OnClick = SN713_LinkClick
      end
      object Label5: TLabel
        Left = 190
        Top = 447
        Width = 83
        Height = 16
        Caption = 'WareHouse'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN764_Link: TLabel
        Left = 502
        Top = 557
        Width = 71
        Height = 48
        Caption = 'Quotation  LeadTime MOQ/A01'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object shp_PurQtyTrack: TShape
        Left = 369
        Top = 463
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object lbl_PurQtyTrack: TLabel
        Left = 385
        Top = 468
        Width = 71
        Height = 48
        Alignment = taCenter
        Caption = ' Pur. Qty      VS    Used Qty'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object shp_Coats: TShape
        Left = 7
        Top = 551
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object lbl_Coats: TLabel
        Left = 18
        Top = 566
        Width = 79
        Height = 32
        Alignment = taCenter
        Caption = 'Coats Color Code'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SN711_Back: TShape
        Left = 7
        Top = 101
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN711_Link: TLabel
        Left = 10
        Top = 122
        Width = 96
        Height = 34
        AutoSize = False
        Caption = 'Receive BOM'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shp_FDStatusStock: TShape
        Left = 247
        Top = 463
        Width = 105
        Height = 60
        Hint = '3333'
        HelpKeyword = '2222'
        HelpContext = 2222
        Brush.Color = clMoneyGreen
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object lbl_FDStatusStock: TLabel
        Left = 260
        Top = 478
        Width = 82
        Height = 32
        Alignment = taCenter
        Caption = 'Old Season Stock'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SN761_Back: TShape
        Left = 126
        Top = 551
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN761_Link: TLabel
        Left = 143
        Top = 570
        Width = 71
        Height = 32
        AutoSize = False
        Caption = 'Forwarder'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN77_Back: TShape
        Left = 7
        Top = 18
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN77_Link: TLabel
        Left = 29
        Top = 32
        Width = 58
        Height = 32
        Alignment = taCenter
        Caption = 'Sample BOM'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shp_PurColor: TShape
        Left = 486
        Top = 232
        Width = 105
        Height = 60
        Hint = '3333'
        HelpKeyword = '2222'
        HelpContext = 2222
        Brush.Color = clMoneyGreen
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object lbl_PurColor: TLabel
        Left = 502
        Top = 248
        Width = 78
        Height = 32
        Alignment = taCenter
        Caption = 'Purchasing Color'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shape7: TShape
        Left = 231
        Top = 127
        Width = 17
        Height = 5
        Brush.Color = clBlack
      end
      object Shape8: TShape
        Left = 352
        Top = 125
        Width = 134
        Height = 5
        Brush.Color = clBlack
      end
      object Shape13: TShape
        Left = 57
        Top = 160
        Width = 5
        Height = 304
        Brush.Color = clBlack
      end
      object Shape16: TShape
        Left = 296
        Top = 161
        Width = 5
        Height = 24
        Brush.Color = clBlack
      end
      object Shape14: TShape
        Left = 57
        Top = 78
        Width = 5
        Height = 24
        Brush.Color = clBlack
      end
      object Shape1: TShape
        Left = 296
        Top = 244
        Width = 5
        Height = 31
        Brush.Color = clBlack
      end
      object SN753_Back: TShape
        Left = 247
        Top = 374
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN753_Link: TLabel
        Left = 265
        Top = 388
        Width = 70
        Height = 38
        Alignment = taCenter
        AutoSize = False
        Caption = 'Confirm Price'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SN754_Back: TShape
        Left = 369
        Top = 374
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN754_Link: TLabel
        Left = 385
        Top = 395
        Width = 74
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Payment'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shape5: TShape
        Left = 352
        Top = 401
        Width = 17
        Height = 5
        Brush.Color = clBlack
      end
      object Label7: TLabel
        Left = 326
        Top = 358
        Width = 77
        Height = 16
        Caption = 'Accounting'
        Color = 12615935
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN752_Back: TShape
        Left = 129
        Top = 274
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN752_Link: TLabel
        Left = 134
        Top = 288
        Width = 91
        Height = 35
        Alignment = taCenter
        AutoSize = False
        Caption = 'Transport Charge'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shape12: TShape
        Left = 232
        Top = 302
        Width = 17
        Height = 5
        Brush.Color = clBlack
      end
      object SN732_Link: TLabel
        Left = 258
        Top = 37
        Width = 81
        Height = 36
        Alignment = taCenter
        AutoSize = False
        Caption = 'Purchasing Status'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Shape11: TShape
        Left = 296
        Top = 78
        Width = 5
        Height = 24
        Brush.Color = clBlack
      end
    end
  end
end
