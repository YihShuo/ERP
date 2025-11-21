object ExtraMatKT_Ord_Detail: TExtraMatKT_Ord_Detail
  Left = 477
  Top = 318
  Width = 1050
  Height = 310
  Caption = 'ExtraMatKT_Ord_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1042
    Height = 279
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        FieldName = 'YPDH'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'Usage'
        Footer.FieldName = 'Usage'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLMC'
        Footers = <>
        Width = 199
      end
      item
        EditButtons = <>
        FieldName = 'CLYWMC'
        Footers = <>
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'clzmlb'
        Footers = <>
        Width = 56
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ExtraMatKT_Ord.DS1
    SQL.Strings = (
      
        'select YPZLS.YPDH,YPZLS.BWBH,BWZL.YWSM,YPZLS.CLBH,YPZLS.Usage,YP' +
        'ZLS.CLSL , '
      
        '       CLZL.ZWPM as CLMC,CLZL.YWPM as CLYWMC,CLZL.DWBH,CLZL.CQDH' +
        ',YPZL.Quantity ,YPZLS.CLZMLB  from ( '
      
        'Select YPZLS.YPDH,YPZLS.BWBH, YPZLS.CLBH,YPZLS.CLZMLB,YPZLS.Usag' +
        'e,Sum(YPZLS.CLSL) as CLSL from ( '
      
        'SELECT ypzls.YPDH ,ypzls.BWBH,ypzls.CLBH,ypzls.CLSL as Usage,CEI' +
        'LING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'WHERE ypzls.YPDH like '#39'LAIK200100070%'#39
      '    and CLZL.CLDH like '#39'%'#39' '
      'union all '
      
        'SELECT ypzls.YPDH ,ypzls.BWBH  ,clzhzl.CLDH1 as CLBH,YPZLS.CLSL*' +
        'CLZHZL.SYL as Usage ,(CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)' +
        '*CLZHZL.SYL as CLSL,clzl.CLZMLB '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'WHERE ypzls.YPDH like '#39'LAIK200100070%'#39'  and CLZHZL.SYL>0  '
      '    and CLZL.CLDH like '#39'%'#39' '
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.BWBH,clzhzl.CLDH1 as CLBH,clzhzl2.Us' +
        'age*clzhzl.syl as Usage,CEILING(clzhzl2.CLSL*clzhzl.syl*100)/100' +
        ' as CLSL,clzl.clzmlb '
      'from ('
      
        'SELECT ypzls.YPDH ,ypzls.BWBH  ,YPZLS.CLBH as Parent,'#39'Gia cong'#39' ' +
        'as DType,clzhzl.CLDH1 as CLBH,YPZLS.CLSL*CLZHZL.SYL as Usage,Rou' +
        'nd((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as ' +
        'CLSL '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'WHERE ypzls.YPDH like '#39'LAIK200100070%'#39'  and CLZHZL.SYL>0   and c' +
        'lzl.clzmlb='#39'Y'#39'  '
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'where  CLZL.CLDH like '#39'%'#39' '
      
        ')  YPZLS Group by YPZLS.YPDH,YPZLS.BWBH, YPZLS.CLBH,YPZLS.Usage,' +
        'YPZLS.CLZMLB   ) YPZLS'
      'left join YPZL on YPZL.YPDH=YPZLS.YPDH'
      'Left join CLZL on CLZL.CLDH=YPZLS.CLBH '
      'Left join BWZL on BWZL.BWDH=YPZLS.BWBH '
      'where YPZL.YPDH like '#39'LAIK200100070%'#39' '
      '      and YPZLS.CLZMLB='#39'Y'#39)
    Left = 176
    Top = 153
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Query1CLYWMC: TStringField
      FieldName = 'CLYWMC'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1clzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 153
  end
end
