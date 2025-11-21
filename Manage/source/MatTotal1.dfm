object MatTotal: TMatTotal
  Left = 288
  Top = 185
  Width = 932
  Height = 500
  Caption = 'MatTotal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 20
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
    end
    object Label4: TLabel
      Left = 155
      Top = 20
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label6: TLabel
      Left = 272
      Top = 20
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label1: TLabel
      Left = 412
      Top = 20
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object RadG1: TRadioGroup
      Left = 25
      Top = 38
      Width = 377
      Height = 49
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Shipping order('#26989#21209#35330#21934')'
        'Produce order('#29983#29986#35330#21934')')
      TabOrder = 5
    end
    object Button1: TButton
      Left = 616
      Top = 10
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 59
      Top = 16
      Width = 89
      Height = 24
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 179
      Top = 16
      Width = 89
      Height = 24
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 696
      Top = 10
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CBX4: TComboBox
      Left = 333
      Top = 16
      Width = 57
      Height = 24
      ItemHeight = 16
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 480
      Top = 16
      Width = 105
      Height = 24
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 916
    Height = 372
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
    FrozenCols = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
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
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'DaoMH'
        Footers = <>
        Title.Caption = #26028#20992#34399'|DaoMH'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'IPrice'
        Footers = <
          item
            FieldName = 'IPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #21934#20729'|IPrice'
        Width = 56
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
        Title.Caption = #35330#21934#25976#37327'|pairs'
        Width = 62
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'OrdACC'
        Footers = <
          item
            FieldName = 'OrdACC'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#32317#37329#38989'|OrdACC'
        Width = 78
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Title.Caption = #32317#20837#24235#25976'|okQty'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'okACC'
        Footers = <
          item
            FieldName = 'okACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32317#20837#24235#37329#38989'|okACC'
        Width = 67
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
        Title.Caption = #20837#24235#25976#37327'|InQty'
        Width = 61
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'InACC'
        Footers = <
          item
            FieldName = 'InACC'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#37329#38989'|InACC'
        Width = 77
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
        Title.Caption = #38936#26009#37329#38989'|LLACC'
        Width = 78
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
        Title.Caption = #35036#26009#37329#38989'|BLACC'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'ZLACC'
        Footers = <
          item
            FieldName = 'ZLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #21046#20196#37329#38989'|ZLACC'
        Width = 70
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'okLLACC'
        Footers = <
          item
            FieldName = 'okLLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32317#38936#26009#37329#38989'|okLLACC'
        Width = 67
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'okBLACC'
        Footers = <
          item
            FieldName = 'okBLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32317#35036#26009#37329#38989'|okBLACC'
        Width = 67
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#totUSPrice'#39') is not null  '
      'begin   drop table #totUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice'
      'into #totUSPrice from (select CLZL.CLDH,'
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
      ' order by CLZL.CLDH  '
      
        'select DDZL.DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,' +
        'DDZL.pairs,DDZLS.IPrice,DDZLS.OrdACC,'
      
        '       YWCPin.InQty,YWCPin.InACC,YWCPok.okQty,YWCPok.okACC,KCLLS' +
        '.LLACC,KCBLS.BLACC,ZLZLS2.ZLACC'
      '       ,okLLS.okLLACC,okBLS.okBLACC '
      'from DDZL '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH'
      
        'left join (select DDBH,avg(DDZLS.IPrice) as IPrice,sum(Quantity*' +
        'IPrice) as OrdACC'
      '           from DDZLS '
      '           group by DDBH )DDZLS on DDZL.DDBH=DDZLS.DDBH'
      
        'left join (select YWDD.YSBH as DDBH,sum(YWCPok.Qty) as okQty,sum' +
        '(YWCPok.Qty*YWDDS.IPrice) as okACC'
      
        '           from (select YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) ' +
        'as Qty  '
      '                 from YWCP '
      
        '                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and' +
        ' YWBZPOS.XH=YWCP.XH '
      '                 where YWCP.InDate is not null '
      '                 group by  YWCP.DDBH,YWBZPOS.DDCC) YWCPok '
      
        '           left join YWDDS on YWDDS.DDBH=YWCPok.DDBH and YWDDS.D' +
        'DCC=YWCPok.DDCC '
      '           left join YWDD on YWDD.DDBH=YWCPok.DDBH '
      '           group by YWDD.YSBH) YWCPok on DDZL.DDBH=YWCPok.DDBH '
      
        'left join (select YWDD.YSBH as DDBH,sum(YWCPin.Qty) as inQty,sum' +
        '(YWCPin.Qty*YWDDS.IPrice) as InACC'
      
        '           from (select YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) ' +
        'as Qty  '
      '                 from YWCP '
      
        '                 left join BDepartment on BDepartment.ID=YWCP.De' +
        'pNO '
      
        '                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and' +
        ' YWBZPOS.XH=YWCP.XH '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',YWCP.InDate,111)) between '
      '                       '#39'2009/04/27'#39' and '#39'2009/05/04'#39
      '                 group by  YWCP.DDBH,YWBZPOS.DDCC) YWCPin '
      
        '           left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.D' +
        'DCC=YWCPin.DDCC '
      '           left join YWDD on YWDD.DDBH=YWCPin.DDBH '
      '           group by YWDD.YSBH) YWCPin on DDZL.DDBH=YWCPin.DDBH '
      
        'left join (select ZLZLS2.ZLBH as DDBH,sum(ZLZLS2.CLSL*#totUSPric' +
        'e.USPrice) as ZLACC'
      '           from ZLZLS2'
      
        '           left join #totUSPrice on #totUSPrice.CLBH=ZLZLS2.CLBH' +
        ' '
      '           where ZLZLS2.ZMLB='#39'N'#39
      '           group by ZLZLS2.ZLBH) ZLZLS2 on ZLZLS2.DDBH=DDZL.DDBH'
      
        'left join (select okLLS.SCBH as DDBH,sum(okLLS.Qty*okLLS.SYL*#to' +
        'tUSPrice.USPrice) as okLLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLLS.SCBH,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111))>'#39'2009/02/26'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      
        '                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'#39'Y' +
        #39')'
      '                 ) okLLS '
      
        '            left join #totUSPrice on #totUSPrice.CLBH=okLLS.CLBH' +
        ' '
      '           group by okLLS.SCBH ) okLLS on okLLS.DDBH=DDZl.DDBH '
      
        'left join (select KCLLS.SCBH as DDBH,sum(KCLLS.Qty*KCLLS.SYL*#to' +
        'tUSPrice.USPrice) as LLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLLS.SCBH,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111)) between '
      '                       '#39'2009/04/27'#39' and '#39'2009/05/04'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      
        '                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'#39'Y' +
        #39')'
      '                 ) KCLLS '
      
        '            left join #totUSPrice on #totUSPrice.CLBH=KCLLS.CLBH' +
        ' '
      '           group by KCLLS.SCBH ) KCLLS on KCLLS.DDBH=DDZl.DDBH '
      
        'left join (select KCBLS.SCBH as DDBH,sum(KCBLS.Qty*KCBLS.SYL*#to' +
        'tUSPrice.USPrice) as BLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLLS.SCBH,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111)) between '
      '                       '#39'2009/04/27'#39' and '#39'2009/05/04'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      '                       and KCLLS.BLSB='#39'Y'#39
      '                 ) KCBLS '
      
        '            left join #totUSPrice on #totUSPrice.CLBH=KCBLS.CLBH' +
        ' '
      '           group by KCBLS.SCBH ) KCBLS on KCBLS.DDBH=DDZl.DDBH '
      
        'left join (select okBLS.SCBH as DDBH,sum(okBLS.Qty*okBLS.SYL*#to' +
        'tUSPrice.USPrice) as okBLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLLS.SCBH,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111))>'#39'2009/02/26'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      '                       and KCLLS.BLSB='#39'Y'#39
      '                 ) okBLS '
      
        '            left join #totUSPrice on #totUSPrice.CLBH=okBLS.CLBH' +
        ' '
      '           group by okBLS.SCBH ) okBLS on okBLS.DDBH=DDZl.DDBH '
      
        'where not (YWCPin.InACC is null and KCLLS.LLACC is null and KCBL' +
        'S.BLACC is null)'
      '         and SCZLDate.GSBH='#39'VA12'#39
      'order by DDZL.DDBH')
    Left = 192
    Top = 144
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
    object Query1IPrice: TCurrencyField
      FieldName = 'IPrice'
      DisplayFormat = '##,#0.000'
    end
    object Query1OrdACC: TFloatField
      FieldName = 'OrdACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TIntegerField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1okACC: TCurrencyField
      FieldName = 'okACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '##,#0'
    end
    object Query1InACC: TCurrencyField
      FieldName = 'InACC'
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
    object Query1ZLACC: TFloatField
      FieldName = 'ZLACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1okLLACC: TFloatField
      FieldName = 'okLLACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1okBLACC: TFloatField
      FieldName = 'okBLACC'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 144
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 304
    Top = 136
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
    PageHeader.CenterText.Strings = (
      #21608#25928#29575#29986#20986#25237#20837#34920
      '')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -27
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 160
    Top = 144
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 224
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
