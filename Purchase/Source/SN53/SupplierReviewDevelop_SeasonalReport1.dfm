object SupplierReviewDevelop_SeasonalReport: TSupplierReviewDevelop_SeasonalReport
  Left = 389
  Top = 94
  Width = 827
  Height = 675
  Caption = 'SupplierReviewDevelop_SeasonalReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      50.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 94
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        248.708333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 133
        Top = 15
        Width = 490
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          351.895833333333300000
          39.687500000000000000
          1296.458333333333000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'BANG TONG KET DANH GIA DINH KY NHA CUNG UNG'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 277
        Top = 37
        Width = 201
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          732.895833333333300000
          97.895833333333330000
          531.812500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20379#25033#21830#23450#26399#35413#37969#24409#32317#34920
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRYear: TQRLabel
        Left = 345
        Top = 61
        Width = 65
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          912.812500000000000000
          161.395833333333300000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Nam '#24180
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRListNo: TQRLabel
        Left = 715
        Top = 77
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1891.770833333333000000
          203.729166666666700000
          100.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ListNo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 113
      Width = 756
      Height = 226
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        597.958333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 276
        Top = 5
        Width = 477
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          13.229166666666670000
          1262.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'ZSYWJC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 45
        Top = 5
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          119.062500000000000000
          13.229166666666670000
          275.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ten nha cung ung'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 154
        Top = 6
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          407.458333333333300000
          15.875000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20379#25033#21830#21517#31281
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 25
        Width = 755
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          66.145833333333330000
          1997.604166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 11
        Top = 30
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          79.375000000000000000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tranh tich'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 74
        Top = 31
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          195.791666666666700000
          82.020833333333330000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25104#32318
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 25
        Top = 80
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          66.145833333333330000
          211.666666666666700000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Chat luong'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 26
        Top = 105
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666670000
          277.812500000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Giao hang'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 31
        Top = 180
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          476.250000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Phoi hop'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 24
        Top = 205
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          542.395833333333300000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tong cong'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 114
        Top = 25
        Width = 1
        Height = 201
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          531.812500000000000000
          301.625000000000000000
          66.145833333333330000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 50
        Width = 755
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          132.291666666666700000
          1997.604166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 100
        Width = 235
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          264.583333333333300000
          621.770833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 175
        Width = 235
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          463.020833333333300000
          621.770833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 200
        Width = 235
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          529.166666666666700000
          621.770833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 168
        Top = 30
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          79.375000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quy 1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 75
        Width = 755
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          198.437500000000000000
          1997.604166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 23
        Top = 55
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          60.854166666666670000
          145.520833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Thang'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 64
        Top = 56
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          169.333333333333300000
          148.166666666666700000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26376#20221
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 212
        Top = 31
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          560.916666666666700000
          82.020833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23395
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape8: TQRShape
        Left = 154
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          407.458333333333300000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 194
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          513.291666666666700000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 234
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          619.125000000000000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 274
        Top = 0
        Width = 1
        Height = 226
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          597.958333333333300000
          724.958333333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 314
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          830.791666666666700000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 354
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          936.625000000000000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 394
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1042.458333333333000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 434
        Top = 25
        Width = 1
        Height = 201
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          531.812500000000000000
          1148.291666666667000000
          66.145833333333330000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 474
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1254.125000000000000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 514
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1359.958333333333000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 554
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1465.791666666667000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 594
        Top = 25
        Width = 1
        Height = 201
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          531.812500000000000000
          1571.625000000000000000
          66.145833333333330000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 634
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1677.458333333333000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 674
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1783.291666666667000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 714
        Top = 50
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          1889.125000000000000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 116
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 156
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 196
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 236
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          624.416666666666700000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ok/ng'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 276
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 316
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 356
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '6'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 396
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ok/ng'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 436
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '7'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 476
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 516
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 556
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1471.083333333333000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ok/ng'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 596
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 636
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 676
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 716
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1894.416666666667000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ok/ng'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 328
        Top = 30
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          867.833333333333300000
          79.375000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quy 2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 372
        Top = 31
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          984.250000000000000000
          82.020833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23395
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 488
        Top = 30
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1291.166666666667000000
          79.375000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quy 3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 532
        Top = 31
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1407.583333333333000000
          82.020833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23395
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 648
        Top = 30
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          79.375000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quy 4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 692
        Top = 31
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1830.916666666667000000
          82.020833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23395
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 116
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '1_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 116
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '1_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 116
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '1_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 116
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '1_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 156
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '2_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 156
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '2_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 156
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '2_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 156
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '2_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 196
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '3_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 196
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '3_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 196
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '3_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 196
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '3_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 276
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '4_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 276
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '4_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 276
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '4_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 276
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '4_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 316
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '5_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 316
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '5_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 316
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '5_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 316
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '5_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 356
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '6_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 356
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '6_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 356
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '6_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 356
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '6_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 436
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '7_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 436
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '7_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 436
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '7_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText29: TQRDBText
        Left = 436
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '7_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText30: TQRDBText
        Left = 476
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '8_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText31: TQRDBText
        Left = 476
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '8_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText32: TQRDBText
        Left = 476
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '8_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText33: TQRDBText
        Left = 476
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '8_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText34: TQRDBText
        Left = 516
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '9_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText35: TQRDBText
        Left = 516
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '9_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText36: TQRDBText
        Left = 516
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '9_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText37: TQRDBText
        Left = 516
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '9_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText38: TQRDBText
        Left = 596
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '10_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText39: TQRDBText
        Left = 596
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '10_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText40: TQRDBText
        Left = 596
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '10_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText41: TQRDBText
        Left = 596
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '10_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText42: TQRDBText
        Left = 636
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '11_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText43: TQRDBText
        Left = 636
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '11_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText44: TQRDBText
        Left = 636
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '11_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText45: TQRDBText
        Left = 636
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '11_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText46: TQRDBText
        Left = 676
        Top = 80
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          211.666666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '12_Quality'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText47: TQRDBText
        Left = 676
        Top = 105
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          277.812500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '12_ETD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText48: TQRDBText
        Left = 676
        Top = 180
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          476.250000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '12_Cooperation'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText49: TQRDBText
        Left = 676
        Top = 204
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          539.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '12_Total'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape16: TQRShape
        Left = 274
        Top = 200
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          724.958333333333300000
          529.166666666666700000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 274
        Top = 175
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          724.958333333333300000
          463.020833333333300000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 274
        Top = 100
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          724.958333333333300000
          264.583333333333300000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 434
        Top = 200
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1148.291666666667000000
          529.166666666666700000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 434
        Top = 176
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1148.291666666667000000
          465.666666666666700000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 434
        Top = 100
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1148.291666666667000000
          264.583333333333300000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 594
        Top = 200
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1571.625000000000000000
          529.166666666666700000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 594
        Top = 176
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1571.625000000000000000
          465.666666666666700000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 594
        Top = 100
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1571.625000000000000000
          264.583333333333300000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText50: TQRDBText
        Left = 236
        Top = 138
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          624.416666666666700000
          365.125000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'Result_1'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText51: TQRDBText
        Left = 396
        Top = 138
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          365.125000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'Result_2'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText52: TQRDBText
        Left = 556
        Top = 138
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1471.083333333333000000
          365.125000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'Result_3'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText53: TQRDBText
        Left = 716
        Top = 138
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1894.416666666667000000
          365.125000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'Result_4'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape32: TQRShape
        Left = 0
        Top = 0
        Width = 755
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1997.604166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 0
        Top = 225
        Width = 755
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          595.312500000000000000
          1997.604166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 226
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          597.958333333333300000
          0.000000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 755
        Top = 0
        Width = 1
        Height = 226
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          597.958333333333300000
          1997.604166666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 0
        Top = 125
        Width = 235
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          330.729166666666700000
          621.770833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 0
        Top = 150
        Width = 235
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          396.875000000000000000
          621.770833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 274
        Top = 124
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          724.958333333333300000
          328.083333333333300000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 274
        Top = 150
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          724.958333333333300000
          396.875000000000000000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 434
        Top = 123
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1148.291666666667000000
          325.437500000000000000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 434
        Top = 150
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1148.291666666667000000
          396.875000000000000000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 594
        Top = 123
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1571.625000000000000000
          325.437500000000000000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 594
        Top = 150
        Width = 121
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1571.625000000000000000
          396.875000000000000000
          320.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel33: TQRLabel
        Left = 18
        Top = 155
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          47.625000000000000000
          410.104166666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ETD trong L/T'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 7
        Top = 130
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          343.958333333333300000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ETD trong 3 ngay'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText54: TQRDBText
        Left = 116
        Top = 155
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          410.104166666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '1_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText55: TQRDBText
        Left = 156
        Top = 155
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          410.104166666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '2_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText56: TQRDBText
        Left = 196
        Top = 155
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          410.104166666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '3_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText57: TQRDBText
        Left = 116
        Top = 130
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          343.958333333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '1_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText58: TQRDBText
        Left = 156
        Top = 130
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          343.958333333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '2_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText59: TQRDBText
        Left = 196
        Top = 130
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          343.958333333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '3_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText60: TQRDBText
        Left = 276
        Top = 154
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          407.458333333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '4_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText61: TQRDBText
        Left = 316
        Top = 154
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          407.458333333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '5_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText62: TQRDBText
        Left = 356
        Top = 154
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          407.458333333333300000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '6_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText63: TQRDBText
        Left = 276
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '4_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText64: TQRDBText
        Left = 316
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '5_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText65: TQRDBText
        Left = 356
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '6_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText66: TQRDBText
        Left = 436
        Top = 156
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          412.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '7_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText67: TQRDBText
        Left = 476
        Top = 156
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          412.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '8_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText68: TQRDBText
        Left = 516
        Top = 156
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          412.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '9_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText69: TQRDBText
        Left = 436
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '7_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText70: TQRDBText
        Left = 476
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '8_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText71: TQRDBText
        Left = 516
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '9_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText72: TQRDBText
        Left = 596
        Top = 156
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          412.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '10_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText73: TQRDBText
        Left = 636
        Top = 156
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          412.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '11_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText74: TQRDBText
        Left = 676
        Top = 156
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          412.750000000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '12_ETD_withinLeadtime'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText75: TQRDBText
        Left = 596
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '10_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText76: TQRDBText
        Left = 636
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '11_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText77: TQRDBText
        Left = 676
        Top = 129
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          341.312500000000000000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = '12_ETD_within3days'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 339
      Width = 756
      Height = 200
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        529.166666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel43: TQRLabel
        Left = 683
        Top = 181
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1807.104166666667000000
          478.895833333333300000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'T-DCC-028B'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRPage: TQRExpr
        Left = 353
        Top = 181
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          933.979166666666700000
          478.895833333333300000
          132.291666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 2
        Top = 5
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          13.229166666666670000
          288.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hang quy danh gia'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 116
        Top = 6
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          306.916666666666700000
          15.875000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27599#23395#21028#23450' :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 218
        Top = 5
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          576.791666666666700000
          13.229166666666670000
          354.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OK : Tiep tuc giao dich'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 357
        Top = 6
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          944.562500000000000000
          15.875000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32380#32396#20132#26131
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 218
        Top = 23
        Width = 210
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          576.791666666666700000
          60.854166666666670000
          555.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NG : Trinh tong giam doc quyet dinh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 433
        Top = 24
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          63.500000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21576#32317#32147#29702#35009#27770
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT WF_SupplierReviewS_Dev.SupplierID, ZSZL.ZSYWJC'
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'01'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'1_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'01'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'1_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'01'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'1_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'01'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'1_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'01'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'1_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'01'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'1_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'02'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'2_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'02'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'2_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'02'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'2_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'02'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'2_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'02'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'2_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'02'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'2_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'03'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'3_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'03'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'3_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'03'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'3_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'03'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'3_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'03'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'3_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'03'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'3_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'04'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'4_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'04'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'4_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'04'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'4_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'04'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'4_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'04'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'4_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'04'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'4_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'05'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'5_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'05'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'5_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'05'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'5_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'05'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'5_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'05'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'5_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'05'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'5_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'06'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'6_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'06'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'6_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'06'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'6_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'06'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'6_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'06'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'6_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'06'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'6_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'07'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'7_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'07'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'7_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'07'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'7_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'07'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'7_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'07'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'7_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'07'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'7_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'08'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'8_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'08'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'8_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'08'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'8_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'08'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'8_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'08'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'8_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'08'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'8_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'09'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'9_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'09'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'9_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'09'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'9_ETD_within' +
        '3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'09'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'9_ETD_wit' +
        'hinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'09'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'9_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'09'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'9_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'10'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'10_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'10'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'10_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'10'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'10_ETD_withi' +
        'n3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'10'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'10_ETD_wi' +
        'thinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'10'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'10_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'10'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'10_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'11'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'11_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'11'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'11_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'11'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'11_ETD_withi' +
        'n3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'11'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'11_ETD_wi' +
        'thinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'11'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'11_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'11'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'11_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'12'#39' THEN WF_Su' +
        'pplierReviewS_Month.Quality END) AS '#39'12_Quality'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'12'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD END) AS '#39'12_ETD'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'12'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_3days_score END) AS '#39'12_ETD_withi' +
        'n3days'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'12'#39' THEN WF_Su' +
        'pplierReviewS_Month.ETD_within_Leadtime_score END) AS '#39'12_ETD_wi' +
        'thinLeadtime'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'12'#39' THEN WF_Su' +
        'pplierReviewS_Month.Cooperation END) AS '#39'12_Cooperation'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = '#39'12'#39' THEN WF_Su' +
        'pplierReviewS_Month.Total END) AS '#39'12_Total'#39
      
        ', MAX(CASE WHEN WF_SupplierReviewSS_Dev.Quarter = 1 THEN WF_Supp' +
        'lierReviewSS_Dev.Result END) AS Result_1'
      
        ', MAX(CASE WHEN WF_SupplierReviewSS_Dev.Quarter = 2 THEN WF_Supp' +
        'lierReviewSS_Dev.Result END) AS Result_2'
      
        ', MAX(CASE WHEN WF_SupplierReviewSS_Dev.Quarter = 3 THEN WF_Supp' +
        'lierReviewSS_Dev.Result END) AS Result_3'
      
        ', MAX(CASE WHEN WF_SupplierReviewSS_Dev.Quarter = 4 THEN WF_Supp' +
        'lierReviewSS_Dev.Result END) AS Result_4'
      'FROM WF_SupplierReview_Dev'
      
        'LEFT JOIN WF_SupplierReviewS_Dev ON WF_SupplierReviewS_Dev.LNO =' +
        ' WF_SupplierReview_Dev.LNO'
      
        'LEFT JOIN (SELECT WF_SupplierReview_Dev.Month,SupplierID,Quality' +
        ',ETD,ETD_within_3days_score,ETD_within_Leadtime_score,Cooperatio' +
        'n,Total'
      '  '#9#9'      FROM WF_SupplierReviewS_Dev'
      
        '  '#9#9'      LEFT JOIN WF_SupplierReview_Dev ON WF_SupplierReviewS_' +
        'Dev.LNO = WF_SupplierReview_Dev.LNO'
      
        '           WHERE WF_SupplierReviewS_Dev.LNO IN (SELECT LNO FROM ' +
        'WF_SupplierReview_Dev'
      
        '                                            WHERE Type ='#39'Monthly' +
        #39
      
        '                                            AND YEAR =(SELECT YE' +
        'AR FROM WF_SupplierReview_Dev WHERE LNO = '#39'20231103-00001'#39' AND T' +
        'ype = '#39'Yearly'#39'))'
      '                                            AND GSBH = '#39'CDC'#39' '
      
        '                                            AND WF_SupplierRevie' +
        'w_Dev.SFL = '#39'TM'#39' '
      
        ')WF_SupplierReviewS_Month on WF_SupplierReviewS_Month.SupplierID' +
        ' = WF_SupplierReviewS_Dev.SupplierID'
      
        'LEFT JOIN WF_SupplierReviewSS_Dev ON WF_SupplierReviewSS_Dev.LNO' +
        ' = WF_SupplierReviewS_Dev.LNO AND WF_SupplierReviewSS_Dev.Suppli' +
        'erID = WF_SupplierReviewS_Dev.SupplierID'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = WF_SupplierReviewS_Dev.SupplierID'
      'WHERE WF_SupplierReview_Dev.LNO='#39'20231103-00001'#39' '
      'GROUP BY WF_SupplierReviewS_Dev.SupplierID, ZSZL.ZSYWJC'
      'ORDER BY WF_SupplierReviewS_Dev.SupplierID')
    Left = 19
    Top = 19
    object Query1SupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1BDEDesigner1_Quality: TFloatField
      FieldName = '1_Quality'
    end
    object Query1BDEDesigner1_ETD: TFloatField
      FieldName = '1_ETD'
    end
    object Query1BDEDesigner1_ETD_within3days: TFloatField
      FieldName = '1_ETD_within3days'
    end
    object Query1BDEDesigner1_ETD_withinLeadtime: TFloatField
      FieldName = '1_ETD_withinLeadtime'
    end
    object Query1BDEDesigner1_Cooperation: TFloatField
      FieldName = '1_Cooperation'
    end
    object Query1BDEDesigner1_Total: TFloatField
      FieldName = '1_Total'
    end
    object Query1BDEDesigner2_Quality: TFloatField
      FieldName = '2_Quality'
    end
    object Query1BDEDesigner2_ETD: TFloatField
      FieldName = '2_ETD'
    end
    object Query1BDEDesigner2_ETD_within3days: TFloatField
      FieldName = '2_ETD_within3days'
    end
    object Query1BDEDesigner2_ETD_withinLeadtime: TFloatField
      FieldName = '2_ETD_withinLeadtime'
    end
    object Query1BDEDesigner2_Cooperation: TFloatField
      FieldName = '2_Cooperation'
    end
    object Query1BDEDesigner2_Total: TFloatField
      FieldName = '2_Total'
    end
    object Query1BDEDesigner3_Quality: TFloatField
      FieldName = '3_Quality'
    end
    object Query1BDEDesigner3_ETD: TFloatField
      FieldName = '3_ETD'
    end
    object Query1BDEDesigner3_ETD_within3days: TFloatField
      FieldName = '3_ETD_within3days'
    end
    object Query1BDEDesigner3_ETD_withinLeadtime: TFloatField
      FieldName = '3_ETD_withinLeadtime'
    end
    object Query1BDEDesigner3_Cooperation: TFloatField
      FieldName = '3_Cooperation'
    end
    object Query1BDEDesigner3_Total: TFloatField
      FieldName = '3_Total'
    end
    object Query1BDEDesigner4_Quality: TFloatField
      FieldName = '4_Quality'
    end
    object Query1BDEDesigner4_ETD: TFloatField
      FieldName = '4_ETD'
    end
    object Query1BDEDesigner4_ETD_within3days: TFloatField
      FieldName = '4_ETD_within3days'
    end
    object Query1BDEDesigner4_ETD_withinLeadtime: TFloatField
      FieldName = '4_ETD_withinLeadtime'
    end
    object Query1BDEDesigner4_Cooperation: TFloatField
      FieldName = '4_Cooperation'
    end
    object Query1BDEDesigner4_Total: TFloatField
      FieldName = '4_Total'
    end
    object Query1BDEDesigner5_Quality: TFloatField
      FieldName = '5_Quality'
    end
    object Query1BDEDesigner5_ETD: TFloatField
      FieldName = '5_ETD'
    end
    object Query1BDEDesigner5_ETD_within3days: TFloatField
      FieldName = '5_ETD_within3days'
    end
    object Query1BDEDesigner5_ETD_withinLeadtime: TFloatField
      FieldName = '5_ETD_withinLeadtime'
    end
    object Query1BDEDesigner5_Cooperation: TFloatField
      FieldName = '5_Cooperation'
    end
    object Query1BDEDesigner5_Total: TFloatField
      FieldName = '5_Total'
    end
    object Query1BDEDesigner6_Quality: TFloatField
      FieldName = '6_Quality'
    end
    object Query1BDEDesigner6_ETD: TFloatField
      FieldName = '6_ETD'
    end
    object Query1BDEDesigner6_ETD_within3days: TFloatField
      FieldName = '6_ETD_within3days'
    end
    object Query1BDEDesigner6_ETD_withinLeadtime: TFloatField
      FieldName = '6_ETD_withinLeadtime'
    end
    object Query1BDEDesigner6_Cooperation: TFloatField
      FieldName = '6_Cooperation'
    end
    object Query1BDEDesigner6_Total: TFloatField
      FieldName = '6_Total'
    end
    object Query1BDEDesigner7_Quality: TFloatField
      FieldName = '7_Quality'
    end
    object Query1BDEDesigner7_ETD: TFloatField
      FieldName = '7_ETD'
    end
    object Query1BDEDesigner7_ETD_within3days: TFloatField
      FieldName = '7_ETD_within3days'
    end
    object Query1BDEDesigner7_ETD_withinLeadtime: TFloatField
      FieldName = '7_ETD_withinLeadtime'
    end
    object Query1BDEDesigner7_Cooperation: TFloatField
      FieldName = '7_Cooperation'
    end
    object Query1BDEDesigner7_Total: TFloatField
      FieldName = '7_Total'
    end
    object Query1BDEDesigner8_Quality: TFloatField
      FieldName = '8_Quality'
    end
    object Query1BDEDesigner8_ETD: TFloatField
      FieldName = '8_ETD'
    end
    object Query1BDEDesigner8_ETD_within3days: TFloatField
      FieldName = '8_ETD_within3days'
    end
    object Query1BDEDesigner8_ETD_withinLeadtime: TFloatField
      FieldName = '8_ETD_withinLeadtime'
    end
    object Query1BDEDesigner8_Cooperation: TFloatField
      FieldName = '8_Cooperation'
    end
    object Query1BDEDesigner8_Total: TFloatField
      FieldName = '8_Total'
    end
    object Query1BDEDesigner9_Quality: TFloatField
      FieldName = '9_Quality'
    end
    object Query1BDEDesigner9_ETD: TFloatField
      FieldName = '9_ETD'
    end
    object Query1BDEDesigner9_ETD_within3days: TFloatField
      FieldName = '9_ETD_within3days'
    end
    object Query1BDEDesigner9_ETD_withinLeadtime: TFloatField
      FieldName = '9_ETD_withinLeadtime'
    end
    object Query1BDEDesigner9_Cooperation: TFloatField
      FieldName = '9_Cooperation'
    end
    object Query1BDEDesigner9_Total: TFloatField
      FieldName = '9_Total'
    end
    object Query1BDEDesigner10_Quality: TFloatField
      FieldName = '10_Quality'
    end
    object Query1BDEDesigner10_ETD: TFloatField
      FieldName = '10_ETD'
    end
    object Query1BDEDesigner10_ETD_within3days: TFloatField
      FieldName = '10_ETD_within3days'
    end
    object Query1BDEDesigner10_ETD_withinLeadtime: TFloatField
      FieldName = '10_ETD_withinLeadtime'
    end
    object Query1BDEDesigner10_Cooperation: TFloatField
      FieldName = '10_Cooperation'
    end
    object Query1BDEDesigner10_Total: TFloatField
      FieldName = '10_Total'
    end
    object Query1BDEDesigner11_Quality: TFloatField
      FieldName = '11_Quality'
    end
    object Query1BDEDesigner11_ETD: TFloatField
      FieldName = '11_ETD'
    end
    object Query1BDEDesigner11_ETD_within3days: TFloatField
      FieldName = '11_ETD_within3days'
    end
    object Query1BDEDesigner11_ETD_withinLeadtime: TFloatField
      FieldName = '11_ETD_withinLeadtime'
    end
    object Query1BDEDesigner11_Cooperation: TFloatField
      FieldName = '11_Cooperation'
    end
    object Query1BDEDesigner11_Total: TFloatField
      FieldName = '11_Total'
    end
    object Query1BDEDesigner12_Quality: TFloatField
      FieldName = '12_Quality'
    end
    object Query1BDEDesigner12_ETD: TFloatField
      FieldName = '12_ETD'
    end
    object Query1BDEDesigner12_ETD_within3days: TFloatField
      FieldName = '12_ETD_within3days'
    end
    object Query1BDEDesigner12_ETD_withinLeadtime: TFloatField
      FieldName = '12_ETD_withinLeadtime'
    end
    object Query1BDEDesigner12_Cooperation: TFloatField
      FieldName = '12_Cooperation'
    end
    object Query1BDEDesigner12_Total: TFloatField
      FieldName = '12_Total'
    end
    object Query1Result_1: TStringField
      FieldName = 'Result_1'
      FixedChar = True
      Size = 5
    end
    object Query1Result_2: TStringField
      FieldName = 'Result_2'
      FixedChar = True
      Size = 5
    end
    object Query1Result_3: TStringField
      FieldName = 'Result_3'
      FixedChar = True
      Size = 5
    end
    object Query1Result_4: TStringField
      FieldName = 'Result_4'
      FixedChar = True
      Size = 5
    end
  end
  object QSignature: TQuery
    DatabaseName = 'DB'
    Left = 47
    Top = 19
  end
end
