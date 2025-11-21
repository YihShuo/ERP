object SampleDataUpload: TSampleDataUpload
  Left = 577
  Top = 305
  Width = 1057
  Height = 650
  Caption = 'SampleDataUpload'
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
    Width = 1041
    Height = 49
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 5
      Width = 65
      Height = 38
      Caption = 'UPLOAD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 81
      Top = 5
      Width = 59
      Height = 38
      Caption = 'UPDATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 49
    Width = 1041
    Height = 562
    Align = alClient
    ColCount = 9
    DefaultColWidth = 12
    DefaultRowHeight = 17
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
    TabOrder = 1
    ColWidths = (
      12
      139
      41
      68
      88
      85
      112
      112
      57)
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel|*.xls'
    Left = 152
    Top = 8
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 88
  end
end
