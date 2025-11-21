object KhuonIn_Order: TKhuonIn_Order
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'KhuonIn_Order'
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
    Width = 912
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 17
      Width = 40
      Height = 16
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 11
      Width = 134
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 431
      Top = 8
      Width = 77
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 270
      Top = 10
      Width = 107
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 528
      Top = 24
      Width = 65
      Height = 17
      Caption = 'not ok'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 50
    Width = 912
    Height = 391
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Quantity'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.GSBH,DDZL.Quantity,isnull(RK.RKQty,0) as R' +
        'KQty,isnull(LL.LLQty,0) as LLQty,isnull(RK.RKQty,0)-isnull(LL.LL' +
        'Qty,0) as Qty'
      'from KHUONIN_DDZL DDZL'
      
        'left join (select DDBH,sum(Qty) as RKQty from KHUONIN_RK group b' +
        'y DDBH) RK on RK.DDBH=DDZL.DDBH'
      
        'left join (select DDBH,sum(Qty) as LLQty from KHUONIN_LL group b' +
        'y DDBH) LL on LL.DDBH=DDZL.DDBH'
      'where 1=1')
    Left = 424
    Top = 200
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Quantity: TIntegerField
      FieldName = 'Quantity'
      DisplayFormat = '#,##0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 160
  end
end
