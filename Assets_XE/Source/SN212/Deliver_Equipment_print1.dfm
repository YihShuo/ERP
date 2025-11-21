object Deliver_Equipment_print: TDeliver_Equipment_print
  Left = 445
  Top = 355
  Caption = 'Deliver_Equipment_print'
  ClientHeight = 500
  ClientWidth = 836
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
    Top = -2
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = Deliver_Equipment.DelDet
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
    object TitleBand1: TQRBand
      Left = 19
      Top = 153
      Width = 756
      Height = 34
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
        89.958333333333330000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRShape24: TQRShape
        Left = 72
        Top = 0
        Width = 9
        Height = 32
        Size.Values = (
          84.666666666666680000
          190.500000000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 525
        Top = 0
        Width = 9
        Height = 32
        Size.Values = (
          84.666666666666680000
          1389.062500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 567
        Top = 0
        Width = 9
        Height = 32
        Size.Values = (
          84.666666666666680000
          1500.187500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 9
        Top = 6
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          15.875000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ID'#30908'/Ma'#771
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
      object QRLabel14: TQRLabel
        Left = 272
        Top = 7
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          18.520833333333330000
          227.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21517#31281'T'#234'n ha'#768'ng'
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
      object QRLabel8: TQRLabel
        Left = 533
        Top = 2
        Width = 36
        Height = 28
        Size.Values = (
          74.083333333333330000
          1410.229166666667000000
          5.291666666666667000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #25976#37327' SL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel2: TQRLabel
        Left = 612
        Top = 6
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          15.875000000000000000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #35498#26126'Ghi chu'#769
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
      Top = 187
      Width = 756
      Height = 48
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        127.000000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = -4
        Top = 1
        Width = 78
        Height = 19
        Size.Values = (
          50.270833333333330000
          -10.583333333333330000
          2.645833333333333000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
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
      object QRDBText11: TQRDBText
        Left = 80
        Top = 6
        Width = 449
        Height = 19
        Size.Values = (
          50.270833333333330000
          211.666666666666700000
          15.875000000000000000
          1187.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
        DataField = 'VWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        OnPrint = QRDBText11Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape15: TQRShape
        Left = 72
        Top = 0
        Width = 9
        Height = 48
        Size.Values = (
          127.000000000000000000
          190.500000000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 540
        Top = 15
        Width = 17
        Height = 19
        Size.Values = (
          50.270833333333330000
          1428.750000000000000000
          39.687500000000000000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
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
        Left = 598
        Top = 3
        Width = 105
        Height = 19
        Size.Values = (
          50.320754716981130000
          1581.509433962264000000
          7.188679245283020000
          277.962264150943400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
        DataField = 'COLUMN1'
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
        Left = 567
        Top = 0
        Width = 9
        Height = 48
        Size.Values = (
          127.000000000000000000
          1500.187500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 80
        Top = 26
        Width = 449
        Height = 19
        Size.Values = (
          50.320754716981130000
          210.867924528301900000
          69.490566037735850000
          1188.528301886792000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
        DataField = 'ZWPM'
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
      object QRShape1: TQRShape
        Left = 525
        Top = 0
        Width = 9
        Height = 48
        Size.Values = (
          127.000000000000000000
          1389.062500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 42
        Width = 753
        Height = 9
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          111.125000000000000000
          1992.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 0
        Top = 25
        Width = 75
        Height = 19
        Size.Values = (
          50.320754716981130000
          0.000000000000000000
          67.094339622641510000
          198.886792452830200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
        DataField = 'TSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 598
        Top = 27
        Width = 105
        Height = 19
        Size.Values = (
          50.320754716981130000
          1581.509433962264000000
          71.886792452830200000
          277.962264150943400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelDet
        DataField = 'VALUE2'
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
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 134
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
        354.541666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel6: TQRLabel
        Left = 245
        Top = 64
        Width = 250
        Height = 25
        Size.Values = (
          66.145833333333330000
          648.229166666666700000
          169.333333333333300000
          661.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Phi'#234#769'u xu'#226#769't kho ma'#769'y mo'#769'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel20: TQRLabel
        Left = 588
        Top = 115
        Width = 62
        Height = 21
        Size.Values = (
          55.562500000000000000
          1555.750000000000000000
          304.270833333333300000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #26085#26399'Ng'#224'y:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 656
        Top = 114
        Width = 60
        Height = 21
        Size.Values = (
          55.562500000000000000
          1735.666666666667000000
          301.625000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelMas
        DataField = 'USERDATE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 82
        Top = 92
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          216.958333333333300000
          243.416666666666700000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelMas
        DataField = 'GSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 8
        Top = 92
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          243.416666666666700000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21029'X'#432#7903'ng:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object L1: TQRLabel
        Left = 278
        Top = 2
        Width = 181
        Height = 30
        Size.Values = (
          79.375000000000000000
          735.541666666666700000
          5.291666666666667000
          478.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel23: TQRLabel
        Left = 8
        Top = 115
        Width = 143
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          304.270833333333300000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#21934#20301#272#417'n v'#7883' '#273#7873' ngh'#7883':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 155
        Top = 114
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          410.104166666666700000
          301.625000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelMas
        DataField = 'DepName'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 9
        Top = 17
        Width = 23
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          44.979166666666670000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NO.:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 38
        Top = 17
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          44.979166666666670000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_Equipment.DelMas
        DataField = 'LLNO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 281
        Top = 86
        Width = 176
        Height = 30
        Size.Values = (
          79.375000000000000000
          743.479166666666700000
          227.541666666666700000
          465.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #27231#22120#35373#20633#38936#20986#21934
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
      object L2: TQRLabel
        Left = 278
        Top = 32
        Width = 181
        Height = 30
        Size.Values = (
          79.375000000000000000
          735.541666666666700000
          84.666666666666670000
          478.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRSysData1: TQRSysData
        Left = 646
        Top = 19
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          1709.208333333333000000
          50.270833333333330000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 686
        Top = 19
        Width = 4
        Height = 15
        Size.Values = (
          39.687500000000000000
          1815.041666666667000000
          50.270833333333330000
          10.583333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '/'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Page1: TQRLabel
        Left = 696
        Top = 19
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          1841.500000000000000000
          50.270833333333330000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 235
      Width = 756
      Height = 159
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        420.687500000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRISO: TQRLabel
        Left = 646
        Top = 134
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          1709.208333333333000000
          354.541666666666700000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-DCC-104A(ERP)'
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
      object ApplicantID: TQRImage
        Left = 586
        Top = 70
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1550.458333333333000000
          185.208333333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object SupvervisorID: TQRImage
        Left = 318
        Top = 70
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          841.375000000000000000
          185.208333333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object LeaderID: TQRImage
        Left = 29
        Top = 70
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          76.729166666666670000
          185.208333333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object QRLabel1: TQRLabel
        Left = 52
        Top = 12
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          137.583333333333300000
          31.750000000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CQ X'#431#7902'NG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 58
        Top = 29
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          153.458333333333300000
          76.729166666666670000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#20027#31649
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
      object QRLabel5: TQRLabel
        Left = 340
        Top = 12
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          899.583333333333300000
          31.750000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CQ NHOM'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 337
        Top = 29
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          891.645833333333300000
          76.729166666666670000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21934#20301#20027#31649
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
      object QRLabel10: TQRLabel
        Left = 586
        Top = 12
        Width = 117
        Height = 17
        Size.Values = (
          44.979166666666670000
          1550.458333333333000000
          31.750000000000000000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NG'#431#7900'I XIN '#272#7872' NGH'#7882
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 618
        Top = 29
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          76.729166666666670000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35831#20154
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
    Left = 228
    Top = 318
  end
end
