object MachineLean: TMachineLean
  Left = 593
  Top = 340
  Width = 464
  Height = 368
  Caption = 'MachineLean'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 47
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
      Top = 16
      Width = 45
      Height = 16
      Caption = 'Factory'
    end
    object Label2: TLabel
      Left = 160
      Top = 16
      Width = 13
      Height = 16
      Caption = 'ID'
    end
    object Edit1: TEdit
      Left = 68
      Top = 12
      Width = 73
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 180
      Top = 12
      Width = 141
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 344
      Top = 8
      Width = 89
      Height = 31
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 47
    Width = 448
    Height = 282
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
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 172
      end
      item
        EditButtons = <>
        FieldName = 'Lean'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Xuong'
        Footers = <>
        Width = 49
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 120
    object Query1ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object Query1Lean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Query1Xuong: TStringField
      FieldName = 'Xuong'
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 88
  end
end
