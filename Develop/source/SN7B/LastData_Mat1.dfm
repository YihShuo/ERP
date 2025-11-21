object LastData_Mat: TLastData_Mat
  Left = 571
  Top = 442
  Width = 479
  Height = 350
  Caption = 'LastData_Mat'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 319
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 469
      Height = 48
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 11
        Width = 38
        Height = 16
        Caption = 'Mat ID'
      end
      object Label2: TLabel
        Left = 203
        Top = 9
        Width = 37
        Height = 16
        Caption = 'Name'
      end
      object Button1: TButton
        Left = 375
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Query'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 58
        Top = 7
        Width = 121
        Height = 24
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 246
        Top = 5
        Width = 121
        Height = 24
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 49
      Width = 469
      Height = 269
      Align = alClient
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 467
        Height = 267
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
        OnCellClick = DBGridEh1CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldh'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Mat ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 382
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 268
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select cldh,zwpm,ywpm,userdate from clzl where left(cldh,2)='#39'VD'#39
      'order by userdate desc')
    Left = 193
    Top = 97
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 193
    Top = 129
  end
end
