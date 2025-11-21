object CartonOrder_Box: TCartonOrder_Box
  Left = 297
  Top = 196
  Width = 769
  Height = 480
  Caption = 'Choose Box:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object gdMain: TDBGridEh
    Left = 0
    Top = 65
    Width = 753
    Height = 377
    Align = alClient
    DataSource = dsMain
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DoubleClick
  end
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 65
    Align = alTop
    TabOrder = 1
    object lbCLBH: TLabel
      Left = 24
      Top = 16
      Width = 47
      Height = 20
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bnQuery: TButton
      Left = 560
      Top = 16
      Width = 121
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object edCLBH: TEdit
      Left = 88
      Top = 16
      Width = 113
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'H14'
    end
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 24
    Top = 112
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 72
    Top = 112
  end
end
