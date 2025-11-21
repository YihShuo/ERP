object Deliver_EquipmentH_printTW: TDeliver_EquipmentH_printTW
  Left = 0
  Top = 0
  Caption = 'Deliver_EquipmentH_printTW'
  ClientHeight = 531
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 32
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = DelDet
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      2970.000000000000000000
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
    PreviewLeft = 500
    PreviewTop = 500
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 1085
      Height = 139
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
        367.770833333333300000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 152
        Top = 38
        Width = 769
        Height = 30
        Size.Values = (
          79.375000000000000000
          402.166666666666700000
          100.541666666666700000
          2034.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = ' PHI'#7870'U HO'#192'N TR'#7842' CHO M'#431#7906'N '#20511#20986#27512#36996#21934
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
      object QRSysData1: TQRSysData
        Left = 984
        Top = 16
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          2603.500000000000000000
          42.333333333333330000
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
      object Page1: TQRLabel
        Left = 1032
        Top = 16
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          2730.500000000000000000
          42.333333333333330000
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
      object QRLabel18: TQRLabel
        Left = 750
        Top = 76
        Width = 167
        Height = 21
        Size.Values = (
          55.562500000000000000
          1984.375000000000000000
          201.083333333333300000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y xu'#7845't phi'#7871'u '#38283#21934#26085#26399':'
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
      object QRDBText20: TQRDBText
        Left = 980
        Top = 76
        Width = 71
        Height = 21
        Size.Values = (
          55.562500000000000000
          2592.916666666667000000
          201.083333333333300000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'USERDATE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
      object L1: TQRLabel
        Left = 429
        Top = 1
        Width = 212
        Height = 33
        Size.Values = (
          87.312500000000000000
          1135.062500000000000000
          2.645833333333333000
          560.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRLabel9: TQRLabel
        Left = 12
        Top = 98
        Width = 161
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          259.291666666666700000
          425.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' ho'#224'n tr'#7843' '#27512#36996#21934#20301':'
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
      object QRDBText6: TQRDBText
        Left = 195
        Top = 98
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          515.937500000000000000
          259.291666666666700000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'JDDepName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
        Left = 12
        Top = 76
        Width = 177
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          201.083333333333300000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#227' phi'#7871'u ho'#224'n tr'#7843' '#27512#36996#21934#34399':'
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
      object QRDBText7: TQRDBText
        Left = 195
        Top = 76
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          515.937500000000000000
          201.083333333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'LLNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
      object QRLabel6: TQRLabel
        Left = 12
        Top = 120
        Width = 175
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          317.500000000000000000
          463.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#7897'i dung ho'#224'n tr'#7843' '#27512#36996#20839#23481':'
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
        Left = 750
        Top = 98
        Width = 224
        Height = 21
        Size.Values = (
          55.562500000000000000
          1984.375000000000000000
          259.291666666666700000
          592.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Li'#234'n l'#7841'c ng'#432#7901'i ho'#224'n tr'#7843' '#27512#36996#32879#32097#20154':'
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
      object QRDBText12: TQRDBText
        Left = 980
        Top = 98
        Width = 90
        Height = 21
        Size.Values = (
          55.562500000000000000
          2592.916666666667000000
          259.291666666666700000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'JDUSERNAME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
      object QRLabel4: TQRLabel
        Left = 369
        Top = 76
        Width = 184
        Height = 17
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          201.083333333333300000
          486.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#227' s'#7889' phi'#7871'u m'#432#7907'n '#20511#26781#32232#34399':'
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
      object QRDBText14: TQRDBText
        Left = 559
        Top = 76
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          1479.020833333333000000
          201.083333333333300000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'LLNO_Out'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
    object TitleBand1: TQRBand
      Left = 19
      Top = 158
      Width = 1085
      Height = 50
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
        132.291666666666700000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel14: TQRLabel
        Left = 664
        Top = 6
        Width = 82
        Height = 32
        Size.Values = (
          84.666666666666670000
          1756.833333333333000000
          15.875000000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Quy C'#225'ch / M'#227'  S'#7889' '#35215#26684'/'#22411#34399
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
      object QRLabel16: TQRLabel
        Left = 388
        Top = 6
        Width = 60
        Height = 33
        Size.Values = (
          87.312500000000000000
          1026.583333333333000000
          15.875000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'T'#234'n H'#224'ng '#21697#21517
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
        Left = 800
        Top = 7
        Width = 45
        Height = 32
        Size.Values = (
          84.666666666666670000
          2116.666666666667000000
          18.520833333333330000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #272#417'n V'#7883' '#21934#20301
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
      object QRLabel21: TQRLabel
        Left = 936
        Top = 2
        Width = 77
        Height = 42
        Size.Values = (
          111.125000000000000000
          2476.500000000000000000
          5.291666666666667000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#224'y th'#7921'c t'#7871' Ho'#224'n Tr'#7843' '#23526#38555#27512#36996#26085#26399
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
      object QRLabel22: TQRLabel
        Left = 5
        Top = 8
        Width = 35
        Height = 34
        Size.Values = (
          89.958333333333330000
          13.229166666666670000
          21.166666666666670000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'STT '#38917#27425
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
      object QRLabel23: TQRLabel
        Left = 1019
        Top = 4
        Width = 60
        Height = 32
        Size.Values = (
          84.666666666666670000
          2696.104166666667000000
          10.583333333333330000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ghi  Ch'#250' '#20633#35387
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
      object QRLabel7: TQRLabel
        Left = 856
        Top = 3
        Width = 64
        Height = 41
        Size.Values = (
          108.479166666666700000
          2264.833333333333000000
          7.937500000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#224'y Cho M'#432#7907'n '#20511#20986#26085#26399
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
      object QRLabel8: TQRLabel
        Left = 752
        Top = 3
        Width = 42
        Height = 39
        Size.Values = (
          103.187500000000000000
          1989.666666666667000000
          7.937500000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'S'#7889' L'#432#7907'ng '#25976#37327
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
      object QRShape24: TQRShape
        Left = 38
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          100.541666666666700000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 650
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          1719.791666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 790
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2090.208333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 744
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          1968.500000000000000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 845
        Top = 1
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2235.729166666667000000
          2.645833333333333000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 926
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2450.041666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 1012
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2677.583333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 54
        Top = 6
        Width = 60
        Height = 33
        Size.Values = (
          87.312500000000000000
          142.875000000000000000
          15.875000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ma'#771' ta'#768'i sa'#777'n '#36001#29986#32232#34399
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
      object QRShape21: TQRShape
        Left = 118
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          312.208333333333300000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 208
      Width = 1085
      Height = 33
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 44
        Top = 6
        Width = 77
        Height = 17
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          15.875000000000000000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'TSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 126
        Top = 1
        Width = 522
        Height = 17
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          2.645833333333333000
          1381.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'VWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 752
        Top = 6
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1989.666666666667000000
          15.875000000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 800
        Top = 7
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          2116.666666666667000000
          18.520833333333330000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'DWBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 125
        Top = 16
        Width = 526
        Height = 17
        Size.Values = (
          44.979166666666670000
          330.729166666666700000
          42.333333333333330000
          1391.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'ZWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 118
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          312.208333333333300000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 855
        Top = 6
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          2262.187500000000000000
          15.875000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'Date_Out'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 660
        Top = 3
        Width = 82
        Height = 24
        Size.Values = (
          63.500000000000000000
          1746.250000000000000000
          7.937500000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'LSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 935
        Top = 6
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          2473.854166666667000000
          15.875000000000000000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'Date_Back'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 6
        Top = 6
        Width = 33
        Height = 26
        Size.Values = (
          68.791666666666670000
          15.875000000000000000
          15.875000000000000000
          87.312500000000000000)
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
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 790
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2090.208333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 744
        Top = -2
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          1968.500000000000000000
          -5.291666666666667000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 38
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          100.541666666666700000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 845
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2235.729166666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 926
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2450.041666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 1012
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2677.583333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 650
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          1719.791666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 1020
        Top = 5
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          2698.750000000000000000
          13.229166666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'VALUE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 274
      Width = 1085
      Height = 240
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        635.000000000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRISO: TQRLabel
        Left = 1010
        Top = 218
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          2672.291666666667000000
          576.791666666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-DCC-091A'
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
      object QRLabel25: TQRLabel
        Left = 150
        Top = 60
        Width = 152
        Height = 17
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          158.750000000000000000
          402.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' '#273#7873' ngh'#7883#30003#35531#21934#20301':'
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
      object QRLabel26: TQRLabel
        Left = 704
        Top = 60
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          1862.666666666667000000
          158.750000000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#20154'('#31805#21517')'
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
      object QRLabel27: TQRLabel
        Left = 704
        Top = 80
        Width = 137
        Height = 17
        Size.Values = (
          44.979166666666670000
          1862.666666666667000000
          211.666666666666700000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#432#417#768'i '#273#234#768' nghi'#803'(K'#253' T'#234'n):'
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
      object QRLabel28: TQRLabel
        Left = 148
        Top = 80
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666670000
          391.583333333333300000
          211.666666666666700000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ch'#7911' Qu'#7843'n (k'#253' t'#234'n)'#20027#31649'('#31805#21517'):'
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
      object ApplicantID: TQRImage
        Left = 704
        Top = 113
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1862.666666666667000000
          298.979166666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object SupvervisorID: TQRImage
        Left = 166
        Top = 118
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          439.208333333333300000
          312.208333333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 241
      Width = 1085
      Height = 33
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel3: TQRLabel
        Left = 263
        Top = 6
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          695.854166666666700000
          15.875000000000000000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#244#777'ng c'#244#803'ng '#32317#35336
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
      object QRExpr5: TQRExpr
        Left = 749
        Top = 6
        Width = 49
        Height = 16
        Size.Values = (
          42.333333333333330000
          1981.729166666667000000
          15.875000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
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
      object QRShape2: TQRShape
        Left = 650
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          1719.791666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 790
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2090.208333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 845
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2235.729166666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 926
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2450.041666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 1012
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2677.583333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 38
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          100.541666666666700000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 744
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          1968.500000000000000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
  end
  object DelMas: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentH.DS1
    SQL.Strings = (
      
        'select TSCD_KCHH.LLNO,BDepartment.DepName+'#39' '#39'+BDepartment.DepMem' +
        'o as DepName,BUsers.USERNAME,TSCD_KCHH.UserDate,TSCD_KCHH.Memo a' +
        's LLNO_Out,Max(JDBDepartment.DepName+'#39' '#39'+JDBDepartment.DepMemo+'#39 +
        '_'#39'+TSCD_KCHHS.VALUE4) as JDDepName,Max(TSCD_KCHHS.COLUMN6) as JD' +
        'USERNAME'
      'from TSCD_KCHH'
      
        'Left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_KC' +
        'HH.DepID'
      'Left join BUsers on BUsers.USERID=TSCD_KCHH.USERID'
      
        'Left join (Select LLNO,Value1,Value4,COLUMN6  from TSCD_KCMMS  w' +
        'here LLNO=:Memo and TSID in (select TSID from TSCD_KCHHS where L' +
        'LNO=:LLNO) ) TSCD_KCHHS on TSCD_KCHHS.LLNO=TSCD_KCHH.Memo'
      
        'Left join TSCD_BDepartment JDBDepartment on JDBDepartment.ID=TSC' +
        'D_KCHHS.Value1'
      'where TSCD_KCHH.LLNO=:LLNO'
      
        'Group by TSCD_KCHH.LLNO,BDepartment.DepName,BDepartment.DepMemo,' +
        'BUsers.USERNAME,TSCD_KCHH.UserDate,TSCD_KCHH.Memo')
    Left = 272
    Top = 77
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Memo'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
      end>
    object DelMasLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelMasDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DelMasUSERNAME: TStringField
      FieldName = 'USERNAME'
      FixedChar = True
      Size = 30
    end
    object DelMasJDDepName: TStringField
      FieldName = 'JDDepName'
      FixedChar = True
      Size = 15
    end
    object DelMasJDUSERNAME: TStringField
      FieldName = 'JDUSERNAME'
      FixedChar = True
      Size = 15
    end
    object DelMasUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object DelMasLLNO_Out: TStringField
      FieldName = 'LLNO_Out'
      FixedChar = True
    end
  end
  object DelDet: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentH.DS1
    SQL.Strings = (
      
        'select TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.QUCBH,TSCD' +
        '_SB.LSBH,TSCD_SB.DWBH,TSCD_KCHHS.Qty,TSCD_KCHHS.COLUMN3 as Date_' +
        'Back,TSCD_KCLLM.VALUE2 as Date_Out,TSCD.TSBH,TSCD_KCHHS.COLUMN2,' +
        'TSCD_KCHHS.VALUE2'
      'from TSCD_KCHHS'
      'left join TSCD_KCHH on TSCD_KCHH.LLNO=TSCD_KCHHS.LLNO'
      'left join TSCD on TSCD.TSID=TSCD_KCHHS.TSID'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      
        'left join TSCD_KCMMS TSCD_KCLLM on TSCD_KCLLM.LLNO=TSCD_KCHH.Mem' +
        'o and TSCD_KCLLM.TSID=TSCD_KCHHS.TSID'
      'where TSCD_KCHHS.LLNO=:LLNO'
      'order by TSCD_KCHHS.LLNO')
    Left = 312
    Top = 77
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
    object DelDetQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object DelDetLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object DelDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetQty: TFloatField
      FieldName = 'Qty'
    end
    object DelDetDate_Back: TStringField
      FieldName = 'Date_Back'
      FixedChar = True
      Size = 15
    end
    object DelDetDate_Out: TStringField
      FieldName = 'Date_Out'
      FixedChar = True
      Size = 15
    end
    object DelDetTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object DelDetCOLUMN2: TStringField
      FieldName = 'COLUMN2'
      FixedChar = True
      Size = 100
    end
    object DelDetVALUE2: TStringField
      FieldName = 'VALUE2'
      FixedChar = True
      Size = 50
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
    Left = 444
    Top = 406
  end
end
