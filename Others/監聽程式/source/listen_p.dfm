object Main: TMain
  Left = 5
  Top = 3
  Width = 638
  Height = 428
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 630
    Height = 348
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 76
      Height = 20
      Caption = 'BaseDate:'
    end
    object nowdate: TDateTimePicker
      Left = 103
      Top = 11
      Width = 129
      Height = 28
      Date = 42399.952106851850000000
      Time = 42399.952106851850000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 240
      Top = 9
      Width = 140
      Height = 30
      Caption = 'Dao RTOV file'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 541
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Daily run'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object DailyRunEdit: TEdit
      Left = 632
      Top = 12
      Width = 121
      Height = 28
      TabOrder = 3
      Text = '06:30:00'
    end
  end
  object dayreport: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'select fsno,sumline,khpo'
      
        ',isnull(sum( case when gxlb='#39'C'#39' then isnull(qty,0) end),0)  as c' +
        'qty'
      
        ',isnull(sum( case when gxlb='#39'S'#39' then isnull(qty,0) end),0)  as s' +
        'qty'
      
        ',isnull(sum( case when gxlb='#39'A'#39' then isnull(qty,0) end),0)  as a' +
        'qty'
      
        ',isnull(sum( case when gxlb='#39'I'#39' then isnull(qty,0) end),0)  as i' +
        'qty'
      
        ',isnull(sum( case when gxlb='#39'O'#39' then isnull(qty,0) end),0)  as o' +
        'qty'
      ',:dde,okdate'
      ' from rtstemp'
      ''
      'where CONVERT(char(10),datadate,111)=CONVERT(char(10),:dde,111)'
      ''
      'group by fsno,sumline,khpo'
      'order by khpo'
      '           ')
    Left = 256
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'dde'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'dde'
        ParamType = ptUnknown
      end>
  end
  object ds1: TDataSource
    DataSet = dayreport
    Left = 304
    Top = 120
  end
  object weekreport: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'IF NOT EXISTS (SELECT top 1 * from RTSSmdd where UserDate= CONVE' +
        'RT(char(10),getdate(),111) )'
      'begin'
      'Insert into RTSSmdd'
      
        'select '#39'LYN'#39' ,ddzl.khpo,isnull(CONVERT(char(10),(kclls.lldate),1' +
        '11),'#39#39'),'
      'CONVERT(char(10),c.strt,111),CONVERT(char(10),c.endd,111),'
      'CONVERT(char(10), s.strt,111),CONVERT(char(10),s.endd,111),'
      'CONVERT(char(10),a.strt,111),CONVERT(char(10),a.endd,111),'
      
        'ddzl.ordermode,CONVERT(char(10),getdate(),111),min(DDZL.ShipDate' +
        ') as shipdate,'
      'case when IsNull(min(DDZL.RYTYPE),'#39#39')<>'#39'SLT'#39' then '
      
        '  case when (min(DDZL.ShipDate)-45)>GETDATE() then '#39'N'#39' else '#39'Y'#39' ' +
        'end '
      'else  '
      
        '  case when CONVERT(char(10),a.endd,111)='#39#39' then '#39'N'#39' else '#39'Y'#39' en' +
        'd  '
      'end'
      'as BTSLock,ddzl.ddbh'
      'from ddzl'
      'left join '
      '(select min(kclls.USERDATE) as lldate,kclls.scbh from kclls'
      ' left join kcll on kclls.llno=kcll.llno'
      
        ' inner join ddzl on kclls.scbh=ddzl.ddbh and  ddzl.khbh='#39'036'#39' an' +
        'd DDZL.DDZT<>'#39'C'#39'  and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate(' +
        ')-150'
      ' where substring(kcll.depid,1,1)<>'#39'R'#39
      ' group by kclls.scbh'
      ' )as kclls on kclls.scbh=ddzl.ddbh'
      'left join ywdd on ywdd.ddbh=ddzl.ddbh'
      '--'#21508#27573#25237#20837#26085#26399
      'left join'
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd'
      '      from smdd,ddzl'
      
        '      where ddzl.ddbh=smdd.YSBH and  ddzl.khbh='#39'036'#39' and DDZL.DD' +
        'ZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate()-150 and ' +
        'smdd.gxlb='#39'C'#39
      '      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh'
      'left join'
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd '
      '      from smdd,ddzl'
      
        '      where ddzl.ddbh=smdd.YSBH  and  ddzl.khbh='#39'036'#39' and DDZL.D' +
        'DZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate()-150 and' +
        ' smdd.gxlb='#39'S'#39
      '      group by smdd.ysbh) as s on s.ysbh=ddzl.ddbh'
      'left join'
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd '
      '      from smdd,ddzl'
      
        '      where ddzl.ddbh=smdd.YSBH and  ddzl.khbh='#39'036'#39' and DDZL.DD' +
        'ZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate()-150 and ' +
        'smdd.gxlb='#39'A'#39
      '      group by smdd.ysbh) as a on a.ysbh=ddzl.ddbh'
      
        'where DDZL.DDZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39' and  ddzl.khbh='#39'036'#39' and ' +
        'ywdd.exesb is null and substring(ddzl.ddbh,1,2) <> '#39'ZS'#39
      'and ddzl.shipdate >getdate()-150 and (ddzl.ddrq+10)<getdate() '
      
        'group by ddzl.DDBH,ddzl.khpo,c.strt,c.endd, s.strt,s.endd,a.strt' +
        ',a.endd,ddzl.ordermode,kclls.lldate'
      'End'
      '--'
      
        'select '#39'LYN'#39' ,ddzl.khpo,isnull(CONVERT(char(10),(kclls.lldate),1' +
        '11),'#39#39'),'
      'CONVERT(char(10),c.strt,111),CONVERT(char(10),c.endd,111),'
      'CONVERT(char(10), s.strt,111),CONVERT(char(10),s.endd,111),'
      'CONVERT(char(10),a.strt,111),CONVERT(char(10),a.endd,111),'
      
        'ddzl.ordermode,CONVERT(char(10),getdate()+1,111),min(DDZL.ShipDa' +
        'te) as shipdate,case when (min(DDZL.ShipDate)-45)>GETDATE() then' +
        ' '#39'N'#39' else '#39'Y'#39' end as BTSLock,ddzl.ddbh'
      ''
      'from ddzl'
      'left join '
      '(select min(kclls.USERDATE) as lldate,kclls.scbh from kclls'
      ' left join kcll on kclls.llno=kcll.llno'
      
        ' inner join ddzl on kclls.scbh=ddzl.ddbh and  ddzl.khbh='#39'036'#39' an' +
        'd DDZL.DDZT<>'#39'C'#39'  and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate(' +
        ')-150'
      ' where substring(kcll.depid,1,1)<>'#39'R'#39
      ' group by kclls.scbh'
      ' )as kclls on kclls.scbh=ddzl.ddbh'
      'left join ywdd on ywdd.ddbh=ddzl.ddbh'
      '--'#21508#27573#25237#20837#26085#26399
      'left join'
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd'
      '      from smdd,ddzl'
      
        '      where ddzl.ddbh=smdd.YSBH  and  ddzl.khbh='#39'036'#39' and DDZL.D' +
        'DZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate()-150 and' +
        ' smdd.gxlb='#39'C'#39
      '      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh'
      'left join'
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd '
      '      from smdd,ddzl'
      
        '      where ddzl.ddbh=smdd.YSBH and  ddzl.khbh='#39'036'#39' and DDZL.DD' +
        'ZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate()-150 and ' +
        'smdd.gxlb='#39'S'#39
      '      group by smdd.ysbh) as s on s.ysbh=ddzl.ddbh'
      'left join'
      
        '    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planed' +
        'ate) as endd '
      '      from smdd,ddzl'
      
        '      where ddzl.ddbh=smdd.YSBH and  ddzl.khbh='#39'036'#39' and DDZL.DD' +
        'ZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39'  and ddzl.shipdate >getdate()-150 and ' +
        'smdd.gxlb='#39'A'#39
      '      group by smdd.ysbh) as a on a.ysbh=ddzl.ddbh'
      
        'where DDZL.DDZT<>'#39'C'#39' and DDZL.DDLB='#39'N'#39' and  ddzl.khbh='#39'036'#39' and ' +
        'ywdd.exesb is null and substring(ddzl.ddbh,1,2) <> '#39'ZS'#39
      'and ddzl.shipdate >getdate()-150 and (ddzl.ddrq+10)<getdate() '
      
        'group by ddzl.DDBH,ddzl.khpo,c.strt,c.endd, s.strt,s.endd,a.strt' +
        ',a.endd,ddzl.ordermode,kclls.lldate')
    Left = 360
    Top = 120
  end
  object mrworkday: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'select '#39'LYN'#39',scyear+scmonth,max(daycount),CONVERT(char(10),getda' +
        'te()+1,111)'
      'from '
      '(select scyear,'
      
        'case when len(convert(varchar,scmonth))=1 then ('#39'0'#39'+convert(varc' +
        'har,scmonth)) else convert(varchar,scmonth) end as scmonth,(coun' +
        't(*)) as daycount from scrl'
      
        'where convert(smalldatetime,scyear+'#39'/'#39'+ scmonth+'#39'/'#39'+scday,111) >' +
        ' getdate()'
      '           and gsbh='#39'VA12'#39
      'group by scyear,scmonth,depno) as k'
      ''
      'group by scyear+scmonth')
    Left = 400
    Top = 120
  end
  object mrdayoutput: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'select '#39'LYN'#39',BDepartment.sumline,sum(qty),CONVERT(char(10),bzdat' +
        'e,111),'
      '  CONVERT(char(10),getdate(),111)'
      '  from scbzcl'
      '  left join BDepartment on BDepartment.id = scbzcl.depno'
      
        'where  CONVERT(char(7),bzdate,111)=CONVERT(char(7),(getdate()+5)' +
        ',111)'
      '            and qty > 0 '
      '            and BDepartment.gsbh='#39'VA12'#39' '
      '            and BDepartment.GXLB='#39'A'#39
      'group by BDepartment.sumline,CONVERT(char(10),bzdate,111)'
      'order by CONVERT(char(10),bzdate,111)')
    Left = 440
    Top = 120
  end
  object mrmonthoutput: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'select '#39'LYN'#39',scyear+case when len(convert(varchar,scmonth))=1 th' +
        'en ('#39'0'#39'+convert(varchar,scmonth)) else convert(varchar,scmonth) ' +
        'end,sum(qty),'
      
        'convert(int,(sum(qty)/sum(convert(float,isnull(scrl.scgs,0)))*8)' +
        ') as eqty,'
      
        'convert(int,(sum(qty)/sum(convert(float,isnull(scrl.scgs,0)))*9)' +
        ') as nqty,'
      
        'convert(int,(sum(qty)/sum(convert(float,isnull(scrl.scgs,0)))*10' +
        ')) as tqty,'
      ''
      'CONVERT(char(10),getdate(),111)  from scbzcl'
      
        'left join scrl on scyear=year(bzdate) and scmonth=month(bzdate) ' +
        'and scday=day(bzdate) and scrl.depno=scbzcl.depno'
      
        'where  CONVERT(char(7),bzdate,111)=CONVERT(char(7),getdate()+5,1' +
        '11) '
      
        '            and scbzcl.depno in (select id FROM BDepartment wher' +
        'e gsbh='#39'VA12'#39' and GXLB='#39'A'#39')'
      '            and scrl.scyear  is not  null'
      
        'group by scyear+case when len(convert(varchar,scmonth))=1 then (' +
        #39'0'#39'+convert(varchar,scmonth)) else convert(varchar,scmonth) end')
    Left = 480
    Top = 120
  end
  object Database1: TDatabase
    AliasName = 'liy_erp'
    DatabaseName = 'dd'
    Params.Strings = (
      'USER NAME=sa'
      'password=andy')
    SessionName = 'Default'
    OnLogin = Database1Login
    Left = 216
    Top = 120
  end
  object getdayrep1: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'insert into rtstemp  '
      ''
      'select '#39'LYN'#39',isnull(BDepartment.sumline,'#39#39'),ddzl.khpo'
      ',smddss.gxlb,:dde'
      ',sum(isnull(smzl.cts,0)*isnull(smddss.qty,0))  as qty'
      ',ddzl.ddbh'
      'from smzl'
      'left join smddss on smddss.codebar=smzl.codebar'
      
        'left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxl' +
        'b'
      'left join ddzl on smdd.ysbh = ddzl.ddbh'
      'left join BDepartment on BDepartment.id=smzl.depno'
      
        'where CONVERT(char(10), smzl.scandate,111)=CONVERT(char(10),:dde' +
        ',111)'
      
        #9'           and ddzl.khbh='#39'036'#39'  and substring(smzl.depno,1,1)<>' +
        #39'R'#39
      '             and substring(smzl.depno,1,1)<>'#39'G'#39
      '             and substring(ddzl.ddbh,1,4)<>'#39'ZSVN'#39
      'group by BDepartment.sumline,ddzl.khpo,smddss.gxlb,ddzl.ddbh'
      ''
      'union all'
      ''
      ''
      'select '#39'LYN'#39',isnull(BDepartment.sumline,'#39#39'),ddzl.khpo'
      ','#39'I'#39',:dde'
      ',(sum(ywdd.inspectqty)-isnull(old.yqty,0))  as qty'
      ',ddzl.ddbh'
      'from ywdd'
      'left join ddzl on ywdd.ysbh = ddzl.ddbh'
      'left join (select ddbh,min(depno) as depno'
      #9' from ywcp'
      #9'where  depno is not null'
      #9'group by ddbh) as yp on ywdd.ddbh = yp.ddbh'
      'left join BDepartment on BDepartment.id=yp.depno'
      'left join (select khpo,sum(qty) as  yqty'
      #9' from rtstemp'
      #9'where gxlb='#39'I'#39
      #9'group by khpo) as old on old.khpo=ddzl.khpo'
      
        'where  CONVERT(char(10),ywdd.INSPECTDATE,111)=CONVERT(char(10),:' +
        'dde,111)'
      '        and ddzl.khbh='#39'036'#39
      '        and substring(ddzl.ddbh,1,4)<>'#39'ZSVN'#39
      'group by BDepartment.sumline,ddzl.khpo,old.yqty,ddzl.ddbh'
      ''
      'union all'
      ''
      'select '#39'LYN'#39',isnull(BDepartment.sumline,'#39#39'),ddzl.khpo'
      ','#39'O'#39',:dde'
      ',sum(ywcp.qty)  as qty'
      ',ddzl.ddbh'
      'from ywcp'
      'left join ddzl on ywcp.ddbh = ddzl.ddbh'
      'left join BDepartment on BDepartment.id=ywcp.depno'
      'where ywcp.sb='#39'3'#39
      
        '    and CONVERT(char(10),ywcp.exedate,111)=CONVERT(char(10),:dde' +
        ',111)'
      '    and  ddzl.khbh='#39'036'#39
      '    and substring(ddzl.ddbh,1,4)<>'#39'ZSVN'#39
      'group by BDepartment.sumline,ddzl.khpo,ddzl.ddbh')
    Left = 256
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
      end>
  end
  object dq1: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'delete rtstemp '
      
        'where  CONVERT(char(10), datadate,111)=CONVERT(char(10),:dde,111' +
        ')')
    Left = 256
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'dde'
        ParamType = ptInput
        Value = ''
      end>
  end
  object tempQry: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'update smdd'
      'set okdate = r.edate'
      'from smdd as p,'
      
        '(select scbbs.scbh,scbbs.gxlb,max(scbb.scdate) as edate,sum(qty)' +
        ' as qty , ddzl.pairs as totalQty'
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      left join ddzl on scbbs.scbh = ddzl.zlbh'
      '      where scbb.scdate>getdate()-30'
      '      group by  scbbs.scbh ,scbbs.gxlb, ddzl.pairs) as r'
      'where r.scbh=p.ysbh and r.gxlb=p.gxlb'
      
        '           and r.qty=r.totalQty and p.OKdate is null and p.pland' +
        'ate is not null')
    Left = 256
    Top = 161
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 120
    object Close1: TMenuItem
      Caption = 'Close'
      OnClick = Close1Click
    end
    object Show1: TMenuItem
      Caption = 'Show'
      OnClick = Show1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 544
    Top = 56
  end
end
