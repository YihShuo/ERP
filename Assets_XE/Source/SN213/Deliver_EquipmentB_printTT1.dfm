object Deliver_EquipmentB_printTT: TDeliver_EquipmentB_printTT
  Left = 532
  Top = 259
  Caption = 'Deliver_EquipmentB_printTT'
  ClientHeight = 699
  ClientWidth = 835
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
    Left = 33
    Top = -72
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = KCLLSQty
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
      Height = 300
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
        793.750000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 289
        Top = 1
        Width = 185
        Height = 23
        Size.Values = (
          60.854166666666670000
          764.645833333333300000
          2.645833333333333000
          489.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'PHI'#7870'U XIN B'#193'O PH'#7870
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
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
      object QRDBText20: TQRDBText
        Left = 208
        Top = 106
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          550.333333333333300000
          280.458333333333300000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentB.DelMas
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
      object QRDBText6: TQRDBText
        Left = 208
        Top = 145
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          550.333333333333300000
          383.645833333333300000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentB.DelMas
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
      object QRDBText7: TQRDBText
        Left = 519
        Top = 106
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          1373.187500000000000000
          280.458333333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Deliver_EquipmentB.DelMas
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
      object QRLabel10: TQRLabel
        Left = 329
        Top = 30
        Width = 106
        Height = 23
        Size.Values = (
          60.854166666666670000
          870.479166666666700000
          79.375000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #22577#24290#30003#35531#21934
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 90
        Width = 755
        Height = 9
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          238.125000000000000000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 93
        Width = 2
        Height = 200
        Size.Values = (
          529.166666666666700000
          0.000000000000000000
          246.062500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 130
        Width = 755
        Height = 9
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          343.958333333333300000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 753
        Top = 95
        Width = 2
        Height = 200
        Size.Values = (
          529.166666666666700000
          1992.312500000000000000
          251.354166666666700000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 376
        Top = 93
        Width = 2
        Height = 80
        Size.Values = (
          211.666666666666700000
          994.833333333333200000
          246.062500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 8
        Top = 106
        Width = 170
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          280.458333333333300000
          449.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y xin b'#225'o ph'#7871' '#30003#35531#26085#26399
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
        Left = 8
        Top = 145
        Width = 177
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          383.645833333333300000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' xin b'#225'o ph'#7871' '#30003#35531#21934#20301
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
        Left = 384
        Top = 145
        Width = 111
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          383.645833333333300000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#432#7901'i xin '#30003#35531#20154
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
        Left = 384
        Top = 106
        Width = 108
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          280.458333333333300000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#227' s'#7889' phi'#7871'u '#32232#34399
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
      object QRShape11: TQRShape
        Left = 200
        Top = 93
        Width = 2
        Height = 80
        Size.Values = (
          211.666666666666700000
          529.166666666666700000
          246.062500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 511
        Top = 93
        Width = 2
        Height = 80
        Size.Values = (
          211.666666666666700000
          1352.020833333333000000
          246.062500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 519
        Top = 145
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          1373.187500000000000000
          383.645833333333300000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qry_id
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
      object QRShape2: TQRShape
        Left = 0
        Top = 170
        Width = 755
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          449.791666666666700000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 178
        Width = 147
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          470.958333333333300000
          388.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Lo'#7841'i b'#225'o ph'#7871' '#22577#24290#39006#21029':'
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
      object LB2: TQRLabel
        Left = 8
        Top = 206
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          545.041666666666700000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRLabel11: TQRLabel
        Left = 31
        Top = 206
        Width = 115
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          545.041666666666700000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Khu'#244'n, gi'#225' '#27169#27835#20855
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
      object LB3: TQRLabel
        Left = 8
        Top = 233
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          616.479166666666800000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRLabel15: TQRLabel
        Left = 407
        Top = 233
        Width = 192
        Height = 17
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          616.479166666666700000
          508.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'H'#224'ng t'#7893'ng c'#244'ng v'#7909' '#32317#24037#21209#29992#21697
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
      object LB5: TQRLabel
        Left = 384
        Top = 233
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          616.479166666666800000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object LB4: TQRLabel
        Left = 384
        Top = 206
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          545.041666666666700000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRLabel21: TQRLabel
        Left = 407
        Top = 206
        Width = 222
        Height = 17
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          545.041666666666700000
          587.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D'#7909'ng c'#7909' '#273'o l'#432#7901'ng '#37327#35215#20736#22120#12289#27298#20855
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
      object QRLabel17: TQRLabel
        Left = 8
        Top = 256
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          677.333333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRLabel12: TQRLabel
        Left = 31
        Top = 233
        Width = 157
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          616.479166666666700000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#224'i s'#7843'n c'#7889' '#273#7883'nh '#22266#23450#36039#29986
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
      object QRLabel19: TQRLabel
        Left = 31
        Top = 256
        Width = 171
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          677.333333333333300000
          452.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#244'ng c'#7909', d'#7909'ng c'#7909' '#24037#20855#29992#20855
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
      object QRLabel25: TQRLabel
        Left = 384
        Top = 256
        Width = 17
        Height = 17
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          677.333333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRLabel27: TQRLabel
        Left = 407
        Top = 256
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          677.333333333333300000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Kh'#225'c '#20854#20182
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
      Top = 319
      Width = 756
      Height = 65
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText11: TQRDBText
        Left = 110
        Top = 2
        Width = 265
        Height = 32
        Size.Values = (
          84.666666666666680000
          291.041666666666700000
          5.291666666666667000
          701.145833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCLLSQry
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
      object QRDBText2: TQRDBText
        Left = 110
        Top = 35
        Width = 265
        Height = 26
        Size.Values = (
          68.791666666666680000
          291.041666666666700000
          92.604166666666680000
          701.145833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCLLSQry
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
        Left = 510
        Top = 10
        Width = 240
        Height = 45
        Size.Values = (
          119.062500000000000000
          1349.375000000000000000
          26.458333333333330000
          635.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCLLSQry
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
      object QRShape25: TQRShape
        Left = 753
        Top = -7
        Width = 2
        Size.Values = (
          171.979166666666700000
          1992.312500000000000000
          -18.520833333333330000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 0
        Top = -1
        Width = 2
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          -2.645833333333333000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 8
        Top = 14
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          37.041666666666670000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#234'n ha'#768'ng '#21697#21517
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
        Left = 386
        Top = 14
        Width = 114
        Height = 21
        Size.Values = (
          55.562500000000000000
          1021.291666666667000000
          37.041666666666670000
          301.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'M'#227' h'#224'ng '#22411#34399
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
      object QRShape5: TQRShape
        Left = 106
        Top = 1
        Width = 1
        Size.Values = (
          171.979166666666700000
          280.458333333333300000
          2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 504
        Top = 0
        Width = 1
        Size.Values = (
          171.979166666666700000
          1333.500000000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 377
        Top = 0
        Width = 1
        Size.Values = (
          171.979166666666700000
          997.479166666666800000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 841
      Width = 756
      Height = 33
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRISO: TQRLabel
        Left = 657
        Top = 8
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1738.312500000000000000
          21.166666666666670000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-DCC-054E'
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
      Top = 384
      Width = 756
      Height = 457
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1209.145833333333000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr5: TQRExpr
        Left = 775
        Top = 5
        Width = 49
        Height = 16
        Size.Values = (
          42.333333333333330000
          2050.520833333333000000
          13.229166666666670000
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
      object QRShape14: TQRShape
        Left = 816
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2159.000000000000000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 865
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2288.645833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 939
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2484.437500000000000000
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
      object QRShape20: TQRShape
        Left = 775
        Top = 0
        Width = 8
        Height = 33
        Size.Values = (
          87.312500000000000000
          2050.520833333333000000
          0.000000000000000000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 0
        Top = 41
        Width = 755
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          108.479166666666700000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 376
        Top = -5
        Width = 2
        Height = 384
        Size.Values = (
          1016.000000000000000000
          994.833333333333300000
          -13.229166666666670000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 106
        Top = 49
        Width = 168
        Height = 34
        Size.Values = (
          89.958333333333330000
          280.458333333333300000
          129.645833333333300000
          444.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nguy'#234'n nh'#226'n b'#225'o ph'#7871' '#22577#24290#21407#22240' '
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
      object QRLabel23: TQRLabel
        Left = 480
        Top = 47
        Width = 169
        Height = 35
        Size.Values = (
          92.604166666666670000
          1270.000000000000000000
          124.354166666666700000
          447.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'K'#7871't qu'#7843' gi'#225'm '#273#7883'nh '#37969#23450#32080#26524
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
      object QRShape21: TQRShape
        Left = 0
        Top = 306
        Width = 755
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          809.625000000000000000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 0
        Top = 377
        Width = 755
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          997.479166666666700000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel24: TQRLabel
        Left = 85
        Top = 322
        Width = 218
        Height = 35
        Size.Values = (
          92.604166666666670000
          224.895833333333300000
          851.958333333333300000
          576.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ban Gi'#225'm '#272#7889'c ph'#234' duy'#7879't '#20027#31649#37096#25209#31034
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
      object QRShape26: TQRShape
        Left = 750
        Top = -19
        Width = 8
        Height = 400
        Size.Values = (
          1058.333333333333000000
          1984.375000000000000000
          -50.270833333333330000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 0
        Top = -22
        Width = 2
        Height = 400
        Size.Values = (
          1058.333333333333000000
          0.000000000000000000
          -58.208333333333330000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 0
        Top = 385
        Width = 705
        Height = 35
        Size.Values = (
          92.604166666666670000
          0.000000000000000000
          1018.645833333333000000
          1865.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 
          'Ghi ch'#250' '#20633#35387': S'#7917' d'#7909'ng cho khu'#244'n, gi'#225', t'#224'i s'#7843'n c'#7889' '#273#7883'nh, d'#7909'ng c'#7909' '#273'o ' +
          'l'#432#7901'ng'#8230'v'#224' c'#225'i kh'#225'c '#27169#27835#20855#65292#22266#23450#36039#29986#65292#37327#35215#20736#22120#12289#27298#20855'...'#20854#20182#20351#29992
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
        Left = 0
        Top = 89
        Width = 755
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          235.479166666666700000
          1997.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 14
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          37.041666666666670000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Qui c'#225'ch '#35215#26684
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
      object QRLabel13: TQRLabel
        Left = 389
        Top = 13
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          1029.229166666667000000
          34.395833333333330000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7889' l'#432#7907'ng '#25976#37327
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
      object QRShape23: TQRShape
        Left = 504
        Top = -14
        Width = 1
        Height = 56
        Size.Values = (
          148.166666666666700000
          1333.500000000000000000
          -37.041666666666670000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText4: TQRDBText
        Left = 110
        Top = 5
        Width = 265
        Height = 32
        Size.Values = (
          84.666666666666680000
          291.041666666666700000
          13.229166666666670000
          701.145833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCLLSQry
        DataField = 'LSBH'
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
      object QRDBText5: TQRDBText
        Left = 510
        Top = 10
        Width = 234
        Height = 25
        Size.Values = (
          66.145833333333320000
          1349.375000000000000000
          26.458333333333330000
          619.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCLLSQty
        DataField = 'Qty'
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
      object QRDBText8: TQRDBText
        Left = 8
        Top = 112
        Width = 362
        Height = 121
        Size.Values = (
          320.145833333333300000
          21.166666666666670000
          296.333333333333300000
          957.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = KCLLSQty
        DataField = 'Reason'
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
      object QRShape3: TQRShape
        Left = 106
        Top = -19
        Width = 1
        Height = 60
        Size.Values = (
          158.750000000000000000
          280.458333333333300000
          -50.270833333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 384
        Top = 97
        Width = 145
        Height = 24
        Size.Values = (
          63.500000000000000000
          1016.000000000000000000
          256.645833333333300000
          383.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #272#417'n v'#7883' xin '#30003#35531#21934#20301':'
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
        Left = 384
        Top = 223
        Width = 225
        Height = 18
        Size.Values = (
          47.625000000000000000
          1016.000000000000000000
          590.020833333333300000
          595.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Duy'#7879't b'#7897' ph'#7853'n li'#234'n quan '#26371#31805#21934#20301':'
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
        Left = 8
        Top = 283
        Width = 194
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          748.770833333333300000
          513.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#432#7901'i xin k'#253' t'#234'n '#30003#35531#20154#31805#21517':'
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
        Left = 376
        Top = 215
        Width = 379
        Height = 2
        Size.Values = (
          5.291666666666667000
          994.833333333333300000
          568.854166666666700000
          1002.770833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object KCLLSQry: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentB.DS1
    SQL.Strings = (
      
        'select   CAST(substring (( select '#39', '#39' + IsNull(TSCD_SB.VWPM,CLZ' +
        'L.YWPM)'
      
        #9#9#9#9#9#9'from TSCD_KCBBS left join TSCD_KCBB on TSCD_KCBBS.LLNO=TSC' +
        'D_KCBB.LLNO'
      #9#9#9#9#9#9'left join TSCD on TSCD.TSID=TSCD_KCBBS.TSID'
      #9#9#9#9#9#9'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      #9#9#9#9#9#9'left join CLZL on CLZL.cldh=TSCD.SBBH'
      #9#9#9#9#9#9'where TSCD_KCBBS.LLNO=:LLNO'
      #9#9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000))  as VWPM'
      
        #9#9',CAST(substring (( select '#39', '#39' + IsNull(TSCD_SB.ZWPM,CLZL.ZWPM' +
        ')'
      
        #9#9#9#9#9#9'from TSCD_KCBBS left join TSCD_KCBB on TSCD_KCBBS.LLNO=TSC' +
        'D_KCBB.LLNO'
      #9#9#9#9#9#9'left join TSCD on TSCD.TSID=TSCD_KCBBS.TSID'
      #9#9#9#9#9#9'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      #9#9#9#9#9#9'left join CLZL on CLZL.cldh=TSCD.SBBH'
      #9#9#9#9#9#9'where TSCD_KCBBS.LLNO=:LLNO'
      #9#9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000))  as ZWPM'
      
        '    ,CAST(substring (( select '#39', '#39' + case when left(TSCD.LABEL_T' +
        'ag,1)='#39'A'#39' then TSCD.LABEL_Tag else TSCD.TSBH end'
      
        #9#9#9#9#9#9'from TSCD_KCBBS left join TSCD_KCBB on TSCD_KCBBS.LLNO=TSC' +
        'D_KCBB.LLNO'
      #9#9#9#9#9#9'left join TSCD on TSCD.TSID=TSCD_KCBBS.TSID'
      #9#9#9#9#9#9'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      #9#9#9#9#9#9'left join CLZL on CLZL.cldh=TSCD.SBBH'
      #9#9#9#9#9#9'where TSCD_KCBBS.LLNO=:LLNO'
      #9#9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000))  as TSBH'
      
        #9#9',CAST(substring (( select  case when TSCD_SB.LSBH is  not null' +
        ' then '#39', '#39' +  TSCD_SB.LSBH else '#39#39' end'
      
        #9#9#9#9#9#9'from TSCD_KCBBS left join TSCD_KCBB on TSCD_KCBBS.LLNO=TSC' +
        'D_KCBB.LLNO'
      #9#9#9#9#9#9'left join TSCD on TSCD.TSID=TSCD_KCBBS.TSID'
      #9#9#9#9#9#9'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      #9#9#9#9#9#9'left join CLZL on CLZL.cldh=TSCD.SBBH'
      #9#9#9#9#9#9'where TSCD_KCBBS.LLNO=:LLNO'
      #9#9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000))  as LSBH')
    Left = 77
    Top = 45
    ParamData = <
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
      end
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
      end>
    object KCLLSQryVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
    object KCLLSQryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 255
    end
    object KCLLSQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 255
    end
    object KCLLSQryLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 255
    end
  end
  object KCLLSQty: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentB.DS1
    SQL.Strings = (
      'select max(TSCD_KCBBS.column3) as Reason,sum(qty) as Qty'
      'from TSCD_KCBBS'
      'where LLNO=:LLNO')
    Left = 141
    Top = 45
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object KCLLSQtyReason: TStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 100
    end
    object KCLLSQtyQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object qry_id: TQuery
    DatabaseName = 'DB'
    DataSource = Deliver_EquipmentB.DS1
    SQL.Strings = (
      'select USERNAME'
      'from Busers'
      'Where Userid=:USERID')
    Left = 216
    Top = 45
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'USERID'
        ParamType = ptUnknown
        Size = 11
      end>
    object qry_idUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'DB.Busers.USERNAME'
      FixedChar = True
      Size = 30
    end
  end
end
