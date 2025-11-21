object ScanStock: TScanStock
  Left = 320
  Top = 186
  Width = 870
  Height = 500
  Caption = 'ScanStock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 328
      Top = 56
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 152
      Top = 56
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 58
      Height = 16
      Caption = 'ArticleNo:'
    end
    object Edit3: TEdit
      Left = 384
      Top = 48
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 216
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 584
      Top = 40
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 48
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 672
      Top = 40
      Width = 73
      Height = 33
      Caption = 'UPDATE'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CB1: TCheckBox
      Left = 472
      Top = 56
      Width = 97
      Height = 17
      Caption = 'All Finished'
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 862
    Height = 377
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 120
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 120
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    Left = 432
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 480
    Top = 144
  end
end
