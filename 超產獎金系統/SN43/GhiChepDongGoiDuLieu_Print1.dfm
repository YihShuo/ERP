object GhiChepDongGoiDuLieu_Print: TGhiChepDongGoiDuLieu_Print
  Left = 0
  Top = 0
  Caption = 'GhiChepDongGoiDuLieu_Print'
  ClientHeight = 749
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 21
    Top = -142
    Width = 794
    Height = 1123
    ShowingPreview = False
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
      Height = 118
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        312.208333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 280
        Top = 40
        Width = 176
        Height = 30
        Size.Values = (
          79.375000000000000000
          740.833333333333300000
          105.833333333333300000
          465.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #36039#26009#20633#20221#26085#35468#34920
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
      object L1: TQRLabel
        Left = 38
        Top = 6
        Width = 665
        Height = 33
        Size.Values = (
          87.312500000000000000
          100.541666666666700000
          15.875000000000000000
          1759.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'B'#7842'NG GHI CH'#201'P '#272#211'NG G'#211'I D'#7918' LI'#7878'U H'#192'NG NG'#192'Y'
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
      object QRShape1: TQRShape
        Left = 4
        Top = 149
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          394.229166666666700000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel_date: TQRLabel
        Left = 626
        Top = 68
        Width = 124
        Height = 21
        Size.Values = (
          55.562500000000000000
          1656.291666666667000000
          179.916666666666700000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ng'#224'y      th'#225'ng      n'#259'm '
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
      object QRLabel7: TQRLabel
        Left = 478
        Top = 70
        Width = 134
        Height = 30
        Size.Values = (
          79.375000000000000000
          1264.708333333333000000
          185.208333333333300000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #20786#23384#20301#32622':NAS'#20027#27231
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel105: TQRLabel
        Left = 4
        Top = 70
        Width = 73
        Height = 30
        Size.Values = (
          79.375000000000000000
          10.583333333333330000
          185.208333333333300000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #31995#32113#21517#31281':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel106: TQRLabel
        Left = 77
        Top = 68
        Width = 333
        Height = 39
        Size.Values = (
          103.187500000000000000
          203.729166666666700000
          179.916666666666700000
          881.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ERP'#36039#26009#24235','#20154#20107#31995#32113#36039#26009#24235', '#36001#21209#31995#32113#36039#26009#24235', '#31805#26680#31995#32113#36039#26009#24235
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QPage1: TQRLabel
        Left = 709
        Top = 45
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1875.895833333333000000
          119.062500000000000000
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
      object QRLabel56: TQRLabel
        Left = 703
        Top = 45
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1860.020833333333000000
          119.062500000000000000
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
      object QRLabel57: TQRLabel
        Left = 658
        Top = 45
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1740.958333333333000000
          119.062500000000000000
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
      object QRSysData2: TQRSysData
        Left = 673
        Top = 45
        Width = 14
        Height = 17
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          119.062500000000000000
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
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 137
      Width = 756
      Height = 50
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        132.291666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel14: TQRLabel
        Left = 62
        Top = 6
        Width = 180
        Height = 34
        Size.Values = (
          89.958333333333320000
          164.041666666666700000
          15.875000000000000000
          476.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'K'#7871't qu'#7843' '#272'GDL '#36039#26009#20633#20221#32080#26524
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 255
        Top = 6
        Width = 113
        Height = 34
        Size.Values = (
          89.958333333333320000
          674.687500000000000000
          15.875000000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#432#7901'i th'#7921'c hi'#7879'n '#20633#20221#20154#21729
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 7
        Top = 6
        Width = 42
        Height = 34
        Size.Values = (
          89.958333333333320000
          18.520833333333330000
          15.875000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#224'y '#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 55
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          145.520833333333300000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 374
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          989.541666666666800000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 248
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          656.166666666666800000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 385
        Top = 6
        Width = 42
        Height = 34
        Size.Values = (
          89.958333333333320000
          1018.645833333333000000
          15.875000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#224'y '#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape19: TQRShape
        Left = 433
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          1145.645833333333000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 440
        Top = 6
        Width = 180
        Height = 34
        Size.Values = (
          89.958333333333320000
          1164.166666666667000000
          15.875000000000000000
          476.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'K'#7871't qu'#7843' '#272'GDL '#36039#26009#20633#20221#32080#26524
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape20: TQRShape
        Left = 626
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          1656.291666666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 633
        Top = 6
        Width = 113
        Height = 34
        Size.Values = (
          89.958333333333320000
          1674.812500000000000000
          15.875000000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#432#7901'i th'#7921'c hi'#7879'n '#20633#20221#20154#21729
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
      Top = 187
      Width = 756
      Height = 800
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2116.666666666667000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 70
        Top = 15
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          39.687500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 162
        Top = 15
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          39.687500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel9: TQRLabel
        Left = 91
        Top = 14
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          37.041666666666670000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel10: TQRLabel
        Left = 183
        Top = 14
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          37.041666666666670000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel4: TQRLabel
        Left = 17
        Top = 8
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          21.166666666666670000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '01'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRShape7: TQRShape
        Left = 55
        Top = 0
        Width = 1
        Height = 800
        Size.Values = (
          2116.666666666667000000
          145.520833333333300000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 248
        Top = 0
        Width = 1
        Height = 800
        Size.Values = (
          2116.666666666667000000
          656.166666666666800000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 374
        Top = 0
        Width = 1
        Height = 800
        Size.Values = (
          2116.666666666667000000
          989.541666666666800000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 395
        Top = 8
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          21.166666666666670000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '16'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRShape10: TQRShape
        Left = 433
        Top = 0
        Width = 1
        Height = 800
        Size.Values = (
          2116.666666666667000000
          1145.645833333333000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 626
        Top = 0
        Width = 1
        Height = 800
        Size.Values = (
          2116.666666666667000000
          1656.291666666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 50
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          132.291666666666700000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 700
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1852.083333333333000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 750
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1984.375000000000000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 0
        Top = 100
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          264.583333333333300000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 150
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          396.875000000000000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 0
        Top = 200
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          529.166666666666700000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 0
        Top = 250
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          661.458333333333200000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 0
        Top = 300
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          793.750000000000000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 350
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          926.041666666666800000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 0
        Top = 400
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1058.333333333333000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 0
        Top = 450
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1190.625000000000000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 0
        Top = 500
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1322.916666666667000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 550
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1455.208333333333000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 600
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1587.500000000000000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 0
        Top = 650
        Width = 754
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1719.791666666667000000
          1994.958333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 446
        Top = 15
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          39.687500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 467
        Top = 14
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          37.041666666666670000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRDBText4: TQRDBText
        Left = 538
        Top = 15
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          39.687500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Left = 559
        Top = 14
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          37.041666666666670000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel16: TQRLabel
        Left = 17
        Top = 58
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          153.458333333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '02'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText5: TQRDBText
        Left = 70
        Top = 65
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          171.979166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel17: TQRLabel
        Left = 91
        Top = 64
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          169.333333333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRDBText6: TQRDBText
        Left = 162
        Top = 65
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          171.979166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 183
        Top = 64
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          169.333333333333300000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel19: TQRLabel
        Left = 395
        Top = 58
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          153.458333333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '17'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel20: TQRLabel
        Left = 467
        Top = 64
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          169.333333333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRDBText7: TQRDBText
        Left = 446
        Top = 65
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          171.979166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC17'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 538
        Top = 65
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          171.979166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB17'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 559
        Top = 64
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          169.333333333333300000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel22: TQRLabel
        Left = 183
        Top = 114
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          301.625000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel23: TQRLabel
        Left = 559
        Top = 114
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          301.625000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText9: TQRDBText
        Left = 538
        Top = 115
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          304.270833333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB18'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 446
        Top = 115
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          304.270833333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC18'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Left = 467
        Top = 114
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          301.625000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel25: TQRLabel
        Left = 395
        Top = 108
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          285.750000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '18'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText11: TQRDBText
        Left = 162
        Top = 115
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          304.270833333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel26: TQRLabel
        Left = 91
        Top = 114
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          301.625000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRDBText12: TQRDBText
        Left = 70
        Top = 115
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          304.270833333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel27: TQRLabel
        Left = 17
        Top = 108
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          285.750000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '03'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel28: TQRLabel
        Left = 91
        Top = 164
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          433.916666666666700000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
        Left = 183
        Top = 164
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          433.916666666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
        Left = 467
        Top = 164
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          433.916666666666700000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel31: TQRLabel
        Left = 559
        Top = 164
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          433.916666666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText13: TQRDBText
        Left = 70
        Top = 165
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          436.562500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText14: TQRDBText
        Left = 162
        Top = 165
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          436.562500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText15: TQRDBText
        Left = 446
        Top = 165
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          436.562500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText16: TQRDBText
        Left = 538
        Top = 165
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          436.562500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel32: TQRLabel
        Left = 17
        Top = 158
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          418.041666666666700000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '04'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel33: TQRLabel
        Left = 395
        Top = 158
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          418.041666666666700000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '19'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel34: TQRLabel
        Left = 17
        Top = 208
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          550.333333333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '05'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel35: TQRLabel
        Left = 395
        Top = 208
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          550.333333333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '20'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel36: TQRLabel
        Left = 17
        Top = 258
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          682.625000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '06'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel37: TQRLabel
        Left = 395
        Top = 258
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          682.625000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '21'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel38: TQRLabel
        Left = 17
        Top = 308
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          814.916666666666700000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '07'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel39: TQRLabel
        Left = 395
        Top = 308
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          814.916666666666700000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '22'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel40: TQRLabel
        Left = 17
        Top = 358
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          947.208333333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '08'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel41: TQRLabel
        Left = 395
        Top = 358
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          947.208333333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '23'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel42: TQRLabel
        Left = 17
        Top = 408
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1079.500000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '09'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel43: TQRLabel
        Left = 395
        Top = 408
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1079.500000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '24'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel44: TQRLabel
        Left = 17
        Top = 458
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1211.791666666667000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '10'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel45: TQRLabel
        Left = 395
        Top = 458
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1211.791666666667000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '25'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel46: TQRLabel
        Left = 17
        Top = 508
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1344.083333333333000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '11'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel47: TQRLabel
        Left = 395
        Top = 508
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1344.083333333333000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '26'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel48: TQRLabel
        Left = 17
        Top = 558
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1476.375000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel49: TQRLabel
        Left = 395
        Top = 558
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1476.375000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '27'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel50: TQRLabel
        Left = 17
        Top = 608
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1608.666666666667000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel51: TQRLabel
        Left = 395
        Top = 608
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1608.666666666667000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '28'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel52: TQRLabel
        Left = 17
        Top = 658
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1740.958333333333000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '14'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel53: TQRLabel
        Left = 395
        Top = 658
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1740.958333333333000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '29'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel54: TQRLabel
        Left = 17
        Top = 708
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          44.979166666666670000
          1873.250000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '15'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel55: TQRLabel
        Left = 395
        Top = 708
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          1873.250000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '30'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel58: TQRLabel
        Left = 395
        Top = 758
        Width = 21
        Height = 26
        Size.Values = (
          68.791666666666670000
          1045.104166666667000000
          2005.541666666667000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = '31'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText17: TQRDBText
        Left = 70
        Top = 215
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          568.854166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText18: TQRDBText
        Left = 162
        Top = 215
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          568.854166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText19: TQRDBText
        Left = 446
        Top = 215
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          568.854166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC20'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText20: TQRDBText
        Left = 538
        Top = 215
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          568.854166666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB20'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel59: TQRLabel
        Left = 91
        Top = 214
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          566.208333333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel60: TQRLabel
        Left = 183
        Top = 214
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          566.208333333333300000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel61: TQRLabel
        Left = 467
        Top = 214
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          566.208333333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel62: TQRLabel
        Left = 559
        Top = 214
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          566.208333333333300000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel63: TQRLabel
        Left = 91
        Top = 264
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          698.500000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel64: TQRLabel
        Left = 183
        Top = 264
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          698.500000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel65: TQRLabel
        Left = 467
        Top = 264
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          698.500000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel66: TQRLabel
        Left = 559
        Top = 264
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          698.500000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText21: TQRDBText
        Left = 70
        Top = 265
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          701.145833333333200000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText22: TQRDBText
        Left = 162
        Top = 265
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          701.145833333333200000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText23: TQRDBText
        Left = 446
        Top = 265
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          701.145833333333200000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText24: TQRDBText
        Left = 538
        Top = 265
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          701.145833333333200000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText25: TQRDBText
        Left = 70
        Top = 315
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          833.437500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText26: TQRDBText
        Left = 162
        Top = 315
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          833.437500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText27: TQRDBText
        Left = 538
        Top = 315
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          833.437500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB22'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText28: TQRDBText
        Left = 446
        Top = 315
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          833.437500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC22'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel67: TQRLabel
        Left = 91
        Top = 314
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          830.791666666666700000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel68: TQRLabel
        Left = 183
        Top = 314
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          830.791666666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel69: TQRLabel
        Left = 467
        Top = 314
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          830.791666666666700000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel70: TQRLabel
        Left = 559
        Top = 314
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          830.791666666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel71: TQRLabel
        Left = 183
        Top = 364
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          963.083333333333300000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel72: TQRLabel
        Left = 467
        Top = 364
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          963.083333333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel73: TQRLabel
        Left = 559
        Top = 364
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          963.083333333333300000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel74: TQRLabel
        Left = 91
        Top = 364
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          963.083333333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRDBText29: TQRDBText
        Left = 70
        Top = 365
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          965.729166666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText30: TQRDBText
        Left = 162
        Top = 365
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          965.729166666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText31: TQRDBText
        Left = 446
        Top = 365
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          965.729166666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText32: TQRDBText
        Left = 538
        Top = 365
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          965.729166666666800000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText33: TQRDBText
        Left = 70
        Top = 415
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1098.020833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText34: TQRDBText
        Left = 162
        Top = 415
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1098.020833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText35: TQRDBText
        Left = 446
        Top = 415
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1098.020833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC24'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText36: TQRDBText
        Left = 538
        Top = 415
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1098.020833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB24'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel75: TQRLabel
        Left = 91
        Top = 414
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1095.375000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel76: TQRLabel
        Left = 183
        Top = 414
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1095.375000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel77: TQRLabel
        Left = 467
        Top = 414
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1095.375000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel78: TQRLabel
        Left = 559
        Top = 414
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1095.375000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel79: TQRLabel
        Left = 559
        Top = 464
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1227.666666666667000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel80: TQRLabel
        Left = 467
        Top = 464
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1227.666666666667000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel81: TQRLabel
        Left = 91
        Top = 464
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1227.666666666667000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel82: TQRLabel
        Left = 183
        Top = 464
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1227.666666666667000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText37: TQRDBText
        Left = 538
        Top = 465
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1230.312500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText38: TQRDBText
        Left = 446
        Top = 465
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1230.312500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText39: TQRDBText
        Left = 162
        Top = 465
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1230.312500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText40: TQRDBText
        Left = 70
        Top = 465
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1230.312500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText41: TQRDBText
        Left = 70
        Top = 515
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1362.604166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText42: TQRDBText
        Left = 446
        Top = 515
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1362.604166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC26'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText43: TQRDBText
        Left = 538
        Top = 515
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1362.604166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB26'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText44: TQRDBText
        Left = 162
        Top = 515
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1362.604166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel83: TQRLabel
        Left = 91
        Top = 514
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1359.958333333333000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel84: TQRLabel
        Left = 183
        Top = 514
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1359.958333333333000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel85: TQRLabel
        Left = 467
        Top = 514
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1359.958333333333000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel86: TQRLabel
        Left = 559
        Top = 514
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1359.958333333333000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel87: TQRLabel
        Left = 91
        Top = 564
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1492.250000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel88: TQRLabel
        Left = 467
        Top = 564
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1492.250000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel89: TQRLabel
        Left = 559
        Top = 564
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1492.250000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel90: TQRLabel
        Left = 183
        Top = 564
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1492.250000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText45: TQRDBText
        Left = 70
        Top = 565
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1494.895833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText46: TQRDBText
        Left = 162
        Top = 565
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1494.895833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText47: TQRDBText
        Left = 446
        Top = 565
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1494.895833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC27'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText48: TQRDBText
        Left = 538
        Top = 565
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1494.895833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB27'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText49: TQRDBText
        Left = 70
        Top = 615
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1627.187500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText50: TQRDBText
        Left = 446
        Top = 615
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1627.187500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC28'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText51: TQRDBText
        Left = 538
        Top = 615
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1627.187500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB28'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText52: TQRDBText
        Left = 162
        Top = 615
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1627.187500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel91: TQRLabel
        Left = 91
        Top = 614
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1624.541666666667000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel92: TQRLabel
        Left = 183
        Top = 614
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1624.541666666667000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel93: TQRLabel
        Left = 467
        Top = 614
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1624.541666666667000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel94: TQRLabel
        Left = 559
        Top = 614
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1624.541666666667000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel95: TQRLabel
        Left = 91
        Top = 664
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1756.833333333333000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel96: TQRLabel
        Left = 467
        Top = 664
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1756.833333333333000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel97: TQRLabel
        Left = 559
        Top = 664
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1756.833333333333000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRLabel98: TQRLabel
        Left = 183
        Top = 664
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1756.833333333333000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText53: TQRDBText
        Left = 70
        Top = 665
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1759.479166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText54: TQRDBText
        Left = 162
        Top = 665
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1759.479166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText55: TQRDBText
        Left = 446
        Top = 665
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1759.479166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC29'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText56: TQRDBText
        Left = 538
        Top = 665
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1759.479166666667000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB29'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText57: TQRDBText
        Left = 446
        Top = 715
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          1891.770833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC30'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText58: TQRDBText
        Left = 538
        Top = 715
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1891.770833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB30'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel99: TQRLabel
        Left = 467
        Top = 714
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          1889.125000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel100: TQRLabel
        Left = 559
        Top = 714
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1889.125000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText59: TQRDBText
        Left = 162
        Top = 715
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          428.625000000000000000
          1891.770833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText60: TQRDBText
        Left = 70
        Top = 715
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          1891.770833333333000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel101: TQRLabel
        Left = 91
        Top = 714
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          240.770833333333300000
          1889.125000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRLabel102: TQRLabel
        Left = 183
        Top = 714
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          484.187500000000000000
          1889.125000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object QRDBText61: TQRDBText
        Left = 446
        Top = 765
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          2024.062500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC31'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel103: TQRLabel
        Left = 467
        Top = 764
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1235.604166666667000000
          2021.416666666667000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
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
      object QRDBText62: TQRDBText
        Left = 538
        Top = 765
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          2024.062500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TB31'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel104: TQRLabel
        Left = 559
        Top = 764
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          2021.416666666667000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
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
      object USERIDImg1: TQRImage
        Left = 252
        Top = 5
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          13.229166666666670000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg16: TQRImage
        Left = 631
        Top = 5
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          13.229166666666670000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg2: TQRImage
        Left = 252
        Top = 55
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          145.520833333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg3: TQRImage
        Left = 252
        Top = 105
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          277.812500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg4: TQRImage
        Left = 252
        Top = 155
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          410.104166666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg5: TQRImage
        Left = 252
        Top = 205
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          542.395833333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg6: TQRImage
        Left = 252
        Top = 255
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          674.687500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg7: TQRImage
        Left = 252
        Top = 305
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          806.979166666666800000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg8: TQRImage
        Left = 252
        Top = 355
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          939.270833333333200000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg17: TQRImage
        Left = 631
        Top = 55
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          145.520833333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg18: TQRImage
        Left = 631
        Top = 105
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          277.812500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg19: TQRImage
        Left = 631
        Top = 155
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          410.104166666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg20: TQRImage
        Left = 631
        Top = 205
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          542.395833333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg21: TQRImage
        Left = 631
        Top = 255
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          674.687500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg22: TQRImage
        Left = 631
        Top = 305
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          806.979166666666800000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg23: TQRImage
        Left = 631
        Top = 355
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          939.270833333333200000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg9: TQRImage
        Left = 252
        Top = 405
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1071.562500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg10: TQRImage
        Left = 252
        Top = 455
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1203.854166666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg11: TQRImage
        Left = 252
        Top = 505
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1336.145833333333000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg12: TQRImage
        Left = 252
        Top = 555
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1468.437500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg13: TQRImage
        Left = 252
        Top = 605
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1600.729166666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg14: TQRImage
        Left = 252
        Top = 655
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1733.020833333333000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg15: TQRImage
        Left = 252
        Top = 705
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          666.750000000000000000
          1865.312500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg24: TQRImage
        Left = 631
        Top = 405
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1071.562500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg25: TQRImage
        Left = 631
        Top = 455
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1203.854166666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg26: TQRImage
        Left = 631
        Top = 505
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1336.145833333333000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg27: TQRImage
        Left = 631
        Top = 555
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1468.437500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg28: TQRImage
        Left = 631
        Top = 605
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1600.729166666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg29: TQRImage
        Left = 631
        Top = 655
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1733.020833333333000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg30: TQRImage
        Left = 631
        Top = 705
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1865.312500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object USERIDImg31: TQRImage
        Left = 631
        Top = 755
        Width = 120
        Height = 40
        Size.Values = (
          105.833333333333300000
          1669.520833333333000000
          1997.604166666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 987
      Width = 756
      Height = 110
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        291.041666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRISO: TQRLabel
        Left = 668
        Top = 93
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          246.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-IT-WS001-01B'
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
      object QCFMDate: TQRLabel
        Left = 557
        Top = 53
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          140.229166666666700000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QCFMDate1: TQRLabel
        Left = 557
        Top = 73
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          193.145833333333300000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QCFMName: TQRLabel
        Left = 153
        Top = 53
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          140.229166666666700000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QCFMName1: TQRLabel
        Left = 153
        Top = 73
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          193.145833333333300000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
        Left = 6
        Top = 33
        Width = 115
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          87.312500000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#20154'(IT'#36039#35338#37096')'
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
      object QRLabel107: TQRLabel
        Left = 6
        Top = 53
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          140.229166666666700000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21934#20301#20027#31649'(IT'#36039#35338#37096')'
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
      object QRLabel108: TQRLabel
        Left = 6
        Top = 73
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          193.145833333333300000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #37096#38272#20027#31649'(IT'#36039#35338#37096')'
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
      object QRLabel109: TQRLabel
        Left = 697
        Top = 33
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          87.312500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531
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
      object QRLabel110: TQRLabel
        Left = 697
        Top = 53
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          140.229166666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #26680#20934
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
      object QRLabel111: TQRLabel
        Left = 697
        Top = 73
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          193.145833333333300000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32080#26696
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
      object QRLabel112: TQRLabel
        Left = 230
        Top = 13
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          608.541666666666700000
          34.395833333333330000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QRLabel113: TQRLabel
        Left = 590
        Top = 13
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          34.395833333333330000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#26178#38291
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
      object QRLabel114: TQRLabel
        Left = 413
        Top = 13
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1092.729166666667000000
          34.395833333333330000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#24847#35211
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
      object QRLabel115: TQRLabel
        Left = 705
        Top = 13
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1865.312500000000000000
          34.395833333333330000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32080#26524
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
      object QRLabel116: TQRLabel
        Left = 60
        Top = 13
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          158.750000000000000000
          34.395833333333330000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #38542#27573
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
      object QRShape28: TQRShape
        Left = 3
        Top = 90
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          238.125000000000000000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 146
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          386.291666666666700000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 3
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          7.937500000000000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 752
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1989.666666666667000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 3
        Top = 30
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          79.375000000000000000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 3
        Top = 50
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          132.291666666666700000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 3
        Top = 70
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          185.208333333333300000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 690
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1825.625000000000000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 350
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          926.041666666666800000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 550
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1455.208333333333000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QUserDate: TQRLabel
        Left = 557
        Top = 33
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          87.312500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#26178#38291
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
      object QUserName: TQRLabel
        Left = 153
        Top = 33
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          87.312500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QRShape38: TQRShape
        Left = 3
        Top = 10
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          26.458333333333330000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object DongGoiQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      ''
      'select'
      
        'max(case when DAY(NgayThucHien)=1 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC1,'
      
        'max(case when DAY(NgayThucHien)=1 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB1,'
      
        'max(case when DAY(NgayThucHien)=1 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF1,'
      
        'max(case when DAY(NgayThucHien)=2 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC2,'
      
        'max(case when DAY(NgayThucHien)=2 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB2,'
      
        'max(case when DAY(NgayThucHien)=2 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF2,'
      
        'max(case when DAY(NgayThucHien)=3 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC3,'
      
        'max(case when DAY(NgayThucHien)=3 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB3,'
      
        'max(case when DAY(NgayThucHien)=3 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF3,'
      
        'max(case when DAY(NgayThucHien)=4 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC4,'
      
        'max(case when DAY(NgayThucHien)=4 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB4,'
      
        'max(case when DAY(NgayThucHien)=4 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF4,'
      
        'max(case when DAY(NgayThucHien)=5 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC5,'
      
        'max(case when DAY(NgayThucHien)=5 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB5,'
      
        'max(case when DAY(NgayThucHien)=5 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF5,'
      
        'max(case when DAY(NgayThucHien)=6 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC6,'
      
        'max(case when DAY(NgayThucHien)=6 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB6,'
      
        'max(case when DAY(NgayThucHien)=6 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF6,'
      
        'max(case when DAY(NgayThucHien)=7 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC7,'
      
        'max(case when DAY(NgayThucHien)=7 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB7,'
      
        'max(case when DAY(NgayThucHien)=7 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF7,'
      
        'max(case when DAY(NgayThucHien)=8 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC8,'
      
        'max(case when DAY(NgayThucHien)=8 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB8,'
      
        'max(case when DAY(NgayThucHien)=8 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF8,'
      
        'max(case when DAY(NgayThucHien)=9 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC9,'
      
        'max(case when DAY(NgayThucHien)=9 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB9,'
      
        'max(case when DAY(NgayThucHien)=9 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF9,'
      
        'max(case when DAY(NgayThucHien)=10 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC10,'
      
        'max(case when DAY(NgayThucHien)=10 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB10,'
      
        'max(case when DAY(NgayThucHien)=10 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF10,'
      
        'max(case when DAY(NgayThucHien)=11 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC11,'
      
        'max(case when DAY(NgayThucHien)=11 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB11,'
      
        'max(case when DAY(NgayThucHien)=11 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF11,'
      
        'max(case when DAY(NgayThucHien)=12 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC12,'
      
        'max(case when DAY(NgayThucHien)=12 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB12,'
      
        'max(case when DAY(NgayThucHien)=12 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF12,'
      
        'max(case when DAY(NgayThucHien)=13 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC13,'
      
        'max(case when DAY(NgayThucHien)=13 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB13,'
      
        'max(case when DAY(NgayThucHien)=13 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF13,'
      
        'max(case when DAY(NgayThucHien)=14 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC14,'
      
        'max(case when DAY(NgayThucHien)=14 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB14,'
      
        'max(case when DAY(NgayThucHien)=14 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF14,'
      
        'max(case when DAY(NgayThucHien)=15 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC15,'
      
        'max(case when DAY(NgayThucHien)=15 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB15,'
      
        'max(case when DAY(NgayThucHien)=15 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF15,'
      
        'max(case when DAY(NgayThucHien)=16 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC16,'
      
        'max(case when DAY(NgayThucHien)=16 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB16,'
      
        'max(case when DAY(NgayThucHien)=16 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF16,'
      
        'max(case when DAY(NgayThucHien)=17 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC17,'
      
        'max(case when DAY(NgayThucHien)=17 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB17,'
      
        'max(case when DAY(NgayThucHien)=17 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF17,'
      
        'max(case when DAY(NgayThucHien)=18 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC18,'
      
        'max(case when DAY(NgayThucHien)=18 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB18,'
      
        'max(case when DAY(NgayThucHien)=18 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF18,'
      
        'max(case when DAY(NgayThucHien)=19 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC19,'
      
        'max(case when DAY(NgayThucHien)=19 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB19,'
      
        'max(case when DAY(NgayThucHien)=19 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF19,'
      
        'max(case when DAY(NgayThucHien)=20 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC20,'
      
        'max(case when DAY(NgayThucHien)=20 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB20,'
      
        'max(case when DAY(NgayThucHien)=20 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF20,'
      
        'max(case when DAY(NgayThucHien)=21 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC21,'
      
        'max(case when DAY(NgayThucHien)=21 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB21,'
      
        'max(case when DAY(NgayThucHien)=21 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF21,'
      
        'max(case when DAY(NgayThucHien)=22 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC22,'
      
        'max(case when DAY(NgayThucHien)=22 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB22,'
      
        'max(case when DAY(NgayThucHien)=22 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF22,'
      
        'max(case when DAY(NgayThucHien)=23 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC23,'
      
        'max(case when DAY(NgayThucHien)=23 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB23,'
      
        'max(case when DAY(NgayThucHien)=23 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF23,'
      
        'max(case when DAY(NgayThucHien)=24 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC24,'
      
        'max(case when DAY(NgayThucHien)=24 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB24,'
      
        'max(case when DAY(NgayThucHien)=24 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF24,'
      
        'max(case when DAY(NgayThucHien)=25 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC25,'
      
        'max(case when DAY(NgayThucHien)=25 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB25,'
      
        'max(case when DAY(NgayThucHien)=25 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF25,'
      
        'max(case when DAY(NgayThucHien)=26 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC26,'
      
        'max(case when DAY(NgayThucHien)=26 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB26,'
      
        'max(case when DAY(NgayThucHien)=26 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF26,'
      
        'max(case when DAY(NgayThucHien)=27 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC27,'
      
        'max(case when DAY(NgayThucHien)=27 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB27,'
      
        'max(case when DAY(NgayThucHien)=27 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF27,'
      
        'max(case when DAY(NgayThucHien)=28 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC28,'
      
        'max(case when DAY(NgayThucHien)=28 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB28,'
      
        'max(case when DAY(NgayThucHien)=28 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF28,'
      
        'max(case when DAY(NgayThucHien)=29 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC29,'
      
        'max(case when DAY(NgayThucHien)=29 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB29,'
      
        'max(case when DAY(NgayThucHien)=29 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF29,'
      
        'max(case when DAY(NgayThucHien)=30 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC30,'
      
        'max(case when DAY(NgayThucHien)=30 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB30,'
      
        'max(case when DAY(NgayThucHien)=30 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF30,'
      
        'max(case when DAY(NgayThucHien)=31 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC31,'
      
        'max(case when DAY(NgayThucHien)=31 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB31,'
      
        'max(case when DAY(NgayThucHien)=31 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF31,'
      
        '  max(a.USERID) USERID,max(a.CFMID) CFMID, max(Busers.USERNAME) ' +
        'USERNAME,'
      
        '  max(Busers_CFM.USERNAME) UserCFM, max(Busers_CFM1.USERNAME) Us' +
        'erCFM1,'
      
        '  max(a.UserDate) as UserDate, max(a.CFMDate) CFMDate, max(a.CFM' +
        'Date1) CFMDate1'
      'from ITPC_DongGoiDuLieu a'
      'left join LIY_ERP.dbo.Busers Busers on a.USERID=Busers.USERID'
      
        'left join LIY_ERP.dbo.Busers Busers_CFM on a.CFMID=Busers_CFM.US' +
        'ERID'
      
        'left join LIY_ERP.dbo.Busers Busers_CFM1 on a.CFMID1=Busers_CFM1' +
        '.USERID'
      'where MONTH(NgayThucHien)='#39'05'#39' and YEAR(NgayThucHien)='#39'2023'#39)
    Left = 80
    Top = 17
    object DongGoiQryTC1: TStringField
      FieldName = 'TC1'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB1: TStringField
      FieldName = 'TB1'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF1: TStringField
      FieldName = 'TF1'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC2: TStringField
      FieldName = 'TC2'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB2: TStringField
      FieldName = 'TB2'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF2: TStringField
      FieldName = 'TF2'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC3: TStringField
      FieldName = 'TC3'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB3: TStringField
      FieldName = 'TB3'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF3: TStringField
      FieldName = 'TF3'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC4: TStringField
      FieldName = 'TC4'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB4: TStringField
      FieldName = 'TB4'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF4: TStringField
      FieldName = 'TF4'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC5: TStringField
      FieldName = 'TC5'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB5: TStringField
      FieldName = 'TB5'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF5: TStringField
      FieldName = 'TF5'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC6: TStringField
      FieldName = 'TC6'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB6: TStringField
      FieldName = 'TB6'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF6: TStringField
      FieldName = 'TF6'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC7: TStringField
      FieldName = 'TC7'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB7: TStringField
      FieldName = 'TB7'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF7: TStringField
      FieldName = 'TF7'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC8: TStringField
      FieldName = 'TC8'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB8: TStringField
      FieldName = 'TB8'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF8: TStringField
      FieldName = 'TF8'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC9: TStringField
      FieldName = 'TC9'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB9: TStringField
      FieldName = 'TB9'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF9: TStringField
      FieldName = 'TF9'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC10: TStringField
      FieldName = 'TC10'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB10: TStringField
      FieldName = 'TB10'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF10: TStringField
      FieldName = 'TF10'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC11: TStringField
      FieldName = 'TC11'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB11: TStringField
      FieldName = 'TB11'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF11: TStringField
      FieldName = 'TF11'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC12: TStringField
      FieldName = 'TC12'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB12: TStringField
      FieldName = 'TB12'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF12: TStringField
      FieldName = 'TF12'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC13: TStringField
      FieldName = 'TC13'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB13: TStringField
      FieldName = 'TB13'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF13: TStringField
      FieldName = 'TF13'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC14: TStringField
      FieldName = 'TC14'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB14: TStringField
      FieldName = 'TB14'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF14: TStringField
      FieldName = 'TF14'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC15: TStringField
      FieldName = 'TC15'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB15: TStringField
      FieldName = 'TB15'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF15: TStringField
      FieldName = 'TF15'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC16: TStringField
      FieldName = 'TC16'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB16: TStringField
      FieldName = 'TB16'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF16: TStringField
      FieldName = 'TF16'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC17: TStringField
      FieldName = 'TC17'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB17: TStringField
      FieldName = 'TB17'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF17: TStringField
      FieldName = 'TF17'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC18: TStringField
      FieldName = 'TC18'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB18: TStringField
      FieldName = 'TB18'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF18: TStringField
      FieldName = 'TF18'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC19: TStringField
      FieldName = 'TC19'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB19: TStringField
      FieldName = 'TB19'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF19: TStringField
      FieldName = 'TF19'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC20: TStringField
      FieldName = 'TC20'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB20: TStringField
      FieldName = 'TB20'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF20: TStringField
      FieldName = 'TF20'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC21: TStringField
      FieldName = 'TC21'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB21: TStringField
      FieldName = 'TB21'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF21: TStringField
      FieldName = 'TF21'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC22: TStringField
      FieldName = 'TC22'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB22: TStringField
      FieldName = 'TB22'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF22: TStringField
      FieldName = 'TF22'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC23: TStringField
      FieldName = 'TC23'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB23: TStringField
      FieldName = 'TB23'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF23: TStringField
      FieldName = 'TF23'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC24: TStringField
      FieldName = 'TC24'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB24: TStringField
      FieldName = 'TB24'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF24: TStringField
      FieldName = 'TF24'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC25: TStringField
      FieldName = 'TC25'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB25: TStringField
      FieldName = 'TB25'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF25: TStringField
      FieldName = 'TF25'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC26: TStringField
      FieldName = 'TC26'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB26: TStringField
      FieldName = 'TB26'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF26: TStringField
      FieldName = 'TF26'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC27: TStringField
      FieldName = 'TC27'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB27: TStringField
      FieldName = 'TB27'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF27: TStringField
      FieldName = 'TF27'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC28: TStringField
      FieldName = 'TC28'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB28: TStringField
      FieldName = 'TB28'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF28: TStringField
      FieldName = 'TF28'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC29: TStringField
      FieldName = 'TC29'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB29: TStringField
      FieldName = 'TB29'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF29: TStringField
      FieldName = 'TF29'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC30: TStringField
      FieldName = 'TC30'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB30: TStringField
      FieldName = 'TB30'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF30: TStringField
      FieldName = 'TF30'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryTC31: TStringField
      FieldName = 'TC31'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTB31: TStringField
      FieldName = 'TB31'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryTF31: TStringField
      FieldName = 'TF31'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryUSERID: TStringField
      FieldName = 'USERID'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryCFMID: TStringField
      FieldName = 'CFMID'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryUSERNAME: TStringField
      FieldName = 'USERNAME'
      ReadOnly = True
      Size = 30
    end
    object DongGoiQryUserCFM: TStringField
      FieldName = 'UserCFM'
      ReadOnly = True
      Size = 30
    end
    object DongGoiQryUserCFM1: TStringField
      FieldName = 'UserCFM1'
      ReadOnly = True
      Size = 30
    end
    object DongGoiQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      ReadOnly = True
    end
    object DongGoiQryCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      ReadOnly = True
    end
    object DongGoiQryCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      ReadOnly = True
    end
  end
  object DS1: TDataSource
    DataSet = DongGoiQry
    Left = 80
    Top = 64
  end
  object TempQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 120
    Top = 17
  end
end
