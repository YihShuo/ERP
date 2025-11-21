object QRScanISHours: TQRScanISHours
  Left = 604
  Top = 370
  Width = 1305
  Height = 675
  Caption = 'QR Scan Is Hours'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 74
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 384
      Top = 32
      Width = 58
      Height = 16
      Caption = 'Don hang'
    end
    object Label2: TLabel
      Left = 616
      Top = 32
      Width = 63
      Height = 16
      Caption = 'DepName'
    end
    object Label3: TLabel
      Left = 123
      Top = 33
      Width = 32
      Height = 16
      Alignment = taCenter
      Caption = 'Date:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 117
      Top = 16
      Width = 41
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #26085#26399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1056
      Top = 16
      Width = 107
      Height = 16
      Caption = 'San luong ScanIn:'
    end
    object Label6: TLabel
      Left = 1056
      Top = 48
      Width = 117
      Height = 16
      Caption = 'San luong ScanOut:'
    end
    object Label7: TLabel
      Left = 1184
      Top = 8
      Width = 7
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 1184
      Top = 40
      Width = 7
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 920
      Top = 21
      Width = 73
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 690
      Top = 25
      Width = 199
      Height = 24
      CharCase = ecUpperCase
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 448
      Top = 24
      Width = 153
      Height = 24
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 160
      Top = 16
      Width = 89
      Height = 24
      Date = 39219.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 39219.000000000000000000
      DateMode = dmUpDown
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 3
    end
    object DTP3: TDateTimePicker
      Left = 160
      Top = 40
      Width = 89
      Height = 24
      Date = 39219.000000000000000000
      Format = 'yyyy-MM-dd'
      Time = 39219.000000000000000000
      DateMode = dmUpDown
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 4
    end
    object DTP4: TDateTimePicker
      Left = 250
      Top = 40
      Width = 73
      Height = 24
      Date = 39219.999988425930000000
      Format = 'HH:mm:ss'
      Time = 39219.999988425930000000
      ImeName = 'Chinese (Traditional) - New Phonetic'
      Kind = dtkTime
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 250
      Top = 16
      Width = 73
      Height = 24
      Date = 39219.000000000000000000
      Format = 'HH:mm:ss'
      Time = 39219.000000000000000000
      ImeName = 'Chinese (Traditional) - New Phonetic'
      Kind = dtkTime
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 74
    Width = 1289
    Height = 562
    Align = alClient
    EvenRowColor = 16515069
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_03.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '03.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_03.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '03.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_03.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '03.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_03.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '03.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_04'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_04.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_04.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_04.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_04.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '04.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_05'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_05.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_05.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_05.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_05.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '05.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_06'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_06.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_06.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_06.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_06.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '06.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_07'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_07.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_07.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_07.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_07.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '07.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_08'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_08.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_08.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_08.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_08.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '08.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_09'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_09.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_09.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_09.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_09.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '09.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_10'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_10.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_10.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_10.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_10.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '10.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_11'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_11.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_11.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_11.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_11.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '11.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_12'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_12.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12.5 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_12.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12.5 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_12.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12.5 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_12.5'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '12.5 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_13'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '13 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_13'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '13 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_13'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '13 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_13'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '13 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_14'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '14 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_14'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '14 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_14'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '14 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_14'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '14 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_15'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '15 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_15'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '15 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_15'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '15 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_15'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '15 | TonKho'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanTotal_16'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '16 | Total'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty_16'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '16 | In'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty_16'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '16 | Out'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'scantonkho_16'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '16 | TonKho'
        Title.TitleButton = True
        Width = 50
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 74
    Width = 1289
    Height = 562
    Align = alClient
    DataSource = DS1
    EvenRowColor = 16515069
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 152
  end
  object HourRep: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 256
    Top = 160
  end
  object DS1: TDataSource
    DataSet = HourRep
    Left = 296
    Top = 152
  end
  object In_Out: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 152
  end
end
