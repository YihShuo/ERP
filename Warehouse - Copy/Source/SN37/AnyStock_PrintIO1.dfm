object AnyStock_PrintIO: TAnyStock_PrintIO
  Left = 608
  Top = 262
  Width = 975
  Height = 603
  Caption = 'AnyStock_PrintIO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 36
    Top = 18
    Width = 559
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Frame.Width = 0
    DataSet = CLZLQry
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
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
    Page.PaperSize = A5
    Page.Values = (
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      1480.000000000000000000
      50.000000000000000000
      50.000000000000000000
      20.000000000000000000)
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
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object ColumnHeaderBand2: TQRBand
      Left = 19
      Top = 65
      Width = 521
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2.645833333333333000
        1378.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
    object PageHeaderBand2: TQRBand
      Left = 19
      Top = 19
      Width = 521
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        121.708333333333300000
        1378.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel60: TQRLabel
        Left = 94
        Top = 4
        Width = 349
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          248.708333333333300000
          10.583333333333330000
          923.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BANG THEO DOI VAT TU NHAP XUAT TON'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 142
        Top = 20
        Width = 225
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          375.708333333333300000
          52.916666666666670000
          595.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26448#26009#36914#20986#24235#23384#21345
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 2
        Width = 81
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          21.166666666666670000
          5.291666666666667000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Thang kiem ke '#30436#40670#26376#20221':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object MonthQRLabel: TQRLabel
        Left = 25
        Top = 31
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          66.145833333333330000
          82.020833333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2022-06'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 66
      Width = 521
      Height = 95
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = True
      ParentFont = False
      Size.Values = (
        251.354166666666700000
        1378.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel9: TQRLabel
        Left = 8
        Top = 3
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ten Hang'#21697#21517':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 86
        Top = 2
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          227.541666666666700000
          5.291666666666667000
          283.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CLZLQry
        DataField = 'CLBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 4
        Top = 22
        Width = 508
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333330000
          10.583333333333330000
          58.208333333333330000
          1344.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CLZLQry
        DataField = 'YWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape8: TQRShape
        Left = 80
        Top = 0
        Width = 9
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          211.666666666666700000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRHRule1: TQRHRule
        Left = 0
        Top = 18
        Width = 521
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666670000
          0.000000000000000000
          47.625000000000000000
          1378.479166666667000000)
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 207
        Top = 3
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          7.937500000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Don vi tinh'#21934#20301':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape6: TQRShape
        Left = 199
        Top = 0
        Width = 9
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          526.520833333333300000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 284
        Top = 0
        Width = 9
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          751.416666666666700000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 294
        Top = 2
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          777.875000000000000000
          5.291666666666667000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CLZLQry
        DataField = 'DWBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 367
        Top = 3
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          971.020833333333300000
          7.937500000000000000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ma Ke'#36008#20729':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 359
        Top = 0
        Width = 9
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          949.854166666666700000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 428
        Top = 0
        Width = 9
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1132.416666666667000000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText4: TQRDBText
        Left = 438
        Top = 2
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1158.875000000000000000
          5.291666666666667000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = CLZLQry
        DataField = 'KCBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRHRule2: TQRHRule
        Left = 0
        Top = 58
        Width = 521
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333330000
          0.000000000000000000
          153.458333333333300000
          1378.479166666667000000)
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 6
        Top = 63
        Width = 48
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          15.875000000000000000
          166.687500000000000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Ngay '#26085#26399
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 59
        Top = 61
        Width = 9
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666670000
          156.104166666666700000
          161.395833333333300000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 66
        Top = 63
        Width = 87
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          174.625000000000000000
          166.687500000000000000
          230.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'So Phieu Nhap '#20837#24235#21934#34399
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 157
        Top = 61
        Width = 9
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333330000
          415.395833333333300000
          161.395833333333300000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 243
        Top = 61
        Width = 9
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          642.937500000000000000
          161.395833333333300000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 428
        Top = 63
        Width = 89
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          1132.416666666667000000
          166.687500000000000000
          235.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nguoi cap ky ten '#31805#21517
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 166
        Top = 63
        Width = 75
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          439.208333333333300000
          166.687500000000000000
          198.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SL nhap kho '#20837#24235#25976#37327
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 251
        Top = 63
        Width = 72
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          664.104166666666700000
          166.687500000000000000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SL Xuat kho '#20986#24235#25976#37327
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 325
        Top = 61
        Width = 9
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          859.895833333333300000
          161.395833333333300000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 336
        Top = 63
        Width = 72
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          889.000000000000000000
          166.687500000000000000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SL ton kho '#23526#38555#25976
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 418
        Top = 61
        Width = 9
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1105.958333333333000000
          161.395833333333300000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRSubDetail: TQRSubDetail
      Left = 19
      Top = 161
      Width = 521
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        1378.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = MatIOQry
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape33: TQRShape
        Left = 59
        Top = 0
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          156.104166666666700000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 157
        Top = 0
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          415.395833333333300000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 418
        Top = -1
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1105.958333333333000000
          -2.645833333333333000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 243
        Top = 0
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          642.937500000000000000
          0.000000000000000000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 325
        Top = -1
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          859.895833333333300000
          -2.645833333333333000
          23.812500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 3
        Top = 1
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = MatIOQry
        DataField = 'UserDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRDBText6: TQRDBText
        Left = 83
        Top = 1
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          219.604166666666700000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = MatIOQry
        DataField = 'RKNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRDBText8: TQRDBText
        Left = 178
        Top = 1
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          470.958333333333300000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = MatIOQry
        DataField = 'RKQty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRDBText9: TQRDBText
        Left = 259
        Top = 1
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          685.270833333333300000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = MatIOQry
        DataField = 'LLQty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRDBText10: TQRDBText
        Left = 338
        Top = 1
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          894.291666666666700000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = MatIOQry
        DataField = 'SumQty1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
    end
  end
  object CLZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CLBHList.*,CLZL.YWPM,CLZL.DWBH from ('
      'Select CLBH,Max(KCBH) as KCBH from ('
      'select KCCLMONTH.CLBH,KCZLS.KCBH '
      'from KCCLMONTH  '
      
        'Left join KCZLS on KCZLS.CLBH=KCCLMONTH.CLBH and KCZLS.CKBH=KCCL' +
        'MONTH.CKBH '
      'where 1=1 and QTY > 0'
      'and KCYear = '#39'2022'#39
      'and KCMonth = '#39'06'#39
      'and KCZLS.KCBH like '#39'A52%'#39
      'and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39') '
      'and KCCLMONTH.CKBH<>'#39'CBY'#39
      'Union all '
      'select KCRKS.CLBH,KCZLS.KCBH '
      'from KCRKS '
      'left join KCRK on KCRK.RKNO = KCRKS.RKNO '
      
        'Left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKB' +
        'H '
      
        'where KCRKS.Qty>0 and KCRK.USERDATE between '#39'2022/07/01'#39' and '#39'20' +
        '22/07/31'#39' '
      'and KCZLS.KCBH like '#39'A52%'#39
      'and KCRK.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39') '
      'and KCRK.CKBH<>'#39'CBY'#39
      'Union all '
      'select JGZLS.CLBH,KCZLS.KCBH '
      'from JGZLS '
      'left join JGZL on JGZL.JGNO = JGZLS.JGNO  '
      
        'Left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CKB' +
        'H '
      
        'where JGZL.CFMID1<>'#39'NO'#39' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZLS.Qt' +
        'y>0 '
      '      and JGZL.CFMDate1 between '#39'2022/07/01'#39' and '#39'2022/07/31'#39'  '
      'and KCZLS.KCBH like '#39'A52%'#39
      'and JGZL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39') '
      'and JGZL.CKBH<>'#39'CBY'#39
      'Union all '
      'select KCLLS.CLBH,KCZLS.KCBH '
      'from KCLLS '
      'left join KCLL on KCLL.LLNO = KCLLS.LLNO '
      
        'Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H '
      
        'where KCLL.CFMID<>'#39'NO'#39' and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLLS.Qty' +
        '>0 and KCLL.CFMDate between '#39'2022/07/01'#39' and '#39'2022/07/31'#39' '
      'and KCZLS.KCBH like '#39'A52%'#39
      'and KCLL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39') '
      'and KCLL.CKBH<>'#39'CBY'#39
      'Union all '
      'select KCLLS.CLBH,KCZLS.KCBH '
      'from KCLLS '
      'left join KCLL on KCLL.LLNO = KCLLS.LLNO '
      
        'Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H '
      
        'where KCLL.CFMID<>'#39'NO'#39' and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLLS.Qty>' +
        '0 and KCLL.CFMDate between '#39'2022/07/01'#39' and '#39'2022/07/31'#39' '
      'and KCZLS.KCBH like '#39'A52%'#39
      'and KCLL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39' ) '
      'and KCLL.CKBH<>'#39'CBY'#39
      ') CLBHList'
      'Group by CLBH  ) CLBHList'
      'left join CLZL on CLZL.CLDH=CLBHList.CLBH')
    Left = 124
    Top = 261
    object CLZLQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CLZLQryKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object CLZLQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CLZLQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object MatIOQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      'if object_id('#39'tempdb..#tmpDCAccumW'#39') is not null'
      'begin   drop table #tmpDCAccumW end '
      
        'Select DataList.*,row_number() over( order by   Convert(smalldat' +
        'etime,convert(varchar,USERDATE,111)) asc) AS RN into #tmpDCAccum' +
        'W from ('
      
        'Select Convert(smalldatetime,convert(varchar,USERDATE,111)) as U' +
        'serDate,RKNO,LLNO,CLBH,Sum(IsNull(RKQty,0.0)) as RKQty,Sum(IsNul' +
        'l(LLQty,0.0)) LLQty,Sum(IsNull(LastQty,0.0))  LastQty,SB '
      'from ('
      
        #9'select '#39'2022-06'#39' as RKNO,null as LLNO,KCCLMONTH.CKBH,KCCLMONTH.' +
        'HGLB, KCCLMONTH.CLBH,null as RKQty,null as LLQty,KCCLMONTH.Qty a' +
        's LastQty,'#39'2022-06-30'#39' as UserDate,'#39'LastQty'#39' as SB'
      #9'from KCCLMONTH_HG  KCCLMONTH'
      
        #9'Left join KCZLS on KCZLS.CLBH=KCCLMONTH.CLBH and KCZLS.CKBH=KCC' +
        'LMONTH.CKBH '
      #9'where 1=1 and QTY > 0'
      #9'and KCYear = '#39'2022'#39
      #9'and KCMonth = '#39'06'#39
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCCLMONTH.CLBH='#39'F180008397'#39
      
        #9'and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'an' +
        'd CKBH <> '#39'CBY'#39') '
      #9'union all'
      
        #9'Select KCRK.RKNO,null as LLNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,KC' +
        'RKS.Qty as RKQty,null as LLQty,null as LastQty,KCRK.USERDATE,'#39'RK' +
        #39' as SB '
      #9'from KCRKS '
      #9'left join KCRK on KCRK.RKNO = KCRKS.RKNO '
      
        #9'Left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CK' +
        'BH '
      
        #9'where Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        '  between '#39'2022/07/01'#39' and '#39'2022/07/31'#39' '
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCRKS.CLBH='#39'F180008397'#39
      
        #9'and KCRK.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'and CKB' +
        'H <> '#39'CBY'#39')'
      #9'union all'
      
        #9'Select JGZL.JGNO,null as LLNO,JGZL.CKBH,'#39'GC'#39' as HGLB,JGZLS.CLBH' +
        ',JGZLS.Qty as JGQty,null as LLQty,null as LastQty,JGZL.CFMDate1,' +
        #39'JGRK'#39' as SB'
      #9'from JGZLS'
      #9'Left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      
        #9'Left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CK' +
        'BH '
      #9'where JGZL.CFMID1<>'#39'NO'#39' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        #9#9'  and Convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)' +
        ')   between '#39'2022/07/01'#39' and '#39'2022/07/31'#39' '
      #9#9'  and KCZLS.KCBH like '#39'%'#39
      #9#9'  and JGZLS.CLBH='#39'F180008397'#39
      #9'union all '
      
        #9'select null as RKNO,KCLL.LLNO,KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,n' +
        'ull as RKQty,KCLLS.Qty as LLQty,null as LastQty,KCLL.CFMDate,'#39'CK' +
        #39' as SB'
      #9'from KCLLS '
      #9'left join KCLL on KCLL.LLNO = KCLLS.LLNO '
      
        #9'Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CK' +
        'BH '
      
        #9'where KCLL.CFMID<>'#39'NO'#39' and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and Convert(' +
        'smalldatetime,convert(varchar,KCLL.CFMDate,111))   between '#39'2022' +
        '/07/01'#39' and '#39'2022/07/31'#39' '
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCLLS.CLBH='#39'F180008397'#39
      
        #9'and KCLL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'and CKB' +
        'H <> '#39'CBY'#39') '
      #9'union all '
      
        #9'select null as RKNO,KCLL.LLNO,KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,n' +
        'ull as RKQty,KCLLS.Qty as LLQty,null as LastQty,KCLL.CFMDate,'#39'JG' +
        'CK'#39' as SB'
      #9'from KCLLS '
      #9'left join KCLL on KCLL.LLNO = KCLLS.LLNO '
      
        #9'Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CK' +
        'BH '
      
        #9'where KCLL.CFMID<>'#39'NO'#39' and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and Convert(s' +
        'malldatetime,convert(varchar,KCLL.CFMDate,111))   between '#39'2022/' +
        '07/01'#39' and '#39'2022/07/31'#39' '
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCLLS.CLBH='#39'F180008397'#39
      
        #9'and KCLL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'and CKB' +
        'H <> '#39'CBY'#39')   )  DataList'
      
        'Group by RKNO,LLNO,CLBH,convert(varchar,USERDATE,111) ,SB  ) Dat' +
        'aList'
      ''
      ''
      
        'Select a1.*,(select SUM(IsNull(LastQty,0.0)+IsNull(RKQty,0.0)-Is' +
        'Null(LLQty,0.0)) as SumQty from #tmpDCAccumW b1 where b1.RN<=a1.' +
        'RN ) as SumQty1 '
      'from #tmpDCAccumW a1'
      '')
    Left = 165
    Top = 262
    object MatIOQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'MM/DD'
    end
    object MatIOQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object MatIOQryLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object MatIOQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MatIOQryRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '0.0000'
    end
    object MatIOQryLLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '0.0000'
    end
    object MatIOQryLastQty: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '0.0000'
    end
    object MatIOQrySB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 7
    end
    object MatIOQryRN: TFloatField
      FieldName = 'RN'
    end
    object MatIOQrySumQty1: TCurrencyField
      FieldName = 'SumQty1'
      DisplayFormat = '0.0000'
    end
  end
  object DS1: TDataSource
    DataSet = CLZLQry
    Left = 125
    Top = 296
  end
  object ExeQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      'if object_id('#39'tempdb..#tmpDCAccumW'#39') is not null'
      'begin   drop table #tmpDCAccumW end '
      
        'Select DataList.*,row_number() over( order by   Convert(smalldat' +
        'etime,convert(varchar,USERDATE,111)) asc) AS RN into #tmpDCAccum' +
        'W from ('
      
        'Select Convert(smalldatetime,convert(varchar,USERDATE,111)) as U' +
        'serDate,RKNO,LLNO,CLBH,Sum(IsNull(RKQty,0.0)) as RKQty,Sum(IsNul' +
        'l(LLQty,0.0)) LLQty,Sum(IsNull(LastQty,0.0))  LastQty,SB '
      'from ('
      
        #9'select '#39'2022-06'#39' as RKNO,null as LLNO,KCCLMONTH.CKBH,KCCLMONTH.' +
        'HGLB, KCCLMONTH.CLBH,null as RKQty,null as LLQty,KCCLMONTH.Qty a' +
        's LastQty,'#39'2022-06-30'#39' as UserDate,'#39'LastQty'#39' as SB'
      #9'from KCCLMONTH_HG  KCCLMONTH'
      
        #9'Left join KCZLS on KCZLS.CLBH=KCCLMONTH.CLBH and KCZLS.CKBH=KCC' +
        'LMONTH.CKBH '
      #9'where 1=1 and QTY > 0'
      #9'and KCYear = '#39'2022'#39
      #9'and KCMonth = '#39'06'#39
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCCLMONTH.CLBH='#39'F180008397'#39
      
        #9'and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'an' +
        'd CKBH <> '#39'CBY'#39') '
      #9'union all'
      
        #9'Select KCRK.RKNO,null as LLNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,KC' +
        'RKS.Qty as RKQty,null as LLQty,null as LastQty,KCRK.USERDATE,'#39'RK' +
        #39' as SB '
      #9'from KCRKS '
      #9'left join KCRK on KCRK.RKNO = KCRKS.RKNO '
      
        #9'Left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CK' +
        'BH '
      
        #9'where Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        '  between '#39'2022/07/01'#39' and '#39'2022/07/31'#39' '
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCRKS.CLBH='#39'F180008397'#39
      
        #9'and KCRK.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'and CKB' +
        'H <> '#39'CBY'#39')'
      #9'union all'
      
        #9'Select JGZL.JGNO,null as LLNO,JGZL.CKBH,'#39'GC'#39' as HGLB,JGZLS.CLBH' +
        ',JGZLS.Qty as JGQty,null as LLQty,null as LastQty,JGZL.CFMDate1,' +
        #39'JGRK'#39' as SB'
      #9'from JGZLS'
      #9'Left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      
        #9'Left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CK' +
        'BH '
      #9'where JGZL.CFMID1<>'#39'NO'#39' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        #9#9'  and Convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)' +
        ')   between '#39'2022/07/01'#39' and '#39'2022/07/31'#39' '
      #9#9'  and KCZLS.KCBH like '#39'%'#39
      #9#9'  and JGZLS.CLBH='#39'F180008397'#39
      #9'union all '
      
        #9'select null as RKNO,KCLL.LLNO,KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,n' +
        'ull as RKQty,KCLLS.Qty as LLQty,null as LastQty,KCLL.CFMDate,'#39'CK' +
        #39' as SB'
      #9'from KCLLS '
      #9'left join KCLL on KCLL.LLNO = KCLLS.LLNO '
      
        #9'Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CK' +
        'BH '
      
        #9'where KCLL.CFMID<>'#39'NO'#39' and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and Convert(' +
        'smalldatetime,convert(varchar,KCLL.CFMDate,111))   between '#39'2022' +
        '/07/01'#39' and '#39'2022/07/31'#39' '
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCLLS.CLBH='#39'F180008397'#39
      
        #9'and KCLL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'and CKB' +
        'H <> '#39'CBY'#39') '
      #9'union all '
      
        #9'select null as RKNO,KCLL.LLNO,KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,n' +
        'ull as RKQty,KCLLS.Qty as LLQty,null as LastQty,KCLL.CFMDate,'#39'JG' +
        'CK'#39' as SB'
      #9'from KCLLS '
      #9'left join KCLL on KCLL.LLNO = KCLLS.LLNO '
      
        #9'Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CK' +
        'BH '
      
        #9'where KCLL.CFMID<>'#39'NO'#39' and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and Convert(s' +
        'malldatetime,convert(varchar,KCLL.CFMDate,111))   between '#39'2022/' +
        '07/01'#39' and '#39'2022/07/31'#39' '
      #9'and KCZLS.KCBH like '#39'%'#39
      #9'and KCLLS.CLBH='#39'F180008397'#39
      
        #9'and KCLL.CKBH in (select CKBH from KCCK where GSBH='#39'CDC'#39'and CKB' +
        'H <> '#39'CBY'#39')   )  DataList'
      
        'Group by RKNO,LLNO,CLBH,convert(varchar,USERDATE,111) ,SB  ) Dat' +
        'aList'
      ''
      ''
      
        'Select a1.*,(select SUM(IsNull(LastQty,0.0)+IsNull(RKQty,0.0)-Is' +
        'Null(LLQty,0.0)) as SumQty from #tmpDCAccumW b1 where b1.RN<=a1.' +
        'RN ) as SumQty1 '
      'from #tmpDCAccumW a1'
      '')
    Left = 165
    Top = 294
    object DateTimeField1: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'MM/DD'
    end
    object StringField1: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField2: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '0.0000'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '0.0000'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '0.0000'
    end
    object StringField4: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 7
    end
    object FloatField1: TFloatField
      FieldName = 'RN'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'SumQty1'
      DisplayFormat = '0.0000'
    end
  end
end
