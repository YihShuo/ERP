object Produceset_size: TProduceset_size
  Left = 438
  Top = 213
  Width = 529
  Height = 485
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 451
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'XXCC'
        Width = 52
        Visible = True
      end
      item
        Color = 14671839
        Expanded = False
        FieldName = 'Total_Qty'
        Title.Caption = 'Tot_Qty'
        Width = 63
        Visible = True
      end
      item
        Color = 11316479
        Expanded = False
        FieldName = 'C_Qty'
        Width = 57
        Visible = True
      end
      item
        Color = 10813439
        Expanded = False
        FieldName = 'Y_Qty'
        Width = 56
        Visible = True
      end
      item
        Color = 9830293
        Expanded = False
        FieldName = 'Z_Qty'
        Width = 56
        Visible = True
      end
      item
        Color = 16752029
        Expanded = False
        FieldName = 'S_Qty'
        Width = 54
        Visible = True
      end
      item
        Color = 14526462
        Expanded = False
        FieldName = 'O_Qty'
        Width = 56
        Visible = True
      end
      item
        Color = 15723700
        Expanded = False
        FieldName = 'A_Qty'
        Width = 59
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = Produceset.DataSource1
    SQL.Strings = (
      
        'select TotalQty.SCBH,TotalQty.XXCC,TotalQty.Total_Qty, SQty.S_Qt' +
        'y,OQty.O_Qty,CQty.C_Qty,AQty.A_Qty ,Y_Qty,Z_Qty'
      
        'from (select SCZLS.SCBH,SCZLS.XXCC,SCZLS.Qty as Total_Qty from S' +
        'CZLS where SCZLS.SCBH=:SCBH) TotalQty'
      
        'left join (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as S_Q' +
        'ty '
      
        '      from SCBBSS  where SCBBSS.SCBH=:SCBH and SCBBSS.GXLB='#39'S'#39' g' +
        'roup by SCBBSS.SCBH,SCBBSS.XXCC ) Sqty on SQty.XXCC=TotalQty.XXC' +
        'C and SQty.SCBH=TotalQty.SCBH'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as O_' +
        'Qty '
      
        '     from SCBBSS  where SCBBSS.SCBH=:SCBH and SCBBSS.GXLB='#39'O'#39' gr' +
        'oup by SCBBSS.SCBH,SCBBSS.XXCC) Oqty  on TotalQty.SCBH=OQty.SCBH' +
        ' and TotalQty.XXCC=OQty.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as C_' +
        'Qty '
      
        '     from SCBBSS  where SCBBSS.SCBH=:SCBH and SCBBSS.GXLB='#39'C'#39' gr' +
        'oup by SCBBSS.SCBH,SCBBSS.XXCC) Cqty  on TotalQty.SCBH=CQty.SCBH' +
        ' and TotalQty.XXCC=CQty.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as A_' +
        'Qty '
      
        '     from SCBBSS  where SCBBSS.SCBH=:SCBH and SCBBSS.GXLB='#39'A'#39' gr' +
        'oup by SCBBSS.SCBH,SCBBSS.XXCC) Aqty  on TotalQty.SCBH=AQty.SCBH' +
        ' and TotalQty.XXCC=AQty.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as Y_' +
        'Qty '
      
        '     from SCBBSS  where SCBBSS.SCBH=:SCBH and SCBBSS.GXLB='#39'Y'#39' gr' +
        'oup by SCBBSS.SCBH,SCBBSS.XXCC) Yqty  on TotalQty.SCBH=YQty.SCBH' +
        ' and TotalQty.XXCC=YQty.XXCC'
      
        'left join  (select SCBBSS.SCBH,SCBBSS.XXCC,sum(SCBBSS.qty) as Z_' +
        'Qty '
      
        '     from SCBBSS  where SCBBSS.SCBH=:SCBH and SCBBSS.GXLB='#39'Z'#39' gr' +
        'oup by SCBBSS.SCBH,SCBBSS.XXCC) Zqty  on TotalQty.SCBH=ZQty.SCBH' +
        ' and TotalQty.XXCC=ZQty.XXCC'
      'order by TotalQty.XXCC')
    Left = 144
    Top = 96
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 5
    end
    object Query1Total_Qty: TFloatField
      FieldName = 'Total_Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1C_Qty: TFloatField
      FieldName = 'C_Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1Y_Qty: TFloatField
      FieldName = 'Y_Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1Z_Qty: TFloatField
      FieldName = 'Z_Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1S_Qty: TFloatField
      FieldName = 'S_Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1O_Qty: TFloatField
      FieldName = 'O_Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1A_Qty: TFloatField
      FieldName = 'A_Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 96
  end
end
