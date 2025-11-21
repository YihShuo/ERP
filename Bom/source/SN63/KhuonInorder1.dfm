object KhuonInorder: TKhuonInorder
  Left = 554
  Top = 187
  Width = 908
  Height = 455
  Caption = 'Khuon In order'
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
    Width = 892
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 17
      Width = 77
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
      Left = 88
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
      Left = 241
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
      Left = 336
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
    Width = 892
    Height = 366
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
      end
      item
        EditButtons = <>
        FieldName = 'OKQTY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RKQTY'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.GSBH,DDZL.Quantity,RK.OKQTY,DDZL.Quantity-' +
        'RK.OKQTY as RKQTY'
      'from KHUONIN_DDZL DDZL'
      
        'left join (select DDBH,sum (QTY) as OKQTY from KHUONIN_RK group ' +
        'by DDBH) RK on RK.DDBH=DDZL.DDBH')
    Left = 424
    Top = 200
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Quantity: TIntegerField
      FieldName = 'Quantity'
      DisplayFormat = '#,##0.0'
    end
    object Query1OKQTY: TCurrencyField
      FieldName = 'OKQTY'
      DisplayFormat = '#,##0.0'
    end
    object Query1RKQTY: TCurrencyField
      FieldName = 'RKQTY'
      DisplayFormat = '#,##0.0'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 160
  end
end
