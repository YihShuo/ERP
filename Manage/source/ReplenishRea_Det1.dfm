object ReplenishRea_Det: TReplenishRea_Det
  Left = 156
  Top = 162
  Width = 1066
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'ReplenishRea_Det'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1058
    Height = 399
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
        FieldName = 'GSBH'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 232
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footer.FieldName = 'ACCUS'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 231
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #21508#24288#35036#26009#26126#32048
      'Replenish Detail')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -32
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 248
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishOrd.DS1
    SQL.Strings = (
      'if object_id('#39'tempdb..#ReanUSPrice'#39') is not null  '
      'begin   drop table #ReanUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice'
      'into #ReanUSPrice from (select CLZL.CLDH,'
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
      ''
      
        'select LL.GSBH,LL.DepName,LL.CLBH,LL.Qty,LL.SYL*#ReanUSPrice.USP' +
        'rice as USPrice,'
      
        '        LL.LLNO,LL.Qty*LL.SYL*#ReanUSPrice.USPrice as ACCUS,LL.Y' +
        'YBH,SCBLYY.YWSM,SCBLYY.ZWSM,CLZL.YWPM,CLZL.ZWPM'
      
        'from (select substring(BDepartment.DepName,1,case when charindex' +
        '('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepartme' +
        'nt.DepName)-1 end ) as GSBH'
      
        '             ,KCLL.LLNO,KCLLS.YYBH,KCLL.DepID,KCLLS.Qty,isnull(C' +
        'LZHZL.SYL,1) as SYL,BDepartment.DepName,'
      
        '              case when CLZHZL.CLDH1 is null then KCLLS.CLBH els' +
        'e CLZHZL.CLDH1 end as CLBH'
      '      from KCLLS'
      '      left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '      left join BDepartment on BDepartment.ID=KCLL.DepID'
      '      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH' +
        '=CLLBFYS.GSBH'
      
        '      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,1' +
        '11)) between'
      '            '#39'2009/04/01'#39' and '#39'2009/05/06'#39
      '            and KCLL.CFMID<>'#39'NO'#39
      '            and BDepartment.DepName like '#39'%%'#39
      '            and KCLLS.Qty<>0'
      '            and KCLLS.BLSB='#39'Y'#39
      '            and (BDepartment.DepName like '#39'A1_%'#39
      '                  or  BDepartment.DepName='#39'A1'#39')'
      '            ) LL  '
      'left join #ReanUSPrice on #ReanUSPrice.CLBH=LL.CLBH '
      'left join SCBLYY on SCBLYY.YYBH=LL.YYBH '
      'left join CLZL on CLZl.CLDH=LL.CLBH  '
      'order by LL.GSBH,LL.DepName,LL.CLBH '
      '')
    Left = 56
    Top = 64
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 50
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1ACCUS: TFloatField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.00'
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 152
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
