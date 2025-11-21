object Report608inQty: TReport608inQty
  Left = 555
  Top = 202
  Width = 224
  Height = 357
  Caption = 'Report608inQty'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 208
    Height = 319
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LastInDate'
        Title.Caption = #26368#24460#20837#24235#26085
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Title.Caption = #25976#37327
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 176
    object Query1LastInDate: TDateTimeField
      FieldName = 'LastInDate'
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 176
  end
end
