object AnyStockRPrice: TAnyStockRPrice
  Left = 305
  Top = 237
  Width = 1305
  Height = 675
  Caption = 'AnyStock R Price'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1289
    Height = 587
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 268
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 17
      Width = 50
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 219
      Top = 11
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 65
      Top = 11
      Width = 128
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.RKNO,KCRK.CKBH,KCRKS.clbh,KCRKS.VNPrice,KCRKS.Qty,KC' +
        'RKS.VNACC'
      'from KCRKS left join KCRK on KCRKS.RKNO=KCRK.RKNO where 1=1 ')
    Left = 424
    Top = 160
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0.00'
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 389
    Top = 128
  end
end
