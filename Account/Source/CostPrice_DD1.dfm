object CostPrice_DD: TCostPrice_DD
  Left = 363
  Top = 220
  Width = 912
  Height = 391
  BorderIcons = [biSystemMenu]
  Caption = 'CostPrice_DD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 51
      Height = 20
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 61
      Height = 20
      Caption = 'XieMing:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 272
      Top = 16
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 424
      Top = 16
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 896
    Height = 295
    Align = alClient
    DataSource = DS1
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'okACC'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWDD.DDBH,CWDD.Article,CWDD.XieMing,sum(CWDD.Qty) as Qty,'
      'sum(CWDD.USACC) as USACC,CWSK.okQty,CWSK.okACC'
      'from CWDD'
      'left join (select ZLBH,sum(Pairs) as okQty,sum(USACC) as okACC '
      '            from CWSKS '
      '            where ZLBH like '#39'%'#39
      '            group by ZLBH) CWSK on CWSK.ZLBH=CWDD.DDBH '
      'where CWDD.DDBH like '#39'%'#39
      'and  CWDD.XieMing like '#39'%%'#39
      
        'group by CWDD.DDBH,CWDD.Article,CWDD.XieMing,CWSK.okQty,CWSK.okA' +
        'CC '
      'having CWSK.okACC<sum(CWDD.USACC) '
      'order by DDBH ')
    Left = 424
    Top = 160
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1okQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1okACC: TCurrencyField
      FieldName = 'okACC'
      DisplayFormat = '##,#0.00'
    end
  end
end
