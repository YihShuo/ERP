object ExporPrint: TExporPrint
  Left = 0
  Top = 0
  Caption = 'Expor Print'
  ClientHeight = 628
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 24
    Top = 8
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = MaintainanceWorks.TSCD_MtWorks
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRPBand1: TQRPBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 57
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        150.812500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRLabel10: TQRLabel
        Left = 23
        Top = 5
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666670000
          13.229166666666670000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'WorkID'#65306
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLBMtcode: TQRLabel
        Left = 87
        Top = 5
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          230.187500000000000000
          13.229166666666670000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLBMtcode'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 816
        Top = 5
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          2159.000000000000000000
          13.229166666666670000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 419
        Top = 8
        Width = 165
        Height = 25
        Size.Values = (
          66.145833333333330000
          1108.604166666667000000
          21.166666666666670000
          436.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LSBH Maintainance'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRLabel1: TQRLabel
        Left = 16
        Top = 28
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          74.083333333333330000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DpName'#65306
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLBDP: TQRLabel
        Left = 87
        Top = 28
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          230.187500000000000000
          74.083333333333330000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLBDP'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRPBand2: TQRPBand
      Left = 38
      Top = 95
      Width = 1047
      Height = 45
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRLabel2: TQRLabel
        Left = 26
        Top = 6
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          68.791666666666670000
          15.875000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TSBH'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 120
        Top = 6
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          15.875000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LSBH'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 240
        Top = 6
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          15.875000000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VWPM'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRHRule1: TQRHRule
        Left = 0
        Top = 29
        Width = 1041
        Height = 14
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          76.729166666666670000
          2754.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 609
        Top = 6
        Width = 23
        Height = 17
        Size.Values = (
          44.979166666666670000
          1611.312500000000000000
          15.875000000000000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Y/N'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 638
        Top = 6
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          15.875000000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Memo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 485
        Top = 6
        Width = 12
        Height = 17
        Size.Values = (
          44.979166666666670000
          1283.229166666667000000
          15.875000000000000000
          31.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object Sea: TQRLabel
        Left = 520
        Top = 6
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          15.875000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 557
        Top = 6
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          15.875000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Y'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRPBand3: TQRPBand
      Left = 38
      Top = 140
      Width = 1047
      Height = 29
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.729166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRDBText1: TQRDBText
        Left = 26
        Top = -2
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          68.791666666666670000
          -5.291666666666667000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.TSCD_MtWorks
        DataField = 'TSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRHRule2: TQRHRule
        Left = 0
        Top = 16
        Width = 1041
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          42.333333333333330000
          2754.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRPShape1: TQRPShape
        Left = 608
        Top = -1
        Width = 17
        Height = 17
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          -2.645833333333333000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRDBText2: TQRDBText
        Left = 120
        Top = -2
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          -5.291666666666667000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.TSCD_MtWorks
        DataField = 'LSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 240
        Top = 0
        Width = 237
        Height = 17
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          0.000000000000000000
          627.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = MaintainanceWorks.TSCD_MtWorks
        DataField = 'VWPM'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 483
        Top = 0
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.TSCD_MtWorks
        DataField = 'Mon1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 522
        Top = 0
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1381.125000000000000000
          0.000000000000000000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.TSCD_MtWorks
        DataField = 'Sea1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 558
        Top = 0
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1476.375000000000000000
          0.000000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.TSCD_MtWorks
        DataField = 'Years1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object QRPreviewController1: TQRPreviewController
    PagesInPreview = 0
    prevInitHeight = 640
    PrevInitLeft = 0
    PrevInitTop = 0
    PrevDefaultSaveType = stQRP
    PrevWindowStyle = fsNormal
    PrevInitState = wsNormal
    PrevInitZoom = qrZoomToFit
    Left = 776
    Top = 232
  end
end
