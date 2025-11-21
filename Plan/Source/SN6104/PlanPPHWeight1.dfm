object PlanPPHWeight: TPlanPPHWeight
  Left = 230
  Top = 244
  Width = 928
  Height = 480
  Caption = 'PlanPPHWeight'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 89
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 34
      Width = 39
      Height = 18
      Caption = 'Lean:'
    end
    object Label6: TLabel
      Left = 30
      Top = 60
      Width = 69
      Height = 18
      Caption = 'PlanDate:'
    end
    object Label8: TLabel
      Left = 211
      Top = 61
      Width = 20
      Height = 18
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 8
      Top = 4
      Width = 249
      Height = 25
      AutoSize = False
      Caption = #29983#31649'POH'#32026#21029#21152#27402#24179#22343#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 349
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 350
      Top = 46
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object LeanEdit: TEdit
      Left = 51
      Top = 31
      Width = 174
      Height = 26
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 103
      Top = 59
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 235
      Top = 58
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 13
      Top = 62
      Width = 14
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 920
    Height = 360
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Depname'
        Footer.FieldName = 'Depname'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #29983#29986#35506#21029'|Depname'
      end
      item
        EditButtons = <>
        FieldName = 'T1'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|1'
      end
      item
        EditButtons = <>
        FieldName = 'T2'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|2'
      end
      item
        EditButtons = <>
        FieldName = 'T3'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|3'
      end
      item
        EditButtons = <>
        FieldName = 'T4'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|4'
      end
      item
        EditButtons = <>
        FieldName = 'T5'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|5'
      end
      item
        EditButtons = <>
        FieldName = 'T6'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|6'
      end
      item
        EditButtons = <>
        FieldName = 'T7'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|7'
      end
      item
        EditButtons = <>
        FieldName = 'T8'
        Footers = <>
        Title.Caption = 'POH '#32026#21029'|8'
      end
      item
        EditButtons = <>
        FieldName = 'TotalQty'
        Footers = <>
        Title.Caption = #38928#25490#38617#25976'|TotalPairs'
      end
      item
        EditButtons = <>
        FieldName = 'PPH'
        Footers = <>
        Title.Caption = #21152#27402#24179#22343'|POH'
      end
      item
        EditButtons = <>
        FieldName = 'Workers'
        Footers = <>
        Title.Caption = #32218#21029#20154#25976'|Workers'
      end
      item
        EditButtons = <>
        FieldName = 'HourQty'
        Footers = <>
        Title.Caption = #24037#26178'|Hours'
        Width = 53
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select POH_FIN.*,SCRL.HourQty,RSCQ.CQQty from ('
      #9'select Depname,'
      #9#9'   Max(case when Tier=1 then pairs end) as T1,'
      #9#9'   Max(case when Tier=2 then pairs end) as T2,'
      #9#9'   Max(case when Tier=3 then pairs end) as T3,'
      #9#9'   Max(case when Tier=4 then pairs end) as T4,'
      #9#9'   Max(case when Tier=5 then pairs end) as T5,'
      #9#9'   Max(case when Tier=6 then pairs end) as T6,'
      #9#9'   Max(case when Tier=7 then pairs end) as T7,'
      #9#9'   Max(case when Tier=8 then pairs end) as T8,'
      #9#9'   Max(Total) as TotalQty,Sum(PPH) as PPH'
      ''
      #9'from ('
      
        #9'select POH_Main.*,Round(POH_Main.Qty*POH_Det.Qty,2) as PPH from' +
        ' ('
      
        #9#9'select POH.depname,Tier as Tier,pairs,total,Round(Max(Convert(' +
        'float,pairs))/Sum(total),2) as '#39'Qty'#39
      #9#9'from ('
      #9#9'  select POH.depname,POH.pairs,POH.Tier,POH_T.total  from (  '
      #9#9#9'select depname,sum (pairs) as pairs,Tier from('
      
        #9#9#9#9'select Bdepartment.depname,max(SMDD.plandate) as plandate,Su' +
        'm(SMDD.Qty) as pairs,IEQty,IEPeo,POH,'
      #9#9#9#9#9#9'case when POH>=1.5 then 1'
      #9#9#9#9#9#9'when POH>=1.25 and POH<1.5 then 2'
      #9#9#9#9#9#9'when POH>=1.13 and POH<1.25 then 3'
      #9#9#9#9#9#9'when POH>=1.0 and POH<1.13 then 4'
      #9#9#9#9#9#9'when POH>=0.86 and POH<1.0 then 5'
      #9#9#9#9#9#9'when POH>=0.75 and POH<0.86 then 6'
      #9#9#9#9#9#9'when POH>=0.61 and POH<0.75 then 7'
      #9#9#9#9#9#9'when POH<=0.6 then 8 end Tier'
      #9#9#9#9' from SMDD '
      #9#9#9#9' left join Bdepartment on Bdepartment.ID=SMDD.DepNo'
      #9#9#9#9' left join DDZL on DDZl.DDBH=SMDD.YSBH'
      
        #9#9#9#9' left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHa' +
        'o=DDZL.SheHao'
      
        #9#9#9#9' left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.B' +
        'ZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(C' +
        'onvert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as P' +
        'OH'
      
        #9#9#9#9#9#9#9'from SCXXCL group by xiexing,shehao) SCXXCL on SCXXCL.xie' +
        'xing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao'
      #9#9#9#9' where 1=1 '
      #9#9#9#9' and  DDZL.buyno like '#39'%'#39
      #9#9#9#9' and  DDZL.DDBH like '#39'%'#39
      #9#9#9#9' and  DDZL.GSBH='#39'VA12'#39' '
      #9#9#9#9' and  Bdepartment.Depname like '#39'%'#39
      
        #9#9#9#9' and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,11' +
        '1)) between '
      #9#9#9#9#9'   '#39'2018/02/01'#39' and  '#39'2018/02/28'#39')'
      #9#9#9#9' and SMDD.GXLB ='#39'A'#39' '
      
        #9#9#9#9' group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.AR' +
        'TICLE'
      
        #9#9#9#9' ,XXZL.YSSM,DDZL.SHipdate,DDZL.DDGB,XXZL.DAOMH,XXZL.XTMH,IEQ' +
        'ty,IEPeo,POH'
      #9#9#9') POH group by depname,Tier'
      #9#9'  ) POH '
      #9#9'  left join ('
      #9#9#9' select depname,sum (pairs) as total from ('
      
        #9#9#9#9'select Bdepartment.depname,max(SMDD.plandate) as plandate ,S' +
        'um(SMDD.Qty) as pairs,'
      #9#9#9#9#9'case when POH>=1.5 then 1'
      #9#9#9#9#9'when POH>=1.25 and POH<1.5 then 2'
      #9#9#9#9#9'when POH>=1.13 and POH<1.25 then 3'
      #9#9#9#9#9'when POH>=1.0 and POH<1.13 then 4'
      #9#9#9#9#9'when POH>=0.86 and POH<1.0 then 5'
      #9#9#9#9#9'when POH>=0.75 and POH<0.86 then 6'
      #9#9#9#9#9'when POH>=0.61 and POH<0.75 then 7'
      #9#9#9#9#9'when POH<=0.6 then 8 end Tier'
      #9#9#9#9'from SMDD '
      #9#9#9#9'left join Bdepartment on Bdepartment.ID=SMDD.DepNo'
      #9#9#9#9'left join DDZL on DDZl.DDBH=SMDD.YSBH'
      
        #9#9#9#9'left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao' +
        '=DDZL.SheHao'
      
        #9#9#9#9'left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZ' +
        'CL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Co' +
        'nvert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as PO' +
        'H'
      
        #9#9#9#9#9#9#9'from SCXXCL group by xiexing,shehao) SCXXCL on SCXXCL.xie' +
        'xing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao'
      #9#9#9#9'where 1=1 '
      #9#9#9#9'and  DDZL.buyno like '#39'%'#39
      #9#9#9#9'and  DDZL.DDBH like '#39'%'#39
      #9#9#9#9'and  DDZL.GSBH='#39'VA12'#39' '
      #9#9#9#9'and  Bdepartment.Depname like '#39'%'#39
      
        #9#9#9#9'and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111' +
        ')) between '
      #9#9#9#9#9'   '#39'2018/02/01'#39' and  '#39'2018/02/28'#39')'
      #9#9#9#9'and SMDD.GXLB ='#39'A'#39' '
      
        #9#9#9#9'group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ART' +
        'ICLE'
      
        #9#9#9#9',XXZL.YSSM,DDZL.SHipdate,DDZL.DDGB,XXZL.DAOMH,XXZL.XTMH,IEQt' +
        'y,IEPeo,POH '
      #9#9#9') POH_T group by depname '
      #9#9'  ) POH_T on POH_T.depname=POH.depname '
      #9#9'  where POH.depname like '#39'%'#39
      #9#9') POH group by POH.depname,Tier,total,pairs '
      #9') POH_Main'
      #9'left join ('
      
        #9#9'select DepName,Tier,round(sum(convert(float,Pairs)/Total*POH),' +
        '2) as Qty'
      
        #9#9'from(select T1.DepName,T1.DDBH,T1.Pairs,T1.POH,T1.Tier,T2.Tota' +
        'l'
      
        #9#9#9' from(select DDZL.BuyNo,Bdepartment.depname as DepName,DDZL.D' +
        'DBH,Sum(SMDD.Qty) as pairs,POH,'
      #9#9#9#9#9#9' case when POH>=1.5 then '#39'1'#39
      #9#9#9#9#9#9#9'  when POH>=1.25 and POH<1.5 then '#39'2'#39
      #9#9#9#9#9#9#9'  when POH>=1.13 and POH<1.25 then '#39'3'#39
      #9#9#9#9#9#9#9'  when POH>=1.0 and POH<1.13 then '#39'4'#39
      #9#9#9#9#9#9#9'  when POH>=0.86 and POH<1.0 then '#39'5'#39
      #9#9#9#9#9#9#9'  when POH>=0.75 and POH<0.86 then '#39'6'#39
      #9#9#9#9#9#9#9'  when POH>=0.61 and POH<0.75 then '#39'7'#39
      #9#9#9#9#9#9#9'  when POH<=0.6 then '#39'8'#39' end Tier'
      #9#9#9#9'   from SMDD '
      #9#9#9#9'   left join Bdepartment on Bdepartment.ID=SMDD.DepNo'
      #9#9#9#9'   left join DDZL on DDZl.DDBH=SMDD.YSBH'
      
        #9#9#9#9'   left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.She' +
        'Hao=DDZL.SheHao'
      
        #9#9#9#9'   left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL' +
        '.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max' +
        '(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as' +
        ' POH'
      
        #9#9#9#9#9#9#9'  from SCXXCL group by xiexing,shehao) SCXXCL on SCXXCL.x' +
        'iexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao'
      #9#9#9#9'   where 1=1 '
      #9#9#9#9'   and  DDZL.buyno like '#39'%'#39
      #9#9#9#9'   and  Bdepartment.depname like '#39'%'#39
      #9#9#9#9'   and  DDZL.GSBH='#39'VA12'#39' '
      
        #9#9#9#9'   and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,' +
        '111)) between '
      #9#9#9#9#9#9#39'2018/02/01'#39' and  '#39'2018/02/28'#39')'
      #9#9#9#9'   and SMDD.GXLB ='#39'A'#39
      #9#9#9#9'   group by DDZL.BuyNo,DDZL.DDBH,Bdepartment.depname,POH) T1'
      #9#9#9' left join(select DepName, sum(Pairs)as Total,Tier'
      
        #9#9#9#9#9'   from(select DDZL.BuyNo,Bdepartment.depname as DepName,DD' +
        'ZL.DDBH,Sum(SMDD.Qty) as pairs,POH,'
      #9#9#9#9#9#9#9#9'   case when POH>=1.5 then '#39'1'#39
      #9#9#9#9#9#9#9#9'   when POH>=1.25 and POH<1.5 then '#39'2'#39
      #9#9#9#9#9#9#9#9'   when POH>=1.13 and POH<1.25 then '#39'3'#39
      #9#9#9#9#9#9#9#9'   when POH>=1.0 and POH<1.13 then '#39'4'#39
      #9#9#9#9#9#9#9#9'   when POH>=0.86 and POH<1.0 then '#39'5'#39
      #9#9#9#9#9#9#9#9'   when POH>=0.75 and POH<0.86 then '#39'6'#39
      #9#9#9#9#9#9#9#9'   when POH>=0.61 and POH<0.75 then '#39'7'#39
      #9#9#9#9#9#9#9#9'   when POH<=0.6 then '#39'8'#39' end Tier'
      #9#9#9#9#9#9#9' from SMDD '
      #9#9#9#9#9#9#9' left join Bdepartment on Bdepartment.ID=SMDD.DepNo'
      #9#9#9#9#9#9#9' left join DDZL on DDZl.DDBH=SMDD.YSBH'
      
        #9#9#9#9#9#9#9' left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.Sh' +
        'eHao=DDZL.SheHao'
      
        #9#9#9#9#9#9#9' left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXC' +
        'L.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Ma' +
        'x(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) a' +
        's POH'
      
        #9#9#9#9#9#9#9#9#9#9'from SCXXCL group by xiexing,shehao) SCXXCL on SCXXCL.' +
        'xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao'
      #9#9#9#9#9#9#9' where 1=1 '
      #9#9#9#9#9#9#9' and  DDZL.buyno like '#39'%'#39
      #9#9#9#9#9#9#9' and  Bdepartment.depname like '#39'%'#39
      #9#9#9#9#9#9#9' and  DDZL.GSBH='#39'VA12'#39' '
      
        #9#9#9#9#9#9#9' and (convert(smalldatetime,convert(varchar,SMDD.PlanDate' +
        ',111)) between '
      #9#9#9#9#9#9#9#9' '#39'2018/02/01'#39' and  '#39'2018/02/28'#39' )'
      #9#9#9#9#9#9#9' and SMDD.GXLB ='#39'A'#39
      
        #9#9#9#9#9#9#9' group by DDZL.BuyNo,DDZL.DDBH,Bdepartment.depname,POH)T2' +
        ' '
      
        #9#9#9#9#9'   group by DepName,Tier)T2 on T1.DepName=T2.DepName and T1' +
        '.Tier=T2.Tier  '
      
        #9#9#9' group by   T1.DepName,T1.DDBH,T1.Pairs,T1.POH,T1.Tier,T2.Tot' +
        'al)T3'
      #9#9' group by DepName, Tier'
      
        #9') POH_Det on POH_Main.DepName=POH_Det.Depname and POH_Main.Tier' +
        '=POH_Det.Tier'
      #9') POH_FIN '
      #9'Group by Depname ) POH_FIN'
      'left join ('
      #9'select BDepartment.DepName,Sum(SCRL.SCGS) as HourQty  '
      #9'from SCRL'
      #9'left join BDepartment on BDepartment.ID=SCRL.DepNO '
      #9'where BDepartment.GXLB='#39'A'#39' '
      #9#9'  and BDepartment.DepName like '#39'%'#39
      
        #9#9'  and Convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+S' +
        'CDAY) between '#39'2018/02/01'#39' and  '#39'2018/02/28'#39' '
      #9#9'  and SCRL.GSBH='#39'VA12'#39' '
      
        #9'Group by BDepartment.DepName ) SCRL on SCRL.DepName=POH_FIN.Dep' +
        'Name'
      'left join ('
      
        '    select  BDepartment.DepName,Avg(RSCQ.CQQty) as CQQty from RS' +
        'CQ'
      '    left join BDepartment on BDepartment.ID=RSCQ.DepNO '
      
        '    where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111)' +
        ') between '
      #9#9#9#9#9'   '#39'2018/01/01'#39' and  '#39'2018/01/31'#39
      
        #9'Group by BDepartment.DepName ) RSCQ on RSCQ.DepName=POH_FIN.Dep' +
        'Name'#9
      #9#9
      ' order by POH_FIN.DepName'
      #9)
    Left = 320
    Top = 232
    object Query1Depname: TStringField
      DisplayWidth = 16
      FieldName = 'Depname'
      FixedChar = True
      Size = 50
    end
    object Query1T1: TIntegerField
      DisplayWidth = 6
      FieldName = 'T1'
    end
    object Query1T2: TIntegerField
      DisplayWidth = 7
      FieldName = 'T2'
    end
    object Query1T3: TIntegerField
      DisplayWidth = 7
      FieldName = 'T3'
    end
    object Query1T4: TIntegerField
      DisplayWidth = 7
      FieldName = 'T4'
    end
    object Query1T5: TIntegerField
      DisplayWidth = 7
      FieldName = 'T5'
    end
    object Query1T6: TIntegerField
      DisplayWidth = 8
      FieldName = 'T6'
    end
    object Query1T7: TIntegerField
      DisplayWidth = 8
      FieldName = 'T7'
    end
    object Query1T8: TIntegerField
      DisplayWidth = 7
      FieldName = 'T8'
    end
    object Query1TotalQty: TIntegerField
      DisplayWidth = 9
      FieldName = 'TotalQty'
    end
    object Query1PPH: TFloatField
      DisplayWidth = 9
      FieldName = 'PPH'
    end
    object Query1CQQty: TIntegerField
      FieldName = 'Workers'
    end
    object Query1HourQty: TFloatField
      DisplayWidth = 10
      FieldName = 'HourQty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 354
    Top = 232
  end
end
