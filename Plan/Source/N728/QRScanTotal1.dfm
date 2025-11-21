object QRScanTotal: TQRScanTotal
  Left = 150
  Top = 147
  Width = 1545
  Height = 675
  Caption = 'QRScanTotal'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1529
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
      Left = 16
      Top = 32
      Width = 58
      Height = 16
      Caption = 'Don hang'
    end
    object Label2: TLabel
      Left = 304
      Top = 32
      Width = 26
      Height = 16
      Caption = 'Size'
    end
    object Button1: TButton
      Left = 728
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
      Left = 338
      Top = 25
      Width = 79
      Height = 24
      CharCase = ecUpperCase
      ImeName = 'Chinese (Traditional) - New Phonetic'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 24
      Width = 153
      Height = 24
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 74
    Width = 1529
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
  object QRScan: TQuery
    AfterOpen = QRScanAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '    DDBH,'
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'03.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTot' +
        'al_03.5'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'03.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sc' +
        'anInQty_03.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'03.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_03.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'03.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_03.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'04'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_04'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'04'#39' THEN ScanInQty ELSE 0 END) AS '#39'Scan' +
        'InQty_04'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'04'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_04'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'04'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_04'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'04.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTot' +
        'al_04.5'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'04.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sc' +
        'anInQty_04.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'04.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_04.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'04.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_04.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'05'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_05'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'05'#39' THEN ScanInQty ELSE 0 END) AS '#39'Scan' +
        'InQty_05'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'05'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_05'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'05'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_05'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'05.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTot' +
        'al_05.5'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'05.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sc' +
        'anInQty_05.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'05.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_05.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'05.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_05.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'06'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_06'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'06'#39' THEN ScanInQty ELSE 0 END) AS '#39'Scan' +
        'InQty_06'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'06'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_06'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'06'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_06'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'06.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTot' +
        'al_06.5'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'06.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sc' +
        'anInQty_06.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'06.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_06.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'06.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_06.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'07'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_07'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'07'#39' THEN ScanInQty ELSE 0 END) AS '#39'Scan' +
        'InQty_07'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'07'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_07'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'07'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_07'#39','
      '    '
      
        #9'  SUM(CASE WHEN SIZE = '#39'07.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTota' +
        'l_07.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'07.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'S' +
        'canInQty_07.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'07.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_07.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'07.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_07.5'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'08'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal_' +
        '08'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'08'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_08'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'08'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_08'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'08'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_08'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'08.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTota' +
        'l_08.5'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'08.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sc' +
        'anInQty_08.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'08.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_08.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'08.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_08.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'09'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_09'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'09'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_09'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'09'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_09'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'09'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_09'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'09.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTot' +
        'al_09.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'09.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'S' +
        'canInQty_09.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'09.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_09.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'09.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_09.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'10'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_10'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'10'#39' THEN ScanInQty ELSE 0 END) AS '#39'Scan' +
        'InQty_10'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'10'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_10'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'10'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_10'#39','
      '    '
      
        #9'  SUM(CASE WHEN SIZE = '#39'10.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTota' +
        'l_10.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'10.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'S' +
        'canInQty_10.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'10.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_10.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'10.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_10.5'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'11'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal_' +
        '11'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'11'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_11'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'11'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_11'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'11'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_11'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'11.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTota' +
        'l_11.5'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'11.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sc' +
        'anInQty_11.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'11.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_11.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'11.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_11.5'#39','
      '    '
      
        #9'  SUM(CASE WHEN SIZE = '#39'12'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal_' +
        '12'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'12'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_12'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'12'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_12'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'12'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_12'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'12.5'#39' THEN Qty ELSE 0 END) AS '#39'ScanTota' +
        'l_12.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'12.5'#39' THEN ScanInQty ELSE 0 END) AS '#39'S' +
        'canInQty_12.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'12.5'#39' THEN ScanOutQty ELSE 0 END) AS '#39 +
        'ScanOutQty_12.5'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'12.5'#39' THEN (ScanInQty - ScanOutQty) EL' +
        'SE 0 END) AS '#39'scantonkho_12.5'#39','
      ''
      
        '    SUM(CASE WHEN SIZE = '#39'13'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal' +
        '_13'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'13'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_13'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'13'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_13'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'13'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_13'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'14'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal_' +
        '14'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'14'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_14'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'14'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_14'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'14'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_14'#39','
      ''
      
        #9'  SUM(CASE WHEN SIZE = '#39'15'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal_' +
        '15'#39','
      
        #9'  SUM(CASE WHEN SIZE = '#39'15'#39' THEN ScanInQty ELSE 0 END) AS '#39'Scan' +
        'InQty_15'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'15'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_15'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'15'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_15'#39','
      '    '
      
        #9'  SUM(CASE WHEN SIZE = '#39'16'#39' THEN Qty ELSE 0 END) AS '#39'ScanTotal_' +
        '16'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'16'#39' THEN ScanInQty ELSE 0 END) AS '#39'Sca' +
        'nInQty_16'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'16'#39' THEN ScanOutQty ELSE 0 END) AS '#39'Sc' +
        'anOutQty_16'#39','
      
        '    SUM(CASE WHEN SIZE = '#39'16'#39' THEN (ScanInQty - ScanOutQty) ELSE' +
        ' 0 END) AS '#39'scantonkho_16'#39
      ''
      'FROM CutDispatchSSS'
      'WHERE ZLBH = '#39'JHS2412-1561'#39' '
      'GROUP BY DDBH'
      'ORDER BY DDBH;')
    Left = 208
    Top = 144
    object QRScanDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QRScanScanTotal_07: TIntegerField
      FieldName = 'ScanTotal_07'
    end
    object QRScanScanInQty_07: TIntegerField
      FieldName = 'ScanInQty_07'
    end
    object QRScanScanOutQty_07: TIntegerField
      FieldName = 'ScanOutQty_07'
    end
    object QRScanscantonkho_07: TIntegerField
      FieldName = 'scantonkho_07'
    end
    object QRScanScanTotal_075: TIntegerField
      FieldName = 'ScanTotal_07.5'
    end
    object QRScanScanInQty_075: TIntegerField
      FieldName = 'ScanInQty_07.5'
    end
    object QRScanScanOutQty_075: TIntegerField
      FieldName = 'ScanOutQty_07.5'
    end
    object QRScanscantonkho_075: TIntegerField
      FieldName = 'scantonkho_07.5'
    end
    object QRScanScanTotal_08: TIntegerField
      FieldName = 'ScanTotal_08'
    end
    object QRScanScanInQty_08: TIntegerField
      FieldName = 'ScanInQty_08'
    end
    object QRScanScanOutQty_08: TIntegerField
      FieldName = 'ScanOutQty_08'
    end
    object QRScanscantonkho_08: TIntegerField
      FieldName = 'scantonkho_08'
    end
    object QRScanScanTotal_085: TIntegerField
      FieldName = 'ScanTotal_08.5'
    end
    object QRScanScanInQty_085: TIntegerField
      FieldName = 'ScanInQty_08.5'
    end
    object QRScanScanOutQty_085: TIntegerField
      FieldName = 'ScanOutQty_08.5'
    end
    object QRScanscantonkho_085: TIntegerField
      FieldName = 'scantonkho_08.5'
    end
    object QRScanScanTotal_09: TIntegerField
      FieldName = 'ScanTotal_09'
    end
    object QRScanScanInQty_09: TIntegerField
      FieldName = 'ScanInQty_09'
    end
    object QRScanScanOutQty_09: TIntegerField
      FieldName = 'ScanOutQty_09'
    end
    object QRScanscantonkho_09: TIntegerField
      FieldName = 'scantonkho_09'
    end
    object QRScanScanTotal_095: TIntegerField
      FieldName = 'ScanTotal_09.5'
    end
    object QRScanScanInQty_095: TIntegerField
      FieldName = 'ScanInQty_09.5'
    end
    object QRScanScanOutQty_095: TIntegerField
      FieldName = 'ScanOutQty_09.5'
    end
    object QRScanscantonkho_095: TIntegerField
      FieldName = 'scantonkho_09.5'
    end
    object QRScanScanTotal_10: TIntegerField
      FieldName = 'ScanTotal_10'
    end
    object QRScanScanInQty_10: TIntegerField
      FieldName = 'ScanInQty_10'
    end
    object QRScanScanOutQty_10: TIntegerField
      FieldName = 'ScanOutQty_10'
    end
    object QRScanscantonkho_10: TIntegerField
      FieldName = 'scantonkho_10'
    end
    object QRScanScanTotal_105: TIntegerField
      FieldName = 'ScanTotal_10.5'
    end
    object QRScanScanInQty_105: TIntegerField
      FieldName = 'ScanInQty_10.5'
    end
    object QRScanScanOutQty_105: TIntegerField
      FieldName = 'ScanOutQty_10.5'
    end
    object QRScanscantonkho_105: TIntegerField
      FieldName = 'scantonkho_10.5'
    end
    object QRScanScanTotal_11: TIntegerField
      FieldName = 'ScanTotal_11'
    end
    object QRScanScanInQty_11: TIntegerField
      FieldName = 'ScanInQty_11'
    end
    object QRScanScanOutQty_11: TIntegerField
      FieldName = 'ScanOutQty_11'
    end
    object QRScanscantonkho_11: TIntegerField
      FieldName = 'scantonkho_11'
    end
    object QRScanScanTotal_115: TIntegerField
      FieldName = 'ScanTotal_11.5'
    end
    object QRScanScanInQty_115: TIntegerField
      FieldName = 'ScanInQty_11.5'
    end
    object QRScanScanOutQty_115: TIntegerField
      FieldName = 'ScanOutQty_11.5'
    end
    object QRScanscantonkho_115: TIntegerField
      FieldName = 'scantonkho_11.5'
    end
    object QRScanScanTotal_12: TIntegerField
      FieldName = 'ScanTotal_12'
    end
    object QRScanScanInQty_12: TIntegerField
      FieldName = 'ScanInQty_12'
    end
    object QRScanScanOutQty_12: TIntegerField
      FieldName = 'ScanOutQty_12'
    end
    object QRScanscantonkho_12: TIntegerField
      FieldName = 'scantonkho_12'
    end
    object QRScanScanTotal_125: TIntegerField
      FieldName = 'ScanTotal_12.5'
    end
    object QRScanScanInQty_125: TIntegerField
      FieldName = 'ScanInQty_12.5'
    end
    object QRScanScanOutQty_125: TIntegerField
      FieldName = 'ScanOutQty_12.5'
    end
    object QRScanscantonkho_125: TIntegerField
      FieldName = 'scantonkho_12.5'
    end
    object QRScanScanTotal_035: TIntegerField
      FieldName = 'ScanTotal_03.5'
    end
    object QRScanScanInQty_035: TIntegerField
      FieldName = 'ScanInQty_03.5'
    end
    object QRScanScanOutQty_035: TIntegerField
      FieldName = 'ScanOutQty_03.5'
    end
    object QRScanscantonkho_035: TIntegerField
      FieldName = 'scantonkho_03.5'
    end
    object QRScanScanTotal_04: TIntegerField
      FieldName = 'ScanTotal_04'
    end
    object QRScanScanInQty_04: TIntegerField
      FieldName = 'ScanInQty_04'
    end
    object QRScanScanOutQty_04: TIntegerField
      FieldName = 'ScanOutQty_04'
    end
    object QRScanscantonkho_04: TIntegerField
      FieldName = 'scantonkho_04'
    end
    object QRScanScanTotal_045: TIntegerField
      FieldName = 'ScanTotal_04.5'
    end
    object QRScanScanInQty_045: TIntegerField
      FieldName = 'ScanInQty_04.5'
    end
    object QRScanScanOutQty_045: TIntegerField
      FieldName = 'ScanOutQty_04.5'
    end
    object QRScanscantonkho_045: TIntegerField
      FieldName = 'scantonkho_04.5'
    end
    object QRScanScanTotal_05: TIntegerField
      FieldName = 'ScanTotal_05'
    end
    object QRScanScanInQty_05: TIntegerField
      FieldName = 'ScanInQty_05'
    end
    object QRScanScanOutQty_05: TIntegerField
      FieldName = 'ScanOutQty_05'
    end
    object QRScanscantonkho_05: TIntegerField
      FieldName = 'scantonkho_05'
    end
    object QRScanScanTotal_055: TIntegerField
      FieldName = 'ScanTotal_05.5'
    end
    object QRScanScanInQty_055: TIntegerField
      FieldName = 'ScanInQty_05.5'
    end
    object QRScanScanOutQty_055: TIntegerField
      FieldName = 'ScanOutQty_05.5'
    end
    object QRScanscantonkho_055: TIntegerField
      FieldName = 'scantonkho_05.5'
    end
    object QRScanScanTotal_06: TIntegerField
      FieldName = 'ScanTotal_06'
    end
    object QRScanScanInQty_06: TIntegerField
      FieldName = 'ScanInQty_06'
    end
    object QRScanScanOutQty_06: TIntegerField
      FieldName = 'ScanOutQty_06'
    end
    object QRScanscantonkho_06: TIntegerField
      FieldName = 'scantonkho_06'
    end
    object QRScanScanTotal_065: TIntegerField
      FieldName = 'ScanTotal_06.5'
    end
    object QRScanScanInQty_065: TIntegerField
      FieldName = 'ScanInQty_06.5'
    end
    object QRScanScanOutQty_065: TIntegerField
      FieldName = 'ScanOutQty_06.5'
    end
    object QRScanscantonkho_065: TIntegerField
      FieldName = 'scantonkho_06.5'
    end
    object QRScanScanTotal_13: TIntegerField
      FieldName = 'ScanTotal_13'
    end
    object QRScanScanInQty_13: TIntegerField
      FieldName = 'ScanInQty_13'
    end
    object QRScanScanOutQty_13: TIntegerField
      FieldName = 'ScanOutQty_13'
    end
    object QRScanscantonkho_13: TIntegerField
      FieldName = 'scantonkho_13'
    end
    object QRScanScanTotal_14: TIntegerField
      FieldName = 'ScanTotal_14'
    end
    object QRScanScanInQty_14: TIntegerField
      FieldName = 'ScanInQty_14'
    end
    object QRScanScanOutQty_14: TIntegerField
      FieldName = 'ScanOutQty_14'
    end
    object QRScanscantonkho_14: TIntegerField
      FieldName = 'scantonkho_14'
    end
    object QRScanScanTotal_15: TIntegerField
      FieldName = 'ScanTotal_15'
    end
    object QRScanScanInQty_15: TIntegerField
      FieldName = 'ScanInQty_15'
    end
    object QRScanScanOutQty_15: TIntegerField
      FieldName = 'ScanOutQty_15'
    end
    object QRScanscantonkho_15: TIntegerField
      FieldName = 'scantonkho_15'
    end
    object QRScanScanTotal_16: TIntegerField
      FieldName = 'ScanTotal_16'
    end
    object QRScanScanInQty_16: TIntegerField
      FieldName = 'ScanInQty_16'
    end
    object QRScanScanOutQty_16: TIntegerField
      FieldName = 'ScanOutQty_16'
    end
    object QRScanscantonkho_16: TIntegerField
      FieldName = 'scantonkho_16'
    end
  end
  object DS1: TDataSource
    DataSet = QRScan
    Left = 248
    Top = 136
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 296
    Top = 136
  end
end
