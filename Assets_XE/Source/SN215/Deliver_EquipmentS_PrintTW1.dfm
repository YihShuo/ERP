object Deliver_EquipmentS_PrintTW: TDeliver_EquipmentS_PrintTW
  Left = 0
  Top = 0
  Caption = 'Deliver_EquipmentS_PrintTW'
  ClientHeight = 788
  ClientWidth = 1336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Top = -112
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = DelDetS
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
      Height = 240
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
        635.000000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 195
        Top = 60
        Width = 347
        Height = 26
        Size.Values = (
          68.791666666666670000
          515.937500000000000000
          158.750000000000000000
          918.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #272#416'N '#272#7872' NGH'#7882' '#272'I'#7872'U '#272#7896'NG T'#192'I S'#7842'N'
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
      object QRSysData1: TQRSysData
        Left = 672
        Top = 16
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          1778.000000000000000000
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
      object QRLabel7: TQRLabel
        Left = 712
        Top = 16
        Width = 4
        Height = 15
        Size.Values = (
          39.687500000000000000
          1883.833333333333000000
          42.333333333333330000
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
        Left = 720
        Top = 16
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          1905.000000000000000000
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
      object L1: TQRLabel
        Left = 305
        Top = 0
        Width = 121
        Height = 24
        Size.Values = (
          63.500000000000000000
          806.979166666666700000
          0.000000000000000000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Company Name'
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
      object QRLabel11: TQRLabel
        Left = 576
        Top = 40
        Width = 23
        Height = 17
        Size.Values = (
          44.979166666666670000
          1524.000000000000000000
          105.833333333333300000
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
      object QRDBText7: TQRDBText
        Left = 608
        Top = 40
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          105.833333333333300000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentS.DelMas
        DataField = 'LLNO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 279
        Top = 85
        Width = 162
        Height = 26
        Size.Values = (
          68.791666666666670000
          738.187500000000000000
          224.895833333333300000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #36039#29986#30064#21205#30003#35531#21934
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
      object QRLabel21: TQRLabel
        Left = 7
        Top = 132
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          349.250000000000000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#21934#20301':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 265
        Top = 135
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          701.145833333333300000
          357.187500000000000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#26085#26399':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 6
        Top = 118
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          312.208333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#416'N V'#7882' '#272#7872' NGH'#7882':'
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
      object QRLabel25: TQRLabel
        Left = 265
        Top = 118
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          701.145833333333300000
          312.208333333333300000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NG'#192'Y '#272#7872' NGH'#7882':'
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
      object QRDBText8: TQRDBText
        Left = 119
        Top = 118
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          314.854166666666700000
          312.208333333333300000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentS.DelMas
        DataField = 'DepName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
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
      object QRDBText10: TQRDBText
        Left = 119
        Top = 149
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          314.854166666666700000
          394.229166666666700000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentS.DelDet
        DataField = 'COLUMN1'
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
      object QRLabel31: TQRLabel
        Left = 7
        Top = 199
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          526.520833333333300000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30064#21205#21407#22240':'
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
      object QRLabel33: TQRLabel
        Left = 7
        Top = 184
        Width = 147
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          486.833333333333300000
          388.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NGUY'#202'N DO '#272'I'#7872'U '#272#7896'NG:'
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
      object QRLabel5: TQRLabel
        Left = 7
        Top = 166
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          439.208333333333300000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25509#25910#21934#20301':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 265
        Top = 166
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          701.145833333333300000
          439.208333333333300000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25509#25910#26085#26399':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 6
        Top = 150
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          396.875000000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#416'N V'#7882' NH'#7852'N:'
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
      object QRLabel28: TQRLabel
        Left = 265
        Top = 150
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          701.145833333333300000
          396.875000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NG'#192'Y NH'#7852'N:'
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
      object QRDBText3: TQRDBText
        Left = 174
        Top = 184
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          460.375000000000000000
          486.833333333333300000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentS.DelDet
        DataField = 'COLUMN2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
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
      object L2: TQRLabel
        Left = 293
        Top = 25
        Width = 147
        Height = 24
        Size.Values = (
          63.500000000000000000
          775.229166666666700000
          66.145833333333330000
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
      object QRLabel_USERDATE: TQRLabel
        Left = 369
        Top = 118
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          312.208333333333300000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'USERDATE'
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
      object QRLabel_USERDATE1: TQRLabel
        Left = 369
        Top = 150
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          396.875000000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'USERDATE'
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
      object QRLabel23: TQRLabel
        Left = 30
        Top = 220
        Width = 130
        Height = 17
        Size.Values = (
          44.979166666666670000
          79.375000000000000000
          582.083333333333300000
          343.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#225'y m'#243'c '#27231#22120#35373#20633'    '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 250
        Top = 220
        Width = 93
        Height = 17
        Size.Values = (
          44.979166666666670000
          661.458333333333300000
          582.083333333333300000
          246.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#244'ng c'#7909' '#24037#20855'   '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 430
        Top = 220
        Width = 173
        Height = 17
        Size.Values = (
          44.979166666666670000
          1137.708333333333000000
          582.083333333333300000
          457.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Thi'#7871't b'#7883' th'#244'ng tin'#36890#35338#35373#20633'   '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 690
        Top = 220
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          1825.625000000000000000
          582.083333333333300000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Kh'#225'c'#20854#20182
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 7
        Top = 220
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          582.083333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 227
        Top = 220
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          600.604166666666700000
          582.083333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 407
        Top = 220
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          582.083333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 667
        Top = 220
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1764.770833333333000000
          582.083333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
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
      Top = 259
      Width = 756
      Height = 35
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
        92.604166666666670000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRShape24: TQRShape
        Left = 375
        Top = 1
        Width = 9
        Height = 42
        Size.Values = (
          111.125000000000000000
          992.187500000000000000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 400
        Top = 17
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          44.979166666666670000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #22411#34399#35215#26684
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 180
        Top = 17
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          44.979166666666670000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #36039#29986#21517#31281
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 8
        Top = 17
        Width = 27
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          44.979166666666670000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #38917#27425
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 175
        Top = 2
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          463.020833333333300000
          5.291666666666667000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'T'#202'N T'#192'I S'#7842'N'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 395
        Top = 2
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          1045.104166666667000000
          5.291666666666667000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QUY C'#193'CH'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 576
        Top = 17
        Width = 27
        Height = 17
        Size.Values = (
          44.979166666666670000
          1524.000000000000000000
          44.979166666666670000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32232#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 572
        Top = 2
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1513.416666666667000000
          5.291666666666667000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#195' S'#7888
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 680
        Top = 17
        Width = 27
        Height = 17
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          44.979166666666670000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20633#35387
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 668
        Top = 2
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          5.291666666666667000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'GHI CH'#218
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 9
        Top = 2
        Width = 23
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          5.291666666666667000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'STT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 35
        Top = 1
        Width = 9
        Height = 42
        Size.Values = (
          111.125000000000000000
          92.604166666666670000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 468
        Top = 1
        Width = 9
        Height = 42
        Size.Values = (
          111.125000000000000000
          1238.250000000000000000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 631
        Top = 1
        Width = 9
        Height = 42
        Size.Values = (
          111.125000000000000000
          1669.520833333333000000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel43: TQRLabel
        Left = 477
        Top = 2
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          1262.062500000000000000
          5.291666666666667000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7888' L'#431#7906'NG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 495
        Top = 17
        Width = 27
        Height = 17
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          44.979166666666670000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25976#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape8: TQRShape
        Left = 548
        Top = 1
        Width = 9
        Height = 42
        Size.Values = (
          111.125000000000000000
          1449.916666666667000000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 294
      Width = 756
      Height = 45
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 555
        Top = 5
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          1468.437500000000000000
          13.229166666666670000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'SBBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 42
        Top = 1
        Width = 319
        Height = 41
        Size.Values = (
          108.479166666666700000
          111.125000000000000000
          2.645833333333333000
          844.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'VWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape15: TQRShape
        Left = 35
        Top = 0
        Width = 9
        Height = 45
        Size.Values = (
          119.062500000000000000
          92.604166666666670000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 504
        Top = 8
        Width = 12
        Height = 17
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          21.166666666666670000
          31.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 639
        Top = 8
        Width = 112
        Height = 33
        Size.Values = (
          87.312500000000000000
          1690.687500000000000000
          21.166666666666670000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'VALUE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 42
        Top = 25
        Width = 319
        Height = 17
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          66.145833333333330000
          844.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'ZWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 553
        Top = 25
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1463.145833333333000000
          66.145833333333330000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'TSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape1: TQRShape
        Left = 375
        Top = -6
        Width = 9
        Height = 50
        Size.Values = (
          132.291666666666700000
          992.187500000000000000
          -15.875000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 468
        Top = -6
        Width = 9
        Height = 50
        Size.Values = (
          132.291666666666700000
          1238.250000000000000000
          -15.875000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 631
        Top = -4
        Width = 9
        Height = 49
        Size.Values = (
          129.645833333333300000
          1669.520833333333000000
          -10.583333333333330000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRSysData2: TQRSysData
        Left = 2
        Top = 10
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          26.458333333333330000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 392
        Top = 8
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          21.166666666666670000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DelDetS
        DataField = 'LSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape9: TQRShape
        Left = 548
        Top = -4
        Width = 9
        Height = 49
        Size.Values = (
          129.645833333333300000
          1449.916666666667000000
          -10.583333333333330000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 339
      Width = 756
      Height = 496
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1312.333333333333000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel56: TQRLabel
        Left = 35
        Top = 37
        Width = 133
        Height = 18
        Size.Values = (
          47.625000000000000000
          92.604166666666670000
          97.895833333333330000
          351.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21209'/'#37096#38272#26368#39640#20027#31649
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
      object QRLabel57: TQRLabel
        Left = 458
        Top = 33
        Width = 101
        Height = 18
        Size.Values = (
          47.625000000000000000
          1211.791666666667000000
          87.312500000000000000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21934#20301#20027#31649'/'#24185#37096
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
      object QRLabel58: TQRLabel
        Left = 658
        Top = 33
        Width = 49
        Height = 18
        Size.Values = (
          47.625000000000000000
          1740.958333333333000000
          87.312500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#20154
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
        Left = 30
        Top = 3
        Width = 139
        Height = 34
        Size.Values = (
          89.958333333333330000
          79.375000000000000000
          7.937500000000000000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ch'#7911' Qu'#7843'n Cao nh'#7845't B'#7897' Ph'#7853'n/ X'#432#7903'ng V'#7909
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
      object QRLabel60: TQRLabel
        Left = 455
        Top = 5
        Width = 105
        Height = 18
        Size.Values = (
          47.625000000000000000
          1203.854166666667000000
          13.229166666666670000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'C'#225'n B'#7897'/ CQ '#272'V'
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
      object QRLabel61: TQRLabel
        Left = 635
        Top = 5
        Width = 93
        Height = 18
        Size.Values = (
          47.625000000000000000
          1680.104166666667000000
          13.229166666666670000
          246.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#432#7901'i '#273#7873' ngh'#7883
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
      object QRLabel63: TQRLabel
        Left = 290
        Top = 66
        Width = 186
        Height = 20
        Size.Values = (
          52.916666666666670000
          767.291666666666700000
          174.625000000000000000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' '#273#7873' ngh'#7883#30003#35531#21934#20301':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel65: TQRLabel
        Left = 238
        Top = 3
        Width = 141
        Height = 34
        Size.Values = (
          89.958333333333330000
          629.708333333333300000
          7.937500000000000000
          373.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ch'#7911' Qu'#7843'n B'#7897' Ph'#7853'n/ X'#432#7903'ng V'#7909
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
      object QRLabel66: TQRLabel
        Left = 253
        Top = 37
        Width = 101
        Height = 18
        Size.Values = (
          47.625000000000000000
          669.395833333333300000
          97.895833333333330000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24288#21209'/'#37096#38272#20027#31649
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
      object QRShape12: TQRShape
        Left = -2
        Top = 0
        Width = 5
        Height = 307
        Size.Values = (
          812.270833333333300000
          -5.291666666666667000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 0
        Top = 57
        Width = 753
        Height = 8
        Size.Values = (
          21.166666666666670000
          0.000000000000000000
          150.812500000000000000
          1992.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 200
        Top = 0
        Width = 5
        Height = 63
        Size.Values = (
          166.687500000000000000
          529.166666666666700000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 415
        Top = 0
        Width = 5
        Height = 61
        Size.Values = (
          161.395833333333300000
          1098.020833333333000000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 600
        Top = 0
        Width = 5
        Height = 61
        Size.Values = (
          161.395833333333300000
          1587.500000000000000000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 0
        Top = 90
        Width = 753
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          238.125000000000000000
          1992.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 600
        Top = 92
        Width = 5
        Height = 90
        Size.Values = (
          238.125000000000000000
          1587.500000000000000000
          243.416666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 415
        Top = 92
        Width = 5
        Height = 90
        Size.Values = (
          238.125000000000000000
          1098.020833333333000000
          243.416666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 200
        Top = 92
        Width = 5
        Height = 90
        Size.Values = (
          238.125000000000000000
          529.166666666666700000
          243.416666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 0
        Top = 181
        Width = 753
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          478.895833333333300000
          1992.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 292
        Top = 186
        Width = 168
        Height = 20
        Size.Values = (
          52.916666666666670000
          772.583333333333300000
          492.125000000000000000
          444.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' nh'#7853'n'#25509#25910#21934#20301':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 210
        Width = 755
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          555.625000000000000000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 200
        Top = 212
        Width = 5
        Height = 95
        Size.Values = (
          251.354166666666700000
          529.166666666666700000
          560.916666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 415
        Top = 212
        Width = 5
        Height = 95
        Size.Values = (
          251.354166666666700000
          1098.020833333333000000
          560.916666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 600
        Top = 212
        Width = 5
        Height = 95
        Size.Values = (
          251.354166666666700000
          1587.500000000000000000
          560.916666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 306
        Width = 753
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          809.625000000000000000
          1992.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 415
        Top = 302
        Width = 5
        Height = 166
        Size.Values = (
          439.208333333333300000
          1098.020833333333000000
          799.041666666666700000
          13.229166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 418
        Top = 466
        Width = 335
        Height = 2
        Size.Values = (
          5.291666666666667000
          1105.958333333333000000
          1232.958333333333000000
          886.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 417
        Top = 349
        Width = 338
        Height = 2
        Size.Values = (
          5.291666666666667000
          1103.312500000000000000
          923.395833333333300000
          894.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 540
        Top = 313
        Width = 128
        Height = 18
        Size.Values = (
          47.625000000000000000
          1428.750000000000000000
          828.145833333333300000
          338.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'B'#7897' Ph'#7853'n Li'#234'n Quan'
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
      object QRLabel6: TQRLabel
        Left = 571
        Top = 331
        Width = 65
        Height = 18
        Size.Values = (
          47.625000000000000000
          1510.770833333333000000
          875.770833333333300000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30456#38364#37096#38272
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
      object QRISO: TQRLabel
        Left = 668
        Top = 469
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          1240.895833333333000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-DCC-076B'
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
      object QRShape28: TQRShape
        Left = 753
        Top = 1
        Width = 1
        Height = 465
        Size.Values = (
          1230.312500000000000000
          1992.312500000000000000
          2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object DelDetS: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentS.DS2
    SQL.Strings = (
      
        'SELECT LLNO,TSBH,SBBH,YWPM,VWPM,ZWPM,LSBH,VALUE2,CAST(Count(TSBH' +
        ') as float) as Qty FROM'
      
        '(select case when left(TSCD.LABEL_Tag,1)='#39'A'#39' then TSCD.LABEL_Tag' +
        ' else TSCD.TSBH end as TSBH, Case when IsNull(TSCD.MSBBH,'#39#39#39#39')='#39 +
        #39#39#39' then TSCD.SBBH else TSCD.MSBBH end as SBBH,'
      
        '        IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.VW' +
        'PM,CLZL.YWPM) as VWPM, IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) as ZWPM, T' +
        'SCD_KCSSS.LLNO, LSBH, VALUE2'
      'from TSCD_KCSSS'
      'left join TSCD on TSCD.TSID=TSCD_KCSSS.TSID'
      'left join TSCD_SB on TSCD_SB.SBBH = isnull(TSCD.MSBBH,TSCD.SBBH)'
      'left join CLZL on CLZL.cldh=isnull(TSCD.MSBBH,TSCD.SBBH)'
      
        'where TSCD_KCSSS.LLNO=:LLNO and isnull(TSCD.MSBBH,TSCD.SBBH) NOT' +
        ' IN ('#39'Z207000003'#39','#39'Z207000005'#39')'
      
        'Group by case when left(TSCD.LABEL_Tag,1)='#39'A'#39' then TSCD.LABEL_Ta' +
        'g else TSCD.TSBH end, Case when IsNull(TSCD.MSBBH,'#39#39#39#39')='#39#39#39#39' the' +
        'n TSCD.SBBH else TSCD.MSBBH end,'
      
        '         IsNull(TSCD_SB.YWPM,CLZL.YWPM), IsNull(TSCD_SB.VWPM,CLZ' +
        'L.YWPM), IsNull(TSCD_SB.ZWPM,CLZL.ZWPM), TSCD_KCSSS.LLNO, LSBH, ' +
        'VALUE2) AS TSCD'
      'Group by LLNO,TSBH,SBBH,YWPM,VWPM,ZWPM,LSBH,VALUE2')
    Left = 342
    Top = 339
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetSLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetSTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object DelDetSSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 10
    end
    object DelDetSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetSVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
    object DelDetSLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 10
    end
    object DelDetSVALUE2: TStringField
      FieldName = 'VALUE2'
      FixedChar = True
      Size = 50
    end
    object DelDetSQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object DS3: TDataSource
    DataSet = DelDetS
    Left = 372
    Top = 342
  end
end
