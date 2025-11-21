object Produceset_size: TProduceset_size
  Left = 438
  Top = 213
  Width = 618
  Height = 323
  BorderIcons = [biSystemMenu]
  Caption = 'Produceset_size'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 610
    Height = 289
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
    FooterFont.Height = -11
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Ord_Size'
        Footers = <>
        Width = 53
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 49
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'Tot_Qty'
        Footers = <
          item
            FieldName = 'Tot_Qty'
            ValueType = fvtSum
          end>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'C_Qty'
        Footers = <
          item
            FieldName = 'C_Qty'
            ValueType = fvtSum
          end>
        Width = 51
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'Y_Qty'
        Footers = <
          item
            FieldName = 'Y_Qty'
            ValueType = fvtSum
          end>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Z_Qty'
        Footers = <
          item
            FieldName = 'Z_Qty'
            ValueType = fvtSum
          end>
        Width = 48
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'W_Qty'
        Footers = <
          item
            FieldName = 'W_Qty'
            ValueType = fvtSum
          end>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'S_Qty'
        Footers = <
          item
            FieldName = 'O_Qty'
            ValueType = fvtSum
          end>
        Width = 46
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'O_Qty'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'A_Qty'
        Footers = <
          item
            FieldName = 'A_Qty'
            ValueType = fvtSum
          end>
        Width = 49
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'A_Set'
        Footers = <
          item
            FieldName = 'A_Set'
            ValueType = fvtSum
          end>
        Width = 46
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = Produceset.DS1
    SQL.Strings = (
      
        'select ZLZLS.ZLCC as Ord_Size,ZLZLS.XXCC ,ZLZLS.Qty as Tot_Qty, ' +
        'CQty.C_Qty, '
      
        '         YQty.Y_Qty, ZQty.Z_Qty, WQty.W_Qty, OQty.O_Qty, SQty.S_' +
        'Qty, AQty.A_Qty, '
      
        '         case when AQty.A_Qty  is not null then A_Set.A_Set-AQty' +
        '.A_Qty else A_Set.A_Set end as A_Set'
      'from ZLZLS'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as C_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'C'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Cqty  on ZLZLS.ZLBH=CQty.SCBH and ZLZLS.XXCC=CQt' +
        'y.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as Y_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'Y'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Yqty  on ZLZLS.ZLBH=YQty.SCBH and ZLZLS.XXCC=YQt' +
        'y.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as Z_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'Z'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Zqty  on ZLZLS.ZLBH=ZQty.SCBH and ZLZLS.XXCC=ZQt' +
        'y.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as W_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'W'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Wqty  on ZLZLS.ZLBH=WQty.SCBH and ZLZLS.XXCC=WQt' +
        'y.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as O_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'O'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Oqty  on ZLZLS.ZLBH=OQty.SCBH and ZLZLS.XXCC=OQt' +
        'y.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as S_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'S'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Sqty  on ZLZLS.ZLBH=SQty.SCBH and ZLZLS.XXCC=SQt' +
        'y.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as A_' +
        'Qty '
      '              from SCBBSS '
      '              left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB'
      '              where SCBBSS.SCBH=:ZLBH and SCGXDY.GX='#39'A'#39' '
      '              group by SCBBSS.SCBH,SCBBSS.XXCC'
      
        '              ) Aqty  on ZLZLS.ZLBH=AQty.SCBH and ZLZLS.XXCC=AQt' +
        'y.XXCC'
      'left join (select  SCBH, XXCC,min( Qty) as A_Set'
      
        '              from (select SCBBSS.SCBH,SCBBSS.XXCC, SCGXDY.GX ,s' +
        'um(Qty) as Qty'
      '                       from SCBBSS'
      
        '                       left join SCGXDY on SCGXDY.GXLB=SCBBSS.GX' +
        'LB'
      
        '                       where (GX='#39'O'#39' or GX='#39'W'#39' or GX='#39'Z'#39' or GX='#39 +
        'S'#39')'
      '                                 and SCBBSS.SCBH=:ZLBH'
      
        '                       group by  SCBBSS.SCBH,SCBBSS.XXCC, SCGXDY' +
        '.GX ) SCBBSS'
      '              group by SCBH,XXCC'
      '              having count(GX)=4 '
      
        '               ) A_Set on A_Set.SCBH=ZLZLS.ZLBH and ZLZLS.XXCC=A' +
        '_Set.XXCC'
      'where ZLZLS.ZLBH=:ZLBH'
      'order by ZLZLS.XXCC')
    Left = 144
    Top = 96
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object Query1Ord_Size: TStringField
      FieldName = 'Ord_Size'
      FixedChar = True
      Size = 6
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1Tot_Qty: TIntegerField
      FieldName = 'Tot_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1C_Qty: TFloatField
      FieldName = 'C_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Y_Qty: TFloatField
      FieldName = 'Y_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Qty: TFloatField
      FieldName = 'Z_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1W_Qty: TFloatField
      FieldName = 'W_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1O_Qty: TFloatField
      FieldName = 'O_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1S_Qty: TFloatField
      FieldName = 'S_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1A_Qty: TFloatField
      FieldName = 'A_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1A_Set: TFloatField
      FieldName = 'A_Set'
      DisplayFormat = '##,#0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 96
  end
end
