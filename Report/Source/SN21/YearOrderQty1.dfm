object Form1: TForm1
  Left = 766
  Top = 327
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 113
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 384
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 24
      Top = 48
      Width = 145
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      Text = 'ComboBox1'
    end
    object ComboBox2: TComboBox
      Left = 216
      Top = 48
      Width = 145
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Text = 'ComboBox1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 1287
    Height = 517
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1285
      Height = 515
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 176
    Top = 169
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 176
    Top = 129
  end
end
