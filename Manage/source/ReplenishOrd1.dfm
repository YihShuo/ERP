object ReplenishOrd: TReplenishOrd
  Left = 186
  Top = 155
  Width = 1283
  Height = 500
  Caption = 'ReplenishOrd'
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
    Width = 1267
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 50
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 575
      Top = 49
      Width = 32
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 724
      Top = 47
      Width = 41
      Height = 16
      Alignment = taRightJustify
      Caption = 'GSBH:'
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
      Width = 233
      Height = 25
      AutoSize = False
      Caption = #20998#35330#21934#35036#26009#37329#38989#32113#35336#34920':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 210
      Top = 51
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 228
      Top = 18
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 89
      Top = 48
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 486
      Top = 45
      Width = 90
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
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 609
      Top = 45
      Width = 97
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
      TabOrder = 2
    end
    object Button1: TButton
      Left = 845
      Top = 39
      Width = 75
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object CBX4: TComboBox
      Left = 765
      Top = 44
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 266
      Top = 46
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 300
      Top = 16
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 623
      Top = 16
      Width = 169
      Height = 17
      Caption = 'Already Finished'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object RB2: TRadioButton
      Left = 414
      Top = 19
      Width = 63
      Height = 17
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object BuyNoEdit: TEdit
      Left = 486
      Top = 15
      Width = 109
      Height = 21
      TabOrder = 9
    end
    object RB1: TRadioButton
      Left = 414
      Top = 51
      Width = 55
      Height = 17
      Caption = 'CSD:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = True
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1267
    Height = 380
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
        Width = 87
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
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <
          item
            FieldName = 'pairs'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#38617#25976'|pairs'
        Title.TitleButton = True
        Width = 60
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'InQty'
        Footers = <
          item
            FieldName = 'InQty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#25104#21697#20489#25976'|InQty'
        Title.TitleButton = True
        Width = 69
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'AvgPrice'
        Footers = <
          item
            FieldName = 'AvgPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #35330#21934#21934#20729'|AvgPrice'
        Width = 58
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'OrderACC'
        Footers = <
          item
            FieldName = 'OrderACC'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#32317#37329#38989'|OrderACC'
        Title.TitleButton = True
        Width = 73
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'LLACC'
        Footers = <
          item
            FieldName = 'LLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #38936#27491#21934#37329#38989'|LLACC'
        Title.TitleButton = True
        Width = 74
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'BLACC'
        Footers = <
          item
            FieldName = 'BLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #38283#35036#26009#37329#38989'|BLACC'
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'BLPerson'
        Footers = <
          item
            FieldName = 'BLPerson'
            ValueType = fvtAvg
          end>
        Title.Caption = #35036#26009#27604#29575'|BLPerson'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'LLPerson'
        Footers = <
          item
            FieldName = 'LLPerson'
            ValueType = fvtAvg
          end>
        Title.Caption = #26448#26009#21344#27604'|LLPerson'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = 'BUYNO|BUYNO'
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
      #35330#21934#26448#26009#37329#38989#22577#34920
      '')
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
      'if object_id('#39'tempdb..#GUSPrice'#39') is not null  '
      'begin   drop table #GUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice'
      'into #GUSPrice from (select CLZL.CLDH,'
      '                      (select top 1 USPrice from KCRKS'
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))  '
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))'
      '                         order by USERDATE  desc)  as USPrice,'
      '                      (select top 1 VNPrice from KCRKS  '
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))'
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))    '
      '                         order by USERDATE  desc)  as VNPrice'
      'from CLZL ) CLZL  '
      'where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  '
      ''
      ''
      'if object_id('#39'tempdb..#KCLLS'#39') is not null  '
      'begin   drop table #KCLLS end   '
      
        'select KCLLS.LLNO,KCLLS.CLBH  as YSCLBH,KCLL.DepID,KCLLS.Qty,isn' +
        'ull(CLZHZL.SYL,1) as SYL,KCLLS.BLSB,'
      
        '       case when CLZHZL.CLDH1 is null then KCLLS.CLBH else CLZHZ' +
        'L.CLDH1 end as CLBH,KCLLS.SCBH'
      'into #KCLLS from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      'left join DDZL on DDZL.ZLBH=KCLLS.SCBH '
      
        'where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) ' +
        'between'
      '       '#39'2009/04/08'#39' and '#39'2009/04/15'#39
      '      and KCLL.CFMID<>'#39'NO'#39
      '      and KCLLS.SCBH like '#39'%%'#39
      '      and DDZL.Article like '#39'%'#39
      '      and KCLLS.Qty<>0'
      '      and DDZL.GSBH='#39'VA12'#39
      ''
      
        'select DDZL.DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,' +
        'DDZL.pairs,sum(DDZLS.Quantity*DDZLS.IPrice) as OrderACC,'
      '       KCLLS.LLACC,KCBLS.BLACC,YWCP.InQty ,DDZL.BUYNO'
      '--'#21152#20837'BC'#21697#32113#35336
      
        #9'   --,sum(case when qc_whd.class='#39'B'#39' then (CONVERT(float,((isnu' +
        'll(qc_whd.rqty,0)+isnull(qc_whd.lqty,0))))/2)  end) as '#39'BQTY'#39
      
        #9'   --,sum(case when qc_whd.class='#39'C'#39' then (CONVERT(float,((isnu' +
        'll(qc_whd.rqty,0)+isnull(qc_whd.lqty,0))))/2)  end) as '#39'CQTY'#39
      ''
      'from DDZL'
      'left join DDZLS on DDZL.DDBH=DDZLS.DDBH'
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      '--'#21152#20837'BC'#21697#32113#35336
      '--left join qc_whd on ddzl.ddbh=qc_whd.ryno'
      ''
      
        'left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*#KCLLS.SYL*' +
        '#GUSPrice.USPrice) as LLACC'
      '           from #KCLLS'
      '           left join #GUSPrice on #GUSPrice.CLBH=#KCLLS.CLBH '
      '           where (#KCLLS.BLSB is null or #KCLLS.BLSB<>'#39'Y'#39')'
      
        '           group by #KCLLS.SCBH ) KCLLS  on KCLLS.DDBH=DDZL.DDBH' +
        ' '
      
        'left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*#KCLLS.SYL*' +
        '#GUSPrice.USPrice) as BLACC'
      '           from #KCLLS '
      '           left join #GUSPrice on #GUSPrice.CLBH=#KCLLS.CLBH '
      '           where #KCLLS.BLSB='#39'Y'#39
      
        '           group by #KCLLS.SCBH ) KCBLS  on KCBLS.DDBH=DDZL.DDBH' +
        ' '
      'left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as InQty '
      '           from YWCP '
      '           left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '           left join DDZL on DDZL.DDBH=YWDD.YSBH '
      '           where YWDD.YSBH like  '#39'%%'#39
      
        '                 and convert(smalldatetime,convert(varchar,DDZL.' +
        'ShipDate,111)) between'
      '                 '#39'2009/04/08'#39' and '#39'2009/04/15'#39
      '           group by YWDD.YSBH )YWCP on YWCP.DDBH=DDZL.DDBH'
      
        'where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) ' +
        'between'
      '       '#39'2009/04/08'#39' and '#39'2009/04/15'#39
      '      and DDZL.DDBH like '#39'%%'#39
      '      and XXZL.Article like '#39'%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      
        'group by  DDZL.DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KF' +
        'JC,DDZL.pairs,KCLLS.LLACC,KCBLS.BLACC,YWCP.InQty,DDZL.BUYNO '
      'order by DDZl.DDBH ')
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
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
      DisplayFormat = '##,#0'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '##,#0'
    end
    object Query1AvgPrice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AvgPrice'
      DisplayFormat = '##,#0.000'
      Calculated = True
    end
    object Query1OrderACC: TFloatField
      FieldName = 'OrderACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLACC: TFloatField
      FieldName = 'LLACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1BLACC: TFloatField
      FieldName = 'BLACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1BLPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BLPerson'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1LLPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LLPerson'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 168
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 192
    Top = 168
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
