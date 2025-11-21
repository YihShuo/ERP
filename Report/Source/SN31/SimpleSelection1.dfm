object SimpleSelection: TSimpleSelection
  Left = 351
  Top = 175
  Width = 682
  Height = 480
  Caption = 'Supplier Selection'
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
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 57
    Align = alTop
    TabOrder = 0
    object lbDH: TLabel
      Left = 8
      Top = 8
      Width = 65
      Height = 25
      AutoSize = False
      Caption = 'No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbName: TLabel
      Left = 112
      Top = 8
      Width = 73
      Height = 25
      AutoSize = False
      Caption = 'Key word:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bnQuery: TButton
      Left = 528
      Top = 16
      Width = 97
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object edDH: TEdit
      Left = 8
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object edName: TEdit
      Left = 112
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 57
    Width = 666
    Height = 385
    Align = alClient
    DataSource = dsMain
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
    OnDblClick = gdMainDblClick
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 16
    Top = 120
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 56
    Top = 120
  end
end
