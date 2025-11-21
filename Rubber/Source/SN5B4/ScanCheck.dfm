object ScanCheck1: TScanCheck1
  Left = 430
  Top = 260
  Width = 1098
  Height = 540
  Caption = 'ScanCheck'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1082
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 33
      Width = 37
      Height = 16
      Caption = 'From: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 340
      Top = 31
      Width = 23
      Height = 16
      Caption = 'To: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 76
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 30
      Width = 135
      Height = 24
      Date = 45786.567672384260000000
      Format = 'yyyy/MM/dd'
      Time = 45786.567672384260000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 371
      Top = 29
      Width = 135
      Height = 24
      Date = 45786.567714502310000000
      Format = 'yyyy/MM/dd'
      Time = 45786.567714502310000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 66
      Top = 71
      Width = 150
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP3: TDateTimePicker
      Left = 195
      Top = 29
      Width = 135
      Height = 24
      Date = 45785.000000000000000000
      Format = 'HH:mm:ss'
      Time = 45785.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object DTP4: TDateTimePicker
      Left = 508
      Top = 28
      Width = 135
      Height = 24
      Date = 45785.999988425920000000
      Format = 'HH:mm:ss'
      Time = 45785.999988425920000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 256
      Top = 66
      Width = 81
      Height = 30
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 384
      Top = 66
      Width = 81
      Height = 30
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1082
    Height = 380
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'QRCode'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'WIn'
        Footer.FieldName = 'WIn'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'InDate'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Width = 151
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  YSBH,  QRCode,Win, InDate from TB_DD.dbo.SMDDScanOut')
    Left = 240
    Top = 208
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      Origin = 'DB.SMDDScanOut.YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1QRCode: TStringField
      FieldName = 'QRCode'
      Origin = 'DB.SMDDScanOut.QRCode'
      FixedChar = True
      Size = 15
    end
    object Query1WIn: TIntegerField
      FieldName = 'WIn'
      Origin = 'DB.SMDDScanOut.WIn'
    end
    object Query1InDate: TDateTimeField
      FieldName = 'InDate'
      Origin = 'DB.SMDDScanOut.INDATE'
      DisplayFormat = 'yyyy/MM/dd HH:mm:ss'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 208
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 296
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghFitGridToPageWidth, pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    OnAfterPrint = PrintDBGridEh1AfterPrint
    Left = 112
    Top = 272
  end
end
