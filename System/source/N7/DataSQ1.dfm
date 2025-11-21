object DataSQ: TDataSQ
  Left = 686
  Top = 215
  Width = 1305
  Height = 675
  Caption = 'test data sinh quan'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 19
      Height = 16
      Caption = 'PO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 216
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Edit2: TEdit
      Left = 72
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = 'xuat excel'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 840
    Height = 587
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
  object DBGrid1: TDBGridEh
    Left = 840
    Top = 49
    Width = 449
    Height = 587
    Align = alRight
    DataSource = DataSource2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ddbh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 184
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 928
    Top = 216
    object Query2ddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object Query2qty: TIntegerField
      FieldName = 'qty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 960
    Top = 216
  end
end
