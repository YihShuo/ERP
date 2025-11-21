object simpleselect: Tsimpleselect
  Left = 390
  Top = 210
  Width = 829
  Height = 412
  Caption = 'Simple Select'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 408
    Top = 56
    Width = 32
    Height = 13
    Caption = 'SR No'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 88
      Height = 16
      Caption = 'Sample Mode:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 200
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Season:'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 32
      Top = 52
      Width = 65
      Height = 16
      Caption = 'Creat After:'
    end
    object Label4: TLabel
      Left = 208
      Top = 52
      Width = 43
      Height = 16
      Caption = 'SR No:'
    end
    object Label6: TLabel
      Left = 400
      Top = 52
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Label7: TLabel
      Left = 368
      Top = 20
      Width = 73
      Height = 16
      Caption = 'Sample NO:'
    end
    object Button1: TButton
      Left = 600
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 16
      Width = 89
      Height = 24
      DataField = 'KFJD'
      DataSource = SmapleOrderList.ypzlzl_ds
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 16
      Width = 73
      Height = 24
      DataField = 'JiJie'
      DataSource = SmapleOrderList.ypzlzl_ds
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object dtp2: TDateTimePicker
      Left = 104
      Top = 48
      Width = 89
      Height = 24
      Date = 41016.327722349540000000
      Format = 'yyyy/MM/dd'
      Time = 41016.327722349540000000
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 257
      Top = 50
      Width = 136
      Height = 24
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 336
      Top = 16
      Width = 25
      Height = 24
      TabOrder = 5
      Visible = False
    end
    object Edit4: TEdit
      Left = 448
      Top = 16
      Width = 137
      Height = 24
      TabOrder = 6
    end
  end
  object Edit2: TEdit
    Left = 449
    Top = 50
    Width = 136
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 813
    Height = 284
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
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
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypdh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Sample NO'
      end
      item
        EditButtons = <>
        FieldName = 'xiexing'
        Footers = <>
        Title.Caption = 'Type'
      end
      item
        EditButtons = <>
        FieldName = 'shehao'
        Footers = <>
        Title.Caption = 'Color'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'Article'
      end
      item
        EditButtons = <>
        FieldName = 'kfjd'
        Footers = <>
        Title.Caption = 'Sample Mode'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'cfm'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'quantity'
        Footers = <>
        Title.Caption = 'PAIRS'
      end>
  end
  object SimpleQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ypzl.ypdh,ypzl.xiexing,ypzl.shehao,ypzl.article,ypzl.kfjd' +
        ','
      #9'ypzl.cfm,kfxxzl.jijie,ypzl.quantity ,kfxxzl.devcode'
      'from ypzl'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao')
    Left = 88
    Top = 144
    object SimpleQryypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object SimpleQryxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object SimpleQryshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object SimpleQryarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object SimpleQrykfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object SimpleQrycfm: TStringField
      FieldName = 'cfm'
      FixedChar = True
      Size = 1
    end
    object SimpleQryjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object SimpleQryquantity: TFloatField
      FieldName = 'quantity'
    end
    object SimpleQrydevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = SimpleQry
    Left = 136
    Top = 144
  end
end
