object PurSampleFlowChart: TPurSampleFlowChart
  Left = 418
  Top = 328
  Width = 808
  Height = 640
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape14: TShape
    Left = 175
    Top = 54
    Width = 105
    Height = 60
    Brush.Color = clMoneyGreen
    Shape = stRoundRect
  end
  object Button1: TButton
    Left = 704
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
  end
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 609
    ActivePage = TS3
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'TS1'
      TabVisible = False
      object Shape23: TShape
        Left = 244
        Top = 277
        Width = 122
        Height = 84
        Brush.Color = 12615935
        Shape = stRoundRect
      end
      object SN734_Back: TShape
        Left = 486
        Top = 85
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
        Top = 100
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
        Top = 195
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Enabled = False
        Shape = stRoundRect
      end
      object SN751_Link: TLabel
        Left = 254
        Top = 215
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
        Top = 106
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN74_Link: TLabel
        Left = 261
        Top = 128
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
      object SN733_Back: TShape
        Left = 486
        Top = 19
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN733_Link: TLabel
        Left = 504
        Top = 35
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
        Top = 473
        Width = 599
        Height = 83
        Brush.Color = clMaroon
        Shape = stRoundRect
      end
      object lbl30: TLabel
        Left = 272
        Top = 474
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
        Top = 22
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN72_Link: TLabel
        Left = 138
        Top = 43
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
        Top = 22
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN731_Link: TLabel
        Left = 258
        Top = 43
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
        Top = 255
        Width = 5
        Height = 26
        Brush.Color = clBlack
      end
      object Shape4: TShape
        Left = 111
        Top = 48
        Width = 16
        Height = 5
        Brush.Color = clBlack
      end
      object Shape3: TShape
        Left = 448
        Top = 112
        Width = 39
        Height = 5
        Brush.Color = clBlack
      end
      object Shape9: TShape
        Left = 448
        Top = 49
        Width = 5
        Height = 131
        Brush.Color = clBlack
      end
      object Shape10: TShape
        Left = 449
        Top = 176
        Width = 39
        Height = 5
        Brush.Color = clBlack
      end
      object SN762_Back: TShape
        Left = 247
        Top = 489
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN762_Link: TLabel
        Left = 267
        Top = 505
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
        Top = 489
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN763_Back: TShape
        Left = 369
        Top = 489
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN763_Link: TLabel
        Left = 386
        Top = 509
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
        Top = 384
        Width = 482
        Height = 84
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object SN712_Back: TShape
        Left = 7
        Top = 401
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
        Top = 424
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
        Top = 401
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
        Top = 416
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
        Top = 385
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
        Top = 495
        Width = 71
        Height = 48
        Caption = 'Quotation  LeadTime MOQ'
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
        Top = 401
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object lbl_PurQtyTrack: TLabel
        Left = 385
        Top = 406
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
      object SN765_Back: TShape
        Left = 7
        Top = 489
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN765_Link: TLabel
        Left = 11
        Top = 502
        Width = 99
        Height = 32
        Alignment = taCenter
        Caption = 'Converse Avery AD Mat '
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
        Top = 22
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN711_Link: TLabel
        Left = 10
        Top = 43
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
        Top = 401
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
        Top = 416
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
        Top = 489
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN761_Link: TLabel
        Left = 143
        Top = 508
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
      object SN732_Back: TShape
        Left = 486
        Top = 153
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
      object SN732_Link: TLabel
        Left = 504
        Top = 169
        Width = 63
        Height = 32
        Alignment = taCenter
        Caption = 'Supplier Analysis'
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
        Top = 48
        Width = 17
        Height = 5
        Brush.Color = clBlack
      end
      object Shape8: TShape
        Left = 352
        Top = 46
        Width = 134
        Height = 5
        Brush.Color = clBlack
      end
      object Shape13: TShape
        Left = 57
        Top = 81
        Width = 5
        Height = 304
        Brush.Color = clBlack
      end
      object Shape16: TShape
        Left = 296
        Top = 82
        Width = 5
        Height = 24
        Brush.Color = clBlack
      end
      object Shape1: TShape
        Left = 296
        Top = 165
        Width = 5
        Height = 31
        Brush.Color = clBlack
      end
      object SN753_Back: TShape
        Left = 252
        Top = 295
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN753_Link: TLabel
        Left = 273
        Top = 309
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
      object Label7: TLabel
        Left = 270
        Top = 278
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
        Top = 195
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN752_Link: TLabel
        Left = 134
        Top = 209
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
        Top = 223
        Width = 17
        Height = 5
        Brush.Color = clBlack
      end
      object SN815_Back: TShape
        Left = 485
        Top = 225
        Width = 109
        Height = 60
        Hint = '3333'
        HelpKeyword = '2222'
        HelpContext = 2222
        Brush.Color = clMoneyGreen
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object SN815_Link: TLabel
        Left = 498
        Top = 246
        Width = 83
        Height = 16
        Alignment = taCenter
        Caption = 'TrackingPO'
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
      object Shape2: TShape
        Left = 448
        Top = 178
        Width = 5
        Height = 79
        Brush.Color = clBlack
      end
      object Shape5: TShape
        Left = 450
        Top = 252
        Width = 36
        Height = 5
        Brush.Color = clBlack
      end
    end
    object TS2: TTabSheet
      Caption = 'TS2'
      ImageIndex = 1
      TabVisible = False
    end
    object TS3: TTabSheet
      Caption = 'TS3'
      ImageIndex = 2
      TabVisible = False
      object Shape24: TShape
        Left = 8
        Top = 10
        Width = 681
        Height = 143
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object SN2154_Back: TShape
        Left = 151
        Top = 83
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object Shape17: TShape
        Left = 8
        Top = 169
        Width = 681
        Height = 83
        Brush.Color = clMaroon
        Shape = stRoundRect
      end
      object SN225_Back: TShape
        Left = 16
        Top = 179
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN231_Back: TShape
        Left = 15
        Top = 16
        Width = 130
        Height = 57
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN2152_Back: TShape
        Left = 289
        Top = 83
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN2151_Back: TShape
        Left = 15
        Top = 83
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN2151_Link: TLabel
        Left = 18
        Top = 98
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'N2151 Apply Total'
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
      object SN2153_Back: TShape
        Left = 428
        Top = 82
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN2152_Link: TLabel
        Left = 292
        Top = 98
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'N2152 Apply Total Confirm'
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
      object SN2153_Link: TLabel
        Left = 431
        Top = 97
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'N2153Apply Total Permit'
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
      object SN214_Back: TShape
        Left = 566
        Top = 81
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN214_Link: TLabel
        Left = 570
        Top = 98
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'SN214 Total Purchase'
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
      object SN231_Link: TLabel
        Left = 21
        Top = 34
        Width = 116
        Height = 22
        AutoSize = False
        Caption = 'N231 Quotation'
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
      object Shape20: TShape
        Left = 255
        Top = 113
        Width = 34
        Height = 5
        Brush.Color = clBlack
      end
      object Shape21: TShape
        Left = 394
        Top = 111
        Width = 34
        Height = 5
        Brush.Color = clBlack
      end
      object Shape22: TShape
        Left = 64
        Top = 73
        Width = 5
        Height = 10
        Brush.Color = clBlack
      end
      object Label6: TLabel
        Left = 230
        Top = 25
        Width = 139
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Purchase'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object SN225_Link: TLabel
        Left = 19
        Top = 194
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'N225 Apply Total Trace'
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
      object SN224_Back: TShape
        Left = 567
        Top = 179
        Width = 105
        Height = 60
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object SN224_Link: TLabel
        Left = 570
        Top = 194
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'N224 Total Purchase Trace'
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
      object Shape27: TShape
        Left = 533
        Top = 109
        Width = 34
        Height = 5
        Brush.Color = clBlack
      end
      object Shape28: TShape
        Left = 61
        Top = 153
        Width = 5
        Height = 26
        Brush.Color = clBlack
      end
      object Shape29: TShape
        Left = 613
        Top = 153
        Width = 5
        Height = 26
        Brush.Color = clBlack
      end
      object SN2154_Link: TLabel
        Left = 154
        Top = 98
        Width = 96
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = 'N2154 Apply Total Review'
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
      object Shape18: TShape
        Left = 119
        Top = 113
        Width = 30
        Height = 5
        Brush.Color = clBlack
      end
    end
    object TS4: TTabSheet
      Caption = 'TS4'
      ImageIndex = 3
      TabVisible = False
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BLimits.*,BLimit.YN'
      'from BLimits'
      
        'Left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=B' +
        'Limits.FORMID'
      'where BLimits.USERID=:userid'
      '      and BLimits.MKID=:mkid'
      '      and BLimits.GSBH=:GSBH')
    Left = 160
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'userid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mkid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
  end
end
