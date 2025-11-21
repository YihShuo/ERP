object Deliver_EquipmentT_printTW: TDeliver_EquipmentT_printTW
  Left = 0
  Top = 0
  Caption = 'Deliver_EquipmentT_printTW'
  ClientHeight = 668
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
    Left = 8
    Top = 40
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
      Height = 210
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
        555.625000000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 429
        Top = 56
        Width = 217
        Height = 59
        Size.Values = (
          156.104166666666700000
          1135.062500000000000000
          148.166666666666700000
          574.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'PHI'#7870'U HO'#192'N TR'#7842' '#27512#36996#21934
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
      object QRDBText20: TQRDBText
        Left = 933
        Top = 121
        Width = 71
        Height = 21
        Size.Values = (
          55.562500000000000000
          2468.562500000000000000
          320.145833333333300000
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
      object QRDBText4: TQRDBText
        Left = 193
        Top = 143
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          378.354166666666700000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'DepName'
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
      object QRDBText6: TQRDBText
        Left = 193
        Top = 165
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          436.562500000000000000
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
      object QRDBText7: TQRDBText
        Left = 193
        Top = 121
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          320.145833333333300000
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
      object QRDBText1: TQRDBText
        Left = 933
        Top = 143
        Width = 75
        Height = 21
        Size.Values = (
          55.562500000000000000
          2468.562500000000000000
          378.354166666666700000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DelMas
        DataField = 'USERNAME'
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
      object QRDBText12: TQRDBText
        Left = 933
        Top = 165
        Width = 90
        Height = 21
        Size.Values = (
          55.562500000000000000
          2468.562500000000000000
          436.562500000000000000
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
        Left = 412
        Top = 121
        Width = 184
        Height = 17
        Size.Values = (
          44.979166666666670000
          1090.083333333333000000
          320.145833333333300000
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
        Left = 602
        Top = 121
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          1592.791666666667000000
          320.145833333333300000
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
      object QRLabel11: TQRLabel
        Left = 12
        Top = 120
        Width = 156
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          317.500000000000000000
          412.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#227' s'#7889' ho'#224'n tr'#7843#27512#36996#21934#34399':'
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
      object QRLabel5: TQRLabel
        Left = 12
        Top = 143
        Width = 156
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          378.354166666666700000
          412.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' '#273#7873' ngh'#7883' '#30003#35531#21934#20301':'
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
      object QRLabel9: TQRLabel
        Left = 12
        Top = 165
        Width = 175
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          436.562500000000000000
          463.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' cho m'#432#7907'n '#20986#20511#21934#20301':'
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
      object QRLabel6: TQRLabel
        Left = 12
        Top = 187
        Width = 175
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          494.770833333333300000
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
      object QRLabel18: TQRLabel
        Left = 760
        Top = 121
        Width = 167
        Height = 21
        Size.Values = (
          55.562500000000000000
          2010.833333333333000000
          320.145833333333300000
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
      object QRLabel10: TQRLabel
        Left = 760
        Top = 143
        Width = 139
        Height = 21
        Size.Values = (
          55.562500000000000000
          2010.833333333333000000
          378.354166666666700000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#432#7901'i li'#234'n l'#7841'c '#32879#32097#20154':'
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
        Left = 760
        Top = 165
        Width = 139
        Height = 21
        Size.Values = (
          55.562500000000000000
          2010.833333333333000000
          436.562500000000000000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#432#7901'i li'#234'n l'#7841'c '#32879#32097#20154':'
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
      object L2: TQRLabel
        Left = 465
        Top = 30
        Width = 147
        Height = 24
        Size.Values = (
          63.500000000000000000
          1230.312500000000000000
          79.375000000000000000
          388.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name CH'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object L1: TQRLabel
        Left = 460
        Top = 1
        Width = 160
        Height = 25
        Size.Values = (
          66.145833333333330000
          1217.083333333333000000
          2.645833333333333000
          423.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    end
    object TitleBand1: TQRBand
      Left = 19
      Top = 229
      Width = 1085
      Height = 51
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
        134.937500000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel14: TQRLabel
        Left = 668
        Top = 7
        Width = 103
        Height = 32
        Size.Values = (
          84.666666666666670000
          1767.416666666667000000
          18.520833333333330000
          272.520833333333300000)
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
        Left = 364
        Top = 6
        Width = 60
        Height = 33
        Size.Values = (
          87.312500000000000000
          963.083333333333300000
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
      object QRLabel19: TQRLabel
        Left = 47
        Top = 6
        Width = 59
        Height = 33
        Size.Values = (
          87.312500000000000000
          124.354166666666700000
          15.875000000000000000
          156.104166666666700000)
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
      object QRLabel2: TQRLabel
        Left = 819
        Top = 6
        Width = 40
        Height = 32
        Size.Values = (
          84.666666666666670000
          2166.937500000000000000
          15.875000000000000000
          105.833333333333300000)
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
        Left = 942
        Top = 2
        Width = 76
        Height = 43
        Size.Values = (
          113.770833333333300000
          2492.375000000000000000
          5.291666666666667000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#224'y H.Tr'#7843' Th'#7921'c T'#7871' '#23526#38555#27512#36996#26085#26399
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
        Left = 1022
        Top = 8
        Width = 60
        Height = 32
        Size.Values = (
          84.666666666666670000
          2704.041666666667000000
          21.166666666666670000
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
        Left = 868
        Top = 3
        Width = 68
        Height = 43
        Size.Values = (
          113.770833333333300000
          2296.583333333333000000
          7.937500000000000000
          179.916666666666700000)
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
        Left = 777
        Top = 3
        Width = 36
        Height = 42
        Size.Values = (
          111.125000000000000000
          2055.812500000000000000
          7.937500000000000000
          95.250000000000000000)
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
      object QRShape3: TQRShape
        Left = 103
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          272.520833333333300000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 41
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          108.479166666666700000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 660
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          1746.250000000000000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 811
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2145.770833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 770
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2037.291666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 860
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2275.416666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 934
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2471.208333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 1015
        Top = 0
        Width = 8
        Height = 50
        Size.Values = (
          132.291666666666700000
          2685.520833333333000000
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
      Top = 280
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
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 868
        Top = 7
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          2296.583333333333000000
          18.520833333333330000
          164.041666666666700000)
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
      object QRDBText10: TQRDBText
        Left = 942
        Top = 7
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          2492.375000000000000000
          18.520833333333330000
          187.854166666666700000)
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
      object QRShape12: TQRShape
        Left = 934
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2471.208333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 1015
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2685.520833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText15: TQRDBText
        Left = 1021
        Top = 7
        Width = 63
        Height = 18
        Size.Values = (
          47.625000000000000000
          2701.395833333333000000
          18.520833333333330000
          166.687500000000000000)
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
      object QRShape21: TQRShape
        Left = 660
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          1746.250000000000000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText9: TQRDBText
        Left = 46
        Top = 5
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          121.708333333333300000
          13.229166666666670000
          161.395833333333300000)
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
        Left = 110
        Top = 2
        Width = 550
        Height = 17
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          5.291666666666667000
          1455.208333333333000000)
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
      object QRDBText2: TQRDBText
        Left = 110
        Top = 16
        Width = 550
        Height = 17
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          42.333333333333330000
          1455.208333333333000000)
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
      object QRShape5: TQRShape
        Left = 770
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2037.291666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 781
        Top = 5
        Width = 27
        Height = 22
        Size.Values = (
          58.208333333333330000
          2066.395833333333000000
          13.229166666666670000
          71.437500000000000000)
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
        Left = 815
        Top = 5
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          2156.354166666667000000
          13.229166666666670000
          134.937500000000000000)
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
      object QRDBText8: TQRDBText
        Left = 667
        Top = 4
        Width = 101
        Height = 24
        Size.Values = (
          63.500000000000000000
          1764.770833333333000000
          10.583333333333330000
          267.229166666666700000)
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
      object QRShape10: TQRShape
        Left = 811
        Top = 0
        Width = 8
        Height = 34
        Size.Values = (
          89.958333333333330000
          2145.770833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 860
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2275.416666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 103
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          272.520833333333300000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 41
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          108.479166666666700000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 644
      Width = 1085
      Height = 25
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRISO: TQRLabel
        Left = 1010
        Top = 5
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          2672.291666666667000000
          13.229166666666670000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-DCC-081B'
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
    object QRBand2: TQRBand
      Left = 19
      Top = 313
      Width = 1085
      Height = 331
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        875.770833333333300000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr5: TQRExpr
        Left = 770
        Top = 6
        Width = 49
        Height = 16
        Size.Values = (
          42.333333333333330000
          2037.291666666667000000
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
      object QRLabel3: TQRLabel
        Left = 490
        Top = 68
        Width = 141
        Height = 34
        Size.Values = (
          89.958333333333330000
          1296.458333333333000000
          179.916666666666700000
          373.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ch'#7911' qu'#7843'n b'#7897' ph'#7853'n '#37096#38272#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel25: TQRLabel
        Left = 700
        Top = 68
        Width = 133
        Height = 34
        Size.Values = (
          89.958333333333330000
          1852.083333333333000000
          179.916666666666700000
          351.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ch'#7911' qu'#7843'n '#273#417'n v'#7883' '#21934#20301#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 12
        Top = 39
        Width = 127
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          103.187500000000000000
          336.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'B'#234'n ho'#224'n tr'#7843' '#27512#36996#26041
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
        Left = 892
        Top = 68
        Width = 170
        Height = 34
        Size.Values = (
          89.958333333333330000
          2360.083333333333000000
          179.916666666666700000
          449.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#432#7901'i '#273#7873' ngh'#7883' (k'#253' t'#234'n ) '#30003#35531#20154'('#31805#21517')'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel28: TQRLabel
        Left = 166
        Top = 208
        Width = 149
        Height = 22
        Size.Values = (
          58.208333333333330000
          439.208333333333300000
          550.333333333333300000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'B'#7897' ph'#7853'n li'#234'n quan'#26371#31805
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel29: TQRLabel
        Left = 716
        Top = 208
        Width = 115
        Height = 22
        Size.Values = (
          58.208333333333330000
          1894.416666666667000000
          550.333333333333300000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'B'#234'n nh'#7853'n '#25509#25910#26041
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel30: TQRLabel
        Left = 243
        Top = 68
        Width = 181
        Height = 34
        Size.Values = (
          89.958333333333330000
          642.937500000000000000
          179.916666666666700000
          478.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CQ cao nh'#7845't xv / B'#7897' ph'#7853'n '#24288#21209'/'#37096#38272#26368#39640#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel31: TQRLabel
        Left = 239
        Top = 6
        Width = 101
        Height = 17
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          15.875000000000000000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#7893'ng c'#7897'ng '#32317#35336' '
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
      object QRLabel59: TQRLabel
        Left = 65
        Top = 68
        Width = 72
        Height = 34
        Size.Values = (
          89.958333333333330000
          171.979166666666700000
          179.916666666666700000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Duy'#7879't '#26680#20934
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 811
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2145.770833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 860
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2275.416666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 934
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2471.208333333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 1015
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2685.520833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 41
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          108.479166666666700000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 660
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          1746.250000000000000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 770
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2037.291666666667000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = -2
        Top = 61
        Width = 5
        Height = 270
        Size.Values = (
          714.375000000000000000
          -5.291666666666667000
          161.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 200
        Top = 61
        Width = 5
        Height = 140
        Size.Values = (
          370.416666666666700000
          529.166666666666700000
          161.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 32
        Width = 1085
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          84.666666666666670000
          2870.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 0
        Top = 60
        Width = 1085
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          158.750000000000000000
          2870.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = -2
        Top = 0
        Width = 5
        Height = 33
        Size.Values = (
          87.312500000000000000
          -5.291666666666667000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 1082
        Top = 61
        Width = 5
        Height = 270
        Size.Values = (
          714.375000000000000000
          2862.791666666667000000
          161.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 1082
        Top = 0
        Width = 5
        Height = 33
        Size.Values = (
          87.312500000000000000
          2862.791666666667000000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 450
        Top = 61
        Width = 5
        Height = 270
        Size.Values = (
          714.375000000000000000
          1190.625000000000000000
          161.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 660
        Top = 61
        Width = 5
        Height = 140
        Size.Values = (
          370.416666666666700000
          1746.250000000000000000
          161.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 860
        Top = 61
        Width = 5
        Height = 140
        Size.Values = (
          370.416666666666700000
          2275.416666666667000000
          161.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 110
        Width = 1085
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          291.041666666666700000
          2870.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 0
        Top = 200
        Width = 1085
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          529.166666666666700000
          2870.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 0
        Top = 230
        Width = 1085
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          608.541666666666700000
          2870.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object DelMas: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentT.DS1
    SQL.Strings = (
      
        'select TSCD_KCLL.LLNO,BDepartment.DepName+'#39' '#39'+BDepartment.DepMem' +
        'o as DepName,BUsers.USERNAME,TSCD_KCLL.UserDate,TSCD_KCLL.Memo a' +
        's LLNO_Out,Max(JDBDepartment.DepName+'#39' '#39'+JDBDepartment.DepMemo+'#39 +
        '_'#39'+TSCD_KCLLS.VALUE4) as JDDepName,Max(TSCD_KCLLS.COLUMN6) as JD' +
        'USERNAME'
      'from TSCD_KCTT TSCD_KCLL'
      
        'Left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_KC' +
        'LL.DepID'
      'Left join BUsers on BUsers.USERID=TSCD_KCLL.USERID'
      
        'Left join (Select LLNO,Value1,Value4,COLUMN6  from TSCD_KCFFS TS' +
        'CD_KCLLS  where LLNO=:Memo and TSID in (select TSID from TSCD_KC' +
        'TTS TSCD_KCLLS where LLNO=:LLNO) ) TSCD_KCLLS on TSCD_KCLLS.LLNO' +
        '=TSCD_KCLL.Memo'
      
        'Left join TSCD_BDepartment JDBDepartment on JDBDepartment.ID=TSC' +
        'D_KCLLS.Value1'
      'where TSCD_KCLL.LLNO=:LLNO'
      
        'Group by TSCD_KCLL.LLNO,BDepartment.DepName,BDepartment.DepMemo,' +
        'BUsers.USERNAME,TSCD_KCLL.UserDate,TSCD_KCLL.Memo'
      ''
      '')
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
    DataSource = Deliver_EquipmentT.DS1
    SQL.Strings = (
      
        'select TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.QUCBH,TSCD' +
        '_SB.LSBH,TSCD_SB.DWBH,TSCD_KCLLS.Qty,TSCD_KCLLS.COLUMN3 as Date_' +
        'Back,TSCD_KCLLM.VALUE2 as Date_Out,TSCD.TSBH,TSCD_KCLLS.COLUMN2,' +
        'TSCD_KCLLS.VALUE2'
      ''
      'from TSCD_KCTTS TSCD_KCLLS'
      'left join TSCD_KCTT TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      'left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      
        'left join TSCD_KCFFS TSCD_KCLLM on TSCD_KCLLM.LLNO=TSCD_KCLL.Mem' +
        'o and TSCD_KCLLM.TSID=TSCD_KCLLS.TSID '
      'where TSCD_KCLLS.LLNO=:LLNO'
      'order by TSCD_KCLLS.LLNO'
      '')
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
end
