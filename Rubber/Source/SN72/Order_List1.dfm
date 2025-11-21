object Order_List: TOrder_List
  Left = 546
  Top = 160
  Width = 674
  Height = 480
  Caption = 'Order_Rubber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
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
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 147
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
      Left = 257
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
    object CheckBox1: TCheckBox
      Left = 354
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
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 50
    Width = 666
    Height = 399
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
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
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
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
      
        'select DDZL.DDBH,DDZL.CQDH,DDZL.Pairs,isnull(RK.RKQty,0) as RKQt' +
        'y,isnull(LL.LLQty,0) as LLQty,isnull(RK.RKQty,0) - isnull(LL.LLQ' +
        'ty,0) as Qty '
      'from LIY_DD.dbo.DDZL DDZL  '
      
        'left join (select DDBH, sum(Qty) as RKQty from LIY_DD.dbo.OUTSOL' +
        'E_RK group by DDBH) RK on RK.DDBH=DDZL.DDBH'
      
        'left join (select DDBH, sum(Qty) as LLQty from LIY_DD.dbo.OUTSOL' +
        'E_LL group by DDBH) LL on LL.DDBH=DDZL.DDBH   '
      'where 1=1'
      'and DDZL.DDBH like '#39'AURR1020-001%'#39)
    Left = 424
    Top = 200
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
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
