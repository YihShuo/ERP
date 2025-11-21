object History: THistory
  Left = 498
  Top = 473
  Width = 684
  Height = 333
  Caption = 'History'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 668
    Height = 294
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'MergeNo'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footer.FieldName = 'YPDH'
        Footers = <>
        Title.Caption = 'Sample No'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material Code'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'UseStockQty'
        Footers = <>
        Title.Caption = 'Use Stock Qty'
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'UserID_WH'
        Footer.FieldName = 'UserID_WH'
        Footers = <>
        Title.Caption = 'UserID'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'UserDate_WH'
        Footers = <>
        Title.Caption = 'UserDate'
        Width = 70
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = RequestCheckStock.DataSource1
    SQL.Strings = (
      'select *'
      'from CGUseStock_Dev_his'
      'where 1=2')
    Left = 208
    Top = 80
    object Query1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1UseStockQty: TCurrencyField
      FieldName = 'UseStockQty'
      DisplayFormat = '##,#0.0000'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object Query1UserID_WH: TStringField
      FieldName = 'UserID_WH'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate_WH: TDateTimeField
      FieldName = 'UserDate_WH'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 80
  end
end
