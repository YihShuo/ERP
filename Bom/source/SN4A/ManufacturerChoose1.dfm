object ManufacturerChoose: TManufacturerChoose
  Left = 653
  Top = 200
  Width = 358
  Height = 380
  Caption = 'ManufacturerChoose '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 350
    Height = 349
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 41
      Width = 348
      Height = 307
      Align = alClient
      DataSource = DataSource1
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
      OnDblClick = DBGridEh1DblClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 348
      Height = 40
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 13
        Top = 10
        Width = 24
        Height = 20
        Caption = 'No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 101
        Top = 10
        Width = 52
        Height = 20
        Caption = 'Vendor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 38
        Top = 11
        Width = 49
        Height = 21
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 158
        Top = 11
        Width = 87
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 262
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 280
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 88
  end
end
