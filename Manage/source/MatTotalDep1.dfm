object MatTotalDep: TMatTotalDep
  Left = 312
  Top = 198
  Width = 870
  Height = 500
  Caption = 'MatTotalDep'
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
    Width = 854
    Height = 57
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
      Left = 171
      Top = 20
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label1: TLabel
      Left = 311
      Top = 20
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Button1: TButton
      Left = 499
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
      Width = 105
      Height = 24
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 195
      Top = 16
      Width = 105
      Height = 24
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 579
      Top = 10
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 379
      Top = 16
      Width = 105
      Height = 24
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 854
    Height = 404
    Align = alClient
    DataSource = DS1
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
    PopupMenu = PopupMenu1
    RowHeight = 30
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24037#24288#21517#31281'|GSBH'
        Width = 107
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
        Title.Caption = #25104#21697#20489#20837#24235#25976#37327'|InQty'
        Width = 129
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
        Title.Caption = #25104#21697#20489#20837#24235#37329#38989'|InACC'
        Width = 147
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
        Title.Caption = #21046#20196#38936#26009#37329#38989'|LLACC'
        Width = 140
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
        Title.Caption = #21046#20196#35036#26009#37329#38989'|BLACC'
        Width = 127
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'XLLACC'
        Footers = <
          item
            FieldName = 'XLLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #38750#21046#20196#39006#38936#26009#37329#38989'|XLLACC'
        Width = 144
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#totdepUSPrice'#39') is not null  '
      'begin   drop table #totdepUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice'
      'into #totdepUSPrice from (select CLZL.CLDH,'
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
      ''
      
        'select Det.GSBH,sum(Det.InQty) as InQty,sum(Det.InACC) as InACC,' +
        'sum(Det.LLACC) as LLACC,sum(Det.BLACC) as BLACC,sum(Det.XLLACC) ' +
        'as XLLACC'
      'from ('
      
        'select BDepartment.ID,YWCPin.InQty,YWCPin.InACC,KCLLS.LLACC,KCBL' +
        'S.BLACC,XKCLLS.XLLACC'
      
        '       ,substring(BDepartment.DepName,1,case when charindex('#39'_'#39',' +
        'BDepartment.DepName)=0 '
      
        '                                then 4 else  charindex('#39'_'#39',BDepa' +
        'rtment.DepName)-1 end) as GSBH'
      'from BDepartment '
      
        'left join (select YWCPin.DepNo,sum(YWCPin.Qty) as inQty,sum(YWCP' +
        'in.Qty*YWDDS.IPrice) as InACC'
      
        '           from (select YWCP.DepNO,YWCP.DDBH,YWBZPOS.DDCC,sum(YW' +
        'BZPOS.Qty) as Qty  '
      '                 from YWCP '
      
        '                 left join BDepartment on BDepartment.ID=YWCP.De' +
        'pNO '
      
        '                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and' +
        ' YWBZPOS.XH=YWCP.XH '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',YWCP.InDate,111)) between '
      '                       '#39'2009/04/17'#39' and '#39'2009/04/23'#39
      
        '                 group by  YWCP.DepNO,YWCP.DDBH,YWBZPOS.DDCC) YW' +
        'CPin '
      
        '           left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.D' +
        'DCC=YWCPin.DDCC '
      
        '           group by YWCPin.DepNO) YWCPin on BDepartment.ID=YWCPi' +
        'n.DepNO '
      
        'left join (select KCLLS.DepID,sum(KCLLS.Qty*KCLLS.SYL*#totDepUSP' +
        'rice.USPrice) as LLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLL.DepID,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111)) between '
      '                       '#39'2009/04/17'#39' and '#39'2009/04/23'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      '                       and KCLL.SCBH<>'#39'XXXXXXXXXX'#39
      
        '                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'#39'Y' +
        #39')'
      '                 ) KCLLS '
      
        '            left join #totDepUSPrice on #totDepUSPrice.CLBH=KCLL' +
        'S.CLBH '
      
        '           group by KCLLS.DepID ) KCLLS on KCLLS.DepID=BDepartme' +
        'nt.ID '
      
        'left join (select KCBLS.DepID,sum(KCBLS.Qty*KCBLS.SYL*#totDepUSP' +
        'rice.USPrice) as BLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLL.DepID,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111)) between '
      '                       '#39'2009/04/17'#39' and '#39'2009/04/23'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      '                       and KCLLS.BLSB='#39'Y'#39
      '                 ) KCBLS '
      
        '            left join #totDepUSPrice on #totDepUSPrice.CLBH=KCBL' +
        'S.CLBH '
      
        '           group by KCBLS.DepID ) KCBLS on KCBLS.DepID=BDepartme' +
        'nt.ID '
      
        'left join (select KCLLS.DepID,sum(KCLLS.Qty*KCLLS.SYL*#totDepUSP' +
        'rice.USPrice) as XLLACC'
      
        '           from (select case when CLZHZL.CLDH1 is null then KCLL' +
        'S.CLBH else CLZHZL.CLDH1 end as CLBH,'
      
        '                        KCLL.DepID,KCLLS.Qty,isnull(CLZHZL.SYL,1' +
        ') as SYL '
      '                 from KCLLS '
      '                 left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      '                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '                 left join BDepartment on BDepartment.ID=KCLL.De' +
        'pID '
      '                 where BDepartment.DepName like '#39'%%'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',KCLL.CFMDate,111)) between '
      '                       '#39'2009/04/17'#39' and '#39'2009/04/23'#39
      '                       and KCLLS.Qty<>0 '
      '                       and KCLL.CFMID<>'#39'NO'#39
      '                       and KCLL.SCBH='#39'XXXXXXXXXX'#39
      
        '                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'#39'Y' +
        #39')'
      '                 ) KCLLS '
      
        '            left join #totDepUSPrice on #totDepUSPrice.CLBH=KCLL' +
        'S.CLBH '
      
        '           group by KCLLS.DepID ) XKCLLS on XKCLLS.DepID=BDepart' +
        'ment.ID '
      'where BDepartment.DepName like '#39'%%'#39
      
        '      and not(YWCPin.InQty is null and KCLLS.LLACC is null and K' +
        'CBLS.BLACC is null and XKCLLS.XLLACC is null)'
      ')Det '
      'group by Det.GSBH '
      'order by Det.GSBH')
    Left = 192
    Top = 144
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 50
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
    object Query1XLLACC: TFloatField
      FieldName = 'XLLACC'
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
      #24037#24288#21608#25928#29575#29986#20986#25237#20837#34920
      '')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -27
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
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
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
