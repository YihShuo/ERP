object DetailOut1: TDetailOut1
  Left = 833
  Top = 415
  Width = 717
  Height = 391
  Caption = 'DetailOut'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
        FieldName = 'YSBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|YSBH'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'| XXCC'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'OUTSOLE'
        Footers = <>
        Title.Caption = #22823#24213#34399#30908'|OUTSOLE'
        Width = 91
      end
      item
        Alignment = taLeftJustify
        EditButtons = <>
        FieldName = 'Qty'
        Footer.Alignment = taLeftJustify
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#25976#37327'| Qty'
      end
      item
        Alignment = taLeftJustify
        EditButtons = <>
        FieldName = 'Rout'
        Footer.Alignment = taLeftJustify
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20986#24235#25976#37327'|Rout'
      end
      item
        Alignment = taLeftJustify
        EditButtons = <>
        FieldName = 'LastOutQty'
        Footer.Alignment = taLeftJustify
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #24235#23384#25976#37327'|LastOutQty'
        Width = 102
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanCheckOut1.DS1
    SQL.Strings = (
      
        'SELECT B.YSBH,A.XXCC,A.GJCCs as OUTSOLE,sum(B.Qty) as Qty ,sum (' +
        'b.ROut) as Rout, SUM(b.LastOutQty) as LastOutQty'
      
        'FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) A' +
        'S GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (se' +
        'lect XieXing  from DDZL where DDBH=:YSBH) AND gjlb = '#39'101'#39') A '
      
        'INNER JOIN ( SELECT a.YSBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,' +
        'a.QRCode,a.Qty,a.SCCX, a.ROut ,(sum(WIn)-sum(ROut)) InQTy,(sum(Q' +
        'ty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQ' +
        'ty, (sum(Qty)-sum(ROut)) as LastOutQty'
      'FROM TB_DD.dbo.SMDDScanOut a '
      'INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH '
      
        'INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.' +
        'SheHao  '
      'where a.YSBH=:YSBH'
      
        'GROUP BY a.YSBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCo' +
        'de, a.Qty, a.SCCX,a.ROut'
      ') B ON A.GJCC = B.SCCX '
      'group by YSBH,XXCC,GJCC,A.GJCCs'
      ' ORDER BY XXCC')
    Left = 128
    Top = 104
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YSBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
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
    object Query1Rout: TIntegerField
      FieldName = 'Rout'
    end
    object Query1LastOutQty: TIntegerField
      FieldName = 'LastOutQty'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 120
  end
end
