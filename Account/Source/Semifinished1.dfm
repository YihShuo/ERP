object Semifinished: TSemifinished
  Left = 314
  Top = 262
  Width = 1132
  Height = 510
  Caption = 'Semi finished'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 24
      Width = 40
      Height = 16
      Caption = 'DATE:'
    end
    object Button1: TButton
      Left = 728
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 818
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 145
      Top = 1
      Width = 577
      Height = 57
      Caption = 'Don Hang'
      TabOrder = 2
      object Label14: TLabel
        Left = 12
        Top = 24
        Width = 31
        Height = 16
        Caption = 'CSD:'
      end
      object Label15: TLabel
        Left = 158
        Top = 23
        Width = 17
        Height = 16
        Caption = 'To'
      end
      object Label3: TLabel
        Left = 296
        Top = 32
        Width = 53
        Height = 16
        Caption = 'SpecNo:'
      end
      object Label4: TLabel
        Left = 304
        Top = 16
        Width = 41
        Height = 16
        AutoSize = False
        Caption = #21046#20196#34399
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 448
        Top = 32
        Width = 41
        Height = 16
        Caption = 'GSBH:'
      end
      object Label19: TLabel
        Left = 440
        Top = 16
        Width = 57
        Height = 13
        AutoSize = False
        Caption = #35330#21934#24288#21029
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DTP1: TDateTimePicker
        Left = 50
        Top = 21
        Width = 105
        Height = 24
        Date = 39783.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 39783.568310717590000000
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 186
        Top = 21
        Width = 106
        Height = 24
        Date = 39783.569282222220000000
        Format = 'yyyy/MM/dd'
        Time = 39783.569282222220000000
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 352
        Top = 24
        Width = 81
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object CBX4: TComboBox
        Left = 504
        Top = 24
        Width = 65
        Height = 24
        ItemHeight = 16
        TabOrder = 3
      end
    end
    object DTP3: TDateTimePicker
      Left = 50
      Top = 21
      Width = 87
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1124
    Height = 414
    Align = alClient
    DataSource = DS1
    EvenRowColor = 16515069
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Title.TitleButton = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'DaoMH'
        Footers = <>
        Title.Caption = #20992#27169#34399'|DaoMH'
        Width = 100
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'C_Qty'
        Footers = <
          item
            FieldName = 'C_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Cutting('#35009#26039')|C_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Lack_C'
        Footers = <
          item
            FieldName = 'Lack_C'
            ValueType = fvtSum
          end>
        Title.Caption = 'Cutting('#35009#26039')|Lack_C'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'C_Date'
        Footers = <>
        Title.Caption = 'Cutting('#35009#26039')|C_Date'
        Title.TitleButton = True
        Width = 59
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'C_Name'
        Footers = <>
        Title.Caption = 'Cutting('#35009#26039')|C_Name'
        Width = 87
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'S_Qty'
        Footers = <
          item
            FieldName = 'S_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Stitching('#37341#36554')|S_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'Lack_S'
        Footers = <
          item
            FieldName = 'Lack_S'
            ValueType = fvtSum
          end>
        Title.Caption = 'Stitching('#37341#36554')|Lack_S'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'S_Date'
        Footers = <>
        Title.Caption = 'Stitching('#37341#36554')|S_Date'
        Title.TitleButton = True
        Width = 73
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'S_Name'
        Footers = <>
        Title.Caption = 'Stitching('#37341#36554')|S_Name'
        Width = 86
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'A_Qty'
        Footers = <
          item
            FieldName = 'A_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Assemble('#25104#22411')|A_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'Lack_A'
        Footers = <
          item
            FieldName = 'Lack_A'
            ValueType = fvtSum
          end>
        Title.Caption = 'Assemble('#25104#22411')|Lack_A'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'A_Date'
        Footers = <>
        Title.Caption = 'Assemble('#25104#22411')|A_Date'
        Title.TitleButton = True
        Width = 80
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'A_Name'
        Footers = <>
        Title.Caption = 'Assemble('#25104#22411')|A_Name'
        Width = 100
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'F_Qty'
        Footers = <
          item
            FieldName = 'F_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Finish('#25104#21697#20837#24235')|F_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Lack_F'
        Footers = <
          item
            FieldName = 'Lack_F'
            ValueType = fvtSum
          end>
        Title.Caption = 'Finish('#25104#21697#20837#24235')|Lack_F'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'F_Date'
        Footers = <>
        Title.Caption = 'Finish('#25104#21697#20837#24235')|F_Date'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = #20986#36008#26085'|ETD'
        Width = 70
      end>
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 456
    Top = 312
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#SCBBS'#39') is not null  '
      'begin   drop table #SCBBS end   '
      
        'select SCBBSS.SCBH as DDBH,SCBBSS.XXCC,sum(isnull(SCBBSS.Qty,0))' +
        ' as Qty,SCGXDY.GX ,max(SCDate) as FinDate,max (Bdepartment.depna' +
        'me) as depname'
      'into #SCBBS from SCBBSS '
      'left join SCBB on SCBB.ProNo=SCBBSS.ProNo '
      ' left join Bdepartment on SCBB.depno = Bdepartment.id '
      'left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB '
      'left join DDZL on DDZL.DDBH=SCBBSS.SCBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=SCBBSS.SCBH '
      'where  1=1'
      
        '        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)' +
        ') between '
      '        '#39'2017/10/06'#39' and '#39'2017/11/05'#39
      '      and SCBBSS.SCBH like '#39'%'#39
      
        'and convert(smalldatetime,convert(varchar,SCBB.SCDate))<='#39'2017/1' +
        '0/18'#39' '
      'and SCBBSS.GXLB in ('#39'A'#39','#39'C'#39','#39'S'#39') '
      'group by  SCBBSS.SCBH,SCBBSS.XXCC,SCGXDY.GX'
      'insert #SCBBS '
      
        'select YWDD.YSBH as DDBH,isnull(YWDDS.XXCC,'#39#39') as XXCC,sum(isnul' +
        'l(YWBZPOS.Qty,0)) as Qty,'#39'F'#39' as GX,max(YWCP.InDate) as FinDate,m' +
        'ax (Bdepartment.depname) as depname '
      'from YWCP '
      
        'left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH and YWCP.XH=YWBZPOS.' +
        'XH '
      
        'left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWDDS.DDCC=YWBZPO' +
        'S.DDCC '
      'left join YWDD on YWDD.DDBH=YWCP.DDBH '
      'left join Bdepartment on YWCP.depno = Bdepartment.id '
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=YWDD.YSBH '
      'where  YWCP.InDate is not null and YWCP.SB<>'#39'2'#39' '
      
        '        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)' +
        ') between '
      '            '#39'2017/10/06'#39' and '#39'2017/11/05'#39
      '      and YWDD.YSBH like '#39'%'#39
      
        'and convert(smalldatetime,convert(varchar,YWCP.InDate))<='#39'2017/1' +
        '0/18'#39' '
      'group by YWDD.YSBH,YWDDS.XXCC'
      
        'select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC' +
        ',DDZl.Pairs,DDZL.Shipdate as CSD,KCLL.CLQty,'
      
        '       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SC' +
        'BBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,'
      '       SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,'
      '       SCBBF.F_Qty,DDZL.Pairs-isnull(SCBBF.F_Qty,0) as Lack_F,'
      '       case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then 0 '
      
        '            else (case when isnull(SCBBS.S_Qty,0)>isnull(SCBBA.A' +
        '_Qty,0) then isnull(SCBBS.S_Qty,0)-isnull(SCBBA.A_Qty,0) else 0 ' +
        'end) end as A_Set'
      
        '       ,case when DDZL.Pairs<=isnull(SCBBC.C_Qty,0) then SCBBC.F' +
        'inDate  end as C_Date  '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBS.S_Qty,0) then SCBBS.F' +
        'inDate  end as S_Date  '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBA.A_Qty,0) then SCBBA.F' +
        'inDate  end as A_Date  '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then SCBBF.F' +
        'inDate  end as F_Date ,YWDD.ETD '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBC.C_Qty,0) then SCBBC.D' +
        'epname  end as C_Name  '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBS.S_Qty,0) then SCBBS.D' +
        'epname  end as S_Name   '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBA.A_Qty,0) then SCBBA.D' +
        'epname  end as A_Name   '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then SCBBF.D' +
        'epname  end as F_Name   '
      'from DDZL '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH '
      
        'left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum' +
        '(#SCBBS.Qty) as C_Qty,max(#SCBBS.FinDate) as FinDate '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'C'#39
      '           group by #SCBBS.DDBH) SCBBC on SCBBC.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum' +
        '(#SCBBS.Qty) as S_Qty,max(#SCBBS.FinDate) as FinDate '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'S'#39
      '           group by #SCBBS.DDBH) SCBBS on SCBBS.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum' +
        '(#SCBBS.Qty) as A_Qty ,max(#SCBBS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'A'#39
      '           group by #SCBBS.DDBH) SCBBA on SCBBA.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum' +
        '(#SCBBS.Qty) as F_Qty ,max(#SCBBS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'F'#39
      '           group by #SCBBS.DDBH) SCBBF on SCBBF.DDBH=DDZL.DDBH '
      'left join (select YSBH as DDBH,min(ETD) as ETD'
      '           from YWDD'
      '           group by YSBH) YWDD on YWDD.DDBH=DDZL.DDBH '
      'left join (Select DDZL.DDBH,Count(CLBH) as CLQty from KCLLS'
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      '           left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      '           where KCLL.CFMID<>'#39'NO'#39
      
        '                and convert(smalldatetime,convert(varchar,KCLL.C' +
        'FMDate))<='#39'2017/10/18'#39' '
      
        '                and convert(smalldatetime,convert(varchar,DDZL.S' +
        'hipdate)) between '
      '                    '#39'2017/10/06'#39' and '#39'2017/11/05'#39
      '                and DDZL.DDBH like '#39'%'#39
      '                and DDZL.DDLB='#39'N'#39' and DDZL.DDZT='#39'Y'#39'  '
      '                and KCLLS.CLBH not like '#39'W%'#39'          '
      '           Group by DDZL.DDBH ) KCLL on KCLL.DDBH=DDZL.DDBH '
      'where 1=1'
      
        '        and convert(smalldatetime,convert(varchar,DDZL.Shipdate)' +
        ') between '
      '        '#39'2017/10/06'#39' and '#39'2017/11/05'#39
      '      and DDZL.DDBH like '#39'%'#39
      '      and DDZL.DDLB='#39'N'#39' and DDZL.DDZT='#39'Y'#39' '
      '      and DDZl.GSBH='#39'VA12'#39
      'order by DDZL.DDBH'
      '')
    Left = 488
    Top = 312
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DaoMH: TStringField
      FieldName = 'DaoMH'
      FixedChar = True
      Size = 30
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1CSD: TDateTimeField
      FieldName = 'CSD'
    end
    object Query1C_Qty: TFloatField
      FieldName = 'C_Qty'
    end
    object Query1Lack_C: TFloatField
      FieldName = 'Lack_C'
    end
    object Query1S_Qty: TFloatField
      FieldName = 'S_Qty'
    end
    object Query1Lack_S: TFloatField
      FieldName = 'Lack_S'
    end
    object Query1A_Qty: TFloatField
      FieldName = 'A_Qty'
    end
    object Query1Lack_A: TFloatField
      FieldName = 'Lack_A'
    end
    object Query1F_Qty: TFloatField
      FieldName = 'F_Qty'
    end
    object Query1Lack_F: TFloatField
      FieldName = 'Lack_F'
    end
    object Query1A_Set: TFloatField
      FieldName = 'A_Set'
    end
    object Query1C_Date: TDateTimeField
      FieldName = 'C_Date'
    end
    object Query1S_Date: TDateTimeField
      FieldName = 'S_Date'
    end
    object Query1A_Date: TDateTimeField
      FieldName = 'A_Date'
    end
    object Query1F_Date: TDateTimeField
      FieldName = 'F_Date'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1C_Name: TStringField
      FieldName = 'C_Name'
      FixedChar = True
      Size = 50
    end
    object Query1S_Name: TStringField
      FieldName = 'S_Name'
      FixedChar = True
      Size = 50
    end
    object Query1A_Name: TStringField
      FieldName = 'A_Name'
      FixedChar = True
      Size = 50
    end
    object Query1F_Name: TStringField
      FieldName = 'F_Name'
      FixedChar = True
      Size = 50
    end
    object Query1CLQty: TIntegerField
      FieldName = 'CLQty'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 312
    object NN1: TMenuItem
      Caption = 'Detail'
      OnClick = NN1Click
    end
  end
end
