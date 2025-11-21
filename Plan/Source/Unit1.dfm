object Report608GX: TReport608GX
  Left = 339
  Top = 190
  Width = 312
  Height = 442
  Caption = 'Report608GX'
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
    Width = 296
    Height = 404
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
        FieldName = 'SCDate'
        Title.Caption = #29983#29986#26085
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DepName'
        Title.Caption = #37096#38272#21517#31281
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GXLB'
        Title.Caption = #24037#27573
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qty'
        Title.Caption = #25976#37327
        Width = 71
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 112
    Top = 168
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 168
  end
end
