object DDHMReport: TDDHMReport
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'DDHM Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label14: TLabel
      Left = 32
      Top = 16
      Width = 35
      Height = 16
      Caption = 'Begin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 184
      Top = 16
      Width = 24
      Height = 16
      Caption = 'End'
    end
    object Button1: TButton
      Left = 344
      Top = 9
      Width = 81
      Height = 31
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DP1: TDateTimePicker
      Left = 80
      Top = 12
      Width = 89
      Height = 24
      Date = 45402.366854131940000000
      Time = 45402.366854131940000000
      TabOrder = 1
    end
    object DP2: TDateTimePicker
      Left = 224
      Top = 12
      Width = 89
      Height = 24
      Date = 45402.366854131940000000
      Time = 45402.366854131940000000
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 1289
    Height = 579
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 80
    Top = 192
    object Query1MJBH: TStringField
      FieldName = 'MJBH'
    end
    object Query1ColorName: TStringField
      FieldName = 'ColorName'
    end
    object Query1Class: TStringField
      FieldName = 'Class'
    end
    object Query1Size: TStringField
      FieldName = 'Size'
    end
    object Query1INQty: TIntegerField
      FieldName = 'INQty'
    end
    object Query1QtyOut: TIntegerField
      FieldName = 'QtyOut'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 184
  end
  object colorclassQry: TQuery
    DatabaseName = 'DB'
    Left = 128
    Top = 304
  end
end
