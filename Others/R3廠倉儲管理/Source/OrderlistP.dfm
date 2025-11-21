object Orderlist: TOrderlist
  Left = 286
  Top = 163
  Width = 722
  Height = 480
  Caption = 'Order List'
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
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 89
    Align = alTop
    Caption = 'panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 55
      Height = 20
      Caption = 'XieXing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 32
      Width = 64
      Height = 20
      Caption = 'Order No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 312
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 462
      Top = 30
      Width = 75
      Height = 25
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 706
    Height = 353
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ddbh'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cqdh'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xiexing'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'article'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'khdh'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'khpo'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ddjq'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pairs'
        Visible = True
      end>
  end
  object QORDER: TQuery
    DatabaseName = 'db'
    DataSource = ProductionPlan.WPS
    SQL.Strings = (
      'SElect ddbh,cqdh,xiexing,article,khdh,khpo,ddjq,pairs from ddzl')
    Left = 608
    Top = 16
    object QORDERddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 18
    end
    object QORDERcqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 3
    end
    object QORDERxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 18
    end
    object QORDERarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object QORDERkhdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 4
    end
    object QORDERkhpo: TStringField
      FieldName = 'khpo'
      FixedChar = True
      Size = 50
    end
    object QORDERddjq: TStringField
      FieldName = 'ddjq'
      FixedChar = True
      Size = 8
    end
    object QORDERpairs: TFloatField
      FieldName = 'pairs'
    end
  end
  object DataSource1: TDataSource
    DataSet = QORDER
    Left = 648
    Top = 16
  end
end
