object PurSample_Print_Tw_Approve: TPurSample_Print_Tw_Approve
  Left = 574
  Top = 121
  Width = 1251
  Height = 837
  Caption = 'PurSample_Print_Tw_Approve'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    Top = -1
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query1
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      50.000000000000000000
      2100.000000000000000000
      100.000000000000000000
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
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 403
      Width = 1085
      Height = 344
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
        910.166666666666700000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel13: TQRLabel
        Left = 136
        Top = 225
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          359.833333333333300000
          595.312500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Director:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage4: TQRImage
        Left = 40
        Top = 243
        Width = 240
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666666700000
          105.833333333333300000
          642.937500000000000000
          635.000000000000000000)
        Stretch = True
      end
      object QRLabel12: TQRLabel
        Left = 380
        Top = 225
        Width = 84
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1005.416666666667000000
          595.312500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DC. Supervisor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage3: TQRImage
        Left = 304
        Top = 243
        Width = 240
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666666700000
          804.333333333333300000
          642.937500000000000000
          635.000000000000000000)
        Stretch = True
      end
      object QRLabel10: TQRLabel
        Left = 636
        Top = 224
        Width = 117
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1682.750000000000000000
          592.666666666666700000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Purchase Supervisor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage2: TQRImage
        Left = 567
        Top = 242
        Width = 240
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666666700000
          1500.187500000000000000
          640.291666666666700000
          635.000000000000000000)
        Stretch = True
      end
      object QRLabel11: TQRLabel
        Left = 917
        Top = 217
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2426.229166666667000000
          574.145833333333300000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Purchaser:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage1: TQRImage
        Left = 835
        Top = 241
        Width = 240
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666666700000
          2209.270833333333000000
          637.645833333333300000
          635.000000000000000000)
        Stretch = True
      end
      object QRLabel15: TQRLabel
        Left = 40
        Top = 9
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          23.812500000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Remark'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 40
        Top = 25
        Width = 570
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          66.145833333333330000
          1508.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '1. If you have any question, please contact with us as soon as p' +
          'ossible, thank you for your cooperation!'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 40
        Top = 41
        Width = 609
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          108.479166666666700000
          1611.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Neu ban co bat ky cau hoi nao, vui long lien he voi chung toi ca' +
          'ng som cang tot, xin cam on su hop tac cua ban!'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 40
        Top = 57
        Width = 311
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          150.812500000000000000
          822.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2. Please raise up if there are Neon color on attached PO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 40
        Top = 73
        Width = 330
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          193.145833333333300000
          873.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vui long cho chung toi biet neu co mau Neon trong don hang'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 40
        Top = 90
        Width = 362
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          238.125000000000000000
          957.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '3. Providing your internal test report within 2 weeks after deli' +
          'very'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 40
        Top = 105
        Width = 433
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          277.812500000000000000
          1145.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Cung cap bao cao test noi bo cua phia ban trong vong 2 tuan sau ' +
          'khi xuat hang'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 40
        Top = 121
        Width = 891
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          320.145833333333300000
          2357.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '4. If have any delay ETD, Please raise up 3 days in advance. In ' +
          'case, There are ETD delay without any reasonable reason, it must' +
          ' be punished or deduct the amount '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 40
        Top = 136
        Width = 957
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          359.833333333333300000
          2532.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Neu co tri hoan ngay giao hang vui long bao cho chung toi biet t' +
          'ruoc 3 ngay. Truong hop tri hoan ngay giao hang voi li do khong ' +
          'hop li, se bi phat tien hoac khau tru tien hang. '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 40
        Top = 152
        Width = 684
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          402.166666666666700000
          1809.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '5. Please check and arrange for material delivery no later than ' +
          'our latest ETA requested mentioned on sample order (If have) '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 40
        Top = 166
        Width = 565
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          439.208333333333300000
          1494.895833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Vui long kiem tra va sap xep ngay giao hang khong tre hon ETA ye' +
          'u cau neu co nhac toi trong don hang. '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 40
        Top = 182
        Width = 589
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          481.541666666666700000
          1558.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '6. For CBY order shipment, please check with us for shipping way' +
          ' before ship out material (Oversea vendor)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 40
        Top = 198
        Width = 783
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          523.875000000000000000
          2071.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Doi voi viec giao hang cho don Hang CBY, vui long kiem tra voi c' +
          'hung toi cach thuc giao hang truoc khi giao. (Doi voi nha cung c' +
          'ap nuoc ngoai).'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QR_ApplicantDate: TQRDBText
        Left = 937
        Top = 319
        Width = 39
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2479.145833333333000000
          844.020833333333300000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Userdate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText18: TQRDBText
        Left = 654
        Top = 321
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1730.375000000000000000
          849.312500000000000000
          121.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'CFMDate2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText19: TQRDBText
        Left = 406
        Top = 321
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1074.208333333333000000
          849.312500000000000000
          121.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'CFMDate2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText21: TQRDBText
        Left = 140
        Top = 321
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          370.416666666666700000
          849.312500000000000000
          121.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'CFMDate2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 203
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        537.104166666666700000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QPage1: TQRLabel
        Left = 1055
        Top = 10
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2791.354166666667000000
          26.458333333333330000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 1049
        Top = 10
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2775.479166666667000000
          26.458333333333330000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '/'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 1022
        Top = 10
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2704.041666666667000000
          26.458333333333330000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 957
        Top = 94
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2532.062500000000000000
          248.708333333333300000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurSample.CGMas
        DataField = 'CGDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L6: TQRLabel
        Left = 923
        Top = 94
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2442.104166666667000000
          248.708333333333300000
          82.020833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L7: TQRLabel
        Left = 2
        Top = 94
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          248.708333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ORDER_NO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L1: TQRLabel
        Left = 353
        Top = 1
        Width = 440
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          933.979166666666700000
          2.645833333333333000
          1164.166666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Vinh Long Footwear Co.LTD '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object L2: TQRLabel
        Left = 353
        Top = 30
        Width = 440
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          933.979166666666700000
          79.375000000000000000
          1164.166666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sample Purchase Order'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object L20: TQRLabel
        Left = 68
        Top = 157
        Width = 94
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          179.916666666666700000
          415.395833333333300000
          248.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DESCRIPTION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object L21: TQRLabel
        Left = 167
        Top = 157
        Width = 23
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          441.854166666666700000
          415.395833333333300000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'UNIT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object L22: TQRLabel
        Left = 203
        Top = 157
        Width = 17
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          537.104166666666700000
          415.395833333333300000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Qty'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object L24: TQRLabel
        Left = 326
        Top = 149
        Width = 130
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333300000
          862.541666666666700000
          394.229166666666700000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'SR/YSSM/SampleNo/ ProductionLocation/Pairs/ Size/Last/Cutting/Mi' +
          'dsole/ OS/OSSIZE/Category'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object L12: TQRLabel
        Left = 922
        Top = 42
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2439.458333333333000000
          111.125000000000000000
          375.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TEL:+84-703-962052'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L11: TQRLabel
        Left = 231
        Top = 66
        Width = 670
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          611.187500000000000000
          174.625000000000000000
          1772.708333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          'ADD: Hoa Phu Industrial Zone, Thanh Hung hamlet, Hoa Phu Village' +
          ', Long Ho District, Vinh Long Province, Vietnam'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 305
        Top = 33
        Width = 41
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666700000
          87.312500000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurSample.CGMas
        DataField = 'MEMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Label_PS: TQRLabel
        Left = 271
        Top = 33
        Width = 23
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          717.020833333333300000
          87.312500000000000000
          60.854166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PS:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L25: TQRLabel
        Left = 738
        Top = 160
        Width = 50
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1952.625000000000000000
          423.333333333333300000
          132.291666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A4Confirm'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 270
        Top = 156
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          714.375000000000000000
          412.750000000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CATEGORY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 461
        Top = 155
        Width = 53
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1219.729166666667000000
          410.104166666666700000
          140.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SHOENAME /TESTNO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 619
        Top = 158
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1637.770833333333000000
          418.041666666666700000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'USAGE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 2
        Top = 110
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          291.041666666666700000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DevType:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 67
        Top = 110
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          291.041666666666700000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = PurSample.CGMas
        DataField = 'DevType'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 2
        Top = 159
        Width = 62
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          5.291666666666667000
          420.687500000000000000
          164.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object L19: TQRLabel
        Left = 2
        Top = 127
        Width = 92
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          5.291666666666667000
          336.020833333333300000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SUPPLIER NAME:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 683
        Top = 159
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1807.104166666667000000
          420.687500000000000000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Last ETA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 922
        Top = 64
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2439.458333333333000000
          169.333333333333300000
          375.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FAX:+84-703-96251'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 61
        Top = 18
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          47.625000000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BRAND: CONVERSE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 36
        Top = 34
        Width = 149
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          89.958333333333330000
          394.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONSIGNEE: SEE AS BELOW'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 61
        Top = 50
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          132.291666666666700000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOTIFY/ BILL TO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 38
        Top = 66
        Width = 156
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          174.625000000000000000
          412.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vinh Long Footwear CO. LTD'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 346
        Top = 127
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          915.458333333333300000
          336.020833333333300000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ATTN:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 238
        Top = 157
        Width = 19
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          629.708333333333300000
          415.395833333333300000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SIZE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 518
        Top = 158
        Width = 35
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1370.541666666667000000
          418.041666666666700000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Season'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 559
        Top = 158
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1479.020833333333000000
          418.041666666666700000
          71.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Stage'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 794
        Top = 160
        Width = 65
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2100.791666666667000000
          423.333333333333300000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ColorWindow'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 863
        Top = 159
        Width = 77
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          2283.354166666667000000
          420.687500000000000000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DateA4 Comfirmexpired'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 149
        Width = 1084
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          394.229166666666700000
          2868.083333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 150
        Width = 1
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333300000
          0.000000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 65
        Top = 150
        Width = 1
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333300000
          171.979166666666700000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 165
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          436.562500000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 192
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          508.000000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 231
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          611.187500000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 264
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          698.500000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 324
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          857.250000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 457
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1209.145833333333000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 515
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1362.604166666667000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 589
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1558.395833333333000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 556
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1471.083333333333000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 672
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1778.000000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 732
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1936.750000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 792
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          2095.500000000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 861
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          2278.062500000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 1083
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          2865.437500000000000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 941
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          2489.729166666667000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 988
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          2614.083333333333000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 1036
        Top = 150
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          2741.083333333333000000
          396.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 943
        Top = 159
        Width = 43
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          2495.020833333333000000
          420.687500000000000000
          113.770833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Remark'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 991
        Top = 159
        Width = 43
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333330000
          2622.020833333333000000
          420.687500000000000000
          113.770833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mat Remark'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 1039
        Top = 159
        Width = 42
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333330000
          2749.020833333333000000
          420.687500000000000000
          111.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Memo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 241
      Width = 1085
      Height = 162
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        428.625000000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 66
        Top = 1
        Width = 98
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          174.625000000000000000
          2.645833333333333000
          259.291666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'YWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 326
        Top = 1
        Width = 130
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          415.395833333333300000
          862.541666666666700000
          2.645833333333333000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Article_All'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 167
        Top = 1
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          441.854166666666700000
          2.645833333333333000
          63.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'DWBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 193
        Top = 1
        Width = 37
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          510.645833333333300000
          2.645833333333333000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 459
        Top = 1
        Width = 55
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          1214.437500000000000000
          2.645833333333333000
          145.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Shoename'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 2
        Top = 1
        Width = 62
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          5.291666666666667000
          2.645833333333333000
          164.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'CLBH1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 591
        Top = 1
        Width = 80
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          1563.687500000000000000
          2.645833333333333000
          211.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'PartAll'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 265
        Top = 1
        Width = 58
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          701.145833333333300000
          2.645833333333333000
          153.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'CATEGORY'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 674
        Top = 1
        Width = 57
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1783.291666666667000000
          2.645833333333333000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Material_ETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 232
        Top = 1
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          613.833333333333300000
          2.645833333333333000
          82.020833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'XXCC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 517
        Top = 1
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1367.895833333333000000
          2.645833333333333000
          100.541666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'SEASON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 558
        Top = 1
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1476.375000000000000000
          2.645833333333333000
          76.729166666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Stage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 734
        Top = 1
        Width = 57
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          1942.041666666667000000
          2.645833333333333000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'A4Comfirm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 794
        Top = 1
        Width = 66
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          2100.791666666667000000
          2.645833333333333000
          174.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'ColorWindow'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 865
        Top = 1
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2288.645833333333000000
          2.645833333333333000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'DateA4Comfirmexpired'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 65
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          171.979166666666700000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 165
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          436.562500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 231
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          611.187500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 192
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          508.000000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 324
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          857.250000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 264
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          698.500000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 457
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          1209.145833333333000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 515
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          1362.604166666667000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 556
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          1471.083333333333000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 589
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          1558.395833333333000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 672
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          1778.000000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 732
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          1936.750000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 792
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          2095.500000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 861
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          2278.062500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 1083
        Top = -3
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          2865.437500000000000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 160
        Width = 1083
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          423.333333333333300000
          2865.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = -4
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          0.000000000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 941
        Top = -3
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          2489.729166666667000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 988
        Top = -3
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          2614.083333333333000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 1036
        Top = -3
        Width = 1
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          2741.083333333333000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText40: TQRDBText
        Left = 943
        Top = 1
        Width = 43
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          2495.020833333333000000
          2.645833333333333000
          113.770833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Remark'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText41: TQRDBText
        Left = 990
        Top = 1
        Width = 45
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          2619.375000000000000000
          2.645833333333333000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'MatRemark'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText42: TQRDBText
        Left = 1038
        Top = 1
        Width = 44
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666666700000
          2746.375000000000000000
          2.645833333333333000
          116.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'MemoAll'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 747
      Width = 1085
      Height = 25
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
        66.145833333333330000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object L8: TQRLabel
        Left = 929
        Top = 3
        Width = 144
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2457.979166666667000000
          7.937500000000000000
          381.000000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A-TTKT-WI007-01A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object Mas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = PurSample.DS3
    RequestLive = True
    SQL.Strings = (
      'if   object_id('#39'tempdb..#CGZLP'#39')   is   not   null   '
      'begin'
      'drop table #CGZLP'
      'end'
      ''
      'select  *'
      'into #CGZLP from CGZLS'
      'where CGNO=:CGNO'
      ''
      'alter table #CGZLP add ZLNO VARCHAR(MAX)'
      'alter table #CGZLP add FDAll VARCHAR(MAX)'
      ''
      
        'select  #CGZLP.*,CGZL.MEMO,CLZL.YWPM,CLZL.DWBH,Convert(varchar(2' +
        '00),'#39#39') as PartAll'
      
        ',max(case when ((left(#CGZLP.Article_All,1)='#39'S'#39' or left(#CGZLP.A' +
        'rticle_All,1)='#39'G'#39') and KFXXZL.Devtype = '#39'CTM'#39' and (R1Sample.RSD ' +
        'is not null and convert(smalldatetime,R1Sample.RSD,111)-14 > get' +
        'date())) then convert(smalldatetime,R1Sample.RSD,111)-14'
      
        #9#9'  when (left(#CGZLP.Article_All,1)='#39'C'#39' and KFXXZL.Devtype = '#39'C' +
        'TM'#39' and (R3Sample.RSD is not null and convert(smalldatetime,R3Sa' +
        'mple.RSD,111)-14 > getdate())) then convert(smalldatetime,R3Samp' +
        'le.RSD,111)-14'
      
        #9#9'  when (left(#CGZLP.Article_All,1)='#39'G'#39' and KFXXZL.Devtype = '#39'I' +
        'ncubate'#39' and CGZL.PURPOSE='#39'CR1'#39' and (R1Sample.RSD is not null an' +
        'd convert(smalldatetime,R1Sample.RSD,111)-14 > getdate())) then ' +
        'convert(smalldatetime,R1Sample.RSD,111)-14'
      
        '          when (left(#CGZLP.Article_All,1)='#39'G'#39' and KFXXZL.Devtyp' +
        'e = '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR2'#39' and (R2Sample.RSD is not n' +
        'ull and convert(smalldatetime,R2Sample.RSD,111)-14 > getdate()))' +
        ' then convert(smalldatetime,R2Sample.RSD,111)-14'
      
        '          when (left(#CGZLP.Article_All,1)='#39'G'#39' and KFXXZL.Devtyp' +
        'e = '#39'Incubate'#39' and CGZL.PURPOSE='#39'SMS'#39' and (R3Sample.RSD is not n' +
        'ull and convert(smalldatetime,R3Sample.RSD,111)-14 > getdate()))' +
        ' then convert(smalldatetime,R3Sample.RSD,111)-14'
      
        '          when (GamePlan.Material_ETA is not null and convert(sm' +
        'alldatetime,GamePlan.Material_ETA ,111) > getdate()) then GamePl' +
        'an.Material_ETA'
      '          else null end ) as Material_ETA'
      'from #CGZLP'
      'left join CLZL on CLZL.CLDH= #CGZLP.CLBH '
      'left join CGZL on CGZL.CGNO=#CGZLP.CGNO'
      
        'left join CGZLSS on CGZLSS.CGNO = #CGZLP.CGNO and CGZLSS.CLBH = ' +
        '#CGZLP.CLBH'
      'left join YPZL on  YPZL.YPDH=CGZLSS.ZLBH '
      
        'left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.She' +
        'Hao = YPZL.SheHao'
      'left join clzl_flex on clzl_flex.CLdH=#CGZLP.CLBH'
      
        'left join (select Season, Stage, MAX(Material_ETA) AS Material_E' +
        'TA from GamePlan'
      #9#9'   GROUP BY Season,Stage'
      
        #9#9'   ) AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPO' +
        'SE=GamePlan.Stage'
      
        'left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'group by  #CGZLP.CGNO,#CGZLP.CLBH,#CGZLP.XqQty,#CGZLP.Qty,#CGZLP' +
        '.USPrice,#CGZLP.VNPrice,#CGZLP.Memo,#CGZLP.BJNO,#CGZLP.YQDate,'
      
        '#CGZLP.CFMDate,#CGZLP.USERDate,#CGZLP.USERID,#CGZLP.YN,#CGZLP.JG' +
        'NO,#CGZLP.BILLNO,#CGZLP.WAY,#CGZLP.REMARK,#CGZLP.MEMO1,#CGZLP.DG' +
        'DATE,'
      
        '#CGZLP.ETA,#CGZLP.Article_All,#CGZLP.QUSPrice,#CGZLP.QVNPrice,#C' +
        'GZLP.ReturnDate,#CGZLP.ReturnQuantity,#CGZLP.SerialNumber,#CGZLP' +
        '.CommitedETD,'
      
        '#CGZLP.DelayReason,#CGZLP.ZLNO,#CGZLP.FDAll,CGZL.MEMO,CLZL.YWPM,' +
        'CLZL.DWBH'
      'order by #CGZLP.CLBH')
    UpdateObject = UpdateSQL1
    Left = 328
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object MasCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object MasCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MasXqQty: TCurrencyField
      FieldName = 'XqQty'
      DisplayFormat = '#,##0.0'
    end
    object MasQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object MasUSPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object MasVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object MasMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object MasBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'MM/dd'
    end
    object MasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'MM/dd'
    end
    object MasUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'MM/dd'
    end
    object MasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object MasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object MasYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object MasDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object MasZLNO: TMemoField
      FieldName = 'ZLNO'
      BlobType = ftMemo
    end
    object MasMEMO_1: TStringField
      FieldName = 'MEMO_1'
      FixedChar = True
      Size = 50
    end
    object MasREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object MasPartAll: TStringField
      FieldName = 'PartAll'
      FixedChar = True
      Size = 200
    end
    object MasFDAll: TMemoField
      FieldName = 'FDAll'
      BlobType = ftMemo
    end
    object MasMaterial_ETA: TDateTimeField
      FieldName = 'Material_ETA'
    end
  end
  object Det: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample.DS4
    SQL.Strings = (
      
        'select CGZLSS.ZLBH,CGZLSS.Qty,CGZLSS.XXCC,KFXXZL.XIEMING,IsNull(' +
        'KFXXZL.ARTICLE,'#39'ALL'#39') as ARTICLE,KFXXZL.FD,IsNull(KFXXZL.devcode' +
        ','#39'ALL'#39') as ARTICLE1,CGZLSS.MEMO'
      'from CGZLSS'
      'left join YPZL  on CGZLSS.ZLBH=YPZL.YPDH'
      
        'left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing  and KFXXZL.SheH' +
        'ao=YPZL.SheHao'
      'where CGZLSS.CGNO=:CGNO'
      'and CGZLSS.CLBH=:CLBH')
    Left = 296
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object DataSource1: TDataSource
    DataSet = Mas
    Left = 869
    Top = 42
  end
  object UpdateSQL1: TUpdateSQL
    Left = 901
    Top = 42
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 931
    Top = 40
  end
  object BWQY: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource2
    SQL.Strings = (
      'select * from ('
      'select bwzl.ywsm from YPZLS'
      'inner join clzl on ypzls.clbh=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where YPZLS.CLBH=:CLBH and'
      'YPDH in (select ypzl.YPDH from ypzl '
      'left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      'where CGZLSS.CGNO=:CGNO)'
      'Group by bwzl.ywsm'
      'union all'
      'select bwzl.ywsm from YPZLS'
      'inner join clzhzl on clzhzl.cldh=YPZLS.clbh and clzhzl.syl>0'
      'inner join clzl on clzhzl.cldh1=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where clzhzl.cldh1=:CLBH  and'
      'YPDH in (select ypzl.YPDH from ypzl'
      'left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      'where CGZLSS.CGNO=:CGNO)'
      'Group by bwzl.ywsm'
      'union all'
      'select distinct clzhzl2.ywsm'
      'from ( select bwzl.ywsm as ywsm,clzhzl.CLDH1 as CLBH '
      
        '  from ypzls ypzls inner join clzhzl ON  ypzls.CLBH = CLZHZL.cld' +
        'h'
      '  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      '  left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      '  WHERE YPDH  in (select ypzl.YPDH from ypzl'
      '  left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      
        '  where CGZLSS.CGNO=:CGNO)  and CLZHZL.SYL>0   and clzl.clzmlb='#39 +
        'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'where clzhzl.cldh1=:CLBH    and CLZHZL.SYL>0   and clzl.clzmlb='#39 +
        'N'#39
      ') as YPZLS'
      '')
    Left = 361
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 34
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object BWQYywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 965
    Top = 42
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = PurSample.DS3
    RequestLive = True
    SQL.Strings = (
      'if   object_id('#39'tempdb..#CGZLP'#39')   is   not   null'
      'begin'
      'drop table #CGZLP'
      'end'
      ''
      'select  *'
      'into #CGZLP from CGZLSS'
      'where CGNO=:CGNO'
      ''
      'alter table #CGZLP add PartAll VARCHAR(MAX)'
      'alter table #CGZLP add MatRemark VARCHAR(MAX)'
      'alter table #CGZLP add MemoAll VARCHAR(MAX)'
      ''
      
        'select #CGZLP.CGNO,#CGZLP.CLBH +'#39' ('#39'+isnull(cldhflex,'#39#39')+'#39')'#39' as ' +
        'CLBH1,CLZL.ywpm,CLZL.dwbh,#CGZLP.Qty,#CGZLP.XXCC,KFXXZL.FD+'#39' ('#39'+' +
        'isnull(lbzls.ywsm,'#39#39')+'#39')'#39' as CATEGORY'
      
        #9#9',IsNull(KFXXZL.devcode,'#39'ALL'#39')+ '#39'/ '#39' +isnull(kfxxzl.yssm,'#39#39')+ '#39 +
        '/ '#39'+ #CGZLP.ZLBH + '#39'/ '#39' + isnull(YPZL.productionLocation,'#39#39') +'#39'/' +
        'Qty:'#39'+ convert(varchar,#CGZLP.Qty) +'#39'/ '#39'+ '#39'('#39' + isnull(ypzl.ypcc' +
        ','#39#39')+ isnull(a.YPCCL,'#39#39') +'#39')'#39'+isnull(kfxxzl.XTMH,'#39#39')+'#39'/ '#39'+isnull' +
        '(kfxxzl.daomh,'#39#39')+'#39'/ '#39'+'#39'('#39'+isnull(a.YPCCM,'#39#39')+'#39')'#39'+isnull(kfxxzl.' +
        'MDMH,'#39#39')+'#39'/ '#39'+'#39'('#39'+isnull(ypzl.ypcco,'#39#39')+'#39')'#39'+isnull(kfxxzl.DDMH,'#39 +
        #39')+'#39'/ '#39'+isnull(#CGZLP.XXCC,'#39#39')+'#39'/ '#39'+isnull(xxzlkf.category,'#39#39') a' +
        's Article_All'
      
        #9#9',Isnull(KFXXZL.XIEMING,'#39#39')+ '#39'/ '#39'+isnull(#CGZLP.Memo,'#39#39') as Sho' +
        'ename,CGZL.SEASON,CGZL.PURPOSE as Stage,#CGZLP.PartAll'
      
        #9#9',max(case when ((left(CGZLS.Article_All,1)='#39'S'#39' or left(CGZLS.A' +
        'rticle_All,1)='#39'G'#39') and KFXXZL.Devtype = '#39'CTM'#39' and (R1Sample.RSD ' +
        'is not null and convert(smalldatetime,R1Sample.RSD,111)-14 > get' +
        'date())) then convert(smalldatetime,R1Sample.RSD,111)-14'
      
        #9#9'  when (left(CGZLS.Article_All,1)='#39'C'#39' and KFXXZL.Devtype = '#39'CT' +
        'M'#39' and (R3Sample.RSD is not null and convert(smalldatetime,R3Sam' +
        'ple.RSD,111)-14 > getdate())) then convert(smalldatetime,R3Sampl' +
        'e.RSD,111)-14'
      
        #9#9'  when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype = '#39'In' +
        'cubate'#39' and CGZL.PURPOSE='#39'CR1'#39' and (R1Sample.RSD is not null and' +
        ' convert(smalldatetime,R1Sample.RSD,111)-14 > getdate())) then c' +
        'onvert(smalldatetime,R1Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR2'#39' and (R2Sample.RSD is not nu' +
        'll and convert(smalldatetime,R2Sample.RSD,111)-14 > getdate())) ' +
        'then convert(smalldatetime,R2Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'SMS'#39' and (R3Sample.RSD is not nu' +
        'll and convert(smalldatetime,R3Sample.RSD,111)-14 > getdate())) ' +
        'then convert(smalldatetime,R3Sample.RSD,111)-14'
      
        '          when (GamePlan.Material_ETA is not null and convert(sm' +
        'alldatetime,GamePlan.Material_ETA ,111) > getdate()) then GamePl' +
        'an.Material_ETA'
      '          else null end ) as Material_ETA'
      #9#9','#39'follow C/S:'#39' +isnull(CGZL_color2.A4Comfirm,'#39#39') as A4Comfirm'
      #9#9',CGZL_color2.ColorWindow'
      
        #9#9',DATEADD(year, 2, CGZL_color2.DateA4Comfirm) as DateA4Comfirme' +
        'xpired ,#CGZLP.CLBH as CLBH,CGZLS.Memo as Remark,#CGZLP.MatRemar' +
        'k,#CGZLP.MemoAll,#CGZLP.ZLBH'
      
        '    ,ypzl.YPCCO,ypzl.YPCCL,ypzl.YPCCM,ypzl.YPCCI,ypzl.YPCCIL,ypz' +
        'l.YPCCOL,ypzl.YPCCSS'
      'from #CGZLP '
      
        'left join CGZLS on #CGZLP.CGNO=CGZLS.CGNO and #CGZLP.CLBH=CGZLS.' +
        'CLBH'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb='#39'E'#39
      'left join clzl_flex on clzl_flex.CLdH=CGZLS.CLBH'
      
        'left join(select CLZL.cldh,Max(case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '         when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEMP.CL' +
        'BH  IS NOT NULL and CLZL_LS.JHDH <>'#39#39') THEN CLZL_LS.JHDH'
      
        '         when (cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JH' +
        'DH <>'#39#39') THEN CLZL_LS.JHDH'
      '         else CLZL.cldh  end) ColorCLDH  '
      '     From CLZL '
      
        '     left join(select CLDH,JHDH from  CLZL_LS UNION ALL select J' +
        'HDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=C' +
        'LZL.cldh '
      '     left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '     left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.' +
        'CLBH=CLZL_LS.JHDH'
      '     group by CLZL.cldh'
      '     )ColorCLDH on ColorCLDH.CLDH=cgzls.clbh'
      '  left join cgzl_color2 on cgzl_color2.clbh=ColorCLDH.ColorCLDH'
      'left join CBY_MaterialCTS ON CBY_MaterialCTS.CLBH = CGZLS.CLBH'
      'left join CGZL  on CGZl.CGNO=CGZLS.CGNO '
      'left join YPZL on  YPZL.YPDH=#CGZLP.ZLBH '
      
        'left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.She' +
        'Hao = YPZL.SheHao '
      
        'left join XXZLKF on XXZLKF.SheHao = YPZL.SheHao and XXZLKF.XieXi' +
        'ng = YPZL.XieXing'
      'left join lbzls on lbzls.lbdh=kfxxzl.xiegn and lbzls.lb='#39'03'#39
      'left join ('
      
        '  select Season, Stage, MAX(Material_ETA) AS Material_ETA from G' +
        'amePlan'
      '  GROUP BY Season,Stage'
      
        ') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=Ga' +
        'mePlan.Stage'
      
        'left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join (select YPZL.YPDH, Quantity,YPCC,'#39'[ '#39'+YPCCO+'#39' ]'#39'+KFXXZ' +
        'L.DDMH as '#39'YPCCO'#39','#39'[ '#39'+YPCCL+'#39' ]'#39'+KFXXZL.XTMH as '#39'YPCCL'#39','
      #39'[ '#39'+YPCCM+'#39' ]'#39'+KFXXZL.MDMH as '#39'YPCCM'#39' '
      ' from YPZL'
      
        'Left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHa' +
        'o=YPZL.SheHao'
      'where 1=1 )a on a.YPDH=ypzl.YPDH '
      'where CGZLS.CGNO=:CGNO'
      
        'group by #CGZLP.CGNO,#CGZLP.CLBH,#CGZLP.ZLBH,#CGZLP.XXCC,#CGZLP.' +
        'Stage,#CGZLP.Qty,'
      'CGZL_color2.A4Comfirm,CGZL_color2.ColorWindow,'
      
        'CLZL.lycc,CLZL.YWPM,CLZL.DWBH,clzl_flex.cldhflex,CGZLS.DelayReas' +
        'on,'
      'CASE WHEN CBY_MaterialCTS.CLBH IS NOT NULL THEN 1 ELSE 0 END'
      
        ',CGZL_color2.DateA4Comfirm, CGZL_color2.DateColorWindow,cgzls.Co' +
        'mmitedETD,clbzzl.bz,CGZLS.CLBH,KFXXZL.FD,lbzls.ywsm,KFXXZL.devco' +
        'de,kfxxzl.YSSM,YPZL.ProductionLocation,YPZL.YPCC,ypzl.ypcco,a.YP' +
        'CCL,a.YPCCO,a.YPCCM'
      
        ',kfxxzl.XTMH,kfxxzl.DAOMH,kfxxzl.MDMH,xxzlkf.category,kfxxzl.DDM' +
        'H,kfxxzl.XieMing,#CGZLP.Memo,cgzl.SEASON,cgzl.PURPOSE,#CGZLP.Par' +
        'tAll,CGZLS.Memo,#CGZLP.MatRemark,#CGZLP.MemoAll,#CGZLP.ZLBH'
      
        ',ypzl.YPCCO,ypzl.YPCCL,ypzl.YPCCM,ypzl.YPCCI,ypzl.YPCCIL,ypzl.YP' +
        'CCOL,ypzl.YPCCSS'
      'order by  #CGZLP.CGNO, #CGZLP.CLBH'
      '')
    UpdateObject = UpdateSQL2
    Left = 424
    Top = 8
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end>
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 33
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1CATEGORY: TStringField
      FieldName = 'CATEGORY'
      FixedChar = True
      Size = 73
    end
    object Query1Article_All: TStringField
      FieldName = 'Article_All'
      FixedChar = True
      Size = 255
    end
    object Query1Shoename: TStringField
      FieldName = 'Shoename'
      FixedChar = True
      Size = 63
    end
    object Query1SEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1PartAll: TMemoField
      DisplayWidth = 200
      FieldName = 'PartAll'
      BlobType = ftMemo
      Size = 200
    end
    object Query1Material_ETA: TDateTimeField
      FieldName = 'Material_ETA'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 81
    end
    object Query1ColorWindow: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object Query1DateA4Comfirmexpired: TDateTimeField
      FieldName = 'DateA4Comfirmexpired'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CLBH1: TStringField
      FieldName = 'CLBH1'
      Size = 60
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 250
    end
    object Query1MatRemark: TMemoField
      FieldName = 'MatRemark'
      BlobType = ftMemo
    end
    object Query1MemoAll: TMemoField
      FieldName = 'MemoAll'
      BlobType = ftMemo
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object Query1YPCCO: TStringField
      FieldName = 'YPCCO'
      Size = 6
    end
    object Query1YPCCL: TStringField
      FieldName = 'YPCCL'
      Size = 6
    end
    object Query1YPCCM: TStringField
      FieldName = 'YPCCM'
      Size = 6
    end
    object Query1YPCCI: TStringField
      FieldName = 'YPCCI'
      Size = 6
    end
    object Query1YPCCIL: TStringField
      FieldName = 'YPCCIL'
      Size = 6
    end
    object Query1YPCCOL: TStringField
      FieldName = 'YPCCOL'
      Size = 6
    end
    object Query1YPCCSS: TStringField
      FieldName = 'YPCCSS'
      Size = 6
    end
  end
  object UpdateSQL2: TUpdateSQL
    Left = 453
    Top = 10
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 429
    Top = 34
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample.DS3
    SQL.Strings = (
      'select cgno,clbh,ywpm'
      'from cgzls '
      'left join clzl on cgzls.clbh=clzl.cldh'
      'where CGNO=:CGNO'
      '')
    Left = 245
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object Query2cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object Query2clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
  end
  object QApprover: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=ITErp@2022;Persist Security Info=Tr' +
      'ue;User ID=tyxuan;Initial Catalog=LIY_ERP;Data Source=192.168.23' +
      '.122'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select CGNO,substring(UserID,4,len(UserID)) as UserD,Userdate,su' +
        'bstring(CFMID2,4,LEN(CFMID2)) as CFMID2,CFMDate2'
      'from [UOF].UOF.dbo.LYN_PurchaseList_Dev'
      'where flowflag='#39'Z'#39' and CGNo='#39'20240407265'#39
      '')
    Left = 124
    Top = 3
    object QApproverCGNO: TStringField
      FieldName = 'CGNO'
    end
    object QApproverUserD: TStringField
      FieldName = 'UserD'
      ReadOnly = True
    end
    object QApproverUserdate: TDateTimeField
      FieldName = 'Userdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QApproverCFMID2: TStringField
      FieldName = 'CFMID2'
      ReadOnly = True
    end
    object QApproverCFMDate2: TDateTimeField
      FieldName = 'CFMDate2'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = PurSample.DS3
    SQL.Strings = (
      'select cgno,clbh,ywpm'
      'from cgzls '
      'left join clzl on cgzls.clbh=clzl.cldh'
      'where CGNO=:CGNO'
      '')
    Left = 189
    Top = 5
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object StringField1: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object StringField2: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource2
    SQL.Strings = (
      
        'select ypdh,bwzl.ywsm,clzl.Ywpm,allmat.Relation,allmat.cldh  fro' +
        'm('
      
        'SELECT clzhzl.cldh,ypzls.YPDH,YPZLS.BWBH as Relation,clzhzl.CLDH' +
        '1 as CLBH'
      ' ,ypzls.Remark ,clzl.Ywpm'
      'FROM ypzls ypzls'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'WHERE YPDH =:zlbh  and CLZHZL.SYL>0  and clzhzl.CLDH1=:clbh'
      'group by clzhzl.cldh,ypzls.YPDH,YPZLS.BWBH,clzhzl.CLDH1'
      ' ,ypzls.Remark,clzl.Ywpm'
      'union'
      
        'Select clzhzl.cldh,clzhzl2.YPDH,clzhzl2.Relation as Relation ,cl' +
        'zhzl.CLDH1 as CLBH'
      ',clzhzl2.Remark ,clzl.Ywpm'
      ' from ('
      
        'SELECT clzhzl.cldh,ypzls.YPDH ,YPZLS.BWBH as Relation,clzhzl.CLD' +
        'H1 as CLBH'
      ',ypzls.Remark ,clzl.Ywpm'
      'FROM ypzls ypzls'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE YPDH =:zlbh and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh'
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh'
      'WHERE clzhzl.CLDH1=:clbh'
      'group by clzhzl.cldh,clzhzl2.YPDH,clzhzl2.Relation ,clzhzl.CLDH1'
      ',clzhzl2.Remark ,clzl.Ywpm)allmat'
      'LEFT JOIN bwzl bwzl ON allmat.Relation = bwzl.bwdh'
      'left JOIN clzl clzl ON allmat.cldh = clzl.cldh')
    Left = 876
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zlbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end>
  end
end
