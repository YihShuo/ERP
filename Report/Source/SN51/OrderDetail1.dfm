object OrderDetail: TOrderDetail
  Left = 482
  Top = 242
  Width = 517
  Height = 388
  Caption = 'OrderDetail'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 501
    Height = 350
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
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
        FieldName = 'DDBH'
        Footer.FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'DDBH|'#35330#21934#32232#34399
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.Caption = 'DDZT|'#29376#24907
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = 'ShipDate|'#20986#36008#26085#26399
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DDQty'
        Footers = <>
        Title.Caption = 'DDQty|'#35330#21934#38617#25976
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SCQty'
        Footers = <>
        Title.Caption = 'SCQty|'#29983#29986#38617#25976
        Width = 70
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'DiffQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'DiffQty|'#27424#25976
        Width = 70
      end>
  end
  object OrderQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select ddzl.DDBH,ddzl.DDZT,ddzl.ShipDate,pairs as DDQty,isnull(' +
        'convert(int,sum(scbbs.Qty)),0) as SCQty,pairs-isnull(convert(int' +
        ',sum(scbbs.Qty)),0)as DiffQty'
      ' from ddzl'
      ' left join kfzl on kfzl.kfdh = DDZL.KHBH'
      ' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB='#39'A'#39
      ' left join scbb on scbb.proNo=scbbs.proNo'
      
        ' where year(DDZL.ShipDate)=2017 and month(DDZL.Shipdate)=2 and D' +
        'DZL.DDGB='#39'VIE'#39
      ' and ddzl.DDZT<>'#39'C'#39' and ddzl.DDLB<>'#39'B'#39
      ' group by ddzl.ddbh,ddzl.ddzt,ddzl.shipdate,pairs'
      ' having DDZL.Pairs-isnull(convert(int,sum(scbbs.Qty)),0)>0'
      ' order by ddbh')
    Left = 304
    Top = 128
    object OrderQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object OrderQryDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object OrderQryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object OrderQryDDQty: TIntegerField
      FieldName = 'DDQty'
    end
    object OrderQrySCQty: TIntegerField
      FieldName = 'SCQty'
    end
    object OrderQryDiffQty: TIntegerField
      FieldName = 'DiffQty'
    end
  end
  object DataSource1: TDataSource
    DataSet = OrderQry
    Left = 344
    Top = 128
  end
end
