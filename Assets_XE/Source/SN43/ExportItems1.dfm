object ExportItems: TExportItems
  Left = 0
  Top = 0
  Caption = 'Export Items'
  ClientHeight = 802
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = MaintainanceWorks.MtworkItems
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
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
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
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 272
        Top = 8
        Width = 178
        Height = 25
        Size.Values = (
          66.145833333333330000
          719.666666666666700000
          21.166666666666670000
          470.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Maintenance Items'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
    end
    object QRPBand1: TQRPBand
      Left = 38
      Top = 78
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRLabel1: TQRLabel
        Left = 32
        Top = 6
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
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
      object QRLabel3: TQRLabel
        Left = 120
        Top = 6
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          15.875000000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NV_Item'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 616
        Top = 6
        Width = 12
        Height = 17
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
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
      object QRLabel6: TQRLabel
        Left = 649
        Top = 6
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
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
      object QRLabel7: TQRLabel
        Left = 680
        Top = 6
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
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
      object QRHRule1: TQRHRule
        Left = 8
        Top = 22
        Width = 713
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          58.208333333333330000
          1886.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
    end
    object QRPBand2: TQRPBand
      Left = 38
      Top = 118
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRDBText1: TQRDBText
        Left = 8
        Top = 6
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          15.875000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.MtworkItems
        DataField = 'LSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 120
        Top = 6
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          15.875000000000000000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.MtworkItems
        DataField = 'lang'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 616
        Top = 6
        Width = 26
        Height = 17
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          15.875000000000000000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.MtworkItems
        DataField = 'Mon'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 649
        Top = 6
        Width = 24
        Height = 17
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
          15.875000000000000000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.MtworkItems
        DataField = 'Sea'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 679
        Top = 6
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1796.520833333333000000
          15.875000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = MaintainanceWorks.MtworkItems
        DataField = 'Years'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRHRule2: TQRHRule
        Left = 8
        Top = 22
        Width = 713
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          58.208333333333330000
          1886.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRFrameline1: TQRFrameline
        Left = 638
        Top = -3
        Width = 6
        Height = 33
        Size.Values = (
          87.312500000000000000
          1688.041666666667000000
          -7.937500000000000000
          15.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline2: TQRFrameline
        Left = 669
        Top = -3
        Width = 9
        Height = 33
        Size.Values = (
          87.312500000000000000
          1770.062500000000000000
          -7.937500000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline3: TQRFrameline
        Left = 605
        Top = -6
        Width = 9
        Height = 36
        Size.Values = (
          95.250000000000000000
          1600.729166666667000000
          -15.875000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
    Left = 640
    Top = 280
  end
end
