object MaterialSetP_CL: TMaterialSetP_CL
  Left = 270
  Top = 240
  Width = 996
  Height = 471
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialSetP_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 988
    Height = 437
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 7
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 22
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 36
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Width = 38
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'UseStock'
        Footers = <>
        Title.Caption = 'Stock'
        Width = 30
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Width = 37
      end
      item
        Color = 16772846
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Width = 36
      end
      item
        Color = 16772846
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 37
      end
      item
        Color = 16772846
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Width = 33
      end
      item
        Color = 16772846
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 365
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 360
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,CLZ' +
        'l.CQDH,isnull(CGHZZL.CGQty,0) as CGQty,'
      
        '        isnull(ZLZLS2.CLSL,0) as CLSL,convert(smalldatetime,CGHZ' +
        'ZL.YQDate) YQDate ,'
      
        '        convert(smalldatetime,CGHZZL.CFMDate) CFMDate,convert(sm' +
        'alldatetime,CGHZZL.CGDate) CGDate,CGHZZL.CGNO,'
      
        '        isnull(CGKCUSE.Qty,0) as UseStock,CONZL.CON_Date as RKDa' +
        'te,CONZL.CON_NO as RKNO ,CGHZZL.RKQty'
      'from (select ZLBH,CLBH,sum(CLSL) as CLSL '
      '      from ZLZLS2'
      '      where ZLBH='#39'LT0902007'#39
      '            and CLSL<>0'
      '            and ZLZLS2.ZMLB='#39'N'#39
      '      group by ZLBH,CLBH)ZLZLS2 '
      
        'left join(select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.st_Qty+CG' +
        'HZZLS.dg_Qty) as CGQty,sum(CGHZZLS.Ex_Qty) as RKQty,'
      
        '                 max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as' +
        ' YQDate, '
      
        '                 max(convert(smalldatetime,(case when CGHZZLSS.h' +
        'f_Date='#39'ZZZZZZZZ'#39
      
        '                       then null else CGHZZLSS.hf_Date end))) as' +
        ' CFMDate,'
      
        '                 max(convert(smalldatetime,CGHZZLSS.dg_Date)) as' +
        ' CGDate,CGHZZLSS.DGDH as CGNO '
      '          from CGHZZLS '
      
        '          left join CGHZZLSS on  CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH ' +
        'and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.SIZE=CGHZZLSS.SIZE'
      '          where CGHZZLS.ZLBH='#39'LT0902007'#39
      
        '          group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CGHZZLSS.DGDH) CGHZ' +
        'ZL '
      '       on CGHZZL.ZLBH=ZLZLS2.ZLBH and CGHZZL.CLBH=ZLZLS2.CLBH '
      'left join ( SELECT EXZLSS.ZLBH,EXZLSS.CLDH,'
      
        '                   max(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB)' +
        ' as SHLB,max(EXZL.CON_NO) as CON_NO FROM EXZLSS'
      '            LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO  '
      '            LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO'
      '            where  EXZLSS.ZLBH='#39'LT0902007'#39
      '            GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH)CONZL'
      
        '       ON CGHZZL.clbh   = CONZL.cldh  AND CGHZZL.ZLBH   = CONZL.' +
        'ZLBH  '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=Z' +
        'LZLS2.CLBH'
      'left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      'where CLZL.CQDH='#39'TW'#39
      'union all '
      
        'select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CL' +
        'ZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMD' +
        'ate,CGZl.CGDate,CGZL.CGNO,'
      
        '        isnull(CGKCUSE.Qty,0) as UseStock,RKZL.RKDate,RKZL.RKNO,' +
        'isnull(RKZL.RKQty,0) as RKQty '
      'from ZLZLS2 '
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      
        'left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=Z' +
        'LZLS2.CLBH'
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate '
      '           from CGZLSS'
      '           left join CGZL on CGZl.CGNO=CGZLSS.CGNO'
      '           where  CGZLSS.ZLBH='#39'LT0902007'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      '           where  KCRKS.CGBH='#39'LT0902007'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      'where ZLZLS2.ZLBH='#39'LT0902007'#39
      '       and ZLZLS2.CLBH not like '#39'P%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'VN'#39
      '       and ZLZLS2.CLSL<>0'
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,C' +
        'LZL.CQDH,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    Left = 136
    Top = 56
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGQty: TFloatField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 13
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 152
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
