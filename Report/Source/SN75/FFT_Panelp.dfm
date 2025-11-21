object FFTPanel: TFFTPanel
  Left = 203
  Top = 78
  BorderStyle = bsNone
  Caption = 'FFTPanel'
  ClientHeight = 596
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 57
    Align = alTop
    TabOrder = 0
    object RefreshLabel: TLabel
      Left = 304
      Top = 16
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 104
      Top = 0
      Width = 185
      Height = 49
      Caption = 'Defect Issue'
      TabOrder = 1
      object RB1: TRadioButton
        Left = 8
        Top = 24
        Width = 73
        Height = 17
        Caption = 'English'
        TabOrder = 0
      end
      object RB2: TRadioButton
        Left = 88
        Top = 24
        Width = 89
        Height = 17
        Caption = 'VietName'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TDate: TDateTimePicker
      Left = 800
      Top = 16
      Width = 105
      Height = 24
      Date = 41712.328943414350000000
      Time = 41712.328943414350000000
      TabOrder = 2
      Visible = False
    end
  end
  object MainPanel: TPanel
    Left = 0
    Top = 57
    Width = 1002
    Height = 539
    Align = alClient
    Color = clWhite
    TabOrder = 1
    object Panel0: TPanel
      Left = -7
      Top = 1
      Width = 1000
      Height = 105
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Dep0: TLabel
        Left = 0
        Top = 0
        Width = 313
        Height = 81
        Alignment = taCenter
        AutoSize = False
        Caption = 'DepName'
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnDblClick = Dep0DblClick
      end
      object C0: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S0: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A0: TLabel
        Left = 544
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR0: TLabel
        Left = 680
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD0: TLabel
        Left = 272
        Top = 48
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = 13565902
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD0: TLabel
        Left = 544
        Top = 47
        Width = 441
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Last Hourily_Defect'
        Color = 4259584
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT0: TLabel
        Left = 832
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FTT'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 81
      Width = 1000
      Height = 64
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Dep1: TLabel
        Left = 8
        Top = 0
        Width = 249
        Height = 65
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dep1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object C1: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S1: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A1: TLabel
        Left = 552
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR1: TLabel
        Left = 688
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT1: TLabel
        Left = 824
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FFT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD1: TLabel
        Left = 288
        Top = 31
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD1: TLabel
        Left = 560
        Top = 31
        Width = 305
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hourily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel2: TPanel
      Left = 17
      Top = 137
      Width = 1000
      Height = 64
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object Dep2: TLabel
        Left = 8
        Top = 7
        Width = 265
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dep2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object C2: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S2: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A2: TLabel
        Left = 552
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR2: TLabel
        Left = 688
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT2: TLabel
        Left = 824
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FFT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD2: TLabel
        Left = 288
        Top = 31
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD2: TLabel
        Left = 560
        Top = 31
        Width = 305
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hourily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 209
      Width = 1000
      Height = 80
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object Dep3: TLabel
        Left = 8
        Top = 15
        Width = 265
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dep3'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object C3: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S3: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A3: TLabel
        Left = 552
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR3: TLabel
        Left = 688
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT3: TLabel
        Left = 824
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FFT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD3: TLabel
        Left = 288
        Top = 47
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD3: TLabel
        Left = 560
        Top = 47
        Width = 305
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hourily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 289
      Width = 1000
      Height = 72
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object Dep4: TLabel
        Left = 8
        Top = 15
        Width = 265
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dep4'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object C4: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S4: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A4: TLabel
        Left = 552
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR4: TLabel
        Left = 688
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT4: TLabel
        Left = 824
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FFT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD4: TLabel
        Left = 288
        Top = 39
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD4: TLabel
        Left = 560
        Top = 39
        Width = 305
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hourily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 377
      Width = 1000
      Height = 64
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object Dep5: TLabel
        Left = 8
        Top = 7
        Width = 265
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dep5'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object C5: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S5: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A5: TLabel
        Left = 552
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR5: TLabel
        Left = 688
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT5: TLabel
        Left = 824
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FFT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD5: TLabel
        Left = 288
        Top = 31
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD5: TLabel
        Left = 560
        Top = 31
        Width = 305
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hourily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 433
      Width = 1000
      Height = 88
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object Dep6: TLabel
        Left = 8
        Top = 7
        Width = 265
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dep6'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Cambria'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object C6: TLabel
        Left = 272
        Top = 8
        Width = 137
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object S6: TLabel
        Left = 416
        Top = 8
        Width = 121
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object A6: TLabel
        Left = 552
        Top = 8
        Width = 129
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object AR6: TLabel
        Left = 688
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'AR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object FFT6: TLabel
        Left = 824
        Top = 8
        Width = 153
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'FFT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object HD6: TLabel
        Left = 560
        Top = 31
        Width = 305
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hourily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DD6: TLabel
        Left = 288
        Top = 31
        Width = 265
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Daily_Defect'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
    end
  end
  object FFTQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FTT.sumline,'
      'Case '
      
        'when SubString(FTT.Sumline,4,1)='#39'L'#39' then SubString(FTT.Sumline,1' +
        ',3)+'#39'-LEAN'#39'+SubString(FTT.Sumline,5,2)+'#39'-'#39'+SubString(FTT.Sumline' +
        ',7,2) '
      
        'when SubString(FTT.Sumline,4,1)='#39'B'#39' then SubString(FTT.Sumline,1' +
        ',3)+'#39'-L'#39'+SubString(FTT.Sumline,5,2)+'#39'-'#39'+SubString(FTT.Sumline,7,' +
        '2)  '
      'end as DepName, '
      'sum(case when GXLB = '#39'C'#39' then Qty end) as '#39'C'#39', '
      'sum(case when GXLB = '#39'S'#39' then Qty end) as '#39'S'#39', '
      'sum(case when GXLB = '#39'A'#39' then Qty end) as '#39'A'#39', '
      'sum(case when GXLB = '#39'AR'#39' then Qty end) as '#39'AR'#39', '
      'power(10.0000,sum(LOG10(QTY*0.01)))*100 as '#39'FTT'#39', '
      
        #39'                                                               ' +
        '            '#39' as Daily_Defect,'#39'                                 ' +
        '                            '#39' as Hourly_Defect '
      
        'from(select WOPRB.DepNo,WOPRB.DepName,WOPRB.sumline,Replace(WOPR' +
        'B.GXLB,'#39'C+S'#39','#39'S'#39') as GXLB,'#39'4.Pass%'#39' as SB, '
      
        #9#9'    Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*' +
        '100),2) as Qty,WOPRB.NDay '
      
        #9' from(select WOPR.DepNo,BDepartment.DepName,BDepartment.sumline' +
        ',WOPR.GXLB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty '
      #9#9#9#9' ,DATEPART(DAY,WOPR.USERDATE) as NDay'
      #9#9'  from WOPR '
      #9#9'  left join BDepartment on WOPR.DepNo = BDepartment.ID '
      
        ' '#9#9'  where convert(smalldatetime,WOPR.USERDATE,111) between '#39'201' +
        '4/03/12'#39' and '#39'2014/03/13'#39' '
      #9#9#9#9'and WOPR.GSBH ='#39'VA12'#39' and WOPR.GXLB in ('#39'A'#39','#39'AR'#39','#39'C'#39','#39'C+S'#39') '
      
        #9#9'  group by WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,' +
        'WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE)) as WOPRB '
      
        #9#9'  left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qt' +
        'y,DATEPART(DAY,WOPR.USERDATE) as NDay '
      #9#9#9#9#9' from WOPR'
      
        #9#9#9#9#9' where convert(smalldatetime,WOPR.USERDATE,111) between '#39'20' +
        '14/03/12'#39' and '#39'2014/03/13'#39' '
      
        #9#9#9#9#9#9'   and WOPR.GSBH = '#39'VA12'#39' and WOPR.GXLB in ('#39'A'#39','#39'AR'#39','#39'C'#39','#39 +
        'C+S'#39') '
      
        #9#9#9#9#9' group by WOPR.DepNo,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE))' +
        ' as QCRDB '
      
        #9#9#9#9#9#9#9'  on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXL' +
        'B and WOPRB.NDay = QCRDB.NDay'
      '     where WOPRB.sumline is not null) as FTT '
      'group by FTT.sumline '
      'order by FTT.sumline ')
    UpdateObject = FFTUpd
    Left = 536
    Top = 8
    object FFTQrysumline: TStringField
      FieldName = 'sumline'
      FixedChar = True
      Size = 8
    end
    object FFTQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
    end
    object FFTQryC: TFloatField
      FieldName = 'C'
    end
    object FFTQryS: TFloatField
      FieldName = 'S'
    end
    object FFTQryA: TFloatField
      FieldName = 'A'
    end
    object FFTQryAR: TFloatField
      FieldName = 'AR'
    end
    object FFTQryFTT: TFloatField
      FieldName = 'FTT'
    end
    object FFTQryDaily_Defect: TStringField
      FieldName = 'Daily_Defect'
      FixedChar = True
      Size = 100
    end
    object FFTQryHourly_Defect: TStringField
      FieldName = 'Hourly_Defect'
      FixedChar = True
      Size = 100
    end
  end
  object YYBHQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Daily.sumline,Daily.YWSM as DYWSM,Daily.ZWSM as D_ZWSM,Ho' +
        'urly.YWSM as H_YWSM,Hourly.ZWSM as H_ZWSM from '
      '( '
      'select DAYQCR.sumline,QCBLYY.YWSM,QCBLYY.ZWSM '
      
        #9#9'   from(Select F_QCR.sumline,F_QCR.Qty,Max(F_QCR.YYBH) as YYBH' +
        ' '
      #9#9#9'    from (select QCR_A.*,QCR_B.YYBH '
      #9#9#9#9'      from(select G_QCR.sumline,Max(G_QCR.Qty)as Qty '
      
        #9#9#9#9#9#9'   from(select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Max' +
        '(QCRD.Qty) as Qty '
      #9#9#9#9#9'            from QCR'
      #9#9#9#9#9#9#9'    left join QCRD on QCR.Prono=QCRD.Prono'
      #9#9#9#9#9#9#9#9'left join bdepartment on qcr.depno = bdepartment.ID'
      
        #9#9#9#9#9#9#9'    where convert(smalldatetime,QCR.USERDATE,111) between' +
        ' '#39'2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39' '
      
        #9#9#9#9#9#9#9'    group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as ' +
        'G_QCR'
      #9#9#9#9#9#9#9'    group by G_QCR.sumline) as QCR_A'
      
        #9#9#9'    left join (select QCR.DepNo,bdepartment.sumline,QCRD.YYBH' +
        ',Max(QCRD.Qty) as Qty '
      #9#9#9#9#9#9'   from QCR '
      #9#9#9#9#9#9'   left join QCRD on QCR.Prono=QCRD.Prono '
      #9#9#9#9#9#9'   left join bdepartment on qcr.depno = bdepartment.ID '
      
        #9#9#9#9#9#9'   where convert(smalldatetime,QCR.USERDATE,111) between '#39 +
        '2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39'  '
      
        #9#9#9#9#9#9'   group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as QC' +
        'R_B '
      
        #9#9#9#9#9#9#9#9'  on QCR_A.sumline=QCR_B.Sumline and QCR_A.Qty=QCR_B.Qty' +
        ') as F_QCR '
      #9#9#9'    where F_QCR.sumline is not null '
      #9#9#9#9'group by F_QCR.sumline,F_QCR.Qty) as DAYQCR '
      
        #9#9'   left join QCBLYY on DAYQCR.YYBH = QCBLYY.YYBH and QCBLYY.GS' +
        'BH = '#39'VA12'#39' '
      ') as Daily '
      'left join '
      '( '
      'select DAYQCR.sumline,QCBLYY.YWSM,QCBLYY.ZWSM '
      
        #9#9'   from(Select F_QCR.sumline,F_QCR.Qty,Max(F_QCR.YYBH) as YYBH' +
        ' '
      #9#9#9'    from (select QCR_A.*,QCR_B.YYBH '
      #9#9#9#9'      from(select G_QCR.sumline,Max(G_QCR.Qty)as Qty '
      
        #9#9#9#9#9#9'   from(select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Max' +
        '(QCRD.Qty) as Qty '
      #9#9#9#9#9'            from QCR'
      #9#9#9#9#9#9#9'    left join QCRD on QCR.Prono=QCRD.Prono'
      #9#9#9#9#9#9#9#9'left join bdepartment on qcr.depno = bdepartment.ID'
      
        #9#9#9#9#9#9#9'    where convert(smalldatetime,QCR.USERDATE,111) between' +
        ' '#39'2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39' and datepart(' +
        'HH,QCRD.userdate) = datepart(HH,getdate())-1 '
      
        #9#9#9#9#9#9#9'    group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as ' +
        'G_QCR'
      #9#9#9#9#9#9#9'    group by G_QCR.sumline) as QCR_A'
      
        #9#9#9'    left join (select QCR.DepNo,bdepartment.sumline,QCRD.YYBH' +
        ',Max(QCRD.Qty) as Qty '
      #9#9#9#9#9#9'   from QCR '
      #9#9#9#9#9#9'   left join QCRD on QCR.Prono=QCRD.Prono '
      #9#9#9#9#9#9'   left join bdepartment on qcr.depno = bdepartment.ID '
      
        #9#9#9#9#9#9'   where convert(smalldatetime,QCR.USERDATE,111) between '#39 +
        '2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39' and datepart(HH' +
        ',QCRD.userdate) = datepart(HH,getdate())-1 '
      
        #9#9#9#9#9#9'   group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as QC' +
        'R_B '
      
        #9#9#9#9#9#9#9#9'  on QCR_A.sumline=QCR_B.Sumline and QCR_A.Qty=QCR_B.Qty' +
        ') as F_QCR '
      #9#9#9'    where F_QCR.sumline is not null '
      #9#9#9#9'group by F_QCR.sumline,F_QCR.Qty) as DAYQCR '
      
        #9#9'   left join QCBLYY on DAYQCR.YYBH = QCBLYY.YYBH and QCBLYY.GS' +
        'BH = '#39'VA12'#39' '
      ') as Hourly on Daily.sumline=Hourly.sumline '
      ' order by Daily.sumline')
    Left = 576
    Top = 8
  end
  object ReLoadTimer: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = ReLoadTimerTimer
    Left = 616
    Top = 8
  end
  object FFTUpd: TUpdateSQL
    ModifySQL.Strings = (
      'Update QC_RFT_DEP set'
      '   RFT=0'
      'where'
      '  1=2')
    Left = 536
    Top = 40
  end
  object ShowTimer: TTimer
    Enabled = False
    OnTimer = ShowTimerTimer
    Left = 576
    Top = 40
  end
end
