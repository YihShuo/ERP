object DeliverAccFin: TDeliverAccFin
  Left = 368
  Top = 346
  Width = 1360
  Height = 565
  Caption = 'DeliverAccFin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1352
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 58
      Width = 57
      Height = 16
      Caption = 'OrderNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 297
      Top = 61
      Width = 42
      Height = 16
      Caption = 'InDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 464
      Top = 54
      Width = 17
      Height = 16
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 281
      Height = 25
      AutoSize = False
      Caption = #20837#24235#35330#21934#20043#26448#26009#25104#26412#21450#25910#20837#32317#35336':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 146
      Top = 50
      Width = 37
      Height = 16
      Caption = 'SKU#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 432
      Top = 27
      Width = 60
      Height = 16
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 292
      Top = 25
      Width = 43
      Height = 16
      Caption = 'CutDie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 18
      Top = 42
      Width = 27
      Height = 16
      Caption = #35330#21934':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 298
      Top = 8
      Width = 27
      Height = 16
      Caption = #26028#20992':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 445
      Top = 11
      Width = 27
      Height = 16
      Caption = #23458#25142':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 295
      Top = 42
      Width = 49
      Height = 20
      AutoSize = False
      Caption = #28415#31665#26085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 626
      Top = 18
      Width = 41
      Height = 16
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 344
      Top = 49
      Width = 113
      Height = 24
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 488
      Top = 49
      Width = 113
      Height = 24
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button1: TButton
      Left = 618
      Top = 42
      Width = 75
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 184
      Top = 48
      Width = 105
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 495
      Top = 16
      Width = 113
      Height = 21
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 336
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 2
    end
    object Button2: TButton
      Left = 707
      Top = 42
      Width = 75
      Height = 33
      Caption = 'Cost Setup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object CB1: TComboBox
      Left = 672
      Top = 15
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
      Text = 'VTX'
    end
    object OldDataCK: TCheckBox
      Left = 791
      Top = 50
      Width = 185
      Height = 17
      Caption = #27511#21490#36039#26009'Old History data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1352
    Height = 453
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            Color = clGradientInactiveCaption
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
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'DaoMH'
        Footers = <>
        Title.Caption = #26028#20992#32232#34399'|DaoMH'
        Title.TitleButton = True
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'LastInDate'
        Footers = <>
        Title.Caption = #26368#24460#20837#24235'|LastInDate'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'DDQty'
        Footers = <
          item
            FieldName = 'DDQty'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#25976#37327'|DDQty'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'IPrice'
        Footers = <
          item
            FieldName = 'IPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #24179#22343#21934#20729'|IPrice'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'OrdACC'
        Footers = <
          item
            FieldName = 'OrdACC'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#37329#38989'|OrdACC'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footers = <
          item
            FieldName = 'InQty'
            ValueType = fvtSum
          end>
        Title.Caption = #24050#20837#24235#25976'|InQty'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'TotCost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtSum
          end>
        LookupDisplayFields = '#,##0.00'
        Title.Caption = #29983#29986#25104#26412'|TotCost'
      end
      item
        EditButtons = <>
        FieldName = 'Money'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtAvg
          end>
        Title.Caption = #27611#21033'|Money'
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'MoneyPerson'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtAvg
          end>
        Title.Caption = #27611#21033#29575'|MoneyPerson'
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'MtCost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtSum
          end>
        Title.Caption = #26448#26009#32317#25104#26412'|MtCost'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'LLPerson'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            FieldName = 'LLPerson'
            ValueType = fvtAvg
          end>
        Title.Caption = #26448#26009#27604#29575'|LLPerson'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'MLLPerson'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtAvg
          end>
        Title.Caption = #26448#26009'/'#35330#21934'|MLLPerson'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'LLACC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            FieldName = 'LLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #38936#26009#32317#37329#38989'|LLACC'
        Width = 69
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'BLACC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            FieldName = 'BLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #35036#26009#32317#37329#38989'|BLACC'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'BLPerson'
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            FieldName = 'BLPerson'
            ValueType = fvtAvg
          end>
        Title.Caption = #35036#29575'|BLPerson'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'CostAvgP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            DisplayFormat = '#,##0.00'
            ValueType = fvtSum
          end>
        Title.Caption = #20154#24037#25104#26412'|PeopleCost'
      end
      item
        EditButtons = <>
        FieldName = 'PePerson'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtAvg
          end>
        Title.Caption = #20154#24037#27604#29575'|PePerson'
      end
      item
        EditButtons = <>
        FieldName = 'CostAvgO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            DisplayFormat = '#,##0.00'
            ValueType = fvtSum
          end>
        Title.Caption = #20854#20182#25104#26412'|OtherCost'
      end
      item
        EditButtons = <>
        FieldName = 'OrPerson'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -13
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <
          item
            ValueType = fvtAvg
          end>
        Title.Caption = #20854#20182#27604#29575'|OrPerson'
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #28415#31665#35330#21934#20043#26448#26009#25104#26412#21450#25910#20837#32317#35336)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 248
    Top = 168
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#KCLLS'#39') is not null  '
      'begin   drop table #KCLLS end   '
      
        'select KCLLS.LLNO,KCLLS.CLBH  as YSCLBH,KCLL.DepID,KCLLS.Qty,isn' +
        'ull(CLZHZL.SYL,1) as SYL,KCLLS.BLSB,'
      
        '       case when CLZHZL.CLDH1 is null then KCLLS.CLBH else CLZHZ' +
        'L.CLDH1 end as CLBH,KCLLS.SCBH,KCLL.CFMDate,DDZL.YN'
      'into #KCLLS from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'#39'3'#39
      'left join DDZL on DDZL.ZLBH=KCLLS.SCBH '
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      
        'left join (select sum(YWCP.Qty) as InQty,max(YWCP.InDate) as Las' +
        'tInDate,YWDD.YSBH as DDBH '
      '           from YWCP '
      '           left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '           where YWCP.InDate is not null'
      '           group by YWDD.YSBH ) YWCP  on YWCP.DDBH=DDZL.DDBH'
      
        'left join XXZL on XXZl.XieXing=DDZL.XieXing and XXZl.SheHao=DDZl' +
        '.SheHao'
      'where YWCP.InQty>=DDZL.Pairs'
      
        '      and convert(smalldatetime,convert(varchar,YWCP.LastInDate,' +
        '111)) between'
      '                 '#39'2009/06/01'#39' and '#39'2009/06/10'#39
      '      and KCLL.CFMID<>'#39'NO'#39
      '      and KCLLS.SCBH like '#39'%%'#39
      '      and DDZL.Article like '#39'%'#39
      '      and XXZL.DAOMH like '#39'%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and KCLLS.Qty<>0'
      '      and DDZL.YN<>'#39'1'#39
      
        'select YWCP.DDBH,YWCP.Article,YWCP.XieMing,YWCP.DaoMH,YWCP.KFJC,' +
        'YWCPIn.LastInDate,YWDD.DDQty,YWDD.IPrice'
      
        '       ,YWDD.OrdACC,YWCP.InQty,isnull(KCLLS.LLACC,0) as LLACC,is' +
        'null(KCBLS.BLACC,0) as BLACC'
      
        '       ,isnull(costset.costavgp,0) as CostAvgP,isnull(costset.co' +
        'stavgo,0) as CostAvgO'
      
        'from (select YWDD.YSBH as DDBH,XXZl.Article,XXZL.XieMing,XXZL.Da' +
        'oMH,KFZL.KFJC,sum(YWCP.Qty) as InQty,kcbh'
      '      from YWCP'
      '      left join YWDD on YWDD.DDBH=YWCP.DDBH'
      '      left join DDZL on DDZL.DDBH=YWDD.YSBH'
      
        '      left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHa' +
        'o=DDZL.SheHao'
      '      left join KFZL on KFZL.KFDH=DDZL.KHBH'
      '      where YWDD.YSBH like  '#39'%%'#39
      '            and YWDD.SB is not null'
      '            and DDZL.Article like '#39'%'#39
      '            and XXZL.DAOMH like '#39'%'#39
      '            and KFZL.KFJC like '#39'%%'#39
      
        '            and convert(smalldatetime,convert(varchar,YWCP.InDat' +
        'e,111)) between'
      '                 '#39'2009/06/01'#39' and '#39'2009/06/10'#39
      
        '      group by YWDD.YSBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KF' +
        'ZL.KFJC,kcbh )YWCP'
      
        'left join (select sum(YWCP.Qty) as InQty,max(YWCP.InDate) as Las' +
        'tInDate,YWDD.YSBH as DDBH'
      '           from YWCP '
      '           left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '           where YWCP.InDate is not null'
      '           group by YWDD.YSBH ) YWCPIn  on YWCPIn.DDBH=YWCP.DDBH'
      
        'left join (select YWDD.YSBH as DDBH,sum(YWDDS.Qty) as DDQty,sum(' +
        'YWDDS.Qty*YWDDS.IPrice) as OrdACC,'
      
        '                 sum(YWDDS.Qty*YWDDS.IPrice)/sum(YWDDS.Qty) as I' +
        'Price'
      '           from YWDDS '
      '           left join YWDD on YWDD.DDBH=YWDDS.DDBH  '
      '           group by YWDD.YSBH )YWDD on YWDD.DDBH=YWCP.DDBH'
      'left join costset on  costset.costyear=year(YWCPIn.LastInDate)'
      
        '          and costset.costmon=month(YWCPIn.LastInDate) and costs' +
        'et.costdep=ywcp.kcbh'
      ''
      
        'left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*#KCLLS.SYL*' +
        'CWDJ.USPrice) as LLACC'
      '           from #KCLLS '
      '           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH '
      
        '                              and CWDJ.DJYear=convert(varchar,da' +
        'tepart(yyyy,#KCLLS.CFMDate)) '
      
        '                              and CWDJ.DJMonth=convert(varchar,d' +
        'atepart(MM,#KCLLS.CFMDate)) '
      
        '           group by #KCLLS.SCBH ) KCLLS  on KCLLS.DDBH=YWCP.DDBH' +
        ' '
      
        'left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*#KCLLS.SYL*' +
        'CWDJ.USPrice) as BLACC'
      '           from #KCLLS '
      '           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH '
      
        '                             and CWDJ.DJYear=convert(varchar,dat' +
        'epart(yyyy,#KCLLS.CFMDate)) '
      
        '                             and CWDJ.DJMonth=convert(varchar,da' +
        'tepart(MM,#KCLLS.CFMDate)) '
      '           where #KCLLS.BLSB='#39'Y'#39
      
        '           group by #KCLLS.SCBH ) KCBLS  on KCBLS.DDBH=YWCP.DDBH' +
        ' '
      
        'where convert(smalldatetime,convert(varchar,YWCPIn.LastInDate,11' +
        '1)) between '
      '                 '#39'2009/06/01'#39' and '#39'2009/06/10'#39
      'order by YWCP.DDBH ')
    Left = 288
    Top = 168
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
      Size = 15
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1LastInDate: TDateTimeField
      FieldName = 'LastInDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1DDQty: TIntegerField
      FieldName = 'DDQty'
      DisplayFormat = '##,#0'
    end
    object Query1IPrice: TCurrencyField
      FieldName = 'IPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1OrdACC: TCurrencyField
      FieldName = 'OrdACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '##,#0'
    end
    object Query1LLACC: TFloatField
      FieldName = 'LLACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LLPerson'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1BLACC: TFloatField
      FieldName = 'BLACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1BLPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BLPerson'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1CostAvgP: TFloatField
      FieldName = 'CostAvgP'
      DisplayFormat = '##,#0.00'
    end
    object Query1CostAvgO: TFloatField
      FieldName = 'CostAvgO'
      DisplayFormat = '##,#0.00'
    end
    object Query1TotCost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotCost'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query1Money: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Money'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query1PePerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PePerson'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1OrPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OrPerson'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1MtCost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MtCost'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query1MLLPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MLLPerson'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1MoneyPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MoneyPerson'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 168
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 184
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end
