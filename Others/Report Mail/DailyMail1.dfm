object Daily_Mail: TDaily_Mail
  Left = 555
  Top = 253
  Width = 171
  Height = 110
  Caption = 'Daily_Mail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 121
    Height = 49
    Caption = 'Send Mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=LIY_ERP;Data Source=127.0.0.1'
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 48
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 24
    Top = 80
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 56
    Top = 80
  end
  object ADOQuery: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39')'
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39' 192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\' +
        'sql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER                        '
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908
      '--'
      'if object_id('#39'tempdb..#HumData'#39') is not null '
      ' begin   drop table #HumData end'
      
        ' SELECT tk_ngay=CONVERT(nvarchar(10), dateadd(d,-360,GETDATE()),' +
        ' 21),st_nhanvien.dv_ma,dv_ten,'
      
        '                dv_dilam=SUM(case when CC_GIOBINHTHUONG=8 then 1' +
        ' else 0 end) into #HumData '
      
        '                  FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ' +
        'ST_GIOQUETTHE'
      
        '                  inner join HumanDB.[P0104-TYXUAN].dbo.st_nhanv' +
        'ien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma'
      
        '                  inner join HumanDB.[P0104-TYXUAN].dbo.ST_CONGV' +
        'IEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA '
      
        '                  inner join HumanDB.[P0104-TYXUAN].dbo.ST_DONVI' +
        ' ST_DONVI on ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA '
      
        '                  where qt_ngay= CONVERT(nvarchar(10), dateadd(d' +
        ',-360,GETDATE()), 21) and X_MA_ in ('#39'A1'#39','#39'A2'#39') and ST_CONGVIEC.C' +
        'V_MA like '#39'a%'#39
      '                  group by st_nhanvien.dv_ma,dv_ten '
      ''
      'if object_id('#39'tempdb..#Scbbdata'#39') is not null '
      ' begin   drop table #Scbbdata end                  '
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SC' +
        'BBS.GXLB,BDepartment.DepName,'
      
        '       isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty,isnull(SCB' +
        'ZCL.Qty,0) as bzQty,Convert(float,SCRL.SCGS) as SCGS,RSCQ.SDGS,i' +
        'snull(sum(SCBBS.Qty),0)/SCRL.SCGS  as AvgQty'
      'into #Scbbdata from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      'left join DDZL on DDZl.DDBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCY' +
        'EAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay))'
      '                         =convert(varchar,SCBB.SCDate)  '
      '                  and SCRL.DepNO=SCBB.DepNO '
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      
        '       (convert(smalldatetime,convert(varchar,GETDATE(),111))-36' +
        '0) and (convert(smalldatetime,convert(varchar,GETDATE(),111))-36' +
        '0)'
      '       and SCBB.GSBH ='#39'VA12'#39
      '       and (SCBBS.GXLB='#39'A'#39' or SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39')'
      
        'Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,SCBBS.GXLB' +
        ',BDepartment.DepName ,SCBZCL.Qty,RSCQ.SDGS,SCRL.SCGS'
      '                  '
      '-- '
      
        'select DepName as '#39#21934#20301#39',dv_dilam as '#39#21047#21345#19978#29677#20154#25976#39',SCGS as '#39#19978#29677#26178#38291#39',RY1 a' +
        's '#39#35330#21934#39',RY2 as '#39#35330#21934#39',RY3 as '#39#35330#21934#39',RY4 as '#39#35330#21934#39',RY5 as '#39#35330#21934#39',RY6 as '#39#35330 +
        #21934#39',RY7 as '#39#35330#21934#39','
      
        '       Qty1 as '#39#29986#37327#39',Qty2 as '#39#29986#37327#39',Qty3 as '#39#29986#37327#39',Qty4 as '#39#29986#37327#39',Qty5 ' +
        'as '#39#29986#37327#39',Qty6 as '#39#29986#37327#39',Qty7 as '#39#29986#37327#39' ,BzQty as '#39#30446#27161#29986#37327#39',Qty as '#39#23526#38555#29986#37327#39 +
        ',LackQty as '#39'DELAY'#39',Rate as '#39#36948#25104#29575#39' ,AvgQty as '#39#24179#22343#19968#23567#26178#38617#25976#39'  '
      '   from ( '
      
        'select SCBB.SCDate,SCBB.GXLB ,SCBB.DepNo ,SCBB.DepName, #HumData' +
        '.dv_dilam ,SCBB.Qty ,SCBB.bzQty ,SCBB.Qty-SCBB.BzQty as LackQty,'
      
        '      (case when SCBB.bzQty <> 0 then Convert(varchar,round(SCBB' +
        '.Qty/convert(float,SCBB.BzQty)*100,0))+'#39'%'#39' end) Rate,SCGS,AvgQty' +
        ','
      
        '      RYList.RY1,RYList.RY2,RYList.RY3,RYList.RY4,RYList.RY5,RYL' +
        'ist.RY6,RYList.RY7,RYList.Qty1,RYList.Qty2,RYList.Qty3,RYList.Qt' +
        'y4,RYList.Qty5,RYList.Qty6,RYList.Qty7  from ('
      ''
      'select * from #Scbbdata where #Scbbdata.GXLB='#39'C'#39
      'Union all '
      
        'select SCDate ,'#39'zTotal'#39' as DepNo,'#39'C'#39' as GXLB,'#39'zTotal'#39' as  DepNam' +
        'e,'
      
        '       isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,n' +
        'ull as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0) ' +
        ' as AvgQty'
      'from #Scbbdata where #Scbbdata.GXLB='#39'C'#39
      'Group by SCDate '
      'Union all '
      'select * from #Scbbdata where #Scbbdata.GXLB='#39'S'#39
      'Union all '
      
        'select SCDate ,'#39'zTotal'#39' as DepNo,'#39'S'#39' as GXLB,'#39'zTotal'#39' as  DepNam' +
        'e,'
      
        '       isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,n' +
        'ull as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0) ' +
        ' as AvgQty'
      'from #Scbbdata where #Scbbdata.GXLB='#39'S'#39
      'Group by SCDate '
      'Union all '
      'select * from #Scbbdata where #Scbbdata.GXLB='#39'A'#39
      'Union all '
      
        'select SCDate ,'#39'zTotal'#39' as DepNo,'#39'A'#39' as GXLB,'#39'zTotal'#39' as  DepNam' +
        'e,'
      
        '       isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,n' +
        'ull as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0) ' +
        ' as AvgQty'
      'from #Scbbdata where #Scbbdata.GXLB='#39'A'#39
      'Group by SCDate '
      ''
      ') SCBB'
      'left join ('
      'select SCDate,DepNo,'
      '  Max(Case when RYNo=1 then SCBH end) as RY1, '
      '  Max(Case when RYNo=2 then SCBH end) as RY2,'
      '  Max(Case when RYNo=3 then SCBH end) as RY3,'
      '  Max(Case when RYNo=4 then SCBH end) as RY4,'
      '  Max(Case when RYNo=5 then SCBH end) as RY5,'
      '  Max(Case when RYNo=6 then SCBH end) as RY6,'
      '  Max(Case when RYNo=7 then SCBH end) as RY7,'
      '  Max(Case when RYNo=1 then Convert(float,Qty) end) as Qty1, '
      '  Max(Case when RYNo=2 then Convert(float,Qty) end) as Qty2,'
      '  Max(Case when RYNo=3 then Convert(float,Qty) end) as Qty3,'
      '  Max(Case when RYNo=4 then Convert(float,Qty) end) as Qty4,'
      '  Max(Case when RYNo=5 then Convert(float,Qty) end) as Qty5,'
      '  Max(Case when RYNo=6 then Convert(float,Qty) end) as Qty6,'
      '  Max(Case when RYNo=7 then Convert(float,Qty) end) as Qty7'
      'from ('
      
        'select *,ROW_NUMBER() over (PARTITION BY SCDATE,DepNo ORDER BY S' +
        'CDATE,DepNo,SCBH Asc) as  RYNo from ('
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SC' +
        'BBS.SCBH,isnull(sum(Convert(float,SCBBS.Qty)),0)  as Qty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      
        '       (convert(smalldatetime,convert(varchar,GETDATE(),111))-36' +
        '0) and (convert(smalldatetime,convert(varchar,GETDATE(),111))-36' +
        '0)'
      '       and SCBB.GSBH ='#39'VA12'#39
      '       and (SCBBS.GXLB='#39'A'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'C'#39' )'
      
        '       Group by convert(varchar,SCBB.SCDate,111)  ,SCBB.DepNo,SC' +
        'BBS.SCBH'
      '       ) SCBBS ) SCBBS'
      
        '   Group by   SCDate,DepNo  ) RYList on RYList.SCDate=SCBB.SCDat' +
        'e and RYList.DepNo=SCBB.DepNO '
      'left join BDepartment on BDepartment.ID = SCBB.DepNo'
      
        'left join #HumData  on #HumData.dv_ma COLLATE DATABASE_DEFAULT =' +
        'BDepartment.ID_HRM COLLATE DATABASE_DEFAULT'
      '--   '
      '   ) Scbbs'
      'order by GXLB,DepName'
      
        '--if exists(select *  from   master..sysservers  where  srvname=' +
        ' '#39'HumanDB'#39') begin'
      ' --Exec sp_droplinkedsrvlogin '#39'HumanDB'#39',Null '
      ' --Exec sp_dropserver '#39'HumanDB'#39','#39'droplogins'#39'   '
      '--end')
    Left = 56
    Top = 48
  end
  object ADOBuser: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 96
    Top = 48
  end
end
