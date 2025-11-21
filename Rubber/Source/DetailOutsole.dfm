object Outsole: TOutsole
  Left = 375
  Top = 256
  Width = 717
  Height = 288
  Caption = 'Detail Report Outsole'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 257
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 707
      Height = 255
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
          Expanded = False
          FieldName = 'XXCC'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JGCC'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InQty'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastInQty'
          Width = 81
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXCC, GJCC, Qty, WIn as InQty, (Qty-WIn) as LastInQty  fr' +
        'om TB_DD.dbo.SMDDScanOut SMDDScanOut'
      'left join TB_ERP.dbo.ddzl ddzl on SMDDScanOut.YSBH=ddzl.DDBH'
      
        'left join TB_ERP.dbo.xxgjs xxgjs on ddzl.XieXing=xxgjs.XieXing a' +
        'nd ddzl.SheHao=xxgjs.LineNum')
    Left = 112
    Top = 160
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      Size = 5
    end
    object Query1JGCC: TStringField
      FieldName = 'JGCC'
      Size = 6
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
    end
    object Query1LastInQty: TIntegerField
      FieldName = 'LastInQty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 144
  end
end
