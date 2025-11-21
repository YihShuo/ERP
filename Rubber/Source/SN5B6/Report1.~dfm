object Report1Detail: TReport1Detail
  Left = 468
  Top = 304
  Width = 717
  Height = 391
  Caption = 'Report1Detail'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 701
    Height = 352
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'OUTSOLE'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LastInQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'OutQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LastOutQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 216
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT B.YSBH,A.XXCC,A.GJCCs as OUTSOLE,sum(B.Qty) as Qty ,sum (' +
        'b.InQTy) as InQty, SUM ( b.LastInQty) as LastInQty  ,SUM ( b.Out' +
        'Qty) as OutQty , sum (b.LastOutQty) as LastOutQty'
      
        'FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) A' +
        'S GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (se' +
        'lect XieXing  from DDZL where DDBH=:YSBH ) AND gjlb = '#39'101'#39') A'
      
        'INNER JOIN ( SELECT a.YSBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,' +
        'a.QRCode,a.Qty,a.SCCX ,(sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum' +
        '(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty, (sum' +
        '(Qty)-sum(ROut)) as LastOutQty'
      'FROM TB_DD.dbo.SMDDScanOut a'
      'INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH'
      
        'INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.' +
        'SheHao'
      'where a.YSBH=:YSBH'
      
        'GROUP BY A.YSBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCo' +
        'de, a.Qty, a.SCCX'
      ') B ON A.GJCC = B.SCCX'
      'group by B.YSBH,XXCC,GJCC,A.GJCCs'
      ' ORDER BY XXCC')
    Left = 104
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YSBH'
        ParamType = ptUnknown
      end>
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1OUTSOLE: TStringField
      FieldName = 'OUTSOLE'
      FixedChar = True
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
    object Query1OutQty: TIntegerField
      FieldName = 'OutQty'
    end
    object Query1LastOutQty: TIntegerField
      FieldName = 'LastOutQty'
    end
  end
end
