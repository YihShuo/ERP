object Deliver_EquipmentM_print: TDeliver_EquipmentM_print
  Left = 395
  Top = 279
  Caption = 'Deliver_EquipmentM_print'
  ClientHeight = 626
  ClientWidth = 861
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
    Left = 10
    Top = 16
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = Deliver_EquipmentM.DelDet
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
        Left = 239
        Top = 34
        Width = 256
        Height = 30
        Size.Values = (
          79.375000000000000000
          632.354166666666700000
          89.958333333333330000
          677.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Machine Lend outside'
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
      object QRLabel18: TQRLabel
        Left = 621
        Top = 64
        Width = 26
        Height = 21
        Size.Values = (
          55.562500000000000000
          1643.062500000000000000
          169.333333333333300000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Date:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 656
        Top = 64
        Width = 60
        Height = 21
        Size.Values = (
          55.562500000000000000
          1735.666666666667000000
          169.333333333333300000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelMas
        DataField = 'USERDATE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 56
        Top = 40
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          105.833333333333300000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelMas
        DataField = 'GSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 16
        Top = 40
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          105.833333333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'GSBH:'
        Color = clWhite
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
        Top = 64
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          169.333333333333300000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Depname:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 56
        Top = 64
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          169.333333333333300000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelMas
        DataField = 'DepName'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 24
        Top = 15
        Width = 23
        Height = 17
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          39.687500000000000000
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
        Left = 56
        Top = 15
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          39.687500000000000000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelMas
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
        Left = 278
        Top = 62
        Width = 176
        Height = 30
        Size.Values = (
          79.375000000000000000
          735.541666666666700000
          164.041666666666700000
          465.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #27231#22120#35373#20633#20511#20986#21934
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
    end
    object TitleBand1: TQRBand
      Left = 19
      Top = 113
      Width = 756
      Height = 32
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
        84.666666666666670000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel14: TQRLabel
        Left = 232
        Top = 8
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          21.166666666666670000
          232.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Machine Name'
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
        Left = 72
        Top = 0
        Width = 9
        Height = 32
        Size.Values = (
          84.666666666666670000
          190.500000000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 480
        Top = 8
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          21.166666666666670000
          58.208333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Qty'
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
      object QRShape3: TQRShape
        Left = 469
        Top = 0
        Width = 9
        Height = 32
        Size.Values = (
          84.666666666666670000
          1240.895833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 511
        Top = 0
        Width = 9
        Height = 32
        Size.Values = (
          84.666666666666670000
          1352.020833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 598
        Top = 8
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1582.208333333333000000
          21.166666666666670000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Memo'
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
        Left = 7
        Top = 7
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          18.520833333333330000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ID'
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
      Top = 145
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
        Top = 2
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          -10.583333333333330000
          5.291666666666667000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
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
        Top = 4
        Width = 385
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          10.583333333333330000
          1018.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
        DataField = 'YWPM'
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
      object QRShape15: TQRShape
        Left = 72
        Top = -1
        Width = 9
        Height = 48
        Size.Values = (
          127.000000000000000000
          190.500000000000000000
          -2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 484
        Top = 17
        Width = 17
        Height = 17
        Size.Values = (
          44.979166666666670000
          1280.583333333333000000
          44.979166666666670000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
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
        Left = 518
        Top = 3
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          1370.541666666667000000
          7.937500000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
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
        Left = 511
        Top = 0
        Width = 9
        Height = 48
        Size.Values = (
          127.000000000000000000
          1352.020833333333000000
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
        Width = 385
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          68.791666666666670000
          1018.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
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
        Left = 469
        Top = -1
        Width = 9
        Height = 48
        Size.Values = (
          127.000000000000000000
          1240.895833333333000000
          -2.645833333333333000
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
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          66.145833333333330000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
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
        Left = 518
        Top = 25
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          1370.541666666667000000
          66.145833333333330000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
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
      object QRDBText8: TQRDBText
        Left = 638
        Top = 24
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          63.500000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
        DataField = 'VALUE3'
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
      object QRLabel4: TQRLabel
        Left = 627
        Top = 24
        Width = 9
        Height = 17
        Size.Values = (
          44.979166666666670000
          1658.937500000000000000
          63.500000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '~'
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
      object QRDBText10: TQRDBText
        Left = 638
        Top = 3
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          7.937500000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Deliver_EquipmentM.DelDet
        DataField = 'VALUE4'
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
    object QRBand1: TQRBand
      Left = 19
      Top = 193
      Width = 756
      Height = 168
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        444.500000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel3: TQRLabel
        Left = 55
        Top = 29
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          145.520833333333300000
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
      object QRLabel12: TQRLabel
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
      object QRLabel13: TQRLabel
        Left = 616
        Top = 29
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          76.729166666666670000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#32773
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
      object QRLabel15: TQRLabel
        Left = 51
        Top = 10
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          134.937500000000000000
          26.458333333333330000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CQ XUONG'
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
      object QRLabel17: TQRLabel
        Left = 339
        Top = 9
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          896.937500000000000000
          23.812500000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CQ NHOM'
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
      object QRLabel19: TQRLabel
        Left = 591
        Top = 11
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          29.104166666666670000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NGUOI XIN DE NGHI'
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
        Left = 591
        Top = 73
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1563.687500000000000000
          193.145833333333300000
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
        Left = 30
        Top = 72
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          79.375000000000000000
          190.500000000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
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
