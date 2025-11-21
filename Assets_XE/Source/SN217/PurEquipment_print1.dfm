object PurEquipment_print: TPurEquipment_print
  Left = 466
  Top = 267
  Caption = 'PurEquipment_print'
  ClientHeight = 701
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = CGDet
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial Narrow'
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 94
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        248.708333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 286
        Top = 35
        Width = 168
        Height = 30
        Size.Values = (
          79.375000000000000000
          756.708333333333300000
          92.604166666666670000
          444.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Phi'#234#769'u thu mua'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 18
      end
      object QRLabel18: TQRLabel
        Left = 581
        Top = 69
        Width = 68
        Height = 21
        Size.Values = (
          55.562500000000000000
          1537.229166666667000000
          182.562500000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25505#36092#26085#26399':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 654
        Top = 69
        Width = 39
        Height = 21
        Size.Values = (
          55.562500000000000000
          1730.375000000000000000
          182.562500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = PurEquipment.CGMas
        DataField = 'CGDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 654
        Top = 46
        Width = 31
        Height = 19
        Size.Values = (
          50.270833333333330000
          1730.375000000000000000
          121.708333333333300000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = PurEquipment.CGMas
        DataField = 'GSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 612
        Top = 46
        Width = 36
        Height = 19
        Size.Values = (
          50.270833333333330000
          1619.250000000000000000
          121.708333333333300000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21029':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object L1: TQRLabel
        Left = 281
        Top = 6
        Width = 169
        Height = 32
        Size.Values = (
          84.666666666666670000
          743.479166666666700000
          15.875000000000000000
          447.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRLabel9: TQRLabel
        Left = 0
        Top = 74
        Width = 68
        Height = 19
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          195.791666666666700000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #35531#36092#21934#20301':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 74
        Top = 73
        Width = 50
        Height = 19
        Size.Values = (
          50.270833333333330000
          195.791666666666700000
          193.145833333333300000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = PurEquipment.CGMas
        DataField = 'DepMemo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 0
        Top = 27
        Width = 68
        Height = 19
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          71.437500000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25505#36092#21934#34399':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 71
        Top = 26
        Width = 33
        Height = 19
        Size.Values = (
          50.270833333333330000
          187.854166666666700000
          68.791666666666670000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = PurEquipment.CGMas
        DataField = 'CGNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 327
        Top = 62
        Width = 76
        Height = 30
        Size.Values = (
          79.375000000000000000
          865.187500000000000000
          164.041666666666700000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #25505#36092#21934
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 18
      end
      object QRLabel6: TQRLabel
        Left = 32
        Top = 50
        Width = 36
        Height = 21
        Size.Values = (
          55.562500000000000000
          84.666666666666670000
          132.291666666666700000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21830':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 74
        Top = 49
        Width = 50
        Height = 21
        Size.Values = (
          55.562500000000000000
          195.791666666666700000
          129.645833333333300000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = PurEquipment.CGMas
        DataField = 'ZSJC_ZW'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 666
        Top = 5
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1762.125000000000000000
          13.229166666666670000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31532'   '#38913
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 681
        Top = 5
        Width = 14
        Height = 17
        Size.Values = (
          44.979166666666670000
          1801.812500000000000000
          13.229166666666670000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 711
        Top = 5
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1881.187500000000000000
          13.229166666666670000
          10.583333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '/'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QPage1: TQRLabel
        Left = 717
        Top = 5
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1897.062500000000000000
          13.229166666666670000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 19
      Top = 113
      Width = 756
      Height = 57
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        150.812500000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel14: TQRLabel
        Left = 71
        Top = 22
        Width = 304
        Height = 17
        Size.Values = (
          44.979166666666670000
          187.854166666666700000
          58.208333333333330000
          804.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #27231#22120#21517#31281
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape24: TQRShape
        Left = 32
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          84.666666666666680000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 568
        Top = 20
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          52.916666666666670000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25976#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape17: TQRShape
        Left = 655
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1733.020833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 511
        Top = 1
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1352.020833333333000000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 450
        Top = 6
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          15.875000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #26009#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 599
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1584.854166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 615
        Top = 12
        Width = 34
        Height = 35
        Size.Values = (
          92.604166666666680000
          1627.187500000000000000
          31.750000000000000000
          89.958333333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #32654#37329' '#21934#20729
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 5
        Top = 9
        Width = 30
        Height = 38
        Size.Values = (
          100.541666666666700000
          13.229166666666670000
          23.812500000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #24207' '#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 450
        Top = 33
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          87.312500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #22411#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 685
        Top = 14
        Width = 52
        Height = 35
        Size.Values = (
          92.604166666666680000
          1812.395833333333000000
          37.041666666666670000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #32317#37329#38989' USD'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 401
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1060.979166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 406
        Top = 22
        Width = 109
        Height = 11
        Size.Values = (
          29.104166666666670000
          1074.208333333333000000
          58.208333333333330000
          288.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 559
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1479.020833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 524
        Top = 20
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          52.916666666666670000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21934#20301
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 170
      Width = 756
      Height = 54
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        142.875000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 511
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1352.020833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 32
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          84.666666666666680000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 655
        Top = -2
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1733.020833333333000000
          -5.291666666666667000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 576
        Top = 16
        Width = 17
        Height = 19
        Size.Values = (
          50.270833333333330000
          1524.000000000000000000
          42.333333333333330000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = CGDet
        DataField = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 416
        Top = 3
        Width = 96
        Height = 19
        Size.Values = (
          50.270833333333330000
          1100.666666666667000000
          7.937500000000000000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CGDet
        DataField = 'SBBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 599
        Top = -1
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1584.854166666667000000
          -2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 41
        Top = 4
        Width = 361
        Height = 20
        Size.Values = (
          52.916666666666670000
          108.479166666666700000
          10.583333333333330000
          955.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CGDet
        DataField = 'VWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 401
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1060.979166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 416
        Top = 31
        Width = 95
        Height = 19
        Size.Values = (
          50.270833333333330000
          1100.666666666667000000
          82.020833333333330000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CGDet
        DataField = 'LSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 611
        Top = 16
        Width = 40
        Height = 19
        Size.Values = (
          50.270833333333330000
          1616.604166666667000000
          42.333333333333330000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = CGDet
        DataField = 'USPrice'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        OnPrint = QRDBText8Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 689
        Top = 16
        Width = 39
        Height = 19
        Size.Values = (
          50.270833333333330000
          1822.979166666667000000
          42.333333333333330000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = CGDet
        DataField = 'ACCUS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        OnPrint = QRDBText9Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 406
        Top = 21
        Width = 110
        Height = 11
        Size.Values = (
          29.104166666666670000
          1074.208333333333000000
          55.562500000000000000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRSysData2: TQRSysData
        Left = 8
        Top = 19
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          50.270833333333330000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 559
        Top = 0
        Width = 9
        Height = 54
        Size.Values = (
          142.875000000000000000
          1479.020833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText10: TQRDBText
        Left = 519
        Top = 16
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1373.187500000000000000
          42.333333333333330000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = CGDet
        DataField = 'DZWSM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 39
        Top = 29
        Width = 363
        Height = 20
        Size.Values = (
          52.916666666666670000
          103.187500000000000000
          76.729166666666670000
          960.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CGDet
        DataField = 'ZWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 263
      Width = 756
      Height = 98
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        259.291666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel23: TQRLabel
        Left = 24
        Top = 6
        Width = 100
        Height = 17
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          15.875000000000000000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21209'/'#37096#38272#26368#39640#20027#31649
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel50: TQRLabel
        Left = 5
        Top = 20
        Width = 148
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          52.916666666666670000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Chu quan xuong vu cao nhat'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 316
        Top = 18
        Width = 102
        Height = 16
        Size.Values = (
          42.333333333333330000
          836.083333333333200000
          47.625000000000000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Chu quan xuong vu'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel51: TQRLabel
        Left = 329
        Top = 3
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          870.479166666666700000
          7.937500000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21209'/'#37096#38272#20027#31649
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 486
        Top = 3
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1285.875000000000000000
          7.937500000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #38656#27714#21934#20301#20027#31649
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 450
        Top = 16
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1190.625000000000000000
          42.333333333333330000
          383.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Chu Quan Don Vi Can Mua'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 677
        Top = 3
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1791.229166666667000000
          7.937500000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#20154
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 655
        Top = 17
        Width = 77
        Height = 16
        Size.Values = (
          42.333333333333330000
          1733.020833333333000000
          44.979166666666670000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nguoi De Nghi'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object ApplicantID: TQRImage
        Left = 631
        Top = 41
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          108.479166666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object SupvervisorID: TQRImage
        Left = 462
        Top = 38
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1222.375000000000000000
          100.541666666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object LeaderID: TQRImage
        Left = 303
        Top = 40
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          801.687500000000000000
          105.833333333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object ManagerID: TQRImage
        Left = 6
        Top = 41
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          15.875000000000000000
          108.479166666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
    end
    object SummaryBand1: TQRBand
      Left = 19
      Top = 224
      Width = 756
      Height = 39
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        103.187500000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr3: TQRExpr
        Left = 672
        Top = 9
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1778.000000000000000000
          23.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        OnPrint = QRExpr3Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(ACCUS)'
        Mask = '##,#0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 187
        Top = 6
        Width = 33
        Height = 19
        Size.Values = (
          50.270833333333330000
          494.770833333333300000
          15.875000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32317#35336
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 561
        Top = 7
        Width = 51
        Height = 16
        Size.Values = (
          42.333333333333330000
          1484.312500000000000000
          18.520833333333330000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(Qty)'
        Mask = '##,#0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object CGDet: TQuery
    CachedUpdates = True
    OnCalcFields = CGDetCalcFields
    DatabaseName = 'DB'
    DataSource = PurEquipment.DS1
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_CGZLS.CGNO,TSCD_CGZLS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM' +
        ',TSCD_SB.VWPM,TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_CGZLS.Qty'
      
        '       ,TSCD_CGZLS.VNPrice,TSCD_CGZLS.USPrice,TSCD_CGZLS.Memo,TS' +
        'CD_CGZLS.YQDate'
      
        '       ,TSCD_SB.DWBH,TSCD_CGZLS.USERDate,TSCD_CGZLS.USERID,TSCD_' +
        'CGZLS.YN,TSCD_LBZLS.ywsm as DYWSM, TSCD_LBZLS.zwsm as DZWSM'
      'from TSCD_CGZLS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_CGZLS.SBBH'
      
        'left join TSCD_LBZLS on TSCD_LBZLS.LBDH=TSCD_SB.DWBH and LB='#39'000' +
        '0'#39' and Layer=0'
      'where TSCD_CGZLS.CGNO=:CGNO'
      'order by TSCD_CGZLS.CGNO'
      '')
    UpdateObject = UPDet
    Left = 142
    Top = 366
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      Origin = 'DB.TSCD_CGZLS.CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetSBBH: TStringField
      FieldName = 'SBBH'
      Origin = 'DB.TSCD_CGZLS.SBBH'
      FixedChar = True
      Size = 10
    end
    object CGDetDWBH: TStringField
      FieldName = 'DWBH'
      Origin = 'DB.TSCD_SB.DWBH'
      FixedChar = True
      Size = 4
    end
    object CGDetYWPM: TStringField
      FieldName = 'YWPM'
      Origin = 'DB.TSCD_SB.YWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetZWPM: TStringField
      FieldName = 'ZWPM'
      Origin = 'DB.TSCD_SB.ZWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetLSBH: TStringField
      FieldName = 'LSBH'
      Origin = 'DB.TSCD_SB.LSBH'
      FixedChar = True
      Size = 30
    end
    object CGDetQUCBH: TStringField
      FieldName = 'QUCBH'
      Origin = 'DB.TSCD_SB.QUCBH'
      FixedChar = True
      Size = 30
    end
    object CGDetQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.TSCD_CGZLS.Qty'
    end
    object CGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.TSCD_CGZLS.VNPrice'
      currency = False
    end
    object CGDetACCVN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      Calculated = True
    end
    object CGDetUSPrice: TFloatField
      FieldName = 'USPrice'
      Origin = 'DB.TSCD_CGZLS.USPrice'
    end
    object CGDetACCUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      Calculated = True
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.TSCD_CGZLS.Memo'
      FixedChar = True
      Size = 100
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.TSCD_CGZLS.YQDate'
      DisplayFormat = 'MM/DD'
    end
    object CGDetDYWSM: TStringField
      FieldName = 'DYWSM'
      FixedChar = True
      Size = 50
    end
    object CGDetDZWSM: TStringField
      FieldName = 'DZWSM'
      FixedChar = True
      Size = 50
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.TSCD_CGZLS.USERDate'
    end
    object CGDetUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_CGZLS.USERID'
      FixedChar = True
      Size = 15
    end
    object CGDetYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_CGZLS.YN'
      FixedChar = True
      Size = 1
    end
    object CGDetVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_CGZLS'
      'set'
      '  SBBH =:SBBH,'
      '  Qty =:Qty,'
      '  Memo =:Memo,'
      '  VNPrice =:VNPrice,'
      '  USPrice =:USPrice,'
      '  YQDate =:YQDate,'
      '  USERID =:USERID,'
      '  USERDATE =:USERDATE'
      'where'
      '  CGNO =:OLD_CGNO and '
      '  SBBH =:OLD_SBBH'
      '')
    InsertSQL.Strings = (
      'insert into TSCD_CGZLS'
      
        '  (CGNO, SBBH, Qty, Memo, VNPrice, USPrice, YQDate, USERDATE, US' +
        'ERID, YN)'
      'values'
      
        '  (:CGNO, :SBBH, :Qty, :Memo, :VNPrice, :USPrice, :YQDate, :USER' +
        'DATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from TSCD_CGZLS'
      'where'
      '  CGNO = :OLD_CGNO'
      '  and SBBH =:OLD_SBBH'
      ''
      ''
      '')
    Left = 142
    Top = 398
  end
  object QApprover: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tyx;Persist Security Info=True;User' +
      ' ID=tyx;Initial Catalog=LIY_ERP;Data Source=192.168.23.122'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '  SELECT MAX(CASE WHEN Seq = 1 THEN S_USER_ID END) AS ApplicantI' +
        'D,'
      '  MAX(CASE WHEN Seq = 1 THEN USERNAME END) AS Applicant,'
      '  MAX(CASE WHEN Seq = 1 THEN ApproveDate END) AS ApplicantDate,'
      '  MAX(CASE WHEN LEVEL_NO = '#39'20'#39' THEN S_USER_ID END) AS LeaderID,'
      '  MAX(CASE WHEN LEVEL_NO = '#39'20'#39' THEN USERNAME END) AS Leader,'
      
        '  MAX(CASE WHEN LEVEL_NO = '#39'20'#39' THEN ApproveDate END) AS LeaderD' +
        'ate,'
      
        '  MAX(CASE WHEN LEVEL_NO = '#39'30'#39' THEN S_USER_ID END) AS ManagerID' +
        ','
      '  MAX(CASE WHEN LEVEL_NO = '#39'30'#39' THEN USERNAME END) AS Manager,'
      
        '  MAX(CASE WHEN LEVEL_NO = '#39'30'#39' THEN ApproveDate END) AS Manager' +
        'Date,'
      '  MAX(CASE WHEN Seq = 2 THEN S_USER_ID END) AS HardwareID,'
      '  MAX(CASE WHEN Seq = 2 THEN USERNAME END) AS Hardware,'
      '  MAX(CASE WHEN Seq = 2 THEN ApproveDate END) AS HardwareDate,'
      '  MAX(CASE WHEN Seq = 3 THEN S_USER_ID END) AS HardwareMID,'
      '  MAX(CASE WHEN Seq = 3 THEN USERNAME END) AS HardwareM,'
      '  MAX(CASE WHEN Seq = 3 THEN ApproveDate END) AS HardwareMDate'
      ' FROM ('
      
        '    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 11' +
        '1) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, ORG_DESC, RO' +
        'W_NUMBER() OVER (PARTITION BY LEVEL_NO ORDER BY ApproveDate) AS ' +
        'Seq FROM ('
      
        '      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,Max(ApproveDat' +
        'e) as ApproveDate from ('
      
        '      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE ' +
        '+ '#39' '#39' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,'
      
        '      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT' +
        '(DATETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME) DESC) AS RowID FROM ' +
        '[EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS'
      
        '      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() O' +
        'VER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[S' +
        'YS_ORG] where ORG_MAN='#39'A0027'#39' ) AS SYS_ORG ON SYS_ORG.ORG_MAN = ' +
        'SYS_TODOHIS.S_ROLE_ID --and SYS_ORG.ORG_KIND='#39'1000'#39
      
        '      WHERE FORM_TABLE = '#39'SGDH'#39' AND STATUS IN ('#39'N'#39', '#39'Z'#39') AND FOR' +
        'M_PRESENTATION LIKE '#39'%20221200011%'#39'  '
      #9'  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC'
      '    ) AS ApproveData'
      '  ) AS ApproveData')
    Left = 188
    Top = 366
  end
end
